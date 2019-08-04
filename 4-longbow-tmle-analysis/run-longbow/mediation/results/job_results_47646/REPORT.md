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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mbmi             n_cell       n
----------  -------------------------  -----------------------------  --------------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       922    1227
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1227
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       481     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6747    7109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         362    7109
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       476     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       352     377
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     377
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/f3a76aad-1ef0-4637-b737-b2f516e4ee11/3796ef63-3bf6-475b-bba7-1e260287378c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f3a76aad-1ef0-4637-b737-b2f516e4ee11/3796ef63-3bf6-475b-bba7-1e260287378c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f3a76aad-1ef0-4637-b737-b2f516e4ee11/3796ef63-3bf6-475b-bba7-1e260287378c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.1660172   -1.2918125   -1.0402220
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.4590345   -1.8113845   -1.1066845
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0748995   -0.0742030    0.2240020
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.4262963   -0.8810079    0.0284153
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.2108323   -1.3435657   -1.0780989
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2339041   -1.4921166   -0.9756917
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -1.3131149   -1.4218494   -1.2043803
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                -2.0820000   -2.9100519   -1.2539481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.0469731   -1.1780219   -0.9159244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -1.9657143   -2.5717876   -1.3596410
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3454157   -1.4694269   -1.2214046
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.4706479   -2.0518741   -0.8894217
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3449333   -1.4429227   -1.2469439
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6092659   -1.7247064   -1.4938253
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3457913   -1.4408094   -1.2507733
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.7068640   -1.9304352   -1.4832929
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.0402474   -1.1250901   -0.9554047
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.2901130   -1.4570356   -1.1231904
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.1630359   -1.2368621   -1.0892097
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.6484352   -1.9149698   -1.3819007
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5384425   -0.5887195   -0.4881654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.6694908   -0.8855051   -0.4534764
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.1151457    0.0224689    0.2078226
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.1006228   -0.1170408    0.3182865
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8978225   -0.9262007   -0.8694444
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.9775591   -1.0871831   -0.8679351
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.6470786   -1.7252550   -1.5689021
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.6943814   -1.8494563   -1.5393064
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.8601107   -1.9906782   -1.7295432
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -2.4549849   -2.8547014   -2.0552684
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0633642   -0.1049962    0.2317246
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.8363382   -1.9777808   -1.6948956
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.8831293   -2.1589199   -1.6073387
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.5912775   -1.7294629   -1.4530921
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6043081   -2.7418604   -2.4667558
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.6880536   -3.4559307   -1.9201764
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -2.0766577   -2.1901531   -1.9631624
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -2.6268181   -2.8528019   -2.4008343
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.5105918   -1.6000758   -1.4211077
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.9310255   -2.1534685   -1.7085825
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.3996161   -1.4861621   -1.3130702
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.9600893   -2.2756093   -1.6445693
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.1347997   -0.4386406    0.1690412
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0306201   -0.6628745    0.6016343
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -2.4293672   -2.5586821   -2.3000523
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -2.2623444   -2.5862405   -1.9384482
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.8427478   -1.9320844   -1.7534112
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.9649912   -2.1735970   -1.7563855


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4072209   -1.4983514   -1.3160903
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.9008757   -0.9285733   -0.8731780
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4135279   -2.5366872   -2.2903685
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8744367   -1.9556750   -1.7931984


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.2930173   -0.6675372    0.0815025
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5011958   -0.9797291   -0.0226625
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0230718   -0.3157840    0.2696403
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7688851   -1.6040457    0.0662754
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.9187411   -1.5388207   -0.2986616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1252322   -0.7175506    0.4670862
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2643326   -0.3856616   -0.1430035
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3610727   -0.6028763   -0.1192691
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.2498656   -0.4371920   -0.0625392
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4853993   -0.7630148   -0.2077838
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1310483   -0.3516405    0.0895440
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.0145229   -0.2020761    0.1730304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.0797365   -0.1920064    0.0325334
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0473028   -0.2210750    0.1264693
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.5948742   -1.0142352   -0.1755132
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.6025309   -1.7530800    0.5480183
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0467911   -0.3585475    0.2649652
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -1.0280082   -1.6247594   -0.4312569
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0837455   -0.8632544    0.6957634
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5501604   -0.8021530   -0.2981678
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.4204338   -0.6595467   -0.1813208
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.5604731   -0.8897963   -0.2311499
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.1041796   -0.5007126    0.7090717
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight      0.1670228   -0.1808079    0.5148535
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1222435   -0.3496452    0.1051583


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0396605   -0.0857434    0.0064224
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0216864   -0.0466204    0.0032477
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0040046   -0.0659993    0.0579902
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0141339   -0.0383650    0.0100972
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0258281   -0.0515400   -0.0001162
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0147057   -0.0486363    0.0192248
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0622876   -0.1013765   -0.0231986
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0615907   -0.1049597   -0.0182217
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0446094   -0.0780348   -0.0111840
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0356424   -0.0615186   -0.0097662
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0021286   -0.0078399    0.0035826
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0002273   -0.0064099    0.0068646
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0030531   -0.0087945    0.0026883
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0106966   -0.0406457    0.0192526
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0830025   -0.1431403   -0.0228647
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0215190   -0.0659720    0.0229341
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0075777   -0.0716253    0.0564698
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0307524   -0.0594630   -0.0020418
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0015798   -0.0342554    0.0310958
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1041368   -0.1538827   -0.0543909
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0733318   -0.1142045   -0.0324592
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0299169   -0.0581796   -0.0016543
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0025816   -0.0172008    0.0223641
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.0158394   -0.0082273    0.0399060
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0316890   -0.0689013    0.0055234

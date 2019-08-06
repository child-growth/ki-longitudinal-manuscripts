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

**Outcome Variable:** whz

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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       921    1225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         304    1225
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       443     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       480     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         101     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1982
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          33    1982
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12519   13024
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6726    7087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         361    7087
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       348     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3800    3941
24 months   ki1119695-PROBIT           BELARUS                        Underweight         141    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight       334     359
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          25     359
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       467     561
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          94     561


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
![](/tmp/7f6f0f32-ad05-4315-9a7b-d6d0c4ba3fb2/dd30333c-9d74-4369-9f62-56975128045a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7f6f0f32-ad05-4315-9a7b-d6d0c4ba3fb2/dd30333c-9d74-4369-9f62-56975128045a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7f6f0f32-ad05-4315-9a7b-d6d0c4ba3fb2/dd30333c-9d74-4369-9f62-56975128045a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0524711   -0.1812548    0.0763126
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.7066539   -1.1483762   -0.2649316
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9775209    0.8091090    1.1459329
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6764815   -0.0674862    1.4204491
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6192655   -0.7511193   -0.4874117
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0213156   -1.3613930   -0.6812381
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0571910    0.9326684    1.1817136
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 1.0130000    0.5008674    1.5251326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5333953    0.3757046    0.6910860
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3785714   -0.1478585    0.9050014
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.4987018    0.3623266    0.6350771
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 1.0819216    0.2811803    1.8826630
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5647696   -0.6966524   -0.4328869
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.8594544   -0.9885709   -0.7303378
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3654138   -0.4627110   -0.2681165
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7656062   -0.9840327   -0.5471798
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1167740   -0.2083596   -0.0251884
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.6360685   -0.8359634   -0.4361736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0614941   -0.0204982    0.1434865
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.3295403   -0.6342617   -0.0248188
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0829180    0.0285662    0.1372698
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.2053698   -0.4329255    0.0221860
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5882405    0.5301707    0.6463104
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4774802    0.3499578    0.6050025
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3108071    0.2822518    0.3393624
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0484522   -0.1834904    0.0865860
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5286604    0.4501666    0.6071542
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0626908   -0.1055453    0.2309269
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7617605   -0.8916175   -0.6319035
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1955068   -1.5319669   -0.8590468
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4294444    0.2224555    0.6364334
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.9050325   -1.0288061   -0.7812589
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1391207   -1.4401456   -0.8380958
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.4046696    0.2835400    0.5257992
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0489960   -0.0780188    0.1760109
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0838848   -0.6956746    0.8634443
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8180323   -0.9214500   -0.7146145
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.3380788   -1.5965355   -1.0796220
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.8022830   -0.8919780   -0.7125881
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.2887453   -1.4902066   -1.0872841
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5940150   -0.6931770   -0.4948530
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.8741927   -1.2097490   -0.5386363
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6932100    0.5832282    0.8031919
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.5084521    0.0739864    0.9429177
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1671099   -1.2811286   -1.0530913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.3218026   -1.7870433   -0.8565619
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0237852   -0.0658814    0.1134518
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3714323   -0.5567978   -0.1860668


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6441020   -0.7710827   -0.5171213
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0775172    0.0241750    0.1308595
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5829956    0.5247249    0.6412663
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2928094    0.2648167    0.3208020
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515431    0.3802415    0.5228446
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1810028   -1.2914599   -1.0705456
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0469519   -0.1290932    0.0351895


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.6541828   -1.1146353   -0.1937303
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3010395   -1.0638307    0.4617517
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.4020501   -0.7676467   -0.0364534
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0441910   -0.5712448    0.4828628
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1548239   -0.7043645    0.3947167
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.5832198   -0.2300769    1.3965165
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2946847   -0.3867869   -0.2025826
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4001924   -0.6395893   -0.1607956
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5192945   -0.7395355   -0.2990534
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3910344   -0.7066254   -0.0754434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.2882877   -0.5220978   -0.0544777
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1107603   -0.2198722   -0.0016485
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3592593   -0.4970528   -0.2214657
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4659696   -0.6521928   -0.2797464
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.4337463   -0.7948386   -0.0726540
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0327778   -1.0950051    1.0294496
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2340882   -0.5590753    0.0908988
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1653304   -0.5277226    0.8583834
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.0348888   -0.7561344    0.8259120
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5200465   -0.7985056   -0.2415874
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.4864623   -0.7044461   -0.2684785
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.2801777   -0.6291953    0.0688399
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1847579   -0.5699617    0.2004458
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1546927   -0.6341350    0.3247497
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.3952175   -0.6012385   -0.1891964


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0873249   -0.1550436   -0.0196062
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0130257   -0.0470695    0.0210180
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0795288   -0.1576029   -0.0014547
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0008123   -0.0140076    0.0123830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043525   -0.0201263    0.0114214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0183494   -0.0226348    0.0593337
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0793324   -0.1062191   -0.0524457
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0734963   -0.1157123   -0.0312804
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0912151   -0.1324384   -0.0499917
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0317319   -0.0606034   -0.0028604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0054008   -0.0116124    0.0008109
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0052449   -0.0095863   -0.0009035
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0179977   -0.0250910   -0.0109044
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0771173   -0.1108114   -0.0434233
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0590650   -0.1106314   -0.0074986
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0011706   -0.0391185    0.0367773
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0475339   -0.1129302    0.0178624
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0049458   -0.0160996    0.0259912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0010974   -0.0335768    0.0357717
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0935468   -0.1476119   -0.0394817
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0842161   -0.1237246   -0.0447076
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0163352   -0.0437546    0.0110842
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0062346   -0.0173838    0.0049145
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0138928   -0.0458087    0.0180231
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0707370   -0.1094655   -0.0320086

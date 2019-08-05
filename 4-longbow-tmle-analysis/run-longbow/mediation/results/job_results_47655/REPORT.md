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
![](/tmp/5c743e86-e069-4f8a-a5bc-2fd872715b6d/5ecab4ec-41be-4dc0-af5e-d806d7e6c454/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5c743e86-e069-4f8a-a5bc-2fd872715b6d/5ecab4ec-41be-4dc0-af5e-d806d7e6c454/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5c743e86-e069-4f8a-a5bc-2fd872715b6d/5ecab4ec-41be-4dc0-af5e-d806d7e6c454/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0574553   -0.1870853    0.0721747
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -0.6866731   -1.1331539   -0.2401923
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.9775209    0.8091090    1.1459329
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.6764815   -0.0674862    1.4204491
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.6127207   -0.7430253   -0.4824162
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -0.9991069   -1.3292912   -0.6689226
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                 1.0571910    0.9326684    1.1817136
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                 1.0130000    0.5008674    1.5251326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.5333953    0.3757046    0.6910860
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.3785714   -0.1478585    0.9050014
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.5060886    0.3710738    0.6411034
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.9212981    0.1561140    1.6864822
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.5647696   -0.6966524   -0.4328869
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -0.8594544   -0.9885709   -0.7303378
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.3669816   -0.4642952   -0.2696681
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -0.7734925   -0.9816306   -0.5653545
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.1234785   -0.2148989   -0.0320582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -0.6107102   -0.8146722   -0.4067481
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                 0.0603263   -0.0214123    0.1420649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.3035502   -0.5905544   -0.0165459
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0825300    0.0281478    0.1369123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.2028875   -0.4342530    0.0284779
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.5879709    0.5298833    0.6460585
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4778451    0.3506586    0.6050315
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                 0.3102303    0.2816894    0.3387712
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.0365241   -0.1737068    0.1006585
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.5289703    0.4506706    0.6072701
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                 0.0684794   -0.0996489    0.2366078
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.7620788   -0.8923682   -0.6317895
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1701630   -1.4995326   -0.8407933
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.4294444    0.2224555    0.6364334
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                 0.3966667   -0.6451983    1.4385316
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.8964351   -1.0203199   -0.7725502
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.1157123   -1.4081315   -0.8232931
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.4046696    0.2835400    0.5257992
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                 0.5700000   -0.1123856    1.2523856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0485318   -0.0785951    0.1756587
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                 0.0263244   -0.7364552    0.7891041
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8113980   -0.9147022   -0.7080938
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.2333168   -1.4789912   -0.9876425
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.7985557   -0.8878620   -0.7092493
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3058387   -1.5256945   -1.0859829
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.5953613   -0.6946005   -0.4961222
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -0.9607603   -1.2819162   -0.6396045
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.6941510    0.5842355    0.8040666
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.4432443    0.0733996    0.8130890
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.1664648   -1.2806718   -1.0522579
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.3316513   -1.8127476   -0.8505550
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                 0.0236154   -0.0663924    0.1136232
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -0.3681541   -0.5568178   -0.1794904


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.6292178   -1.0942676   -0.1641679
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.3010395   -1.0638307    0.4617517
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.3863862   -0.7424854   -0.0302870
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.0441910   -0.5712448    0.4828628
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.1548239   -0.7043645    0.3947167
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight      0.4152095   -0.3626916    1.1931105
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2946847   -0.3867869   -0.2025826
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4065109   -0.6364923   -0.1765296
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.4872317   -0.7105000   -0.2639633
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3638765   -0.6621347   -0.0656182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.2854176   -0.5231201   -0.0477151
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1101258   -0.2195964   -0.0006553
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3467545   -0.4866321   -0.2068769
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.4604909   -0.6464990   -0.2744828
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.4080842   -0.7622100   -0.0539583
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.0327778   -1.0950051    1.0294496
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.2192773   -0.5354820    0.0969275
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight      0.1653304   -0.5277226    0.8583834
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0222074   -0.7964190    0.7520042
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.4219189   -0.6890284   -0.1548093
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5072830   -0.7441983   -0.2703678
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3653990   -0.7014301   -0.0293678
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.2509068   -0.5721416    0.0703281
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1651865   -0.6617573    0.3313843
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.3917695   -0.6012889   -0.1822501


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0823407   -0.1503026   -0.0143787
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0130257   -0.0470695    0.0210180
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0860736   -0.1639232   -0.0082240
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0008123   -0.0140076    0.0123830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0043525   -0.0201263    0.0114214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0109627   -0.0248594    0.0467848
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0793324   -0.1062191   -0.0524457
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0719285   -0.1142319   -0.0296251
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0845106   -0.1253066   -0.0437146
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0305641   -0.0591251   -0.0020030
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0050128   -0.0113175    0.0012919
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0049752   -0.0091491   -0.0008014
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0174210   -0.0244967   -0.0103452
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0774272   -0.1110295   -0.0438250
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0587467   -0.1102363   -0.0072570
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0011706   -0.0391185    0.0367773
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0561313   -0.1209694    0.0087067
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                 0.0049458   -0.0160996    0.0259912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0015617   -0.0333442    0.0364675
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1001811   -0.1553070   -0.0450551
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0879435   -0.1290879   -0.0467990
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0149889   -0.0430243    0.0130466
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0071757   -0.0188798    0.0045285
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0145379   -0.0476790    0.0186031
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0705673   -0.1097125   -0.0314220

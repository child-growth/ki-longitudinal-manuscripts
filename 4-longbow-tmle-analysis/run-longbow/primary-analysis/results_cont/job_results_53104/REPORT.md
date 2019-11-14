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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           37     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           131     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg           33      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            14      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        14      61
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            6      41
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg            28      41
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         7      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            9      26
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             7      26
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        10      26
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           82     221
Birth       ki0047075b-MAL-ED          PERU                           <52 kg            81     221
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        58     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg           69     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            10     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        21     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           89    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           824    1091
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       178    1091
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           79     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg           414     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        82     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           89     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg           326     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        95     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          183     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           381     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       140     704
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          582   22058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         19979   22058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1497   22058
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1011    1329
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       215    1329
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          108     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          407   16717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15160   16717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1150   16717
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2958    3950
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3950
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3950
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          170     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          195    8533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7774    8533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       564    8533


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
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f1e3eb8d-2b02-45d4-abf3-293627dac432/d179c1e2-cb8d-4ca5-af5f-1e75a8762b48/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f1e3eb8d-2b02-45d4-abf3-293627dac432/d179c1e2-cb8d-4ca5-af5f-1e75a8762b48/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f1e3eb8d-2b02-45d4-abf3-293627dac432/d179c1e2-cb8d-4ca5-af5f-1e75a8762b48/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.6456425   -0.9269091   -0.3643758
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.0052819   -1.1981557   -0.8124082
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.0587736   -1.4324252   -0.6851220
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.7151490    0.3258899    1.1044080
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.0937190   -0.7369555    0.9243936
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0164111   -0.6760223    0.7088444
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0050651   -0.2081702    0.2183004
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1803324   -0.3833812    0.0227164
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1238019   -0.1390670    0.3866708
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1457136   -0.4246424    0.1332153
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.6526392   -1.2342067   -0.0710717
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.1363355   -0.7635281    0.4908572
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.6992584    0.3857707    1.0127461
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.8234332    0.4957078    1.1511587
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7400746    0.3125292    1.1676199
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1804183   -0.4755307    0.1146940
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7343983   -0.8848472   -0.5839493
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5764765   -0.8214206   -0.3315324
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0766306   -1.3468368   -0.8064243
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4054009   -1.5147613   -1.2960405
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.2984708   -1.5686037   -1.0283379
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.1703714   -1.3730773   -0.9676655
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.3460966   -1.4436262   -1.2485669
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2756376   -1.4544088   -1.0968663
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.8802177   -1.0426111   -0.7178242
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.4388548   -1.5566059   -1.3211036
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.2038066   -1.3859427   -1.0216705
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -1.1122141   -1.3258542   -0.8985740
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                -1.2660727   -1.4825131   -1.0496322
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -1.2175563   -1.4212939   -1.0138187
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3696680   -0.4102304   -0.3291056
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7034979   -0.7665545   -0.6404414
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5588131   -0.6155290   -0.5020972
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.6269355   -0.7249693   -0.5289017
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.7608068   -0.7790657   -0.7425478
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.6670908   -0.7269494   -0.6072323
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.0330891   -0.3145951    0.3807733
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2427987   -0.3950854   -0.0905121
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.2621247   -0.1150425    0.6392918
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0177070    0.8070925    1.2283216
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.9237156    0.5425113    1.3049199
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7930911    0.3910013    1.1951810
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4228967   -0.6459535   -0.1998400
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8481886   -1.0234350   -0.6729421
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5075570   -0.7486560   -0.2664579
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3940355    0.1565333    0.6315378
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.1979414   -0.4247176    0.0288349
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1630371   -0.0475530    0.3736271
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.3449721    1.1277172    1.5622270
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9495261    0.7531860    1.1458663
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.8746657    0.6153794    1.1339519
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6464190    0.4660645    0.8267735
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0209847   -0.4491617    0.4911310
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3824019   -0.0310684    0.7958722
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5397217    0.3244512    0.7549923
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4356340    0.2042973    0.6669707
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6637489    0.4307659    0.8967319
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4415713   -0.7903368   -0.0928059
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.6946346   -0.8087073   -0.5805619
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.6619204   -0.8383608   -0.4854800
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1833089   -0.3908182    0.0242004
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5298315   -0.6368318   -0.4228312
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3028117   -0.5705301   -0.0350934
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2778897    0.0570059    0.4987736
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3760719   -0.4759784   -0.2761653
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0790961   -0.2791300    0.1209377
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2290199    0.0518675    0.4061722
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1390940   -0.2482456   -0.0299424
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1269028   -0.0476402    0.3014457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1232655    0.0557151    0.1908159
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0558508   -0.1872496    0.0755480
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0036614   -0.1199702    0.1272929
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.6085743    0.5502971    0.6668514
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.4321851    0.3261625    0.5382078
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5338753    0.4636480    0.6041026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4267973    0.3909792    0.4626154
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0127955   -0.0473834    0.0729745
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2493798    0.1981383    0.3006213
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.7214110    0.5441798    0.8986421
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3774791    0.2832828    0.4716753
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4830027    0.3448797    0.6211257
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.4699177   -0.5763861   -0.3634493
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.6014275   -0.6215459   -0.5813091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.5286756   -0.5964984   -0.4608528
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5355487   -0.8449301   -0.2261673
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9552215   -1.0967521   -0.8136909
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.6294348   -0.9513190   -0.3075507
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5657464    0.3063697    0.8251230
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.3681499   -0.1023299    0.8386298
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0563121   -0.4531550    0.5657793
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5653142   -0.8484392   -0.2821892
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0807596   -1.2316299   -0.9298892
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.8892158   -1.0844727   -0.6939589
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0988172   -0.3159398    0.1183054
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6739080   -0.8610899   -0.4867261
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3448684   -0.5161041   -0.1736327
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3143696    0.1479833    0.4807558
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1166732   -0.3242495    0.0909032
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1521157   -0.1367770    0.4410084
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4633984    0.3223453    0.6044516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1332041   -0.2202164    0.4866247
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.2532488   -0.0663478    0.5728454
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2492954    0.0471226    0.4514683
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1213956   -0.3199511    0.0771599
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0172183   -0.2622731    0.2967097
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5127720   -0.7419526   -0.2835914
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0347251   -1.1523495   -0.9171006
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6056826   -0.8452487   -0.3661164
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4017071   -0.6327040   -0.1707102
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1302836   -1.2234409   -1.0371264
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6532066   -0.8721163   -0.4342969
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2369385   -0.4368557   -0.0370213
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.8489459   -0.9704025   -0.7274893
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.4565483   -0.6790861   -0.2340106
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7274861    0.6092207    0.8457516
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5267093    0.3232452    0.7301734
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5842904    0.4424813    0.7260995
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.1957851   -1.3580503   -1.0335198
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2669320   -1.4405762   -1.0932878
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0745464   -1.2731420   -0.8759508
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2810938    0.0324531    0.5297345
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1618498   -0.2657104   -0.0579892
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0751876   -0.0820524    0.2324277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1718277   -1.3132160   -1.0304395
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3101499   -1.3347028   -1.2855971
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.2072138   -1.3067479   -1.1076797


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9526794   -1.0978709   -0.8074880
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6660770   -0.8389738   -0.4931801
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1429853   -1.3532634   -0.9327073
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4824198   -0.5113303   -0.4535093
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7504434   -0.7683264   -0.7325603
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7036879   -0.8303672   -0.5770087
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0588909    0.9369064    1.1808755
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5297055    0.3757432    0.6836678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6660835   -0.8034722   -0.5286949
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5929476   -0.6125268   -0.5733684
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4409524    0.2364865    0.6454182
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3975641    0.2766504    0.5184778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6888304    0.5749159    0.8027449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2990730   -1.3224430   -1.2757030


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3596395   -0.7009137   -0.0183652
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.4131312   -0.8807950    0.0545326
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.6214299   -1.5387816    0.2959217
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.6987379   -1.4950494    0.0975736
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.1853975   -0.4812637    0.1104687
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.1187368   -0.2190551    0.4565287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.5069256   -1.1530503    0.1391990
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0093781   -0.6721873    0.6909435
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.1241748   -0.3307671    0.5791167
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0408161   -0.4910168    0.5726491
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.5539799   -0.7745708   -0.3333890
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.3960582   -0.5648231   -0.2272933
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3287703   -0.6207984   -0.0367423
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2218402   -0.6040567    0.1603762
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.1757252   -0.4009430    0.0494926
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1052662   -0.3756817    0.1651493
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5586371   -0.7594308   -0.3578434
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3235889   -0.5678132   -0.0793647
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1538586   -0.2556718   -0.0520454
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1053422   -0.1655023   -0.0451821
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3338300   -0.4087855   -0.2588745
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1891451   -0.2587981   -0.1194922
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1338713   -0.2324916   -0.0352510
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0401553   -0.1527651    0.0724544
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.2758878   -0.6552049    0.1034293
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.2290356   -0.2899623    0.7480334
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0939914   -0.5308871    0.3429044
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2246159   -0.6792469    0.2300151
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4252918   -0.7099000   -0.1406836
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0846602   -0.4135335    0.2442131
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5919769   -0.9187234   -0.2652304
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2309984   -0.5494093    0.0874124
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3954459   -0.6892453   -0.1016466
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.4703064   -0.8092182   -0.1313946
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6254344   -1.1291350   -0.1217337
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2640171   -0.7151771    0.1871429
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1040878   -0.4217826    0.2136071
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1240271   -0.1929577    0.4410120
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2530633   -0.5113553    0.0052287
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2203491   -0.4478685    0.0071703
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3465226   -0.5806123   -0.1124329
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1195028   -0.4587732    0.2197675
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6539616   -0.8975689   -0.4103543
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3569859   -0.6559605   -0.0580113
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3681139   -0.5770969   -0.1591308
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1021171   -0.3514717    0.1472375
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1791163   -0.3268580   -0.0313745
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1196041   -0.2605532    0.0213450
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1763891   -0.2611162   -0.0916621
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0746990   -0.1259969   -0.0234011
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4140018   -0.4839708   -0.3440327
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1774175   -0.2399173   -0.1149176
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3439319   -0.5447140   -0.1431499
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2384083   -0.4633744   -0.0134422
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1315098   -0.2391502   -0.0238694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0587579   -0.1892029    0.0716871
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4196728   -0.7597465   -0.0795991
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0938861   -0.5407373    0.3529650
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1975964   -0.7340314    0.3388386
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5094342   -1.0822174    0.0633490
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5154454   -0.8368657   -0.1940251
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3239016   -0.6688305    0.0210273
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5750908   -0.8617007   -0.2884809
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2460512   -0.5221534    0.0300510
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4310427   -0.6980568   -0.1640287
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1622539   -0.4965261    0.1720183
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3301943   -0.7106187    0.0502301
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2101496   -0.5596806    0.1393814
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3706911   -0.6542138   -0.0871684
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2320771   -0.5763595    0.1122052
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5219531   -0.7772082   -0.2666979
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0929106   -0.4224813    0.2366602
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7285765   -0.9775233   -0.4796298
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2514995   -0.5698264    0.0668274
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.6120074   -0.8468470   -0.3771678
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2196098   -0.5194341    0.0802145
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2007768   -0.3795624   -0.0219913
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1431957   -0.2754942   -0.0108972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0711469   -0.3080490    0.1657552
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1212387   -0.1350632    0.3775405
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4429436   -0.7115062   -0.1743810
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2059062   -0.5000467    0.0882344
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1383222   -0.2823886    0.0057442
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0353860   -0.2131721    0.1424000


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3070370   -0.5767539   -0.0373200
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.3133457   -0.6157072   -0.0109842
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0480515   -0.2242863    0.1281833
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0472864   -0.2152063    0.1206334
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0590602   -0.1899953    0.3081156
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4856587   -0.6702573   -0.3010600
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2732912   -0.5250096   -0.0215727
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.1357267   -0.3183976    0.0469443
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3632554   -0.5061274   -0.2203834
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0307712   -0.0470679   -0.0144746
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1127518   -0.1404232   -0.0850805
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1235079   -0.2192237   -0.0277920
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1714847   -0.4827730    0.1398037
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0532118   -0.1709108    0.0644871
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2807912   -0.5023360   -0.0592464
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2829903   -0.4759903   -0.0899904
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2860811   -0.4615874   -0.1105749
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1167135   -0.2154032   -0.0180239
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0035004   -0.1765500    0.1695492
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2245122   -0.4538039    0.0047795
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2640949   -0.4649338   -0.0632560
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4765968   -0.6766565   -0.2765371
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1992576   -0.3524584   -0.0460568
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0452394   -0.0866613   -0.0038175
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0251671   -0.0369773   -0.0133568
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1280969   -0.1535196   -0.1026742
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2695591   -0.4371991   -0.1019191
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1230299   -0.2280971   -0.0179627
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2846400   -0.5626604   -0.0066196
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1247940   -0.2768763    0.0272883
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3872522   -0.6496270   -0.1248774
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2776302   -0.4492799   -0.1059805
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1939218   -0.3470183   -0.0408253
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0658343   -0.1436670    0.0119983
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1953468   -0.3571991   -0.0334945
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3988070   -0.6189292   -0.1786849
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4897289   -0.6966588   -0.2827990
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3734117   -0.5404497   -0.2063736
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0386558   -0.0714657   -0.0058458
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0122696   -0.1086641    0.1332033
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3277219   -0.5576900   -0.0977538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1272453   -0.2674942    0.0130037

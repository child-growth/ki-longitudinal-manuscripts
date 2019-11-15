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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          427   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         16351   17995
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1217   17995
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          408   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15216   16775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1151   16775
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          195    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7835    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       568    8598


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
![](/tmp/876a0486-9c66-4310-8b3c-126bddba997f/68808ae3-5f10-45ae-a223-a5b52fe7b0fd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/876a0486-9c66-4310-8b3c-126bddba997f/68808ae3-5f10-45ae-a223-a5b52fe7b0fd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/876a0486-9c66-4310-8b3c-126bddba997f/68808ae3-5f10-45ae-a223-a5b52fe7b0fd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.6464307   -0.9307183   -0.3621431
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.0077635   -1.1971840   -0.8183431
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.0029623   -1.3746293   -0.6312953
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.6725538    0.2883522    1.0567555
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.1661190   -0.6592398    0.9914777
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0242960   -0.6761871    0.7247792
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0103401   -0.1857169    0.2063970
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1628642   -0.3656843    0.0399559
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1269806   -0.1356891    0.3896503
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1414879   -0.4197730    0.1367972
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.2820797   -0.8884502    0.3242908
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.1878161   -0.8138646    0.4382323
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.7118642    0.4038082    1.0199201
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.8106563    0.4808790    1.1404337
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7640353    0.3450395    1.1830310
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1804183   -0.4755307    0.1146940
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7343983   -0.8848472   -0.5839493
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5764765   -0.8214206   -0.3315324
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0750293   -1.3458077   -0.8042510
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4065787   -1.5156943   -1.2974632
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.3127871   -1.5873818   -1.0381924
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.1715410   -1.3731449   -0.9699370
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.3466950   -1.4443133   -1.2490767
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2671429   -1.4511045   -1.0831812
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.8873956   -1.0499949   -0.7247964
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.4528228   -1.5704943   -1.3351512
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1818042   -1.3776494   -0.9859589
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -1.1118344   -1.3257069   -0.8979619
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                -1.2738728   -1.4905119   -1.0572336
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -1.2159882   -1.4193151   -1.0126613
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3685405   -0.4091456   -0.3279354
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7052846   -0.7685850   -0.6419842
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5581299   -0.6148633   -0.5013965
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.6655807   -0.7660438   -0.5651176
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.7882813   -0.8076838   -0.7688787
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.6876041   -0.7543810   -0.6208272
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0963590   -0.4650987    0.2723808
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2346544   -0.3862127   -0.0830960
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.1721062   -0.1641568    0.5083692
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0233294    0.8120024    1.2346564
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.8947033    0.5071641    1.2822426
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7089629    0.3106606    1.1072652
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4402270   -0.6526028   -0.2278512
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8364659   -1.0120676   -0.6608642
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5193315   -0.7593105   -0.2793526
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3951442    0.1561666    0.6341217
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.2131014   -0.4445827    0.0183800
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1651375   -0.0452703    0.3755453
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2960465    1.0789278    1.5131653
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9252484    0.7292722    1.1212246
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.8974150    0.6332763    1.1615538
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6481643    0.4660398    0.8302888
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0027702   -0.4794253    0.4849656
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3872678   -0.0260865    0.8006222
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5335965    0.3196784    0.7475146
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4492933    0.2177985    0.6807881
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6775813    0.4407932    0.9143693
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4415713   -0.7903368   -0.0928059
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.6946346   -0.8087073   -0.5805619
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.6619204   -0.8383608   -0.4854800
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2013028   -0.4122151    0.0096096
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5267095   -0.6336286   -0.4197904
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.2938141   -0.5579457   -0.0296824
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.3102518    0.0838892    0.5366143
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3787848   -0.4783843   -0.2791852
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.1015359   -0.2910481    0.0879763
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2152260    0.0413113    0.3891407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1390883   -0.2467888   -0.0313877
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1332051   -0.0383478    0.3047579
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1236351    0.0562759    0.1909944
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0616770   -0.1913765    0.0680224
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0019378   -0.1243644    0.1204887
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.6091004    0.5506391    0.6675618
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.4269294    0.3205557    0.5333031
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5323668    0.4623297    0.6024040
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4274275    0.3915384    0.4633165
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0161710   -0.0442757    0.0766176
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2489213    0.1973602    0.3004824
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.6744939    0.4987434    0.8502444
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3773756    0.2833790    0.4713722
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4912587    0.3550791    0.6274384
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.4742874   -0.5803315   -0.3682434
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.6019357   -0.6220635   -0.5818079
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.5269668   -0.5939451   -0.4599884
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5179212   -0.8326391   -0.2032033
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9410378   -1.0853245   -0.7967511
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.6202102   -0.9557700   -0.2846503
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5743656    0.3135758    0.8351554
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.3209164   -0.1085465    0.7503794
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0783112   -0.4379929    0.5946153
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5372245   -0.8023634   -0.2720856
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0777897   -1.2293622   -0.9262173
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9103496   -1.1095341   -0.7111651
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1122891   -0.3252840    0.1007059
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6915705   -0.8800033   -0.5031376
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3618628   -0.5366323   -0.1870932
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3080896    0.1443455    0.4718337
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0890696   -0.3223951    0.1442560
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1473790   -0.1286277    0.4233856
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4676256    0.3268398    0.6084114
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1147700   -0.2344353    0.4639754
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.2349653   -0.0863807    0.5563113
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2410862    0.0380572    0.4441152
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1325737   -0.3396681    0.0745206
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0797810   -0.1904414    0.3500034
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5193997   -0.7512359   -0.2875635
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0334381   -1.1503746   -0.9165016
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6248008   -0.8657123   -0.3838893
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4206476   -0.6424393   -0.1988558
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1272445   -1.2200765   -1.0344124
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6306327   -0.8436258   -0.4176397
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2423428   -0.4486023   -0.0360832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.8407828   -0.9610218   -0.7205438
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.4768446   -0.6987713   -0.2549179
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7288470    0.6108596    0.8468345
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5217944    0.3188277    0.7247611
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5869860    0.4437163    0.7302558
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.1997914   -1.3601555   -1.0394273
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2733329   -1.4489864   -1.0976793
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0742257   -1.2673494   -0.8811020
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2539302    0.0045148    0.5033456
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1638181   -0.2675813   -0.0600550
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0566415   -0.1005179    0.2138009
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1792835   -1.3140951   -1.0444720
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3080032   -1.3325204   -1.2834859
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.2028796   -1.3047836   -1.1009755


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7780622   -0.7970926   -0.7590319
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6660835   -0.8034722   -0.5286949
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5934435   -0.6129939   -0.5738931
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6888304    0.5749159    0.8027449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974564   -1.3207535   -1.2741592


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3613329   -0.7037622   -0.0189035
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.3565316   -0.8244505    0.1113874
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.5064348   -1.4212755    0.4084058
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.6482578   -1.4508718    0.1543562
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.1732042   -0.4569110    0.1105026
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.1166405   -0.2113225    0.4446035
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.1405918   -0.8045874    0.5234039
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0463282   -0.7274630    0.6348066
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0987922   -0.3543370    0.5519213
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0521711   -0.4681548    0.5724970
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.5539799   -0.7745708   -0.3333890
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.3960582   -0.5648231   -0.2272933
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3315494   -0.6239542   -0.0391446
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2377578   -0.6232015    0.1476860
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.1751540   -0.3992488    0.0489407
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0956019   -0.3683045    0.1771007
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5654271   -0.7656186   -0.3652356
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2944085   -0.5493823   -0.0394348
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1620383   -0.2616886   -0.0623881
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1041537   -0.1644461   -0.0438613
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3367441   -0.4119350   -0.2615532
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1895894   -0.2593081   -0.1198708
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1227006   -0.2235369   -0.0218643
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0220234   -0.1409834    0.0969366
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1382954   -0.5375214    0.2609305
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.2684652   -0.2312599    0.7681902
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1286261   -0.5700987    0.3128465
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.3143665   -0.7658555    0.1371224
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3962389   -0.6728935   -0.1195844
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0791045   -0.3994350    0.2412259
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6082455   -0.9398715   -0.2766195
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2300066   -0.5493523    0.0893391
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3707981   -0.6635264   -0.0780698
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3986315   -0.7408116   -0.0564514
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6453941   -1.1613739   -0.1294144
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2608964   -0.7134749    0.1916820
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0843032   -0.4007147    0.2321083
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1439848   -0.1749390    0.4629086
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2530633   -0.5113553    0.0052287
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2203491   -0.4478685    0.0071703
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3254067   -0.5623208   -0.0884927
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0925113   -0.4316338    0.2466112
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6890365   -0.9376644   -0.4404087
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.4117877   -0.7073607   -0.1162147
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3543143   -0.5602567   -0.1483719
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0820209   -0.3261292    0.1620873
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1853121   -0.3316904   -0.0389339
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1255730   -0.2653986    0.0142527
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1821710   -0.2670950   -0.0972470
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0767336   -0.1276470   -0.0258202
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4112565   -0.4814942   -0.3410188
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1785062   -0.2413146   -0.1156978
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.2971183   -0.4965520   -0.0976846
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1832351   -0.4057146    0.0392443
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1276483   -0.2350574   -0.0202391
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0526793   -0.1823768    0.0770182
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4231166   -0.7703285   -0.0759047
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.1022890   -0.5643752    0.3597973
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2534492   -0.7574496    0.2505513
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.4960544   -1.0750168    0.0829079
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5405652   -0.8470855   -0.2340450
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3731251   -0.7058092   -0.0404411
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5792814   -0.8638277   -0.2947350
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2495737   -0.5253167    0.0261694
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3971592   -0.6850926   -0.1092257
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1607107   -0.4826915    0.1612702
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3528556   -0.7293557    0.0236446
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2326603   -0.5843688    0.1190482
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3736599   -0.6646901   -0.0826297
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1613051   -0.4997891    0.1771788
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5140384   -0.7710729   -0.2570039
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1054011   -0.4382839    0.2274817
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7065969   -0.9469412   -0.4662526
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2099851   -0.5175214    0.0975511
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5984400   -0.8368122   -0.3600678
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2345019   -0.5378159    0.0688122
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2070526   -0.3833536   -0.0307516
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1418610   -0.2761877   -0.0075343
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0735414   -0.3114066    0.1643238
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1255657   -0.1253324    0.3764639
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4177484   -0.6875899   -0.1479069
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1972887   -0.4924158    0.0978383
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1287196   -0.2663185    0.0088793
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0235960   -0.1981353    0.1509433


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3069186   -0.5806216   -0.0332156
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.2707506   -0.5717059    0.0302048
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0533265   -0.2149358    0.1082828
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0515121   -0.2201699    0.1171458
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0464544   -0.1982374    0.2911462
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4856587   -0.6702573   -0.3010600
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2748924   -0.5269030   -0.0228818
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.1345571   -0.3166572    0.0475430
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3560774   -0.4989432   -0.2132115
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0311509   -0.0473841   -0.0149177
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1138793   -0.1415997   -0.0861589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1124815   -0.2105537   -0.0144093
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0413174   -0.3708942    0.2882595
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0584777   -0.1773527    0.0603974
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2631879   -0.4761884   -0.0501874
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2847134   -0.4784004   -0.0910263
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2411875   -0.4158611   -0.0665138
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1190143   -0.2191586   -0.0188701
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0026248   -0.1688568    0.1741065
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2245122   -0.4538039    0.0047795
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2461010   -0.4501391   -0.0420630
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5089588   -0.7142091   -0.3037086
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1854638   -0.3353701   -0.0355575
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0456090   -0.0869816   -0.0042365
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0256932   -0.0376167   -0.0137698
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1287271   -0.1542202   -0.1032340
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2226420   -0.3888842   -0.0563999
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1191561   -0.2239790   -0.0143332
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3013713   -0.5852004   -0.0175421
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1300005   -0.2829507    0.0229496
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4147003   -0.6598863   -0.1695143
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2626232   -0.4306055   -0.0946410
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1968914   -0.3497142   -0.0440686
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0759838   -0.1542817    0.0023140
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1862887   -0.3482510   -0.0243263
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3921794   -0.6141557   -0.1702030
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4707884   -0.6687379   -0.2728389
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3680074   -0.5402119   -0.1958029
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0400167   -0.0730775   -0.0069558
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0162760   -0.1038502    0.1364022
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3005583   -0.5317014   -0.0694153
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1181728   -0.2520793    0.0157336

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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mwtkg         n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       MAL-ED           BANGLADESH                     >=58 kg           37     209
Birth       MAL-ED           BANGLADESH                     <52 kg           131     209
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     209
Birth       MAL-ED           BRAZIL                         >=58 kg           33      61
Birth       MAL-ED           BRAZIL                         <52 kg            14      61
Birth       MAL-ED           BRAZIL                         [52-58) kg        14      61
Birth       MAL-ED           INDIA                          >=58 kg            6      41
Birth       MAL-ED           INDIA                          <52 kg            28      41
Birth       MAL-ED           INDIA                          [52-58) kg         7      41
Birth       MAL-ED           NEPAL                          >=58 kg            9      26
Birth       MAL-ED           NEPAL                          <52 kg             7      26
Birth       MAL-ED           NEPAL                          [52-58) kg        10      26
Birth       MAL-ED           PERU                           >=58 kg           82     221
Birth       MAL-ED           PERU                           <52 kg            81     221
Birth       MAL-ED           PERU                           [52-58) kg        58     221
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     100
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     100
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        21     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113
Birth       NIH-Birth        BANGLADESH                     >=58 kg           79     575
Birth       NIH-Birth        BANGLADESH                     <52 kg           414     575
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        82     575
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          183     704
Birth       NIH-Crypto       BANGLADESH                     <52 kg           381     704
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       140     704
Birth       PROBIT           BELARUS                        >=58 kg        10222   13694
Birth       PROBIT           BELARUS                        <52 kg          1124   13694
Birth       PROBIT           BELARUS                        [52-58) kg      2348   13694
Birth       PROVIDE          BANGLADESH                     >=58 kg           89     510
Birth       PROVIDE          BANGLADESH                     <52 kg           326     510
Birth       PROVIDE          BANGLADESH                     [52-58) kg        95     510
Birth       SAS-CompFeed     INDIA                          >=58 kg           86    1090
Birth       SAS-CompFeed     INDIA                          <52 kg           828    1090
Birth       SAS-CompFeed     INDIA                          [52-58) kg       176    1090
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286
6 months    LCNI-5           MALAWI                         >=58 kg          114     837
6 months    LCNI-5           MALAWI                         <52 kg           504     837
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208
6 months    MAL-ED           BRAZIL                         <52 kg            37     208
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208
6 months    MAL-ED           INDIA                          >=58 kg           40     235
6 months    MAL-ED           INDIA                          <52 kg           146     235
6 months    MAL-ED           INDIA                          [52-58) kg        49     235
6 months    MAL-ED           NEPAL                          >=58 kg           79     236
6 months    MAL-ED           NEPAL                          <52 kg            75     236
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236
6 months    MAL-ED           PERU                           >=58 kg          100     272
6 months    MAL-ED           PERU                           <52 kg           107     272
6 months    MAL-ED           PERU                           [52-58) kg        65     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715
6 months    PROBIT           BELARUS                        >=58 kg         9739   13064
6 months    PROBIT           BELARUS                        <52 kg          1083   13064
6 months    PROBIT           BELARUS                        [52-58) kg      2242   13064
6 months    PROVIDE          BANGLADESH                     >=58 kg          108     602
6 months    PROVIDE          BANGLADESH                     <52 kg           385     602
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     602
6 months    SAS-CompFeed     INDIA                          >=58 kg           99    1328
6 months    SAS-CompFeed     INDIA                          <52 kg          1016    1328
6 months    SAS-CompFeed     INDIA                          [52-58) kg       213    1328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110
24 months   LCNI-5           MALAWI                         >=58 kg           73     562
24 months   LCNI-5           MALAWI                         <52 kg           337     562
24 months   LCNI-5           MALAWI                         [52-58) kg       152     562
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168
24 months   MAL-ED           BRAZIL                         <52 kg            28     168
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168
24 months   MAL-ED           INDIA                          >=58 kg           38     226
24 months   MAL-ED           INDIA                          <52 kg           141     226
24 months   MAL-ED           INDIA                          [52-58) kg        47     226
24 months   MAL-ED           NEPAL                          >=58 kg           76     228
24 months   MAL-ED           NEPAL                          <52 kg            74     228
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228
24 months   MAL-ED           PERU                           >=58 kg           77     201
24 months   MAL-ED           PERU                           <52 kg            75     201
24 months   MAL-ED           PERU                           [52-58) kg        49     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         2956    3948
24 months   PROBIT           BELARUS                        <52 kg           322    3948
24 months   PROBIT           BELARUS                        [52-58) kg       670    3948
24 months   PROVIDE          BANGLADESH                     >=58 kg          112     578
24 months   PROVIDE          BANGLADESH                     <52 kg           362     578
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          170     421
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           132     421
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421


The following strata were considered:

* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d1e6be93-abef-4ff5-bad4-932003b39021/43c22e9b-e505-432f-95e6-91f8869d36a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d1e6be93-abef-4ff5-bad4-932003b39021/43c22e9b-e505-432f-95e6-91f8869d36a0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d1e6be93-abef-4ff5-bad4-932003b39021/43c22e9b-e505-432f-95e6-91f8869d36a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.5929730   -0.8859081   -0.3000378
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.0396947   -1.2276410   -0.8517483
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.0026829   -1.3235935   -0.6817723
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                 0.7160606    0.3286633    1.1034579
Birth       MAL-ED           BRAZIL                         <52 kg               NA                 0.1135714   -0.6355404    0.8626833
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -0.0507143   -0.6706476    0.5692190
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       MAL-ED           NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       MAL-ED           PERU                           >=58 kg              NA                 0.0074390   -0.1889371    0.2038151
Birth       MAL-ED           PERU                           <52 kg               NA                -0.2113580   -0.4068464   -0.0158697
Birth       MAL-ED           PERU                           [52-58) kg           NA                 0.1208621   -0.1298539    0.3715780
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1268116   -0.3971704    0.1435472
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.6500000   -1.3245997    0.0245997
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.1928571   -0.7737761    0.3880618
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.6956818    0.3908037    1.0005599
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.8267500    0.5064585    1.1470415
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7589655    0.3532055    1.1647256
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0473418   -1.3031887   -0.7914949
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4115338   -1.5200783   -1.3029893
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.3303659   -1.6012168   -1.0595149
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.8817760   -1.0426684   -0.7208835
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.4397113   -1.5573536   -1.3220689
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1822143   -1.3401198   -1.0243088
Birth       PROBIT           BELARUS                        >=58 kg              NA                -1.1156916   -1.3302215   -0.9011618
Birth       PROBIT           BELARUS                        <52 kg               NA                -1.2702891   -1.5000183   -1.0405600
Birth       PROBIT           BELARUS                        [52-58) kg           NA                -1.2262394   -1.4312411   -1.0212376
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -1.1591011   -1.3598831   -0.9583191
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.3570859   -1.4532953   -1.2608765
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2688421   -1.4441755   -1.0935087
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.3582558   -0.6622271   -0.0542845
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -0.7377053   -0.8940302   -0.5813805
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.4850568   -0.7642193   -0.2058944
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3468139   -0.3870259   -0.3066019
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7267134   -0.7881367   -0.6652900
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5629156   -0.6181505   -0.5076806
6 months    LCNI-5           MALAWI                         >=58 kg              NA                 0.6900877    0.5154843    0.8646912
6 months    LCNI-5           MALAWI                         <52 kg               NA                 0.3820635    0.2884742    0.4756528
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                 0.4884475    0.3517844    0.6251106
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.1177174   -0.4431553    0.2077205
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -0.2359307   -0.3892973   -0.0825641
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                 0.2089837   -0.0962359    0.5142034
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 1.0068613    0.7981707    1.2155519
6 months    MAL-ED           BRAZIL                         <52 kg               NA                 0.9787838    0.6127454    1.3448222
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.7804167    0.4042132    1.1566201
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.4149167   -0.6396692   -0.1901642
6 months    MAL-ED           INDIA                          <52 kg               NA                -0.8451655   -1.0177297   -0.6726013
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -0.5165646   -0.7574427   -0.2756865
6 months    MAL-ED           NEPAL                          >=58 kg              NA                 0.3694515    0.1384437    0.6004592
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.2233556   -0.4523738    0.0056626
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                 0.1661789   -0.0372891    0.3696468
6 months    MAL-ED           PERU                           >=58 kg              NA                 1.2823250    1.0736079    1.4910421
6 months    MAL-ED           PERU                           <52 kg               NA                 0.9306231    0.7430563    1.1181898
6 months    MAL-ED           PERU                           [52-58) kg           NA                 0.9094231    0.6758288    1.1430173
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.6401210    0.4603896    0.8198525
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.0601724   -0.3548732    0.4752180
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.3763821   -0.0122676    0.7650318
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5310638    0.3210600    0.7410676
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4432281    0.2181442    0.6683119
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6968966    0.4557475    0.9380456
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1881573   -0.3918086    0.0154940
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5236926   -0.6300335   -0.4173518
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3120370   -0.5708007   -0.0532734
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                 0.2482609    0.0838878    0.4126340
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.1079765   -0.2138915   -0.0020615
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                 0.1145608   -0.0451666    0.2742882
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.6033530    0.5442710    0.6624350
6 months    PROBIT           BELARUS                        <52 kg               NA                 0.4532918    0.3479744    0.5586091
6 months    PROBIT           BELARUS                        [52-58) kg           NA                 0.5329527    0.4678827    0.5980227
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                 0.2378704    0.0331729    0.4425679
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -0.3525758   -0.4524624   -0.2526891
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.0877982   -0.2712690    0.0956727
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.4145455   -0.7990768   -0.0300141
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -0.7170030   -0.8432391   -0.5907668
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -0.5486854   -0.7113513   -0.3860196
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1236693    0.0566249    0.1907137
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.0055324   -0.1227678    0.1338326
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0046007   -0.1235950    0.1143937
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4169812    0.3813945    0.4525679
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0405575   -0.0179057    0.0990207
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2701821    0.2201480    0.3202161
24 months   LCNI-5           MALAWI                         >=58 kg              NA                 0.2791781    0.0360584    0.5222978
24 months   LCNI-5           MALAWI                         <52 kg               NA                -0.1672255   -0.2704734   -0.0639776
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                 0.0642763   -0.0888953    0.2174479
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.5628750   -0.8581007   -0.2676493
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -0.9610000   -1.1046714   -0.8173286
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.5794595   -0.8806521   -0.2782668
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.5621254    0.3057142    0.8185365
24 months   MAL-ED           BRAZIL                         <52 kg               NA                 0.4163690   -0.0356112    0.8683493
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0555914   -0.4103863    0.5215691
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.4940789   -0.7642940   -0.2238639
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.0871986   -1.2382927   -0.9361044
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -0.9162766   -1.1137591   -0.7187941
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.1085526   -0.3208340    0.1037287
24 months   MAL-ED           NEPAL                          <52 kg               NA                -0.6747297   -0.8595296   -0.4899298
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -0.3500000   -0.5210566   -0.1789434
24 months   MAL-ED           PERU                           >=58 kg              NA                 0.3157576    0.1497167    0.4817985
24 months   MAL-ED           PERU                           <52 kg               NA                -0.1749111   -0.3914355    0.0416133
24 months   MAL-ED           PERU                           [52-58) kg           NA                 0.2276701   -0.0186873    0.4740275
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                 0.4545486    0.3136557    0.5954415
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                 0.1614881   -0.1906569    0.5136331
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                 0.2831140   -0.0247198    0.5909478
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2285976    0.0275266    0.4296685
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1449802   -0.3410225    0.0510622
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1075000   -0.1485640    0.3635640
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5428571   -0.7770205   -0.3086938
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0316910   -1.1489050   -0.9144771
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6561719   -0.8872620   -0.4250818
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2990580   -0.5043615   -0.0937545
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.8034799   -0.9219971   -0.6849626
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.5155340   -0.7154079   -0.3156601
24 months   PROBIT           BELARUS                        >=58 kg              NA                 0.7388492    0.6193570    0.8583415
24 months   PROBIT           BELARUS                        <52 kg               NA                 0.5266615    0.3084006    0.7449224
24 months   PROBIT           BELARUS                        [52-58) kg           NA                 0.6093060    0.4546652    0.7639468
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4002232   -0.5994765   -0.2009699
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.1177486   -1.2124763   -1.0230209
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.6326923   -0.8276871   -0.4376975
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2218235   -1.3895338   -1.0541133
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2539394   -1.4257110   -1.0821678
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0506723   -1.2262798   -0.8750648


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        NA                   NA                -1.1473357   -1.3582781   -0.9363933
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6669725   -0.8396268   -0.4943182
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4824198   -0.5113303   -0.4535093
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5788311    0.5205227    0.6371396
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6674586   -0.8042294   -0.5306877
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6995588    0.5828687    0.8162490
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4467217   -0.7947659   -0.0986774
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.4097100   -0.8442150    0.0247950
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.6024892   -1.4458427    0.2408644
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.7667749   -1.4977975   -0.0357523
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.2187970   -0.4958878    0.0582937
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg            0.1134230   -0.2050453    0.4318913
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5231884   -1.2499475    0.2035707
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0660455   -0.7067957    0.5747046
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.1310682   -0.3111278    0.5732642
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0632837   -0.4442514    0.5708188
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3641920   -0.6421121   -0.0862720
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2830241   -0.6556067    0.0895586
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5579353   -0.7572494   -0.3586212
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3004383   -0.5258724   -0.0750042
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1545975   -0.2628477   -0.0463473
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1105477   -0.1681670   -0.0529284
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.1979848   -0.4206272    0.0246577
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.1097410   -0.3763028    0.1568208
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.3794495   -0.6285629   -0.1303361
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1268010   -0.3560511    0.1024490
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3798994   -0.4533149   -0.3064840
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2161016   -0.2844237   -0.1477796
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3080242   -0.5061286   -0.1099199
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2016402   -0.4233679    0.0200874
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.1182133   -0.4779787    0.2415521
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.3267011   -0.1194702    0.7728724
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0280775   -0.4494276    0.3932725
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.2264446   -0.6566549    0.2037656
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4302489   -0.7136075   -0.1468903
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.1016480   -0.4310959    0.2278000
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5928070   -0.9180976   -0.2675165
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2032726   -0.5111099    0.1045647
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3517019   -0.6323157   -0.0710882
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3729019   -0.6861575   -0.0596463
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5799486   -1.0322386   -0.1276586
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2637389   -0.6919351    0.1644573
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0878358   -0.3956739    0.2200024
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1658327   -0.1539398    0.4856052
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3355354   -0.5652792   -0.1057915
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1238798   -0.4531706    0.2054111
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.3562374   -0.5517789   -0.1606958
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1337001   -0.3628973    0.0954972
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1500612   -0.2335873   -0.0665352
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0704003   -0.1216752   -0.0191254
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5904461   -0.8182145   -0.3626778
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3256685   -0.6005551   -0.0507820
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.3024575   -0.6080473    0.0031323
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1341400   -0.4781111    0.2098311
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1181369   -0.2628984    0.0266246
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1282700   -0.2648518    0.0083118
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3764237   -0.4448661   -0.3079813
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1467991   -0.2081980   -0.0854003
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4464036   -0.7105386   -0.1822686
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2149018   -0.5022495    0.0724459
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3981250   -0.7264536   -0.0697964
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg           -0.0165845   -0.4383370    0.4051681
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1457563   -0.6654032    0.3738905
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.5065340   -1.0384005    0.0253325
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.5931196   -0.9027090   -0.2835302
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.4221976   -0.7568848   -0.0875105
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5661771   -0.8476276   -0.2847266
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2414474   -0.5140711    0.0311764
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.4906687   -0.7635283   -0.2178091
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.0880875   -0.3851760    0.2090009
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.2930605   -0.6723452    0.0862242
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1714346   -0.5099792    0.1671100
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3735777   -0.6544018   -0.0927537
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1210976   -0.4466713    0.2044762
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4888339   -0.7506956   -0.2269721
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1133147   -0.4423058    0.2156763
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5044219   -0.7414785   -0.2673652
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.2164760   -0.5030054    0.0700534
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2121877   -0.4029330   -0.0214425
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1295433   -0.2731018    0.0140153
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7175254   -0.9381500   -0.4969008
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.2324691   -0.5112608    0.0463227
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0321159   -0.2721829    0.2079512
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1711513   -0.0716753    0.4139778


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.3603763   -0.6369232   -0.0838295
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.3142573   -0.6127089   -0.0158057
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.0504254   -0.2086639    0.1078130
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0661884   -0.2316730    0.0992962
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0626368   -0.1791579    0.3044314
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3025800   -0.5400860   -0.0650739
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3616971   -0.5014144   -0.2219797
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0316440   -0.0478902   -0.0153979
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.1469969   -0.3268931    0.0328993
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.3087167   -0.5257370   -0.0916963
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1356059   -0.1627669   -0.1084448
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.2382359   -0.4033191   -0.0731526
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.0199590   -0.3064303    0.2665124
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0420096   -0.1569930    0.0729739
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2884982   -0.5106574   -0.0663391
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2590207   -0.4457715   -0.0722699
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2274659   -0.3899690   -0.0649629
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1109711   -0.2088400   -0.0131022
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0051575   -0.1614841    0.1717991
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2592465   -0.4559222   -0.0625708
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.2184986   -0.3575761   -0.0794211
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0245219   -0.0357825   -0.0132612
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4365775   -0.6202328   -0.2529221
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.2529131   -0.5380050    0.0321788
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0456432   -0.0863195   -0.0049670
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1182808   -0.1432510   -0.0933106
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.3258062   -0.5504736   -0.1011388
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2564175   -0.5193738    0.0065389
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.1177603   -0.2661794    0.0306588
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.4578458   -0.7066438   -0.2090479
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2663596   -0.4335352   -0.0991841
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.2045594   -0.3514777   -0.0576411
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0629069   -0.1406025    0.0147887
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1738001   -0.3322456   -0.0153545
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3687219   -0.5924913   -0.1449526
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3112922   -0.4800473   -0.1425372
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0392904   -0.0732899   -0.0052908
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4912128   -0.6677409   -0.3146846
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0383081   -0.0858993    0.1625155

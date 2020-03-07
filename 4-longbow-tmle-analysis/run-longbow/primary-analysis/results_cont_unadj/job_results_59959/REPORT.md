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
Birth       JiVitA-3         BANGLADESH                     >=58 kg          500   22432
Birth       JiVitA-3         BANGLADESH                     <52 kg         20479   22432
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1453   22432
Birth       MAL-ED           BANGLADESH                     >=58 kg           38     222
Birth       MAL-ED           BANGLADESH                     <52 kg           143     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     222
Birth       MAL-ED           BRAZIL                         >=58 kg           34      64
Birth       MAL-ED           BRAZIL                         <52 kg            15      64
Birth       MAL-ED           BRAZIL                         [52-58) kg        15      64
Birth       MAL-ED           INDIA                          >=58 kg            6      43
Birth       MAL-ED           INDIA                          <52 kg            29      43
Birth       MAL-ED           INDIA                          [52-58) kg         8      43
Birth       MAL-ED           NEPAL                          >=58 kg            9      27
Birth       MAL-ED           NEPAL                          <52 kg             8      27
Birth       MAL-ED           NEPAL                          [52-58) kg        10      27
Birth       MAL-ED           PERU                           >=58 kg           83     226
Birth       MAL-ED           PERU                           <52 kg            84     226
Birth       MAL-ED           PERU                           [52-58) kg        59     226
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        22     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122
Birth       NIH-Birth        BANGLADESH                     >=58 kg           80     608
Birth       NIH-Birth        BANGLADESH                     <52 kg           441     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        87     608
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          186     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg           395     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       148     729
Birth       PROBIT           BELARUS                        >=58 kg        10277   13770
Birth       PROBIT           BELARUS                        <52 kg          1131   13770
Birth       PROBIT           BELARUS                        [52-58) kg      2362   13770
Birth       PROVIDE          BANGLADESH                     >=58 kg           91     517
Birth       PROVIDE          BANGLADESH                     <52 kg           330     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg        96     517
Birth       SAS-CompFeed     INDIA                          >=58 kg           91    1236
Birth       SAS-CompFeed     INDIA                          <52 kg           949    1236
Birth       SAS-CompFeed     INDIA                          [52-58) kg       196    1236
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031
6 months    JiVitA-3         BANGLADESH                     >=58 kg          407   16802
6 months    JiVitA-3         BANGLADESH                     <52 kg         15243   16802
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1152   16802
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
6 months    PROBIT           BELARUS                        >=58 kg         9740   13066
6 months    PROBIT           BELARUS                        <52 kg          1083   13066
6 months    PROBIT           BELARUS                        [52-58) kg      2243   13066
6 months    PROVIDE          BANGLADESH                     >=58 kg          109     603
6 months    PROVIDE          BANGLADESH                     <52 kg           385     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     603
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1331
6 months    SAS-CompFeed     INDIA                          <52 kg          1014    1331
6 months    SAS-CompFeed     INDIA                          [52-58) kg       214    1331
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254
24 months   JiVitA-3         BANGLADESH                     >=58 kg          197    8627
24 months   JiVitA-3         BANGLADESH                     <52 kg          7859    8627
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       571    8627
24 months   LCNI-5           MALAWI                         >=58 kg           77     578
24 months   LCNI-5           MALAWI                         <52 kg           348     578
24 months   LCNI-5           MALAWI                         [52-58) kg       153     578
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
24 months   NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   PROBIT           BELARUS                        <52 kg           325    4013
24 months   PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   PROVIDE          BANGLADESH                     >=58 kg          111     577
24 months   PROVIDE          BANGLADESH                     <52 kg           362     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           334    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
![](/tmp/2849500d-320e-473d-9ff7-09d29651eef5/d6bb6704-257e-4d26-83e0-96af64c3cdfb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2849500d-320e-473d-9ff7-09d29651eef5/d6bb6704-257e-4d26-83e0-96af64c3cdfb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2849500d-320e-473d-9ff7-09d29651eef5/d6bb6704-257e-4d26-83e0-96af64c3cdfb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.3279400   -1.4351134   -1.2207666
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -1.6082323   -1.6277212   -1.5887435
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.4172402   -1.4822519   -1.3522285
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.8605263   -1.1934296   -0.5276230
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.2264336   -1.3909880   -1.0618791
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.7612195   -1.0510261   -0.4714129
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.4776471   -0.8468523   -0.1084419
Birth       MAL-ED           BRAZIL                         <52 kg               NA                -1.0366667   -1.6510808   -0.4222525
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -0.8180000   -1.3482352   -0.2877648
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       MAL-ED           NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.5906024   -0.8027164   -0.3784884
Birth       MAL-ED           PERU                           <52 kg               NA                -1.2280952   -1.4046435   -1.0515470
Birth       MAL-ED           PERU                           [52-58) kg           NA                -0.8877966   -1.0770202   -0.6985731
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.4281159   -0.6475624   -0.2086694
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.1110000   -1.7501156   -0.4718844
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.7727273   -1.2464289   -0.2990256
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.9336170   -1.2641440   -0.6030901
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.4435556   -1.7889580   -1.0981531
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.9936667   -1.4099926   -0.5773408
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6547500   -0.8873394   -0.4221606
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0210658   -1.1242708   -0.9178607
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7286207   -0.9700029   -0.4872385
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.7291398   -0.8667315   -0.5915480
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.9954430   -1.0937165   -0.8971695
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.9039189   -1.0604950   -0.7473428
Birth       PROBIT           BELARUS                        >=58 kg              NA                 1.3940732    1.2326013    1.5555451
Birth       PROBIT           BELARUS                        <52 kg               NA                 0.8976702    0.7372930    1.0580474
Birth       PROBIT           BELARUS                        [52-58) kg           NA                 1.1520301    0.9944906    1.3095696
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4515385   -0.6266760   -0.2764009
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.0345152   -1.1191973   -0.9498330
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.8223958   -1.0363189   -0.6084727
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8928571   -1.0622664   -0.7234479
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -1.5276080   -1.6187867   -1.4364294
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.1568367   -1.3197720   -0.9939015
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3433333   -0.3748216   -0.3118451
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7784101   -0.8261212   -0.7306991
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5711275   -0.6159657   -0.5262894
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.0728010   -1.1941643   -0.9514376
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3344165   -1.3575257   -1.3113072
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.1215538   -1.2003538   -1.0427539
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -1.3240351   -1.5099668   -1.1381034
6 months    LCNI-5           MALAWI                         <52 kg               NA                -1.8257341   -1.9132597   -1.7382085
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                -1.4476256   -1.5819964   -1.3132547
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.9613768   -1.2149358   -0.7078178
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -1.3811147   -1.5311180   -1.2311114
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.8167886   -1.0288605   -0.6047168
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.0896350   -0.0909021    0.2701722
6 months    MAL-ED           BRAZIL                         <52 kg               NA                -0.0745045   -0.3953377    0.2463287
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0242647   -0.3338749    0.3824044
6 months    MAL-ED           INDIA                          >=58 kg              NA                -1.0030000   -1.2336709   -0.7723291
6 months    MAL-ED           INDIA                          <52 kg               NA                -1.2568721   -1.4110289   -1.1027154
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -1.2199320   -1.4890683   -0.9507956
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.3405907   -0.5209953   -0.1601862
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.8978222   -1.1123088   -0.6833357
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                -0.4669512   -0.6367439   -0.2971586
6 months    MAL-ED           PERU                           >=58 kg              NA                -1.1493667   -1.3350359   -0.9636975
6 months    MAL-ED           PERU                           <52 kg               NA                -1.4964953   -1.6659363   -1.3270544
6 months    MAL-ED           PERU                           [52-58) kg           NA                -1.3091410   -1.5108645   -1.1074175
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.9680819   -1.1173783   -0.8187856
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.4736207   -1.8298896   -1.1173518
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.2461382   -1.5845191   -0.9077573
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2325532   -1.4297533   -1.0353531
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5782632   -1.7760809   -1.3804454
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2462931   -1.4810438   -1.0115424
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0693075   -1.3232653   -0.8153497
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5351861   -1.6398037   -1.4305686
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0962551   -1.2853635   -0.9071468
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0414946   -1.1769074   -0.9060818
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.2963185   -1.3932499   -1.1993872
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1414189   -1.3034228   -0.9794151
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.1705715    0.0790104    0.2621326
6 months    PROBIT           BELARUS                        <52 kg               NA                -0.2324838   -0.3615692   -0.1033985
6 months    PROBIT           BELARUS                        [52-58) kg           NA                -0.0081297   -0.1135830    0.0973235
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.7390826   -0.9175574   -0.5606078
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -1.2590823   -1.3436048   -1.1745597
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.8411009   -1.0372051   -0.6449967
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.7707767   -0.9375282   -0.6040252
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -1.5445759   -1.6299011   -1.4592507
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.0202336   -1.1689152   -0.8715521
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4380106   -0.5015484   -0.3744728
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8894487   -1.0000391   -0.7788583
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5873146   -0.6906414   -0.4839877
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6748327   -0.7103637   -0.6393016
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2438094   -1.2991118   -1.1885070
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.9977783   -1.0468321   -0.9487245
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.7753299   -1.9207243   -1.6299356
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -2.0350503   -2.0630490   -2.0070515
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.7978284   -1.9020706   -1.6935862
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -1.5876623   -1.7712421   -1.4040825
24 months   LCNI-5           MALAWI                         <52 kg               NA                -2.0456609   -2.1507310   -1.9405909
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                -1.6709804   -1.8278629   -1.5140979
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -1.5368750   -1.7599771   -1.3137729
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -2.2310741   -2.3911605   -2.0709876
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.5337838   -1.7790116   -1.2885560
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0101223   -0.2224122    0.2021675
24 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.1102381   -0.5182426    0.2977664
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1672043   -0.2174917    0.5519003
24 months   MAL-ED           INDIA                          >=58 kg              NA                -1.5165789   -1.7979839   -1.2351740
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.9946099   -2.1475982   -1.8416217
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -1.8514894   -2.1492295   -1.5537492
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -1.0184211   -1.2192765   -0.8175656
24 months   MAL-ED           NEPAL                          <52 kg               NA                -1.6616892   -1.8783917   -1.4449867
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -1.2533974   -1.4304730   -1.0763218
24 months   MAL-ED           PERU                           >=58 kg              NA                -1.4853896   -1.6552639   -1.3155153
24 months   MAL-ED           PERU                           <52 kg               NA                -2.0304889   -2.2248082   -1.8361695
24 months   MAL-ED           PERU                           [52-58) kg           NA                -1.7466327   -2.0096552   -1.4836101
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -1.5052431   -1.6619515   -1.3485346
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -2.1647619   -2.5170679   -1.8124559
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.8689474   -2.2205799   -1.5173148
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4390854   -2.6462176   -2.2319532
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8505357   -3.0748775   -2.6261939
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6395833   -2.9079567   -2.3712100
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7233187   -2.0214854   -1.4251521
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3721889   -2.4879066   -2.2564711
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.9236328   -2.1842922   -1.6629734
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0799275   -1.2247081   -0.9351469
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.6427839   -1.7569524   -1.5286154
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.3912621   -1.5767639   -1.2057603
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0873846   -0.3978593    0.2230901
24 months   PROBIT           BELARUS                        <52 kg               NA                -0.4422769   -0.7995038   -0.0850501
24 months   PROBIT           BELARUS                        [52-58) kg           NA                -0.2521073   -0.5585365    0.0543218
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -1.0445045   -1.2187089   -0.8703001
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.8689641   -1.9679232   -1.7700049
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2581250   -1.4447531   -1.0714969
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4026230   -1.4808135   -1.3244326
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9810180   -2.1047630   -1.8572729
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7148456   -1.8222113   -1.6074800


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5896135   -1.6088760   -1.5703510
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5707921   -0.7685593   -0.3730248
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        NA                   NA                 1.3117829    1.1524074    1.4711583
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4220793   -1.5007856   -1.3433730
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4966839   -0.5196015   -0.4737663
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3134847   -1.3366230   -1.2903464
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1064864    0.0157994    0.1971734
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4003907   -1.4819787   -1.3188027
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8785195   -0.9045379   -0.8525011
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0134183   -2.0410747   -1.9857620
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8854671   -1.9666281   -1.8043062
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1439152   -0.4247957    0.1369654
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6070497   -1.6645093   -1.5495902


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.2802923   -0.3890989   -0.1714858
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0893002   -0.2107070    0.0321066
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3659073   -0.7372599    0.0054454
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0993068   -0.3420688    0.5406824
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.5590196   -1.2758301    0.1577908
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.3403529   -0.9864658    0.3057600
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.6374928   -0.9134668   -0.3615188
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2971942   -0.5814439   -0.0129445
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6828841   -1.3586248   -0.0071433
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3446113   -0.8666746    0.1774519
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.5099385   -0.9880085   -0.0318685
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0600496   -0.5916278    0.4715285
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3663158   -0.6207742   -0.1118573
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0738707   -0.4090769    0.2613355
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.2663033   -0.4353866   -0.0972199
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1747791   -0.3832199    0.0336617
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4964030   -0.5768313   -0.4159747
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2420431   -0.2984702   -0.1856160
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5829767   -0.7775126   -0.3884407
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3708574   -0.6473284   -0.0943863
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6347509   -0.7986319   -0.4708698
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.2639796   -0.4848460   -0.0431131
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4350768   -0.4922420   -0.3779116
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2277942   -0.2825845   -0.1730040
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.2616155   -0.3824669   -0.1407640
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0487528   -0.1877422    0.0902365
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.5016990   -0.7072017   -0.2961964
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1235905   -0.3529944    0.1058134
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4197379   -0.7143447   -0.1251311
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.1445882   -0.1859668    0.4751432
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1641395   -0.5322803    0.2040012
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0653703   -0.4664410    0.3357003
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.2538721   -0.5313129    0.0235686
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2169320   -0.5713942    0.1375302
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5572315   -0.8374997   -0.2769633
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1263605   -0.3741010    0.1213800
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3471287   -0.5984915   -0.0957658
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.1597744   -0.4339375    0.1143888
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5055388   -0.8918248   -0.1192527
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2780563   -0.6479090    0.0917964
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3457100   -0.6250301   -0.0663898
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0137399   -0.3203272    0.2928473
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4658786   -0.7405410   -0.1912163
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0269476   -0.3435808    0.2896855
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.2548240   -0.4213542   -0.0882938
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0999244   -0.3110686    0.1112198
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4030554   -0.4898785   -0.3162322
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1787013   -0.2350403   -0.1223622
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5199997   -0.7174771   -0.3225223
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.1020183   -0.3671789    0.1631422
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.7737992   -0.9249901   -0.6226084
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.2494569   -0.4941355   -0.0047784
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4514381   -0.5789814   -0.3238948
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1493040   -0.2706031   -0.0280048
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5689767   -0.6347095   -0.5032439
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3229456   -0.3835156   -0.2623756
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.2597203   -0.4078823   -0.1115583
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0224984   -0.1988127    0.1538159
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4579986   -0.6695199   -0.2464773
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0833181   -0.3248003    0.1581642
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.6941991   -0.9687937   -0.4196044
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0030912   -0.3284374    0.3346199
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1001158   -0.5600447    0.3598132
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1773266   -0.2620570    0.6167102
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4780310   -0.7983342   -0.1577277
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.3349104   -0.7445907    0.0747699
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.6432681   -0.9387388   -0.3477975
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2349764   -0.5027425    0.0327897
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.5450993   -0.8032025   -0.2869960
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2612430   -0.5743535    0.0518674
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6595188   -1.0451055   -0.2739322
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3637043   -0.7486757    0.0212671
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4114503   -0.7167911   -0.1061096
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2004980   -0.5395083    0.1385124
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6488701   -0.9687044   -0.3290359
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.2003141   -0.5963528    0.1957246
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5628563   -0.7472360   -0.3784767
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3113346   -0.5466479   -0.0760213
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3548923   -0.6756866   -0.0340980
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1647227   -0.4867679    0.1573224
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.8244596   -1.0248095   -0.6241097
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.2136205   -0.4689188    0.0416778
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5783949   -0.7247731   -0.4320167
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3122226   -0.4450425   -0.1794026


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.2616735   -0.3674733   -0.1558737
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2173566   -0.5189214    0.0842082
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.2107904   -0.4745036    0.0529227
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.3145303   -0.4759090   -0.1531516
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1426761   -0.2892036    0.0038513
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2028584   -0.4669913    0.0612745
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2762697   -0.4947479   -0.0577916
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1797765   -0.2998356   -0.0597175
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0822903   -0.0941277   -0.0704529
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4409760   -0.6012338   -0.2807183
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5292221   -0.6781434   -0.3803009
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1533506   -0.1753006   -0.1314005
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.2406837   -0.3581977   -0.1231697
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.3344356   -0.5076680   -0.1612033
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2436163   -0.4748948   -0.0123378
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0398834   -0.1426181    0.0628512
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2029574   -0.4245449    0.0186301
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2209912   -0.3740784   -0.0679040
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.1747357   -0.3192246   -0.0302467
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1046624   -0.1887827   -0.0205421
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1361917   -0.2916826    0.0192991
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3380745   -0.5732423   -0.1029068
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1571838   -0.2755019   -0.0388656
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0640851   -0.0783336   -0.0498366
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3504476   -0.5113113   -0.1895839
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.6296140   -0.7792356   -0.4799923
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1044659   -0.1416126   -0.0673193
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2036868   -0.2282788   -0.1790948
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.2380884   -0.3823201   -0.0938567
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.2978048   -0.4747492   -0.1208603
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.4415212   -0.6583750   -0.2246675
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0160350   -0.1080108    0.1400808
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.3678901   -0.6291634   -0.1066168
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2891667   -0.4556721   -0.1226612
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.2670814   -0.4134722   -0.1206905
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1379799   -0.2268048   -0.0491549
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2064754   -0.3746829   -0.0382678
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4957392   -0.7710999   -0.2203785
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3613371   -0.4905786   -0.2320955
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0565306   -0.1287078    0.0156466
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.5557555   -0.7158161   -0.3956948
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2044267   -0.2592109   -0.1496425

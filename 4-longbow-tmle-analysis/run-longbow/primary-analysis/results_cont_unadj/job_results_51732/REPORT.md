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

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           47     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          121     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            33     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        30     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           123     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        39     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           57     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            52     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           99     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           107     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        70     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          166     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        39     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           52     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           14     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           141     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        27     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            20      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         3      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5735   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2358   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2897   10990
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1019    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       212    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          107     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4171    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1675    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2096    7942
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          183     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       121     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/deb0f156-3abd-4b64-899f-4af37443ecf8/1380f900-8427-4753-894b-39cc7f3235f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/deb0f156-3abd-4b64-899f-4af37443ecf8/1380f900-8427-4753-894b-39cc7f3235f3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/deb0f156-3abd-4b64-899f-4af37443ecf8/1380f900-8427-4753-894b-39cc7f3235f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.8429787   -1.1278509   -0.5581066
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.1816667   -1.3387126   -1.0246207
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.7730233   -1.0587930   -0.4872535
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.6612397   -0.8589885   -0.4634908
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.8078788   -1.1584653   -0.4572923
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.9813333   -1.3881394   -0.5745273
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.6386111   -0.9519059   -0.3253163
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.1304878   -1.3061585   -0.9548171
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.0238462   -1.3633719   -0.6843204
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.6907018   -0.9600050   -0.4213985
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.0111538   -1.3378191   -0.6844886
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4660317   -0.6769210   -0.2551425
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.7005051   -0.9053872   -0.4956229
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.1633645   -1.3226703   -1.0040587
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.9318571   -1.1401783   -0.7235360
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.5909639   -0.7385930   -0.4433347
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.2434783   -1.5864417   -0.9005148
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.7979487   -1.1381148   -0.4577826
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.5998077   -0.8715643   -0.3280511
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.2317500   -1.6125386   -0.8509614
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.0924138   -1.5934630   -0.5913645
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -1.0221429   -1.7222355   -0.3220503
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.4553191   -1.6607641   -1.2498742
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1159259   -1.4539733   -0.7778785
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 1.4052647    1.2428617    1.5676678
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.9032007    0.7461268    1.0602746
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 1.1860076    1.0332907    1.3387245
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3439093   -0.3754150   -0.3124037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7804750   -0.8282854   -0.7326645
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5710183   -0.6159690   -0.5260676
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9607971   -1.2149621   -0.7066321
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3821645   -1.5325262   -1.2318028
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8175203   -1.0296531   -0.6053875
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0921776   -0.0885595    0.2729148
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0686937   -0.3909479    0.2535605
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0288725   -0.3279820    0.3857271
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0030000   -1.2336709   -0.7723291
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2648402   -1.4186158   -1.1110646
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2387755   -1.5099382   -0.9676128
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3416667   -0.5224164   -0.1609169
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8980889   -1.1127163   -0.6834615
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4641667   -0.6341556   -0.2941777
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.1546833   -1.3413882   -0.9679785
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4982555   -1.6678463   -1.3286646
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.3112308   -1.5135538   -1.1089077
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9683007   -1.1177142   -0.8188873
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.4727586   -1.8310427   -1.1144745
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2461382   -1.5845191   -0.9077573
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2325532   -1.4297533   -1.0353531
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5782632   -1.7760809   -1.3804454
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2095690   -1.4433076   -0.9758303
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7128283   -0.9215843   -0.5040723
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5380373   -1.6259901   -1.4500845
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.0617453   -1.1906316   -0.9328590
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0693075   -1.3232653   -0.8153497
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5351861   -1.6398037   -1.4305686
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0962551   -1.2853635   -0.9071468
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.7352336   -0.9163575   -0.5541098
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2611834   -1.3481657   -1.1742011
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8239623   -1.0245087   -0.6234158
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0414946   -1.1769074   -0.9060818
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2963185   -1.3932499   -1.1993872
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1414189   -1.3034228   -0.9794151
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4380106   -0.5015484   -0.3744728
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8894487   -1.0000391   -0.7788583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5873146   -0.6906414   -0.4839877
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1718405    0.0743351    0.2693459
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.2467867   -0.3876119   -0.1059615
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0392443   -0.0597253    0.1382140
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6991633   -0.7352107   -0.6631159
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2619313   -1.3180353   -1.2058274
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0082276   -1.0577399   -0.9587152
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3240351   -1.5099668   -1.1381034
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8257341   -1.9132597   -1.7382085
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4476256   -1.5819964   -1.3132547
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5230000   -1.7436901   -1.3023099
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.1925556   -2.3520171   -2.0330940
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.4871622   -1.7340429   -1.2402815
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0354587   -0.1738679    0.2447853
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0978571   -0.5088709    0.3131566
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1904839   -0.1923263    0.5732940
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.4684211   -1.7571261   -1.1797160
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9531206   -2.1074458   -1.7987953
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8198936   -2.1185090   -1.5212782
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.9932895   -1.1967146   -0.7898644
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6311486   -1.8499011   -1.4123962
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2122436   -1.3889943   -1.0354928
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4870130   -1.6569638   -1.3170622
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -2.0232000   -2.2167418   -1.8296582
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7455102   -2.0052620   -1.4857584
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.4884524   -1.6463715   -1.3305332
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.1398214   -2.4884176   -1.7912253
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8310526   -2.1861610   -1.4759443
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.3973171   -2.6017123   -2.1929218
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8135714   -3.0369573   -2.5901856
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.5987500   -2.8676995   -2.3298005
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.6910673   -1.9875346   -1.3945999
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3328977   -2.4489125   -2.2168830
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8849609   -2.1467599   -1.6231620
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0313514   -1.2061651   -0.8565376
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8523269   -1.9509612   -1.7536926
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2420192   -1.4293371   -1.0547014
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0705797   -1.2143905   -0.9267689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.6316484   -1.7455840   -1.5177127
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3747573   -1.5581139   -1.1914006
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0721992   -0.4039172    0.2595189
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4295846   -0.8084796   -0.0506896
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2508075   -0.5846029    0.0829879
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -2.1980874   -2.3955148   -2.0006601
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.7212879   -2.8936730   -2.5489027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -2.4420661   -2.6430145   -2.2411177
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5792208   -1.7636978   -1.3947438
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0314943   -2.1364891   -1.9264994
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6669281   -1.8238328   -1.5100234


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3716484   -1.5489439   -1.1943528
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3264008    1.1675653    1.4852363
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4974449   -0.5203958   -0.4744941
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006917   -1.4821813   -1.3192022
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8994195   -0.9257684   -0.8730707
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4241972   -2.5387692   -2.3096253
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8747405   -1.9558403   -1.7936407


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3386879   -0.6639810   -0.0133949
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0699555   -0.3335498    0.4734607
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1466391   -0.5491506    0.2558724
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.3200937   -0.7724163    0.1322290
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4918767   -0.8510617   -0.1326917
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3852350   -0.8472214    0.0767513
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.3204521   -0.7438130    0.1029088
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.2246700   -0.1173804    0.5667204
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4628594   -0.7223879   -0.2033309
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2313521   -0.5235411    0.0608369
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6525144   -1.0259020   -0.2791268
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2069849   -0.5778047    0.1638350
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.6319423   -1.0997581   -0.1641265
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.4926061   -1.0626078    0.0773956
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.4331763   -1.1756179    0.3092653
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.0937831   -0.9861578    0.7985916
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.5020640   -0.5877542   -0.4163738
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2192571   -0.2735395   -0.1649748
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4365657   -0.4938234   -0.3793079
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2271090   -0.2820013   -0.1722166
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4213674   -0.7166782   -0.1260566
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1432768   -0.1877824    0.4743359
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1608713   -0.5303489    0.2086062
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.0633051   -0.4633189    0.3367088
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2618402   -0.5390694    0.0153890
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2357755   -0.5917787    0.1202277
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5564222   -0.8370205   -0.2758239
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1225000   -0.3706264    0.1256264
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3435721   -0.5958017   -0.0913425
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1565474   -0.4318533    0.1187584
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.5044579   -0.8926484   -0.1162674
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2778375   -0.6477375    0.0920625
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3457100   -0.6250301   -0.0663898
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0229842   -0.2828288    0.3287973
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.8252090   -1.0192057   -0.6312124
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.3489170   -0.6388840   -0.0589500
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4658786   -0.7405410   -0.1912163
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0269476   -0.3435808    0.2896855
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5259497   -0.7268770   -0.3250224
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0887286   -0.3589595    0.1815023
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2548240   -0.4213542   -0.0882938
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0999244   -0.3110686    0.1112198
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4514381   -0.5789814   -0.3238948
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1493040   -0.2706031   -0.0280048
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4186272   -0.5219363   -0.3153180
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1325962   -0.1980711   -0.0671212
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5627681   -0.6294545   -0.4960817
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3090643   -0.3703088   -0.2478198
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.5016990   -0.7072017   -0.2961964
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1235905   -0.3529944    0.1058134
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6695556   -0.9418277   -0.3972835
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0358378   -0.2953029    0.3669786
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1333159   -0.5945641    0.3279324
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1550252   -0.2812789    0.5913292
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4846995   -0.8120630   -0.1573360
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3514726   -0.7668299    0.0638848
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6378592   -0.9365804   -0.3391379
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2189541   -0.4884399    0.0505317
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5361870   -0.7937559   -0.2786182
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2584972   -0.5689071    0.0519126
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6513690   -1.0340670   -0.2686711
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3426003   -0.7312394    0.0460389
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4162544   -0.7190392   -0.1134695
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2014329   -0.5392365    0.1363706
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6418305   -0.9601892   -0.3234717
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1938937   -0.5894080    0.2016206
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.8209755   -1.0216956   -0.6202554
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2106679   -0.4668862    0.0455504
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5610686   -0.7445431   -0.3775942
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3041776   -0.5372038   -0.0711514
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3573855   -0.7096197   -0.0051513
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1786083   -0.5383019    0.1810853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5232004   -0.7852962   -0.2611047
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2439787   -0.5256839    0.0377265
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4522735   -0.6645367   -0.2400103
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0877073   -0.3298867    0.1544720


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2025497   -0.4595110    0.0544116
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0784886   -0.1935512    0.0365740
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3814394   -0.6691047   -0.0937741
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0145889   -0.2365095    0.2073316
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2381181   -0.3944109   -0.0818254
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1012291   -0.1841246   -0.0183336
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.3269692   -0.5656057   -0.0883326
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.3495055   -1.0550619    0.3560509
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0788639   -0.0903487   -0.0673792
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1535356   -0.1755217   -0.1315496
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2448806   -0.4766973   -0.0130640
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0389645   -0.1417469    0.0638179
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2118369   -0.4334536    0.0097798
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2193927   -0.3727106   -0.0660747
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1725654   -0.3176396   -0.0274913
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1045005   -0.1887428   -0.0202581
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1275683   -0.2830932    0.0279567
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6878634   -0.8729868   -0.5027401
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3380745   -0.5732423   -0.1029068
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3496232   -0.5126828   -0.1865635
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1571838   -0.2755019   -0.0388656
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1044659   -0.1416126   -0.0673193
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0574523   -0.0725076   -0.0423969
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2002563   -0.2253325   -0.1751800
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3344356   -0.5076680   -0.1612033
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4201132   -0.6350899   -0.2051365
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0063865   -0.1171274    0.1299004
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3754949   -0.6425874   -0.1084024
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2819298   -0.4500254   -0.1138342
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2630865   -0.4088998   -0.1172733
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1335775   -0.2224958   -0.0446593
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2085708   -0.3753906   -0.0417510
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4897272   -0.7637777   -0.2156767
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5525723   -0.7129391   -0.3922055
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3589534   -0.4874256   -0.2304812
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0590750   -0.1377222    0.0195721
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2261098   -0.3653384   -0.0868812
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2955197   -0.4731194   -0.1179200

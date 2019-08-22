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

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           144     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          117     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            31     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        28     176
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           121     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        38     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           56     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            48     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     167
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           97     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           104     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        68     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          165     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           51     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            37     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        28     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           12     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           124     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        26     162
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         2      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2688   10285
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1016    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       213    1328
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           384     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          106     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4156    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1671    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2089    7916
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2957    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          167     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           129     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       117     413
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562


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
![](/tmp/c636b6fe-9b03-4e17-b15e-bcc45650b760/2a81a183-9b38-4883-a4ac-9adc6ef2fc74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c636b6fe-9b03-4e17-b15e-bcc45650b760/2a81a183-9b38-4883-a4ac-9adc6ef2fc74/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c636b6fe-9b03-4e17-b15e-bcc45650b760/2a81a183-9b38-4883-a4ac-9adc6ef2fc74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.6297826   -0.8909645   -0.3686007
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.0707639   -1.2489224   -0.8926054
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.0097674   -1.3260114   -0.6935234
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.4796581    0.2613249    0.6979913
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.3016129   -0.1553497    0.7585755
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0707143   -0.3225785    0.4640071
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.8033333   -1.1605636   -0.4461031
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.1092562   -1.2902879   -0.9282245
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.1971053   -1.4669908   -0.9272198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.7414286   -1.0031468   -0.4797103
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.0250000   -1.2802996   -0.7697004
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.9793651   -1.1845618   -0.7741683
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0416495   -0.1555215    0.2388205
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.2129808   -0.3742073   -0.0517542
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.0048529   -0.2323192    0.2420251
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0389091   -0.1215469    0.1993650
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.4226087   -0.8633104    0.0180930
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.1189474   -0.5789308    0.3410361
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5888235    0.3003594    0.8772877
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 1.0545946    0.7106469    1.3985422
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.8275000    0.4002654    1.2547346
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0483333   -0.3979297    0.4945964
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.2920968   -0.5938869    0.0096934
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.0953846   -0.5661531    0.3753839
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -1.1117229   -1.3258636   -0.8975821
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                -1.2655694   -1.4936246   -1.0375142
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -1.2274681   -1.4325809   -1.0223553
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3468139   -0.3870259   -0.3066019
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7267134   -0.7881367   -0.6652900
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5612649   -0.6164255   -0.5061042
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1196377   -0.4455696    0.2062943
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2380682   -0.3918467   -0.0842896
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.2067073   -0.0990880    0.5125026
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0081022    0.7991730    1.2170313
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.9754955    0.6111130    1.3398780
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7768137    0.3997877    1.1538398
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4149167   -0.6396692   -0.1901642
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8430137   -1.0141969   -0.6718305
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5008163   -0.7339936   -0.2676390
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3722574    0.1412042    0.6033105
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.2238889   -0.4527320    0.0049542
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1657317   -0.0377726    0.3692360
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2851667    1.0761905    1.4941428
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9320405    0.7444541    1.1196269
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.9090769    0.6751868    1.1429671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6400000    0.4602971    0.8197029
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0600000   -0.3553302    0.4753302
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3763821   -0.0122676    0.7650318
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5310638    0.3210600    0.7410676
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4182807    0.1955685    0.6409929
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6561207    0.4228129    0.8894284
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4145455   -0.7990768   -0.0300141
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7170030   -0.8432391   -0.5907668
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5486854   -0.7113513   -0.3860196
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1881573   -0.3918089    0.0154944
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5120356   -0.6161656   -0.4079056
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3120370   -0.5708011   -0.0532729
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2363208    0.0277766    0.4448649
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3716034   -0.4730975   -0.2701094
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0827358   -0.2709699    0.1054982
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2482609    0.0838878    0.4126340
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1079765   -0.2138915   -0.0020615
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1145608   -0.0451666    0.2742882
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1236693    0.0566249    0.1907137
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.0055324   -0.1227678    0.1338326
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0046007   -0.1235950    0.1143937
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.6069825    0.5492698    0.6646953
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.4492244    0.3422340    0.5562147
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5458051    0.4778007    0.6138094
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4112464    0.3752339    0.4472589
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0393208   -0.0203060    0.0989475
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2695357    0.2187015    0.3203698
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.6901754    0.5157299    0.8646209
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3819643    0.2883553    0.4755733
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4885845    0.3518637    0.6253052
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5598750   -0.8563545   -0.2633955
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9642963   -1.1078632   -0.8207293
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.5794595   -0.8806521   -0.2782668
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5419266    0.2878283    0.7960249
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.4212500   -0.0296751    0.8721751
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0350000   -0.4358066    0.5058066
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4940789   -0.7642940   -0.2238639
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0882270   -1.2392074   -0.9372465
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9162766   -1.1137591   -0.7187941
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1131579   -0.3243285    0.0980127
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6747297   -0.8595296   -0.4899298
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3500000   -0.5210566   -0.1789434
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3174026    0.1513716    0.4834335
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1530000   -0.3584124    0.0524124
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.2272449   -0.0185089    0.4729987
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4753571    0.3374260    0.6132883
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1642857   -0.1858964    0.5144678
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.2997368   -0.0064905    0.6059642
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2185366    0.0182418    0.4188314
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1471429   -0.3433312    0.0490455
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.1075000   -0.1485640    0.3635640
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5428571   -0.7770205   -0.3086938
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0316910   -1.1489050   -0.9144771
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.6561719   -0.8872620   -0.4250818
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3958036   -0.5960791   -0.1955281
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1132964   -1.2081912   -1.0184016
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6276923   -0.8238229   -0.4315617
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2990580   -0.5043615   -0.0937545
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.8034799   -0.9219971   -0.6849626
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.5155340   -0.7154079   -0.3156601
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7257147    0.6094626    0.8419668
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5263509    0.3217691    0.7309328
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5976965    0.4374998    0.7578932
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2436527   -1.4119127   -1.0753927
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2427132   -1.4155391   -1.0698873
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0429915   -1.2212773   -0.8647056
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2790411    0.0359777    0.5221045
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1674184   -0.2706658   -0.0641710
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0644737   -0.0887082    0.2176556


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2353086   -0.4984656    0.0278483
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1441825   -1.3547365   -0.9336286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4819806   -0.5108811   -0.4530800
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6674586   -0.8042294   -0.5306877
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2953392    0.2687669    0.3219114
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518399    0.3806212    0.5230586
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6877387    0.5737746    0.8017027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1865133   -1.2873598   -1.0856668
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0467082   -0.1287046    0.0352882


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4409813   -0.7571401   -0.1248224
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.3799848   -0.7901387    0.0301691
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1780452   -0.6844879    0.3283974
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.4089438   -0.8587756    0.0408879
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3059229   -0.7064050    0.0945593
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3937719   -0.8414902    0.0539463
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.2835714   -0.6491864    0.0820436
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2379365   -0.5705055    0.0946325
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2546303   -0.5093269    0.0000664
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0367965   -0.3452232    0.2716301
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4615178   -0.9305211    0.0074855
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1578565   -0.6450226    0.3293097
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.4657711    0.0168707    0.9146714
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.2386765   -0.2768242    0.7541772
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.3404301   -0.8005196    0.1196594
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1437179   -0.9680700    0.6806341
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1538465   -0.2597279   -0.0479651
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1157452   -0.1736132   -0.0578773
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3798994   -0.4533149   -0.3064840
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2144509   -0.2827130   -0.1461889
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1184305   -0.4788185    0.2419575
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.3263450   -0.1205805    0.7732705
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0326067   -0.4526377    0.3874243
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2312885   -0.6623337    0.1997568
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4280970   -0.7106167   -0.1455773
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0858997   -0.4097597    0.2379604
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5961463   -0.9213458   -0.2709468
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2065257   -0.5144210    0.1013697
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3531262   -0.6339458   -0.0723065
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3760897   -0.6897386   -0.0624409
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.5800000   -1.0325398   -0.1274602
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2636179   -0.6918021    0.1645663
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1127831   -0.4188915    0.1933252
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1250569   -0.1888446    0.4389583
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.3024575   -0.6080473    0.0031323
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1341400   -0.4781111    0.2098311
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3238783   -0.5526075   -0.0951491
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1238798   -0.4531712    0.2054117
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6079242   -0.8398546   -0.3759938
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3190566   -0.5999885   -0.0381247
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3562374   -0.5517789   -0.1606958
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1337001   -0.3628973    0.0954972
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1181369   -0.2628984    0.0266246
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1282700   -0.2648518    0.0083118
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1577582   -0.2433956   -0.0721207
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0611775   -0.1119487   -0.0104062
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3719256   -0.4415837   -0.3022676
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1417107   -0.2040085   -0.0794130
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3082112   -0.5061856   -0.1102367
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2015910   -0.4232298    0.0200479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4044213   -0.7338322   -0.0750104
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0195845   -0.4422156    0.4030467
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1206766   -0.6382666    0.3969134
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5069266   -1.0419264    0.0280732
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5941480   -0.9036819   -0.2846141
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4221976   -0.7568848   -0.0875105
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5615718   -0.8421855   -0.2809582
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2368421   -0.5086019    0.0349177
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4704026   -0.7345248   -0.2062804
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0901577   -0.3867402    0.2064248
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3110714   -0.6874389    0.0652961
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1756203   -0.5114777    0.1602371
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3656794   -0.6460504   -0.0853085
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1110366   -0.4361316    0.2140584
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4888339   -0.7506956   -0.2269721
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1133147   -0.4423058    0.2156763
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7174928   -0.9391125   -0.4958731
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2318887   -0.5122055    0.0484280
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5044219   -0.7414785   -0.2673652
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2164760   -0.5030054    0.0700534
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1993638   -0.3784822   -0.0202453
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1280182   -0.2763106    0.0202743
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0009395   -0.2402662    0.2421452
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.2006612   -0.0444862    0.4458087
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4464595   -0.7105425   -0.1823765
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2145674   -0.5018730    0.0727382


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3426637   -0.5875237   -0.0978038
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0964195   -0.2239054    0.0310665
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2665641   -0.5836917    0.0505635
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1712660   -0.3761757    0.0336436
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1077461   -0.2612776    0.0457853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0735109   -0.1745970    0.0275753
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2061765   -0.0177626    0.4301156
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2836420   -0.7542670    0.1869830
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0324597   -0.0481492   -0.0167702
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1351666   -0.1623140   -0.1080193
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0201583   -0.3071045    0.2667879
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0436070   -0.1585686    0.0713546
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2838777   -0.5052985   -0.0624568
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2612122   -0.4479965   -0.0744279
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2287880   -0.3914677   -0.0661083
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1109572   -0.2088382   -0.0130761
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0140125   -0.1795152    0.1514901
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2529131   -0.5380050    0.0321788
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2507529   -0.4467461   -0.0547596
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4443099   -0.6307868   -0.2578329
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2184986   -0.3575761   -0.0794211
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0456432   -0.0863195   -0.0049670
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0235754   -0.0351992   -0.0119515
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1159072   -0.1412293   -0.0905852
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2383355   -0.4033017   -0.0733694
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2609505   -0.5248414    0.0029405
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1136528   -0.2620040    0.0346985
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4584874   -0.7072645   -0.2097104
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2632895   -0.4297973   -0.0967816
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1975021   -0.3418278   -0.0531764
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0657418   -0.1428423    0.0113588
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1684431   -0.3264861   -0.0104002
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3687219   -0.5924913   -0.1449526
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4906956   -0.6679851   -0.3134060
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3112922   -0.4800473   -0.1425372
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0379760   -0.0717969   -0.0041551
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0571394   -0.0677026    0.1819813
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3257493   -0.5503714   -0.1011272

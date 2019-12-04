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

agecat      studyid                    country                        mbmi             n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight       194     222  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          28     222  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        59      64  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight           5      64  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        35      43  haz              
Birth       ki0047075b-MAL-ED          INDIA                          Underweight           8      43  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Normal weight        27      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          Underweight           0      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           Normal weight       221     226  haz              
Birth       ki0047075b-MAL-ED          PERU                           Underweight           5     226  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        98     101  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           3     101  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       115     122  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           7     122  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight       830    1135  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight         305    1135  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight       506     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight         102     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight       418     517  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          99     517  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       663     729  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          66     729  haz              
Birth       ki1119695-PROBIT           BELARUS                        Normal weight     13200   13723  haz              
Birth       ki1119695-PROBIT           BELARUS                        Underweight         523   13723  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      9162    9672  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         510    9672  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     13720   22355  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight        8635   22355  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight       209     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          32     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight       199     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           9     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight       186     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          49     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight       236     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          Underweight           0     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           Normal weight       267     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           Underweight           5     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       242     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       233     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          14     247  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight       904    1228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight         324    1228  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight       444     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          93     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight       498     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight         105     603  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       648     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          67     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight      1949    1983  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          34    1983  haz              
6 months    ki1119695-PROBIT           BELARUS                        Normal weight     12522   13027  haz              
6 months    ki1119695-PROBIT           BELARUS                        Underweight         505   13027  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      6999    7375  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight         376    7375  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight       691     836  haz              
6 months    ki1148112-LCNI-5           MALAWI                         Underweight         145     836  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight     10311   16760  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight        6449   16760  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight       183     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          29     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight       162     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           6     168  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight       180     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          46     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight       228     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          Underweight           0     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           Normal weight       197     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           Underweight           4     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight       227     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           7     234  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight       203     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          11     214  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight       349     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          80     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight       477     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight         100     577  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight       471     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          43     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         6       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           0       6  haz              
24 months   ki1119695-PROBIT           BELARUS                        Normal weight      3863    4005  haz              
24 months   ki1119695-PROBIT           BELARUS                        Underweight         142    4005  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight      1312    1373  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          61    1373  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight       482     577  haz              
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          95     577  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight      5289    8599  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight        3310    8599  haz              


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/216322f1-cef5-40ed-8b44-3d9ecccb2bd6/9dbc3565-a0e6-4ef0-b34e-89237f80cfc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/216322f1-cef5-40ed-8b44-3d9ecccb2bd6/9dbc3565-a0e6-4ef0-b34e-89237f80cfc2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/216322f1-cef5-40ed-8b44-3d9ecccb2bd6/9dbc3565-a0e6-4ef0-b34e-89237f80cfc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.0567467   -1.2035796   -0.9099138
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.1817014   -1.4983918   -0.8650111
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.6249153   -0.9137560   -0.3360745
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -1.4380000   -2.2732876   -0.6027124
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.2745714   -1.6299983   -0.9191446
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.0362500   -1.6020040   -0.4704960
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.8869683   -1.0065725   -0.7673641
Birth       ki0047075b-MAL-ED          PERU                           Underweight          NA                -1.7080000   -2.3409322   -1.0750678
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.0913043   -1.3056634   -0.8769453
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.8785714   -2.8008825   -0.9562603
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3709989   -1.4640712   -1.2779266
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6461229   -1.7561055   -1.5361403
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.8596059   -0.9554773   -0.7637344
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.2573992   -1.4770773   -1.0377211
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.8381567   -0.9237981   -0.7525152
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.1400684   -1.3091550   -0.9709819
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.8857747   -0.9624047   -0.8091448
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.2178137   -1.4466122   -0.9890151
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                 1.3381139    1.1783864    1.4978413
Birth       ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.9791365    0.7975396    1.1607334
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.4604127   -0.4854828   -0.4353427
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -0.7762778   -0.8940122   -0.6585435
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.6181206   -1.6412950   -1.5949462
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.5430983   -1.5712913   -1.5149053
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.1679807   -1.2937575   -1.0422039
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -1.6002296   -1.9102925   -1.2901667
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0708375   -0.0781476    0.2198227
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.4164815   -0.8769172    0.0439543
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.1969076   -1.3303819   -1.0634333
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.2073093   -1.4768857   -0.9377329
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -1.3101467   -1.4185443   -1.2017491
6 months    ki0047075b-MAL-ED          PERU                           Underweight          NA                -2.0693333   -2.9031517   -1.2355150
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.0471625   -1.1780920   -0.9162331
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -1.9571429   -2.5636947   -1.3505910
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -1.3530612   -1.4771425   -1.2289799
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -1.3808726   -2.0968990   -0.6648462
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -1.3382133   -1.4388103   -1.2376163
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          NA                -1.6009100   -1.7552407   -1.4465793
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -1.3440181   -1.4398308   -1.2482053
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -1.7066643   -1.9404651   -1.4728634
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.0443248   -1.1279723   -0.9606772
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -1.3471248   -1.5066836   -1.1875660
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.1585860   -1.2324729   -1.0846992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.7307320   -1.9912692   -1.4701948
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.5362267   -0.5866671   -0.4857863
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -0.6831971   -0.9206539   -0.4457404
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.1200841    0.0276762    0.2124920
6 months    ki1119695-PROBIT           BELARUS                        Underweight          NA                 0.0033992   -0.2234239    0.2302222
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.8687151   -0.8969074   -0.8405228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.1172080   -1.2376789   -0.9967371
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.6451013   -1.7234027   -1.5667998
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          NA                -1.7147146   -1.8701967   -1.5592325
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -1.3599942   -1.3868861   -1.3331022
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.2408471   -1.2715739   -1.2101204
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -1.9098981   -2.0415993   -1.7781969
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          NA                -2.4573774   -2.8574891   -2.0572657
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                 0.0261008   -0.1439691    0.1961708
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          NA                -0.5391667   -1.6773310    0.5989977
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -1.8743456   -2.0152647   -1.7334266
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          NA                -1.9203596   -2.1982034   -1.6425159
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -1.6131241   -1.7506877   -1.4755605
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          NA                -2.6192857   -3.1998173   -2.0387542
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -2.6392152   -2.7776138   -2.5008166
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          NA                -2.8246566   -3.4356684   -2.2136448
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -2.1156135   -2.2288417   -2.0023853
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          NA                -2.6667003   -2.8913013   -2.4420993
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -1.5264912   -1.6175276   -1.4354549
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          NA                -2.0477102   -2.2734348   -1.8219855
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -1.4033337   -1.4899131   -1.3167542
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          NA                -1.8596778   -2.1848426   -1.5345130
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.1328470   -0.4362844    0.1705904
24 months   ki1119695-PROBIT           BELARUS                        Underweight          NA                -0.0603224   -0.6794955    0.5588508
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -1.5979205   -1.6615374   -1.5343036
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          NA                -1.7200652   -2.0377601   -1.4023703
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -1.8563447   -1.9452676   -1.7674218
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          NA                -2.0132788   -2.2159625   -1.8105950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                -2.0597348   -2.0938025   -2.0256672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          NA                -1.9409503   -1.9811176   -1.9007830


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4438150   -1.5337502   -1.3538797
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3271449    1.1680455    1.4862444
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4764413   -0.5009156   -0.4519670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5893196   -1.6086080   -1.5700313
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5405711   -0.5899965   -0.4911457
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1153731    0.0222128    0.2085334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8800508   -0.9074511   -0.8526506
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3140048   -1.3371141   -1.2908955
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5983212   -1.6605141   -1.5361283
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.1249548   -0.4750717    0.2251622
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.8130847   -1.6969028    0.0707333
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight      0.2383214   -0.4298147    0.9064576
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.8210317   -1.4651655   -0.1768979
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.7872671   -1.7341607    0.1596266
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2751241   -0.3552893   -0.1949588
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3977934   -0.6374949   -0.1580918
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.3019118   -0.4915786   -0.1122450
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.3320389   -0.5734081   -0.0906698
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.3589774   -0.5025048   -0.2154499
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.3158651   -0.4362412   -0.1954889
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.0750223    0.0417738    0.1082707
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.4322489   -0.7683552   -0.0961427
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.4873190   -0.9712587   -0.0033793
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0104017   -0.3122397    0.2914363
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Underweight          Normal weight     -0.7591866   -1.6000214    0.0816481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -0.9099803   -1.5305024   -0.2894583
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.0278114   -0.7538946    0.6982718
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight          Normal weight     -0.2626967   -0.4287118   -0.0966816
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.3626462   -0.6156697   -0.1096227
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.3028000   -0.4830563   -0.1225438
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.5721460   -0.8434234   -0.3008686
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1469704   -0.3897612    0.0958203
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Underweight          Normal weight     -0.1166849   -0.3056381    0.0722682
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.2484929   -0.3721946   -0.1247912
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.0696133   -0.2435430    0.1043164
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1191470    0.0852833    0.1530107
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight          Normal weight     -0.5474793   -0.9684220   -0.1265366
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight          Normal weight     -0.5652675   -1.7160680    0.5855330
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Underweight          Normal weight     -0.0460140   -0.3562565    0.2642285
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight          Normal weight     -1.0061616   -1.6027692   -0.4095540
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     -0.1854414   -0.8121529    0.4412701
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight          Normal weight     -0.5510868   -0.8028057   -0.2993679
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight          Normal weight     -0.5212189   -0.7650991   -0.2773388
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight          Normal weight     -0.4563442   -0.7928447   -0.1198436
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Underweight          Normal weight      0.0725246   -0.5325177    0.6775669
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight          Normal weight     -0.1221447   -0.4464584    0.2021690
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Underweight          Normal weight     -0.1569341   -0.3785167    0.0646485
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        Normal weight      0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Underweight          Normal weight      0.1187845    0.0700062    0.1675629


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0211362   -0.0665800    0.0243076
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0635222   -0.1511062    0.0240617
Birth       ki0047075b-MAL-ED          INDIA                          Normal weight        NA                 0.0443389   -0.0830905    0.1717683
Birth       ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0181644   -0.0407101    0.0043812
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0451711   -0.1085427    0.0182006
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0728161   -0.0931183   -0.0525139
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0714139   -0.1139726   -0.0288552
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0543578   -0.0916926   -0.0170231
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0231416   -0.0447115   -0.0015717
Birth       ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0109689   -0.0163246   -0.0056132
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0160285   -0.0221081   -0.0099490
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0288010    0.0159410    0.0416609
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0370124   -0.0835377    0.0095129
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0210859   -0.0460040    0.0038322
6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0090499   -0.0707678    0.0526681
6 months    ki0047075b-MAL-ED          PERU                           Normal weight        NA                -0.0139556   -0.0382312    0.0103199
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0255818   -0.0511699    0.0000064
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0156838   -0.0510643    0.0196968
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                -0.0686760   -0.1123592   -0.0249927
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.0633640   -0.1077631   -0.0189649
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0452054   -0.0782139   -0.0121968
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0400923   -0.0662164   -0.0139682
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0043444   -0.0108316    0.0021428
6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0047110   -0.0115592    0.0021371
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0113357   -0.0175802   -0.0050913
6 months    ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0126739   -0.0424031    0.0170554
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0459894    0.0329531    0.0590256
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0684981   -0.1266777   -0.0103186
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight        NA                -0.0201881   -0.0642601    0.0238838
24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0101234   -0.0723385    0.0520917
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight        NA                -0.0300989   -0.0584341   -0.0017637
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0063455   -0.0400369    0.0273458
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                -0.1034444   -0.1540377   -0.0528511
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                -0.0737687   -0.1160477   -0.0314898
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0379309   -0.0654638   -0.0103980
24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                 0.0006290   -0.0191612    0.0204191
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0004007   -0.0145188    0.0137174
24 months   ki1148112-LCNI-5           MALAWI                         Normal weight        NA                -0.0288373   -0.0650566    0.0073820
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal weight        NA                 0.0459716    0.0270651    0.0648782

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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               220    229  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    229  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                65     65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0     65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                43     45  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                 2     45  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                26     27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1     27  haz              
Birth       ki0047075b-MAL-ED          PERU                           0               233    233  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                 0    233  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               111    113  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    113  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                80     92  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     92  haz              
Birth       ki1000108-IRC              INDIA                          0               319    387  haz              
Birth       ki1000108-IRC              INDIA                          1                68    387  haz              
Birth       ki1000109-EE               PAKISTAN                       0               224    240  haz              
Birth       ki1000109-EE               PAKISTAN                       1                16    240  haz              
Birth       ki1000109-ResPak           PAKISTAN                       0                30     34  haz              
Birth       ki1000109-ResPak           PAKISTAN                       1                 4     34  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               516    539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                23    539  haz              
Birth       ki1101329-Keneba           GAMBIA                         0              1374   1419  haz              
Birth       ki1101329-Keneba           GAMBIA                         1                45   1419  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               521    585  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1                64    585  haz              
Birth       ki1114097-CMIN             BANGLADESH                     0                16     18  haz              
Birth       ki1114097-CMIN             BANGLADESH                     1                 2     18  haz              
Birth       ki1114097-CONTENT          PERU                           0                 2      2  haz              
Birth       ki1114097-CONTENT          PERU                           1                 0      2  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               230    236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                 6    236  haz              
6 months    ki0047075b-MAL-ED          PERU                           0               273    273  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    365  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                52    365  haz              
6 months    ki1000108-IRC              INDIA                          0               337    406  haz              
6 months    ki1000108-IRC              INDIA                          1                69    406  haz              
6 months    ki1000109-EE               PAKISTAN                       0               347    373  haz              
6 months    ki1000109-EE               PAKISTAN                       1                26    373  haz              
6 months    ki1000109-ResPak           PAKISTAN                       0               202    227  haz              
6 months    ki1000109-ResPak           PAKISTAN                       1                25    227  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               590    604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    604  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019  haz              
6 months    ki1101329-Keneba           GAMBIA                         0              1836   1897  haz              
6 months    ki1101329-Keneba           GAMBIA                         1                61   1897  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               267    276  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 9    276  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               499    559  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1                60    559  haz              
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243  haz              
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243  haz              
6 months    ki1114097-CONTENT          PERU                           0               215    215  haz              
6 months    ki1114097-CONTENT          PERU                           1                 0    215  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               222    228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    228  haz              
24 months   ki0047075b-MAL-ED          PERU                           0               201    201  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               311    366  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                55    366  haz              
24 months   ki1000108-IRC              INDIA                          0               339    408  haz              
24 months   ki1000108-IRC              INDIA                          1                69    408  haz              
24 months   ki1000109-EE               PAKISTAN                       0               156    167  haz              
24 months   ki1000109-EE               PAKISTAN                       1                11    167  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               565    578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    578  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6  haz              
24 months   ki1101329-Keneba           GAMBIA                         0              1395   1442  haz              
24 months   ki1101329-Keneba           GAMBIA                         1                47   1442  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               430    479  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1                49    479  haz              
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242  haz              
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242  haz              
24 months   ki1114097-CONTENT          PERU                           0               164    164  haz              
24 months   ki1114097-CONTENT          PERU                           1                 0    164  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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




# Results Detail

## Results Plots
![](/tmp/c3364a19-a1bd-4d0f-830a-1a0678979478/c57ba9b6-0aa1-4205-ae22-b7d443604578/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c3364a19-a1bd-4d0f-830a-1a0678979478/c57ba9b6-0aa1-4205-ae22-b7d443604578/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c3364a19-a1bd-4d0f-830a-1a0678979478/c57ba9b6-0aa1-4205-ae22-b7d443604578/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1222727   -1.2564846   -0.9880609
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.6600000   -1.5592093    0.2392093
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8775955   -1.0910766   -0.6641145
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.6551531   -2.5575161   -0.7527901
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3895182   -0.5616776   -0.2173588
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0155326   -0.4088608    0.4399259
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.8884596   -2.0826032   -1.6943160
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.6496868   -2.4289364   -0.8704373
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8751550   -0.9527594   -0.7975506
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0855216   -1.4451408   -0.7259024
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0377955   -0.0292433    0.1048342
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.1599923   -0.2667936    0.5867781
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.0533394   -1.1453996   -0.9612792
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0907026   -1.3181361   -0.8632690
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.2135826   -1.3270160   -1.1001493
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2110180   -1.3351630   -1.0868730
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1913671   -1.6311989   -0.7515353
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5467101   -0.6599035   -0.4335168
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.1316667   -1.8892005   -0.3741328
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4313324   -1.5845645   -1.2781003
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3874721   -1.8014109   -0.9735332
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.3347419   -1.4748150   -1.1946688
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.6985786   -1.0350496   -0.3621076
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0510478   -2.1732899   -1.9288057
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.5129699   -3.0427842   -1.9831556
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.4678719   -1.6880226   -1.2477213
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.5838857   -1.1781464    0.0103750
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0710296   -1.1457420   -0.9963172
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.1457566   -2.6641619   -1.6273514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5429630   -0.5929397   -0.4929863
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5991826   -0.8599404   -0.3384248
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.9057713   -0.9546644   -0.8568783
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.6307724   -1.9745014   -1.2870435
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5415418   -1.6567941   -1.4262896
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.5211111   -3.0985428   -1.9436794
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3218376   -1.4037001   -1.2399751
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.6293208   -1.8824633   -1.3761782
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7691835   -1.9106856   -1.6276814
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.0907000   -2.6770651   -1.5043349
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9994417   -2.1279716   -1.8709119
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2558333   -1.7012482   -0.8104185
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9120506   -2.0434196   -1.7806816
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.5542641   -2.0157511   -1.0927771
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2999550   -1.4209558   -1.1789541
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5900000   -2.3102086   -0.8697914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4943169   -2.5992071   -2.3894267
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8203821   -3.0869922   -2.5537719
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.8159424   -1.9212027   -1.7106821
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.7042585   -1.9111162   -1.4974007
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.6369227   -2.7879668   -2.4858786
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -3.3847201   -3.7027559   -3.0666844
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.6013891   -1.6864992   -1.5162789
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5572867   -1.8651580   -1.2494155
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5743285   -1.6285873   -1.5200698
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.0995173   -2.4560662   -1.7429683
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8712472   -1.9602031   -1.7822912
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.2133498   -2.5360898   -1.8906098
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.5005794   -2.6283894   -2.3727694
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.7794444   -3.3734067   -2.1854822


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1041048   -1.2383048   -0.9699048
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3117313   -0.4727359   -0.1507267
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0432135   -0.0229516    0.1093787
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0554530   -1.1411259   -0.9697801
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4241872   -1.5668135   -1.2815609
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2382964   -1.3698449   -1.1067479
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.3874523   -1.5959323   -1.1789723
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5450830   -0.5941754   -0.4959906
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9282048   -0.9770928   -0.8793169
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5734843   -1.6884116   -1.4585570
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3533244   -1.4319426   -1.2747062
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5489071   -2.6476125   -2.4502017
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7989338   -1.8927769   -1.7050907
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5924094   -1.6461889   -1.5386298
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8938622   -1.9795205   -1.8082040
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.4622727   -0.4468973    1.3714428
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.7775576   -1.7077722    0.1526570
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.4050508   -0.0528816    0.8629832
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.2387728   -0.5713997    1.0489453
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2103667   -0.5777495    0.1570162
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.1221968   -0.3099628    0.5543563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0373632   -0.2821620    0.2074356
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2957255   -1.0734367    1.6648877
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0196509   -0.4376842    0.4769861
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.5849565   -1.3509005    0.1809875
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0438603   -0.3984014    0.4861220
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.6361633    0.2712316    1.0010950
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.4619221   -1.0057710    0.0819267
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.8839862    0.2496714    1.5183011
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -1.0747270   -1.5980213   -0.5514327
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0562197   -0.3214967    0.2090573
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.7250011   -1.0722523   -0.3777499
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.9795693   -1.5683905   -0.3907481
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.3074831   -0.5734647   -0.0415016
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.3215165   -0.9244020    0.2813690
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.7436084    0.2800199    1.2071969
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.3577865   -0.1215226    0.8370956
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2900450   -1.0203475    0.4402574
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3260651   -0.6132700   -0.0388602
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.1116839   -0.1204536    0.3438215
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.7477974   -1.1001277   -0.3954672
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0441023   -0.2753337    0.3635383
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.5251887   -0.8861595   -0.1642180
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.3421027   -0.6773017   -0.0069036
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0181679   -0.0194178    0.0557537
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0836001   -0.2001321    0.0329319
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0777870   -0.0045318    0.1601058
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0275846   -0.0263419    0.0815111
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0099471   -0.0230503    0.0031561
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0054180   -0.0084004    0.0192365
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0021136   -0.0284363    0.0242091
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0085895   -0.0316719    0.0488510
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0005074   -0.0323419    0.0313270
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0148718   -0.0376268    0.0078833
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0071451   -0.0533471    0.0676374
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0964455    0.0307582    0.1621328
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0325090   -0.0699478    0.0049299
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0804197    0.0035872    0.1572521
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0206619   -0.0383054   -0.0030184
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0021200   -0.0087876    0.0045476
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0224335   -0.0346552   -0.0102117
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0319425   -0.0600761   -0.0038089
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0314868   -0.0619987   -0.0009749
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0152541   -0.0427830    0.0122748
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0210455   -0.0001441    0.0422351
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0258612   -0.0088429    0.0605653
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0076328   -0.0277780    0.0125124
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0545902   -0.1001624   -0.0090179
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0170086   -0.0218730    0.0558901
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0330673   -0.0624206   -0.0037140
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0010331   -0.0088169    0.0067508
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0180809   -0.0302413   -0.0059204
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0226151   -0.0554227    0.0101926
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858

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
* impfloor
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               220    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                65     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0     65
Birth       ki0047075b-MAL-ED          INDIA                          0                43     45
Birth       ki0047075b-MAL-ED          INDIA                          1                 2     45
Birth       ki0047075b-MAL-ED          NEPAL                          0                26     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1     27
Birth       ki0047075b-MAL-ED          PERU                           0               233    233
Birth       ki0047075b-MAL-ED          PERU                           1                 0    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               111    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                80     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     92
Birth       ki1000108-IRC              INDIA                          0               319    387
Birth       ki1000108-IRC              INDIA                          1                68    387
Birth       ki1000109-EE               PAKISTAN                       0               224    240
Birth       ki1000109-EE               PAKISTAN                       1                16    240
Birth       ki1000109-ResPak           PAKISTAN                       0                30     34
Birth       ki1000109-ResPak           PAKISTAN                       1                 4     34
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               516    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                23    539
Birth       ki1101329-Keneba           GAMBIA                         0                12     13
Birth       ki1101329-Keneba           GAMBIA                         1                 1     13
Birth       ki1113344-GMS-Nepal        NEPAL                          0               521    585
Birth       ki1113344-GMS-Nepal        NEPAL                          1                64    585
Birth       ki1114097-CMIN             BANGLADESH                     0                16     18
Birth       ki1114097-CMIN             BANGLADESH                     1                 2     18
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               230    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 6    236
6 months    ki0047075b-MAL-ED          PERU                           0               273    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                52    365
6 months    ki1000108-IRC              INDIA                          0               337    406
6 months    ki1000108-IRC              INDIA                          1                69    406
6 months    ki1000109-EE               PAKISTAN                       0               347    373
6 months    ki1000109-EE               PAKISTAN                       1                26    373
6 months    ki1000109-ResPak           PAKISTAN                       0               202    227
6 months    ki1000109-ResPak           PAKISTAN                       1                25    227
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               590    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019
6 months    ki1101329-Keneba           GAMBIA                         0              1836   1897
6 months    ki1101329-Keneba           GAMBIA                         1                61   1897
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               267    276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 9    276
6 months    ki1113344-GMS-Nepal        NEPAL                          0               499    559
6 months    ki1113344-GMS-Nepal        NEPAL                          1                60    559
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243
6 months    ki1114097-CONTENT          PERU                           0               215    215
6 months    ki1114097-CONTENT          PERU                           1                 0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               222    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 6    228
24 months   ki0047075b-MAL-ED          PERU                           0               201    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               311    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                55    366
24 months   ki1000108-IRC              INDIA                          0               339    408
24 months   ki1000108-IRC              INDIA                          1                69    408
24 months   ki1000109-EE               PAKISTAN                       0               156    167
24 months   ki1000109-EE               PAKISTAN                       1                11    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               565    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6
24 months   ki1101329-Keneba           GAMBIA                         0              1395   1442
24 months   ki1101329-Keneba           GAMBIA                         1                47   1442
24 months   ki1113344-GMS-Nepal        NEPAL                          0               430    479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                49    479
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242
24 months   ki1114097-CONTENT          PERU                           0               164    164
24 months   ki1114097-CONTENT          PERU                           1                 0    164


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/5ec43da4-3343-4926-acc2-522cec1dd4e0/2d1c5051-370e-4e2d-9c6a-630f9572ccfc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5ec43da4-3343-4926-acc2-522cec1dd4e0/2d1c5051-370e-4e2d-9c6a-630f9572ccfc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5ec43da4-3343-4926-acc2-522cec1dd4e0/2d1c5051-370e-4e2d-9c6a-630f9572ccfc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1222727   -1.2564846   -0.9880609
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.6600000   -1.5592093    0.2392093
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8795863   -1.0941752   -0.6649975
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.8098943   -2.6961871   -0.9236016
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3852055   -0.5573569   -0.2130541
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.1067343   -0.3223330    0.5358015
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.8844515   -2.0784700   -1.6904329
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -1.5202838   -2.3589339   -0.6816338
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8745720   -0.9520159   -0.7971281
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1688115   -1.4788945   -0.8587286
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.0571772   -1.1491838   -0.9651705
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1027664   -1.3398508   -0.8656821
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.2140954   -1.3277296   -1.1004613
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2113480   -1.3355490   -1.0871470
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1500586   -1.5595788   -0.7405385
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5459348   -0.6592446   -0.4326250
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.1408333   -1.8980656   -0.3836011
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4222375   -1.5758616   -1.2686135
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3224184   -1.7436021   -0.9012347
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.3388261   -1.4788381   -1.1988141
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.6946089   -1.0350216   -0.3541962
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0469201   -2.1690268   -1.9248133
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.6272922   -3.1353040   -2.1192805
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.4777726   -1.6978957   -1.2576496
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6850462   -1.3146014   -0.0554910
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0712335   -1.1457522   -0.9967147
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.0308426   -2.5738652   -1.4878199
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5432993   -0.5932467   -0.4933519
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5843223   -0.8520265   -0.3166180
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.9053798   -0.9542651   -0.8564944
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.6479711   -1.9945573   -1.3013849
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5415418   -1.6567941   -1.4262896
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.5211111   -3.0985428   -1.9436794
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3216164   -1.4035428   -1.2396899
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.6574760   -1.9225604   -1.3923916
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7695312   -1.9111078   -1.6279545
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.0554572   -2.6034929   -1.5074214
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9999757   -2.1284968   -1.8714547
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2558333   -1.7012482   -0.8104185
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9085214   -2.0396123   -1.7774305
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.4822170   -1.8857759   -1.0786580
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3043468   -1.4255244   -1.1831693
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5900000   -2.3102086   -0.8697914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4930855   -2.5982097   -2.3879613
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8236332   -3.0895539   -2.5577125
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.8174188   -1.9225733   -1.7122643
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.7775435   -1.9795956   -1.5754913
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.6343538   -2.7853738   -2.4833338
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -3.2338954   -3.6201742   -2.8476166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.6015808   -1.6866968   -1.5164647
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5437364   -1.8408624   -1.2466105
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5722533   -1.6264470   -1.5180596
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.1887296   -2.5302016   -1.8472575
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8709624   -1.9598555   -1.7820692
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.1969626   -2.5051803   -1.8887448
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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0554530   -1.1411259   -0.9697801
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
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
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.9303080   -1.8479454   -0.0126706
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.4919398    0.0290077    0.9548719
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.3641676   -0.4993221    1.2276574
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2942395   -0.6130202    0.0245411
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0455893   -0.2999971    0.2088186
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2962383   -1.0729405    1.6654171
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0612893   -0.3671307    0.4897093
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.5948986   -1.3605615    0.1707644
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0998192   -0.3501324    0.5497707
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.6442172    0.2776921    1.0107422
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.5803722   -1.1031830   -0.0575613
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.7927264    0.1248652    1.4605877
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.9596091   -1.5077107   -0.4115075
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0410230   -0.3134696    0.2314237
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.7425913   -1.0926809   -0.3925017
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.9795693   -1.5683905   -0.3907481
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.3358597   -0.6133297   -0.0583896
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2859260   -0.8518134    0.2799614
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.7441424    0.2805563    1.2077284
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.4263044    0.0017001    0.8509088
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2856532   -1.0159849    0.4446786
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3305477   -0.6165836   -0.0445118
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.0398753   -0.1881232    0.2678738
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.5995415   -1.0162138   -0.1828693
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0578444   -0.2512189    0.3669076
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.6164763   -0.9624786   -0.2704740
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.3260002   -0.6469236   -0.0050768
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0181679   -0.0194178    0.0557537
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0816093   -0.1979715    0.0347528
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0734743   -0.0087022    0.1556508
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0235765   -0.0275397    0.0746926
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0105300   -0.0237063    0.0026463
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0017242   -0.0256914    0.0291398
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0086044   -0.0316592    0.0488681
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0000221   -0.0318368    0.0317926
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0151245   -0.0379777    0.0077286
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0019497   -0.0634339    0.0595345
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.1005297    0.0356841    0.1653752
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0366367   -0.0741259    0.0008525
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0903204    0.0131440    0.1674967
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0204580   -0.0381504   -0.0027656
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017837   -0.0087117    0.0051444
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0228251   -0.0350197   -0.0106305
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0319425   -0.0600761   -0.0038089
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0317080   -0.0621025   -0.0013136
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0149064   -0.0427638    0.0129510
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0210606   -0.0001383    0.0422596
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0236756   -0.0106640    0.0580152
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0075172   -0.0276359    0.0126015
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0558216   -0.1013462   -0.0102971
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0184850   -0.0202761    0.0572460
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0356362   -0.0668827   -0.0043897
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0008414   -0.0085707    0.0068880
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0201561   -0.0324548   -0.0078574
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0228998   -0.0552343    0.0094346
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858

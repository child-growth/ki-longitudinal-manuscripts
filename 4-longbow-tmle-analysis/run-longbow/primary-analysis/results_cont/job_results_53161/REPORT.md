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
Birth       ki1101329-Keneba           GAMBIA                         0              1374   1419
Birth       ki1101329-Keneba           GAMBIA                         1                45   1419
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
![](/tmp/5a45060e-80da-4c2a-9c60-3e906e394897/8ff0df98-4258-4ee2-88ee-cc633b725a0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5a45060e-80da-4c2a-9c60-3e906e394897/8ff0df98-4258-4ee2-88ee-cc633b725a0c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5a45060e-80da-4c2a-9c60-3e906e394897/8ff0df98-4258-4ee2-88ee-cc633b725a0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1222727   -1.2564846   -0.9880609
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.6600000   -1.5592093    0.2392093
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8699974   -1.0835718   -0.6564229
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.5211882   -2.3690986   -0.6732778
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3906182   -0.5629315   -0.2183050
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0001581   -0.4299977    0.4303138
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.8843185   -2.0785952   -1.6900419
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.8841871   -1.6643827   -0.1039915
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8747810   -0.9523389   -0.7972230
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0953460   -1.4447457   -0.7459463
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0386765   -0.0282236    0.1055766
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.1685330   -0.2717501    0.6088161
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.0545056   -1.1463769   -0.9626342
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0787384   -1.3120932   -0.8453837
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.2135826   -1.3270160   -1.1001493
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2135127   -1.3376326   -1.0893928
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0816073   -1.5155399   -0.6476747
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.5467101   -0.6599035   -0.4335168
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.1316667   -1.8892005   -0.3741328
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4174852   -1.5709734   -1.2639969
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3253339   -1.7530260   -0.8976418
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.3363143   -1.4762316   -1.1963969
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.8290156   -1.1716116   -0.4864196
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.0532111   -2.1754449   -1.9309772
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.4914807   -2.9934571   -1.9895043
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.4719913   -1.6921595   -1.2518230
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6576007   -1.2767125   -0.0384889
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0706884   -1.1452388   -0.9961379
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9400702   -2.4531336   -1.4270067
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5431030   -0.5930063   -0.4931997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5952381   -0.8687847   -0.3216914
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.9049589   -0.9538444   -0.8560733
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.6430315   -1.9892313   -1.2968316
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5415418   -1.6567941   -1.4262896
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.5211111   -3.0985428   -1.9436794
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3206073   -1.4024071   -1.2388075
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.6246711   -1.8900615   -1.3592808
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7714847   -1.9133246   -1.6296449
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.1944570   -2.8488440   -1.5400699
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9994417   -2.1279716   -1.8709119
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2558333   -1.7012482   -0.8104185
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9117038   -2.0426111   -1.7807965
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.6707771   -2.0704116   -1.2711426
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2999550   -1.4209558   -1.1789541
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5900000   -2.3102086   -0.8697914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4956834   -2.6006873   -2.3906794
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8517730   -3.1202695   -2.5832765
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.8159607   -1.9211357   -1.7107857
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6803782   -1.8812834   -1.4794731
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.6361627   -2.7873261   -2.4849994
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -3.1398489   -3.4819561   -2.7977416
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.6014116   -1.6865286   -1.5162946
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5385889   -1.8318882   -1.2452896
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5737755   -1.6280327   -1.5195183
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.0636256   -2.4113229   -1.7159284
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8737413   -1.9624917   -1.7849908
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.0945122   -2.4083874   -1.7806371
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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.6511908   -1.5278060    0.2254244
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.3907763   -0.0727948    0.8543474
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  1.0001314    0.1913820    1.8088808
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2205650   -0.5780526    0.1369225
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.1298565   -0.3156369    0.5753499
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0242329   -0.2749338    0.2264680
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2957255   -1.0734367    1.6648877
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.1319054   -0.3200226    0.5838333
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.5849565   -1.3509005    0.1809875
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0921512   -0.3642388    0.5485413
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.5072987    0.1388356    0.8757618
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.4382696   -0.9552601    0.0787208
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.8143906    0.1572499    1.4715312
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.8693818   -1.3874503   -0.3513133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0521350   -0.3301902    0.2259202
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.7380726   -1.0878405   -0.3883048
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.9795693   -1.5683905   -0.3907481
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.3040639   -0.5818334   -0.0262943
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.4229723   -1.0927713    0.2468268
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.7436084    0.2800199    1.2071969
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.2409267   -0.1803150    0.6621684
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2900450   -1.0203475    0.4402574
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3560896   -0.6445027   -0.0676766
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.1355825   -0.0913063    0.3624712
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.5036861   -0.8787388   -0.1286334
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0628227   -0.2427150    0.3683603
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.4898502   -0.8421163   -0.1375840
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.2207710   -0.5464499    0.1049080
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0181679   -0.0194178    0.0557537
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0911983   -0.2073393    0.0249428
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0788870   -0.0035806    0.1613545
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0234435   -0.0292919    0.0761789
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0103211   -0.0239562    0.0033141
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0045370   -0.0092205    0.0182945
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0009474   -0.0281602    0.0262653
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0085895   -0.0316719    0.0488510
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0019873   -0.0294706    0.0334451
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0148718   -0.0376268    0.0078833
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0067020   -0.0690657    0.0556617
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0980179    0.0335279    0.1625079
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0303457   -0.0678887    0.0071973
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0845390    0.0085331    0.1605449
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0210031   -0.0388111   -0.0031952
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019799   -0.0088616    0.0049017
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0232460   -0.0356321   -0.0108599
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0319425   -0.0600761   -0.0038089
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0327171   -0.0630544   -0.0023798
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0129529   -0.0405876    0.0146818
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0210455   -0.0001441    0.0422351
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0255143   -0.0090472    0.0600759
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0076328   -0.0277780    0.0125124
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0532237   -0.0982869   -0.0081605
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0170269   -0.0218401    0.0558939
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0338273   -0.0644077   -0.0032468
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0010106   -0.0088087    0.0067876
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0186339   -0.0307903   -0.0064775
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0201210   -0.0526016    0.0123597
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858

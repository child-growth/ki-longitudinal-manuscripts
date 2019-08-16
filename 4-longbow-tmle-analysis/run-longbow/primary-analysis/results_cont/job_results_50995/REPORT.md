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
* W_mage
* meducyrs
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               246    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 9    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0               191    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0    191
Birth       ki0047075b-MAL-ED          INDIA                          0               191    206
Birth       ki0047075b-MAL-ED          INDIA                          1                15    206
Birth       ki0047075b-MAL-ED          NEPAL                          0               170    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3    173
Birth       ki0047075b-MAL-ED          PERU                           0               286    286
Birth       ki0047075b-MAL-ED          PERU                           1                 0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               255    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 6    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                78     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                12     90
Birth       ki1000108-IRC              INDIA                          0               319    388
Birth       ki1000108-IRC              INDIA                          1                69    388
Birth       ki1000109-EE               PAKISTAN                       0                 2      2
Birth       ki1000109-EE               PAKISTAN                       1                 0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 6      7
Birth       ki1000109-ResPak           PAKISTAN                       1                 1      7
Birth       ki1101329-Keneba           GAMBIA                         0              1507   1541
Birth       ki1101329-Keneba           GAMBIA                         1                34   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                 5      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 3      8
Birth       ki1114097-CMIN             PERU                           0                10     10
Birth       ki1114097-CMIN             PERU                           1                 0     10
Birth       ki1114097-CONTENT          PERU                           0                 2      2
Birth       ki1114097-CONTENT          PERU                           1                 0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 7    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0               208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1    209
6 months    ki0047075b-MAL-ED          INDIA                          0               218    236
6 months    ki0047075b-MAL-ED          INDIA                          1                18    236
6 months    ki0047075b-MAL-ED          NEPAL                          0               232    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 4    236
6 months    ki0047075b-MAL-ED          PERU                           0               273    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               252    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               313    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                53    366
6 months    ki1000108-IRC              INDIA                          0               337    407
6 months    ki1000108-IRC              INDIA                          1                70    407
6 months    ki1000109-EE               PAKISTAN                       0               344    372
6 months    ki1000109-EE               PAKISTAN                       1                28    372
6 months    ki1000109-ResPak           PAKISTAN                       0               206    235
6 months    ki1000109-ResPak           PAKISTAN                       1                29    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               569    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                14    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1978   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2029
6 months    ki1101329-Keneba           GAMBIA                         0              2004   2057
6 months    ki1101329-Keneba           GAMBIA                         1                53   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                10    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0               497    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                66    563
6 months    ki1114097-CMIN             BANGLADESH                     0               232    243
6 months    ki1114097-CMIN             BANGLADESH                     1                11    243
6 months    ki1114097-CMIN             PERU                           0               614    627
6 months    ki1114097-CMIN             PERU                           1                13    627
6 months    ki1114097-CONTENT          PERU                           0               215    215
6 months    ki1114097-CONTENT          PERU                           1                 0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 6    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0               168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1    169
24 months   ki0047075b-MAL-ED          INDIA                          0               209    227
24 months   ki0047075b-MAL-ED          INDIA                          1                18    227
24 months   ki0047075b-MAL-ED          NEPAL                          0               224    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 4    228
24 months   ki0047075b-MAL-ED          PERU                           0               201    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 2    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               312    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                56    368
24 months   ki1000108-IRC              INDIA                          0               339    409
24 months   ki1000108-IRC              INDIA                          1                70    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               564    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                13    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6
24 months   ki1101329-Keneba           GAMBIA                         0              1522   1564
24 months   ki1101329-Keneba           GAMBIA                         1                42   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0               440    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                59    499
24 months   ki1114097-CMIN             BANGLADESH                     0               233    242
24 months   ki1114097-CMIN             BANGLADESH                     1                 9    242
24 months   ki1114097-CMIN             PERU                           0               228    234
24 months   ki1114097-CMIN             PERU                           1                 6    234
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/3ea81ada-5db7-49d1-975b-957d34cc3a3b/c9b51131-7cf0-4b8a-9332-94aa3df4b88e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3ea81ada-5db7-49d1-975b-957d34cc3a3b/c9b51131-7cf0-4b8a-9332-94aa3df4b88e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3ea81ada-5db7-49d1-975b-957d34cc3a3b/c9b51131-7cf0-4b8a-9332-94aa3df4b88e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0866260   -1.2119716   -0.9612804
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.6600000   -1.5590083    0.2390083
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0373434   -1.1827288   -0.8919580
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.8253079   -1.2985890   -0.3520268
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.7258431   -0.8486531   -0.6030332
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.1183333   -0.7367533    0.9734200
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8859983   -1.0925077   -0.6794890
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.8477246   -2.6401960   -1.0552531
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3876126   -0.5598144   -0.2154108
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0476961   -0.3741825    0.4695747
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0313343   -0.0329303    0.0955990
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0621575   -0.4810357    0.3567206
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.2142877   -1.3279958   -1.1005797
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.9178571   -2.2823123    0.4465980
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.2226737   -1.3468615   -1.0984858
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.2368950   -1.6250440   -0.8487459
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.4262914   -1.5797579   -1.2728248
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.3427661   -1.7351686   -0.9503636
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.3406746   -1.4805169   -1.2008322
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5939236   -0.9217000   -0.2661472
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -2.1920708   -2.3181319   -2.0660097
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.3190757   -2.8685014   -1.7696499
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.4718729   -1.6904432   -1.2533026
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.9931822   -1.5955373   -0.3908272
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0641843   -1.1405307   -0.9878378
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6201784   -2.1734429   -1.0669138
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5430255   -0.5928031   -0.4932479
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5430190   -0.8140661   -0.2719719
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8896777   -0.9367709   -0.8425846
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.8125696   -2.1823114   -1.4428278
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5379310   -1.6542193   -1.4216428
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.6581810   -3.0421788   -2.2741832
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3013320   -1.3835037   -1.2191603
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.4989352   -1.7432226   -1.2546478
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.7721502   -1.9140218   -1.6302786
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.2420278   -3.1731951   -1.3108605
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.4918789   -0.5698641   -0.4138936
6 months    ki1114097-CMIN             PERU                           1                    NA                -1.7046969   -2.5608323   -0.8485615
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9636650   -2.0917194   -1.8356107
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2375000   -1.6598563   -0.8151437
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.8717301   -2.0041669   -1.7392933
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.6802080   -2.0875717   -1.2728443
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5038933   -2.6108989   -2.3968877
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8487786   -3.1257083   -2.5718489
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7974924   -1.9033777   -1.6916070
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6407740   -1.8460697   -1.4354783
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5849522   -1.6699993   -1.4999052
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9054717   -2.2153866   -1.5955567
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5413952   -1.5938723   -1.4889181
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.1952599   -2.5551288   -1.8353910
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8535937   -1.9412954   -1.7658920
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.9830147   -2.2648645   -1.7011649
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.5005794   -2.6283894   -2.3727694
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.7794444   -3.3734067   -2.1854822
24 months   ki1114097-CMIN             PERU                           0                    NA                -1.4456213   -1.5702285   -1.3210141
24 months   ki1114097-CMIN             PERU                           1                    NA                -2.3825000   -3.4662346   -1.2987654


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0715686   -1.1969582   -0.9461791
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0106311   -1.1499962   -0.8712660
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7064368   -0.8290380   -0.5838355
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4251321   -1.5673802   -1.2828839
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.2004704   -2.3234073   -2.0775336
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4029220   -1.6085859   -1.1972581
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9121372   -0.9593127   -0.8649617
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5785476   -1.6926664   -1.4644288
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5098299   -0.5892202   -0.4304395
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5530299   -2.6529925   -2.4530672
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5604961   -1.6126979   -1.5082943
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.4696439   -1.5956384   -1.3436493


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.4266260   -0.4810785    1.3343305
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.2120355   -0.2807635    0.7048344
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.8441765   -0.0196843    1.7080372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.9617262   -1.7829307   -0.1405217
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  0.4353087   -0.0202085    0.8908259
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 -0.0934919   -0.5169666    0.3299829
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2964306   -1.0727544    1.6656156
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0142213   -0.4210453    0.3926027
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0835252   -0.3377239    0.5047744
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.7467510    0.3909225    1.1025794
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.1270049   -0.6909154    0.4369057
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  0.4786907   -0.1619024    1.1192838
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.5559941   -1.1157610    0.0037727
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0000064   -0.2756385    0.2756514
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.9228919   -1.2955727   -0.5502111
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.1202500   -1.5197832   -0.7207167
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1976032   -0.4552653    0.0600590
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.4698776   -1.4114227    0.4716676
6 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 -1.2128180   -2.0723013   -0.3533348
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.7261650    0.2848230    1.1675071
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1915220   -0.2367624    0.6198065
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3448853   -0.6402996   -0.0494710
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                  0.1567184   -0.0746552    0.3880919
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3205195   -0.6426833    0.0016444
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.6538647   -1.0174692   -0.2902602
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1294210   -0.4241205    0.1652785
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2788650   -0.8864229    0.3286928
24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 -0.9368787   -2.0277533    0.1539960


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0150574   -0.0184101    0.0485248
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0267123   -0.0102064    0.0636310
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0194064   -0.0071058    0.0459185
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0794461   -0.2012408    0.0423486
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0795714   -0.0025706    0.1617133
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0028123   -0.0094511    0.0150757
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0086100   -0.0316545    0.0488745
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0023064   -0.0294130    0.0340259
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0011593   -0.0582207    0.0605393
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.1062683    0.0403339    0.1722028
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0083996   -0.0489850    0.0321857
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0689509   -0.0123054    0.1502073
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0229198   -0.0423658   -0.0034738
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004134   -0.0072677    0.0064409
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0224595   -0.0335436   -0.0113754
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0406166   -0.0741264   -0.0071067
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0308202   -0.0618396    0.0001993
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0122874   -0.0397791    0.0152043
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.0179510   -0.0407858    0.0048837
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0205518    0.0000570    0.0410466
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0259151   -0.0086842    0.0605143
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0491366   -0.0936567   -0.0046165
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0150148   -0.0240211    0.0540506
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0011656   -0.0089984    0.0066672
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0191009   -0.0304493   -0.0077525
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0299968   -0.0657361    0.0057424
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0103710   -0.0339279    0.0131858
24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0240225   -0.0578446    0.0097995

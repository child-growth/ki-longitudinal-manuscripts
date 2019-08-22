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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                53     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               166     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0               157     168
Birth       ki0047075b-MAL-ED          INDIA                          1                 5     187
Birth       ki0047075b-MAL-ED          INDIA                          0               182     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                11     165
Birth       ki0047075b-MAL-ED          NEPAL                          0               154     165
Birth       ki0047075b-MAL-ED          PERU                           1                10     249
Birth       ki0047075b-MAL-ED          PERU                           0               239     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               114     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                 0       1
Birth       ki1000109-EE               PAKISTAN                       0                 1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                45      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      47
Birth       ki1101329-Keneba           GAMBIA                         1               451    1336
Birth       ki1101329-Keneba           GAMBIA                         0               885    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12371   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3049   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               519     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               114     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                57     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               178     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               193     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 6     232
6 months    ki0047075b-MAL-ED          INDIA                          0               226     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                15     235
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     235
6 months    ki0047075b-MAL-ED          PERU                           1                11     269
6 months    ki0047075b-MAL-ED          PERU                           0               258     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               242     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               243     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1               220     376
6 months    ki1000109-EE               PAKISTAN                       0               156     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               136     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               446     582
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               404     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0               142     546
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             13162   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              3493   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3318    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               942    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               156     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               154     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 5     224
24 months   ki0047075b-MAL-ED          INDIA                          0               219     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                15     227
24 months   ki0047075b-MAL-ED          NEPAL                          0               212     227
24 months   ki0047075b-MAL-ED          PERU                           1                 8     198
24 months   ki0047075b-MAL-ED          PERU                           0               190     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               227     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               211     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               144     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               434     578
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               359     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0               120     479
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              6641    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1872    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3262    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               897    4159


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/e5d9175c-cfdb-4648-97ec-af63813ccbca/f381418d-da3d-4645-9844-1b4c930c4dce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e5d9175c-cfdb-4648-97ec-af63813ccbca/f381418d-da3d-4645-9844-1b4c930c4dce/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e5d9175c-cfdb-4648-97ec-af63813ccbca/f381418d-da3d-4645-9844-1b4c930c4dce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.8183019   -1.0753209   -0.5612829
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0481325   -1.2158714   -0.8803937
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1718182   -0.4001405    0.7437768
Birth       ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4238217    0.2309212    0.6167221
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.4840000   -1.1529993    0.1849993
Birth       ki0047075b-MAL-ED         INDIA        0                    NA                -1.0589560   -1.2040739   -0.9138382
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2263636   -0.5510782    0.0983510
Birth       ki0047075b-MAL-ED         NEPAL        0                    NA                -0.9723377   -1.1178019   -0.8268734
Birth       ki0047075b-MAL-ED         PERU         1                    NA                 0.2400000   -0.2487497    0.7287497
Birth       ki0047075b-MAL-ED         PERU         0                    NA                -0.0549372   -0.1747946    0.0649201
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 1.7199778    1.5642674    1.8756883
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 1.6753898    1.5752479    1.7755318
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.7082831   -0.7296333   -0.6869329
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7847655   -0.8250415   -0.7444895
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3626590   -0.4563353   -0.2689826
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.4250000   -0.6164991   -0.2335009
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1541228   -0.4186606    0.1104150
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.1440496   -0.2955596    0.0074604
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 1.5733333    1.0452289    2.1014378
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.9218480    0.7512435    1.0924526
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                -0.8747222   -1.4459598   -0.3034846
6 months    ki0047075b-MAL-ED         INDIA        0                    NA                -0.6983112   -0.8261224   -0.5705000
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                 0.1870000   -0.3320214    0.7060214
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                 0.1119621   -0.0238364    0.2477606
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 1.1386364    0.7571806    1.5200922
6 months    ki0047075b-MAL-ED         PERU         0                    NA                 1.0518992    0.9245292    1.1792693
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.4771591   -0.6154207   -0.3388974
6 months    ki1000109-EE              PAKISTAN     0                    NA                -1.0655449   -1.2435820   -0.8875078
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.6469149   -0.7835786   -0.5102511
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.3968421   -0.8495292    0.0558450
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0048897   -0.1614275    0.1712069
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.2734006   -0.3704060   -0.1763952
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0152341   -0.1135425    0.0830744
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.2815904   -0.3446118   -0.2185691
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.5761386   -0.6787486   -0.4735286
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.6736737   -0.8424570   -0.5048904
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.3640426    0.0368426    0.6912425
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                 0.3987556    0.2722028    0.5253083
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.5556538   -0.5771516   -0.5341560
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.7345835   -0.7763581   -0.6928088
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.3389406   -0.3853973   -0.2924840
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.6023832   -0.6803423   -0.5244241
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.9871698   -1.2391220   -0.7352176
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.7787179   -0.9186009   -0.6388350
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.5330000   -0.1049931    1.1709931
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.4382143    0.2220313    0.6543973
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                -1.0270000   -1.3699520   -0.6840480
24 months   ki0047075b-MAL-ED         INDIA        0                    NA                -0.9370776   -1.0552061   -0.8189492
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.2336667   -0.6744296    0.2070963
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -0.3799764   -0.4970640   -0.2628888
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0437500   -0.3245346    0.4120346
24 months   ki0047075b-MAL-ED         PERU         0                    NA                 0.1471842    0.0256636    0.2687048
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.7984028   -0.9580968   -0.6387087
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.9176498   -1.0143887   -0.8209108
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.7381832   -0.8224240   -0.6539424
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.8366685   -0.8987548   -0.7745822
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0861096   -1.1854287   -0.9867904
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.2890556   -1.4888422   -1.0892689
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -0.1644118   -0.4639022    0.1350787
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -0.0573333   -0.2193784    0.1047117
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.2956272   -1.3220740   -1.2691804
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3115652   -1.3597905   -1.2633399
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.2216340   -1.2588759   -1.1843921
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.2778484   -1.3547104   -1.2009864


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.9925114   -1.1346572   -0.8503656
Birth       ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4073214    0.2229599    0.5916830
Birth       ki0047075b-MAL-ED         INDIA        NA                   NA                -1.0435829   -1.1865715   -0.9005943
Birth       ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.9226061   -1.0630064   -0.7822058
Birth       ki0047075b-MAL-ED         PERU         NA                   NA                -0.0430924   -0.1600210    0.0738362
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 1.6904416    1.6057966    1.7750867
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.7234060   -0.7433920   -0.7034200
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3738863   -0.4580087   -0.2897638
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.1464929   -0.2779745   -0.0150113
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED         INDIA        NA                   NA                -0.7028736   -0.8283047   -0.5774424
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                 0.1167518   -0.0146454    0.2481490
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                 1.0554461    0.9322755    1.1786167
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -0.7212766   -0.8346857   -0.6078675
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.1997850   -0.2531586   -0.1464114
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -0.6015049   -0.6892785   -0.5137313
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                 0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -0.5931801   -0.6126929   -0.5736674
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -0.3971948   -0.4378192   -0.3565704
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -0.8315789   -0.9546058   -0.7085521
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED         INDIA        NA                   NA                -0.9390848   -1.0545919   -0.8235777
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.3703084   -0.4835704   -0.2570464
24 months   ki0047075b-MAL-ED         PERU         NA                   NA                 0.1430051    0.0254144    0.2605957
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.1369520   -1.2269975   -1.0469065
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.2991319   -1.3225545   -1.2757094
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.2337581   -1.2679680   -1.1995482


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.2298306   -0.5367428    0.0770815
Birth       ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL       0                    1                  0.2520035   -0.3516084    0.8556153
Birth       ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA        0                    1                 -0.5749560   -1.2595138    0.1096017
Birth       ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL        0                    1                 -0.7459740   -1.1017821   -0.3901659
Birth       ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU         0                    1                 -0.2949372   -0.7981688    0.2082944
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                 -0.0445880   -0.2297208    0.1405448
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0764824   -0.1189659   -0.0339989
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0623410   -0.2753804    0.1506984
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0100732   -0.2947801    0.3149265
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.6514853   -1.2064630   -0.0965076
6 months    ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA        0                    1                  0.1764110   -0.4089505    0.7617725
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.0750379   -0.6115307    0.4614549
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                 -0.0867371   -0.4888959    0.3154216
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                 -0.5883858   -0.8138042   -0.3629673
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                  0.2500728   -0.2551626    0.7553082
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.2782903   -0.4708298   -0.0857508
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.2663564   -0.3831307   -0.1495820
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0975351   -0.2950614    0.0999912
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0347130   -0.3161080    0.3855340
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.1789297   -0.2247760   -0.1330833
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.2634426   -0.3527725   -0.1741127
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.2084519   -0.0797271    0.4966309
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0947857   -0.7684104    0.5788390
24 months   ki0047075b-MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA        0                    1                  0.0899224   -0.2728040    0.4526487
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1463097   -0.6023596    0.3097401
24 months   ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU         0                    1                  0.1034342   -0.2843812    0.4912496
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.1192470   -0.3059570    0.0674630
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.0984853   -0.2031334    0.0061628
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.2029460   -0.4260581    0.0201661
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1070784   -0.2334405    0.4475973
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0159380   -0.0703716    0.0384955
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0562144   -0.1402054    0.0277765


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.1742095   -0.4072128    0.0587938
Birth       ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.2355032   -0.3286656    0.7996721
Birth       ki0047075b-MAL-ED         INDIA        1                    NA                -0.5595829   -1.2259702    0.1068045
Birth       ki0047075b-MAL-ED         NEPAL        1                    NA                -0.6962424   -1.0295489   -0.3629360
Birth       ki0047075b-MAL-ED         PERU         1                    NA                -0.2830924   -0.7661676    0.1999829
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.0295362   -0.1521780    0.0931056
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0151229   -0.0235540   -0.0066918
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0112273   -0.0496261    0.0271715
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.0076299   -0.2232809    0.2385407
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.6016108   -1.1146426   -0.0885791
6 months    ki0047075b-MAL-ED         INDIA        1                    NA                 0.1718487   -0.3983856    0.7420829
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.0702482   -0.5725023    0.4320058
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -0.0831903   -0.4689093    0.3025288
6 months    ki1000109-EE              PAKISTAN     1                    NA                -0.2441175   -0.3421368   -0.1460982
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                 0.0120288   -0.0145556    0.0386132
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.2132603   -0.3611181   -0.0654024
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.1845509   -0.2656483   -0.1034535
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0253663   -0.0768630    0.0261305
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0287148   -0.2614906    0.3189202
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0375264   -0.0471659   -0.0278868
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0582542   -0.0787304   -0.0377780
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1555909   -0.0598620    0.3710438
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0863728   -0.7002218    0.5274763
24 months   ki0047075b-MAL-ED         INDIA        1                    NA                 0.0879152   -0.2657473    0.4415777
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1366417   -0.5625825    0.2892991
24 months   ki0047075b-MAL-ED         PERU         1                    NA                 0.0992551   -0.2729019    0.4714120
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0895384   -0.2297955    0.0507187
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0650497   -0.1342099    0.0041105
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0508424   -0.1072901    0.0056053
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0872922   -0.1903700    0.3649544
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0035048   -0.0154705    0.0084610
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0121241   -0.0303004    0.0060521

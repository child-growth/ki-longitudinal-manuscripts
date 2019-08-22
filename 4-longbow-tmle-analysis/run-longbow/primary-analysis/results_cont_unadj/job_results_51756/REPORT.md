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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               173     240
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                67     240
Birth       ki0047075b-MAL-ED          BRAZIL                         1                67     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0               118     185
Birth       ki0047075b-MAL-ED          INDIA                          1               123     196
Birth       ki0047075b-MAL-ED          INDIA                          0                73     196
Birth       ki0047075b-MAL-ED          NEPAL                          1                61     171
Birth       ki0047075b-MAL-ED          NEPAL                          0               110     171
Birth       ki0047075b-MAL-ED          PERU                           1                67     272
Birth       ki0047075b-MAL-ED          PERU                           0               205     272
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                32     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               201     233
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                 2       2
Birth       ki1000109-EE               PAKISTAN                       0                 0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                48      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 2      50
Birth       ki1101329-Keneba           GAMBIA                         1              1196    1354
Birth       ki1101329-Keneba           GAMBIA                         0               158    1354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             16824   18710
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1886   18710
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                37      40
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 3      40
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               172     237
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                65     237
6 months    ki0047075b-MAL-ED          BRAZIL                         1                81     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               128     209
6 months    ki0047075b-MAL-ED          INDIA                          1               141     233
6 months    ki0047075b-MAL-ED          INDIA                          0                92     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                85     233
6 months    ki0047075b-MAL-ED          NEPAL                          0               148     233
6 months    ki0047075b-MAL-ED          PERU                           1                67     270
6 months    ki0047075b-MAL-ED          PERU                           0               203     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               217     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                68     240
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               172     240
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1               346     371
6 months    ki1000109-EE               PAKISTAN                       0                25     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               412     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               171     583
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               379     458
6 months    ki1113344-GMS-Nepal        NEPAL                          0                79     458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1             14792   16281
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1489   16281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                77      89
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      89
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               150     208
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                58     208
24 months   ki0047075b-MAL-ED          BRAZIL                         1                71     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                98     169
24 months   ki0047075b-MAL-ED          INDIA                          1               133     225
24 months   ki0047075b-MAL-ED          INDIA                          0                92     225
24 months   ki0047075b-MAL-ED          NEPAL                          1                82     225
24 months   ki0047075b-MAL-ED          NEPAL                          0               143     225
24 months   ki0047075b-MAL-ED          PERU                           1                46     199
24 months   ki0047075b-MAL-ED          PERU                           0               153     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                27     232
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               205     232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                57     210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153     210
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               407     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     577
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               336     404
24 months   ki1113344-GMS-Nepal        NEPAL                          0                68     404
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              7517    8341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               824    8341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               137     152
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     152


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/cb8321d0-92e6-472b-a54b-a25d48b8ce2e/dcc33b86-19ad-43c1-b8a5-853a52676151/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cb8321d0-92e6-472b-a54b-a25d48b8ce2e/dcc33b86-19ad-43c1-b8a5-853a52676151/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cb8321d0-92e6-472b-a54b-a25d48b8ce2e/dcc33b86-19ad-43c1-b8a5-853a52676151/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.0830636   -1.2286468   -0.9374804
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.9635821   -1.2274311   -0.6997330
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.5231343   -0.7589548   -0.2873138
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.8554237   -1.0630953   -0.6477521
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0456911   -1.2278679   -0.8635142
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9494521   -1.1754145   -0.7234897
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4775410   -0.7220199   -0.2330621
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8432727   -1.0433537   -0.6431918
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.9974627   -1.2647488   -0.7301765
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.9028293   -1.0241264   -0.7815322
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7559375   -1.0764717   -0.4354033
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.7036816   -0.8432205   -0.5641427
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.8779487   -1.1870339   -0.5688636
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9413750   -1.2298285   -0.6529215
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0055686   -0.0685374    0.0796746
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                 0.0736076   -0.1262423    0.2734575
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.5215680   -1.5414081   -1.5017279
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.7614581   -1.8262256   -1.6966906
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.2050388   -1.3328992   -1.0771783
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.1902051   -1.4617021   -0.9187082
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0782099   -0.1367615    0.2931812
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0338151   -0.1579806    0.2256108
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.2288534   -1.3799536   -1.0777532
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.1835145   -1.3766499   -0.9903790
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.5826471   -0.7805040   -0.3847901
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.5403716   -0.6757754   -0.4049678
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3837313   -1.6067986   -1.1606640
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.3028407   -1.4257599   -1.1799216
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7110753   -1.0874941   -0.3346564
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.1144585   -1.2513122   -0.9776048
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2845588   -1.5266595   -1.0424581
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3781686   -1.5236819   -1.2326554
6 months    ki1000109-EE              PAKISTAN                       1                    NA                -2.2085405   -2.3358767   -2.0812042
6 months    ki1000109-EE              PAKISTAN                       0                    NA                -2.1658000   -2.6320343   -1.6995657
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.4578628   -1.6049871   -1.3107385
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.7063158   -2.4149433   -0.9976883
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.0799312   -1.1660089   -0.9938536
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.1043860   -1.2622300   -0.9465419
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.9291579   -0.9832318   -0.8750840
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -1.1005307   -1.2581027   -0.9429587
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.2945646   -1.3876531   -1.2014762
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.4624895   -1.6925949   -1.2323840
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.2855652   -1.3089244   -1.2622060
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.5093083   -1.5868939   -1.4317226
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.1459740   -1.3308960   -0.9610521
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.7983333   -2.4033116   -1.1933551
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9496333   -2.1032163   -1.7960503
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.9120690   -2.1375979   -1.6865400
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0093662   -0.2604193    0.2416869
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0789286   -0.1445509    0.3024081
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -2.0200752   -2.1835228   -1.8566276
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.5878804   -1.7780817   -1.3976792
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3423780   -1.5325387   -1.1522174
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2275175   -1.3817020   -1.0733330
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.8447826   -2.1410297   -1.5485356
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.7137255   -1.8428203   -1.5846307
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.4290741   -1.7694961   -1.0886521
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.6354634   -1.7837944   -1.4871324
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6110526   -2.8950358   -2.3270695
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6178105   -2.7725634   -2.4630575
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.6304668   -1.7289380   -1.5319957
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.4799412   -1.6345304   -1.3253520
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -1.5574617   -1.6146781   -1.5002452
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -1.7812295   -1.9536050   -1.6088539
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.8727976   -1.9717463   -1.7738489
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.9084804   -2.1468994   -1.6700614
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0056791   -2.0347010   -1.9766573
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -2.0613592   -2.1526919   -1.9700265
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7186131   -1.8623416   -1.5748846
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.2100000   -2.5176955   -1.9023045


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.0497083   -1.1780996   -0.9213171
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.0098469   -1.1519586   -0.8677353
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7128070   -0.8704934   -0.5551207
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.9261397   -1.0389037   -0.8133757
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.7108584   -0.8390511   -0.5826657
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9205882   -1.1394357   -0.7017408
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                 0.0135081   -0.0559902    0.0830065
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.5457493   -1.5650991   -1.5263996
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2009705   -1.3199485   -1.0819924
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2109514   -1.3300505   -1.0918522
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5557940   -0.6681063   -0.4434817
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3229136   -1.4307207   -1.2151065
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0640356   -1.1937663   -0.9343049
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3516458   -1.4765824   -1.2267092
6 months    ki1000109-EE              PAKISTAN                       NA                   NA                -2.2056604   -2.3285064   -2.0828144
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.3235298   -1.4103807   -1.2366790
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3060279   -1.3292905   -1.2827653
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.2339326   -1.4137041   -1.0541611
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.9391587   -2.0665449   -1.8117724
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8433556   -1.9704665   -1.7162446
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.2693778   -1.3896188   -1.1491367
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7440201   -1.8648503   -1.6231899
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6114440   -1.7486349   -1.4742530
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6159762   -2.7525555   -2.4793968
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -1.5804688   -1.6348908   -1.5260468
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8788036   -1.9703700   -1.7872372
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -2.0111797   -2.0396837   -1.9826758
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7671053   -1.9017670   -1.6324435


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.1194815   -0.1818668    0.4208298
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.3322894   -0.6465167   -0.0180621
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.0962390   -0.1940151    0.3864931
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.3657317   -0.6816468   -0.0498167
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                  0.0946334   -0.1988881    0.3881549
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0522559   -0.2973343    0.4018461
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0634263   -0.4862017    0.3593491
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                  0.0680390   -0.1451081    0.2811861
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.2398901   -0.3064245   -0.1733557
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0148336   -0.2852645    0.3149318
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0443948   -0.3324890    0.2436994
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0453389   -0.1998805    0.2905584
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0422754   -0.1974777    0.2820286
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0808906   -0.1738016    0.3355829
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.4033833   -0.8039080   -0.0028585
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0936098   -0.3760754    0.1888559
6 months    ki1000109-EE              PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN                       0                    1                  0.0427405   -0.4405699    0.5260508
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.2484530   -0.9061015    0.4091955
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0244547   -0.2042438    0.1553344
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.1713728   -0.3379649   -0.0047807
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1679248   -0.4161465    0.0802969
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.2237431   -0.3014558   -0.1460304
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.6523593   -1.2845608   -0.0201578
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0375644   -0.2352928    0.3104215
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0882948   -0.2478164    0.4244060
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.4321948    0.1814127    0.6829768
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1148606   -0.1299536    0.3596747
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.1310571   -0.1920958    0.4542100
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2063893   -0.5777237    0.1649451
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0067578   -0.3301692    0.3166536
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.1505257   -0.0327621    0.3338134
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.2237678   -0.4053912   -0.0421444
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0356828   -0.2938193    0.2224538
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0556801   -0.1486020    0.0372418
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.4913869   -0.8299679   -0.1528058


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0333553   -0.0510451    0.1177556
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2119468   -0.4136969   -0.0101966
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0358441   -0.0724578    0.1441460
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2352660   -0.4401856   -0.0303464
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.0713230   -0.1499505    0.2925965
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0450791   -0.2565076    0.3466658
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0426395   -0.3269090    0.2416300
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0079396   -0.0169601    0.0328392
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0241813   -0.0308737   -0.0174890
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0040683   -0.0782414    0.0863780
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0271891   -0.2036541    0.1492758
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0179021   -0.0789648    0.1147689
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0268531   -0.1254590    0.1791651
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0608178   -0.1307186    0.2523541
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.3529603   -0.7038142   -0.0021065
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0670870   -0.2695914    0.1354173
6 months    ki1000109-EE              PAKISTAN                       1                    NA                 0.0028801   -0.0297063    0.0354665
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0118608   -0.0472806    0.0235590
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0071728   -0.0599146    0.0455689
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0197738   -0.0391672   -0.0003803
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0289652   -0.0721740    0.0142436
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0204627   -0.0275730   -0.0133524
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0879586   -0.1745577   -0.0013594
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0104747   -0.0656451    0.0865944
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0512005   -0.1438156    0.2462166
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1767196    0.0704694    0.2829698
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0730003   -0.0827610    0.2287616
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.1007625   -0.1478109    0.3493359
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1823699   -0.5105996    0.1458599
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0049236   -0.2405522    0.2307051
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0443490   -0.0099426    0.0986406
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0230071   -0.0420129   -0.0040013
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0060060   -0.0494743    0.0374623
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0055006   -0.0146614    0.0036602
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0484921   -0.0855697   -0.0114146

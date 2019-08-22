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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country                        impsan    n_cell       n
----------  ----------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED       BANGLADESH                     1            197     234
Birth       ki0047075b-MAL-ED       BANGLADESH                     0             37     234
Birth       ki0047075b-MAL-ED       BRAZIL                         1            170     174
Birth       ki0047075b-MAL-ED       BRAZIL                         0              4     174
Birth       ki0047075b-MAL-ED       INDIA                          1             92     190
Birth       ki0047075b-MAL-ED       INDIA                          0             98     190
Birth       ki0047075b-MAL-ED       NEPAL                          1            170     171
Birth       ki0047075b-MAL-ED       NEPAL                          0              1     171
Birth       ki0047075b-MAL-ED       PERU                           1             62     250
Birth       ki0047075b-MAL-ED       PERU                           0            188     250
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   1              2     213
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0            211     213
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     113
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            113     113
Birth       ki1017093-NIH-Birth     BANGLADESH                     1              9      28
Birth       ki1017093-NIH-Birth     BANGLADESH                     0             19      28
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1             25      27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0              2      27
Birth       ki1114097-CONTENT       PERU                           1              1       2
Birth       ki1114097-CONTENT       PERU                           0              1       2
Birth       ki1135781-COHORTS       GUATEMALA                      1             45     491
Birth       ki1135781-COHORTS       GUATEMALA                      0            446     491
Birth       ki1135781-COHORTS       INDIA                          1           1767    4776
Birth       ki1135781-COHORTS       INDIA                          0           3009    4776
Birth       ki1135781-COHORTS       PHILIPPINES                    1            178    1191
Birth       ki1135781-COHORTS       PHILIPPINES                    0           1013    1191
Birth       kiGH5241-JiVitA-3       BANGLADESH                     1          13187   19592
Birth       kiGH5241-JiVitA-3       BANGLADESH                     0           6405   19592
Birth       kiGH5241-JiVitA-4       BANGLADESH                     1            606     822
Birth       kiGH5241-JiVitA-4       BANGLADESH                     0            216     822
6 months    ki0047075b-MAL-ED       BANGLADESH                     1            202     240
6 months    ki0047075b-MAL-ED       BANGLADESH                     0             38     240
6 months    ki0047075b-MAL-ED       BRAZIL                         1            205     209
6 months    ki0047075b-MAL-ED       BRAZIL                         0              4     209
6 months    ki0047075b-MAL-ED       INDIA                          1            108     233
6 months    ki0047075b-MAL-ED       INDIA                          0            125     233
6 months    ki0047075b-MAL-ED       NEPAL                          1            235     236
6 months    ki0047075b-MAL-ED       NEPAL                          0              1     236
6 months    ki0047075b-MAL-ED       PERU                           1             65     263
6 months    ki0047075b-MAL-ED       PERU                           0            198     263
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     244
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0            240     244
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     238
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            238     238
6 months    ki1017093-NIH-Birth     BANGLADESH                     1            205     537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0            332     537
6 months    ki1017093b-PROVIDE      BANGLADESH                     1            555     581
6 months    ki1017093b-PROVIDE      BANGLADESH                     0             26     581
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1            615     704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0             89     704
6 months    ki1114097-CONTENT       PERU                           1            201     215
6 months    ki1114097-CONTENT       PERU                           0             14     215
6 months    ki1135781-COHORTS       GUATEMALA                      1             67     658
6 months    ki1135781-COHORTS       GUATEMALA                      0            591     658
6 months    ki1135781-COHORTS       INDIA                          1           1881    4971
6 months    ki1135781-COHORTS       INDIA                          0           3090    4971
6 months    ki1135781-COHORTS       PHILIPPINES                    1            143    1083
6 months    ki1135781-COHORTS       PHILIPPINES                    0            940    1083
6 months    ki1148112-LCNI-5        MALAWI                         1              3     812
6 months    ki1148112-LCNI-5        MALAWI                         0            809     812
6 months    kiGH5241-JiVitA-3       BANGLADESH                     1          12038   16800
6 months    kiGH5241-JiVitA-3       BANGLADESH                     0           4762   16800
6 months    kiGH5241-JiVitA-4       BANGLADESH                     1           3734    4825
6 months    kiGH5241-JiVitA-4       BANGLADESH                     0           1091    4825
24 months   ki0047075b-MAL-ED       BANGLADESH                     1            181     212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0             31     212
24 months   ki0047075b-MAL-ED       BRAZIL                         1            166     169
24 months   ki0047075b-MAL-ED       BRAZIL                         0              3     169
24 months   ki0047075b-MAL-ED       INDIA                          1            104     225
24 months   ki0047075b-MAL-ED       INDIA                          0            121     225
24 months   ki0047075b-MAL-ED       NEPAL                          1            227     228
24 months   ki0047075b-MAL-ED       NEPAL                          0              1     228
24 months   ki0047075b-MAL-ED       PERU                           1             47     196
24 months   ki0047075b-MAL-ED       PERU                           0            149     196
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1              4     235
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0            231     235
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0     207
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0            207     207
24 months   ki1017093-NIH-Birth     BANGLADESH                     1            170     429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0            259     429
24 months   ki1017093b-PROVIDE      BANGLADESH                     1            552     576
24 months   ki1017093b-PROVIDE      BANGLADESH                     0             24     576
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1            433     503
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0             70     503
24 months   ki1114097-CONTENT       PERU                           1            151     164
24 months   ki1114097-CONTENT       PERU                           0             13     164
24 months   ki1135781-COHORTS       GUATEMALA                      1             77     896
24 months   ki1135781-COHORTS       GUATEMALA                      0            819     896
24 months   ki1135781-COHORTS       INDIA                          1           1471    3754
24 months   ki1135781-COHORTS       INDIA                          0           2283    3754
24 months   ki1135781-COHORTS       PHILIPPINES                    1            126     990
24 months   ki1135781-COHORTS       PHILIPPINES                    0            864     990
24 months   ki1148112-LCNI-5        MALAWI                         1              2     572
24 months   ki1148112-LCNI-5        MALAWI                         0            570     572
24 months   kiGH5241-JiVitA-3       BANGLADESH                     1           6111    8622
24 months   kiGH5241-JiVitA-3       BANGLADESH                     0           2511    8622
24 months   kiGH5241-JiVitA-4       BANGLADESH                     1           3683    4747
24 months   kiGH5241-JiVitA-4       BANGLADESH                     0           1064    4747


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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6cff5de6-c3b0-49d4-8cd9-01f4403a560e/f97d96a1-4a4c-4ef7-9c93-9cc7b9890411/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6cff5de6-c3b0-49d4-8cd9-01f4403a560e/f97d96a1-4a4c-4ef7-9c93-9cc7b9890411/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6cff5de6-c3b0-49d4-8cd9-01f4403a560e/f97d96a1-4a4c-4ef7-9c93-9cc7b9890411/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.0300000   -1.1705898   -0.8894102
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    NA                -0.9854054   -1.2934742   -0.6773366
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                -0.9977174   -1.2204348   -0.7750000
Birth       ki0047075b-MAL-ED       INDIA         0                    NA                -0.9852041   -1.1672896   -0.8031185
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.8446774   -1.0734612   -0.6158936
Birth       ki0047075b-MAL-ED       PERU          0                    NA                -0.9754255   -1.1083105   -0.8425405
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.3777778   -0.9207364    0.1651808
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    NA                -0.6010526   -1.0492335   -0.1528718
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                 0.0140000   -0.3450346    0.3730346
Birth       ki1135781-COHORTS       GUATEMALA     0                    NA                -0.0317265   -0.1454192    0.0819663
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.4914658   -0.5448741   -0.4380574
Birth       ki1135781-COHORTS       INDIA         0                    NA                -0.7870821   -0.8283252   -0.7458390
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                 0.0435393   -0.0987359    0.1858146
Birth       ki1135781-COHORTS       PHILIPPINES   0                    NA                -0.3765153   -0.4451537   -0.3078769
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.5339941   -1.5576028   -1.5103854
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.6599750   -1.6907459   -1.6292041
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.4794389   -1.5735859   -1.3852920
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.5487963   -1.7272851   -1.3703075
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.2041419   -1.3360168   -1.0722671
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.1992544   -1.4498728   -0.9486360
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -1.2085185   -1.3744231   -1.0426139
6 months    ki0047075b-MAL-ED       INDIA         0                    NA                -1.2182133   -1.3883587   -1.0480680
6 months    ki0047075b-MAL-ED       PERU          1                    NA                -1.3629231   -1.5928372   -1.1330090
6 months    ki0047075b-MAL-ED       PERU          0                    NA                -1.3072811   -1.4324386   -1.1821237
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -1.2924553   -1.4351827   -1.1497279
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                -1.4783459   -1.5908332   -1.3658586
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -1.0814715   -1.1594273   -1.0035157
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    NA                -1.3294231   -1.6640042   -0.9948419
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.2126829   -1.2888615   -1.1365043
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.1369101   -1.3508747   -0.9229455
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.2972521   -0.4769295   -0.1175747
6 months    ki1114097-CONTENT       PERU          0                    NA                -0.5532500   -1.1705359    0.0640359
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -1.6874627   -1.9137285   -1.4611969
6 months    ki1135781-COHORTS       GUATEMALA     0                    NA                -1.9006261   -1.9881552   -1.8130969
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.7542743   -0.8056832   -0.7028654
6 months    ki1135781-COHORTS       INDIA         0                    NA                -1.2162524   -1.2572688   -1.1752361
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.6306993   -0.8028673   -0.4585313
6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                -1.2800319   -1.3505196   -1.2095442
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.2526857   -1.2783672   -1.2270041
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -1.4671651   -1.5012388   -1.4330913
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.3073889   -1.3492812   -1.2654965
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.4695142   -1.5422678   -1.3967606
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -1.9438674   -2.0822441   -1.8054907
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                -1.9387097   -2.2393083   -1.6381111
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -1.7216827   -1.8914539   -1.5519115
24 months   ki0047075b-MAL-ED       INDIA         0                    NA                -1.9365289   -2.1193641   -1.7536938
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -1.7242553   -1.9566331   -1.4918776
24 months   ki0047075b-MAL-ED       PERU          0                    NA                -1.7600000   -1.9025069   -1.6174931
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -2.0295000   -2.2015259   -1.8574741
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                -2.2800997   -2.4060834   -2.1541161
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -1.5635507   -1.6477558   -1.4793457
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                -2.0879167   -2.5478363   -1.6279970
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -1.4340647   -1.5257819   -1.3423474
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                -1.4028571   -1.6140474   -1.1916669
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.6535762   -0.8330310   -0.4741214
24 months   ki1114097-CONTENT       PERU          0                    NA                -1.1915385   -1.6813725   -0.7017044
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -2.5967532   -2.8224746   -2.3710319
24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                -2.8929304   -2.9672260   -2.8186349
24 months   ki1135781-COHORTS       INDIA         1                    NA                -1.5844731   -1.6444930   -1.5244533
24 months   ki1135781-COHORTS       INDIA         0                    NA                -2.2683574   -2.3170051   -2.2197098
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -1.6612698   -1.8245141   -1.4980256
24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                -2.7003472   -2.7715528   -2.6291417
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -1.9214662   -1.9532502   -1.8896822
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                -2.2347153   -2.2783315   -2.1910990
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -1.7051588   -1.7456931   -1.6646245
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                -1.9404323   -2.0002556   -1.8806091


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.0229487   -1.1509575   -0.8949400
Birth       ki0047075b-MAL-ED       INDIA         NA                   NA                -0.9912632   -1.1342711   -0.8482552
Birth       ki0047075b-MAL-ED       PERU          NA                   NA                -0.9430000   -1.0581275   -0.8278725
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                -0.0275356   -0.1359303    0.0808590
Birth       ki1135781-COHORTS       INDIA         NA                   NA                -0.6777115   -0.7106054   -0.6448175
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                -0.3137364   -0.3764483   -0.2510244
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.5751797   -1.5949356   -1.5554237
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.4976642   -1.5817349   -1.4135935
6 months    ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.2033681   -1.3212429   -1.0854932
6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                -1.2137196   -1.3330761   -1.0943631
6 months    ki0047075b-MAL-ED       PERU          NA                   NA                -1.3210330   -1.4311040   -1.2109619
6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -1.0925674   -1.1686395   -1.0164954
6 months    ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.2031037   -1.2749632   -1.1312442
6 months    ki1114097-CONTENT       PERU          NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1135781-COHORTS       GUATEMALA     NA                   NA                -1.8789210   -1.9609921   -1.7968498
6 months    ki1135781-COHORTS       INDIA         NA                   NA                -1.0414424   -1.0741113   -1.0087734
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                -1.1942936   -1.2608624   -1.1277248
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -1.3134804   -1.3366079   -1.2903528
6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.3440477   -1.3813060   -1.3067894
24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                -1.8372222   -1.9638017   -1.7106427
24 months   ki0047075b-MAL-ED       PERU          NA                   NA                -1.7514286   -1.8732727   -1.6295845
24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                -1.5853993   -1.6687810   -1.5020176
24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                -1.4297217   -1.5139732   -1.3454701
24 months   ki1114097-CONTENT       PERU          NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                -2.8674777   -2.9383136   -2.7966417
24 months   ki1135781-COHORTS       INDIA         NA                   NA                -2.0003783   -2.0396528   -1.9611037
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                -2.5681010   -2.6370882   -2.4991138
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                -2.0126943   -2.0403978   -1.9849907
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                -1.7578934   -1.7933205   -1.7224663


### Parameter: ATE


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0445946   -0.2940377    0.3832269
Birth       ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       INDIA         0                    1                  0.0125133   -0.2751639    0.3001905
Birth       ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU          0                    1                 -0.1307481   -0.3953241    0.1338279
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2232749   -0.9273133    0.4807636
Birth       ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       GUATEMALA     0                    1                 -0.0457265   -0.4223322    0.3308793
Birth       ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       INDIA         0                    1                 -0.2956163   -0.3630956   -0.2281371
Birth       ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.4200546   -0.5780214   -0.2620879
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.1259809   -0.1628228   -0.0891390
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.0693574   -0.2703037    0.1315890
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0048875   -0.2783095    0.2880846
6 months    ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       INDIA         0                    1                 -0.0096948   -0.2473369    0.2279473
6 months    ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU          0                    1                  0.0556419   -0.2061306    0.3174145
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.1858906   -0.3676170   -0.0041642
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH    0                    1                 -0.2479516   -0.5914944    0.0955912
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0757728   -0.1513484    0.3028940
6 months    ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT       PERU          0                    1                 -0.2559979   -0.8989022    0.3869063
6 months    ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2131634   -0.4557692    0.0294424
6 months    ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       INDIA         0                    1                 -0.4619781   -0.5277445   -0.3962117
6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 -0.6493326   -0.8353711   -0.4632941
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.2144794   -0.2520130   -0.1769458
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.1621253   -0.2443124   -0.0799383
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                  0.0051577   -0.3257617    0.3360771
24 months   ki0047075b-MAL-ED       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       INDIA         0                    1                 -0.2148462   -0.4643476    0.0346552
24 months   ki0047075b-MAL-ED       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU          0                    1                 -0.0357447   -0.3083389    0.2368496
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 -0.2505997   -0.4638245   -0.0373750
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 -0.5243659   -0.9919304   -0.0568015
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                  0.0312075   -0.1990388    0.2614538
24 months   ki1114097-CONTENT       PERU          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT       PERU          0                    1                 -0.5379623   -1.0596340   -0.0162906
24 months   ki1135781-COHORTS       GUATEMALA     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 -0.2961772   -0.5338112   -0.0585431
24 months   ki1135781-COHORTS       INDIA         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       INDIA         0                    1                 -0.6838843   -0.7611434   -0.6066251
24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 -1.0390774   -1.2171755   -0.8609793
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 -0.3132490   -0.3649999   -0.2614982
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 -0.2352735   -0.3053106   -0.1652364


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0070513   -0.0465339    0.0606365
Birth       ki0047075b-MAL-ED       INDIA         1                    NA                 0.0064542   -0.1419293    0.1548378
Birth       ki0047075b-MAL-ED       PERU          1                    NA                -0.0983226   -0.2974073    0.1007621
Birth       ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1515079   -0.6308647    0.3278488
Birth       ki1135781-COHORTS       GUATEMALA     1                    NA                -0.0415356   -0.3836276    0.3005563
Birth       ki1135781-COHORTS       INDIA         1                    NA                -0.1862457   -0.2289516   -0.1435398
Birth       ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.3572757   -0.4919028   -0.2226486
Birth       kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0411856   -0.0533091   -0.0290620
Birth       kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0182253   -0.0708135    0.0343630
6 months    ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0007739   -0.0440662    0.0456140
6 months    ki0047075b-MAL-ED       INDIA         1                    NA                -0.0052011   -0.1326930    0.1222908
6 months    ki0047075b-MAL-ED       PERU          1                    NA                 0.0418901   -0.1552072    0.2389875
6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1149268   -0.2275389   -0.0023147
6 months    ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0110959   -0.0270257    0.0048338
6 months    ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0095792   -0.0191938    0.0383523
6 months    ki1114097-CONTENT       PERU          1                    NA                -0.0166696   -0.0593799    0.0260407
6 months    ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1914583   -0.4094168    0.0265002
6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.2871680   -0.3285206   -0.2458155
6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.5635943   -0.7255986   -0.4015901
6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0607947   -0.0716799   -0.0499095
6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0366588   -0.0552731   -0.0180445
24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                 0.0007542   -0.0476356    0.0491440
24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.1155395   -0.2504471    0.0193680
24 months   ki0047075b-MAL-ED       PERU          1                    NA                -0.0271733   -0.2344116    0.1800651
24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.1512945   -0.2805473   -0.0220417
24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                -0.0218486   -0.0431299   -0.0005673
24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                 0.0043430   -0.0277132    0.0363992
24 months   ki1114097-CONTENT       PERU          1                    NA                -0.0426434   -0.0896304    0.0043437
24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.2707244   -0.4880049   -0.0534440
24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.4159051   -0.4640891   -0.3677211
24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.9068312   -1.0637535   -0.7499088
24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0912281   -0.1068631   -0.0755930
24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0527346   -0.0685121   -0.0369570

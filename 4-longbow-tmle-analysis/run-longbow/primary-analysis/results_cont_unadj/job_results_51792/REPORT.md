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

**Intervention Variable:** safeh20

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             222     222
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0     119
Birth       ki0047075b-MAL-ED          BRAZIL                         0             119     119
Birth       ki0047075b-MAL-ED          INDIA                          1               0     188
Birth       ki0047075b-MAL-ED          INDIA                          0             188     188
Birth       ki0047075b-MAL-ED          NEPAL                          1               1     164
Birth       ki0047075b-MAL-ED          NEPAL                          0             163     164
Birth       ki0047075b-MAL-ED          PERU                           1               9     240
Birth       ki0047075b-MAL-ED          PERU                           0             231     240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              33     214
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             181     214
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              76     114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              38     114
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              28      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              23      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           15666   15690
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              24   15690
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             683     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233
6 months    ki0047075b-MAL-ED          PERU                           1              11     259
6 months    ki0047075b-MAL-ED          PERU                           0             248     259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             534     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             580     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0     580
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715
6 months    ki1114097-CONTENT          PERU                           1              54      57
6 months    ki1114097-CONTENT          PERU                           0               3      57
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16756   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4826    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226
24 months   ki0047075b-MAL-ED          PERU                           1               7     193
24 months   ki0047075b-MAL-ED          PERU                           0             186     193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             426     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             577     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514
24 months   ki1114097-CONTENT          PERU                           1              45      48
24 months   ki1114097-CONTENT          PERU                           0               3      48
24 months   ki1148112-LCNI-5           MALAWI                         1             464     558
24 months   ki1148112-LCNI-5           MALAWI                         0              94     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8583    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4729    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4730


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/f839175e-1616-4906-9593-b861843ed237/d00a8298-f977-46d0-82d4-d62fa8606132/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f839175e-1616-4906-9593-b861843ed237/d00a8298-f977-46d0-82d4-d62fa8606132/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f839175e-1616-4906-9593-b861843ed237/d00a8298-f977-46d0-82d4-d62fa8606132/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                 0.1611111   -0.3129677    0.6351899
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.0461905   -0.1694071    0.0770261
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1603030   -0.2915347    0.6121407
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.0332597   -0.1975935    0.1310742
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7030263    0.4566674    0.9493853
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 1.0013158    0.6495773    1.3530542
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.7237310   -0.7441004   -0.7033616
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.8516667   -0.8732238   -0.8301095
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 1.0318182    0.5730192    1.4906171
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                 1.0516129    0.9213525    1.1818733
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.4982883    0.1702847    0.8262919
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.5507346    0.3788045    0.7226647
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5743651    0.4161243    0.7326058
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3920299    0.1645583    0.6195015
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.4330655    0.3558303    0.5103006
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                 0.4826389    0.2976721    0.6676057
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.5930177   -0.6129946   -0.5730408
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -0.7880000   -0.8119731   -0.7640269
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                 0.1095968   -0.0164100    0.2356035
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.2360294   -0.0398483    0.5119071
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                 0.4545320    0.3233483    0.5857157
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0314483   -0.1235258    0.1864223
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0804412   -0.1314730    0.2923553
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0085668   -0.0987814    0.0816478
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -0.2418617   -0.4384673   -0.0452561
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.2970010   -1.3208095   -1.2731926
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.5372727   -1.5988435   -1.4757020


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.0384167   -0.1584416    0.0816083
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.0034112   -0.1591733    0.1523508
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.8024561    0.5990025    1.0059098
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.7239267   -0.7437724   -0.7040810
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                 1.0507722    0.9245302    1.1770142
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.5429099    0.3886447    0.6971752
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5165515    0.3861929    0.6469101
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                 0.4418137    0.3703100    0.5133174
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                 0.1061658   -0.0166496    0.2289812
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                 0.4231857    0.3036551    0.5427162
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0470892   -0.0782759    0.1724543
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -0.0478674   -0.1301904    0.0344557
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.2073016   -0.6971312    0.2825280
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.1935627   -0.6743567    0.2872313
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.2982895   -0.1311435    0.7277224
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1279357   -0.1581958   -0.0976755
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                  0.0197947   -0.4571374    0.4967269
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0524463   -0.3178864    0.4227790
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1823352   -0.4594335    0.0947632
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                  0.0495734   -0.1508711    0.2500179
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.1949823   -0.2254103   -0.1645542
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.0945968   -0.4222486    0.6114421
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.2185026   -0.0869768    0.5239820
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0489929   -0.2135420    0.3115278
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.2332949   -0.4496105   -0.0169793
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2402717   -0.3060630   -0.1744804


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.1995278   -0.6710152    0.2719597
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1637142   -0.5704755    0.2430470
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0994298   -0.0460434    0.2449031
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0001957   -0.0009608    0.0005694
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                 0.0189540   -0.4377226    0.4756306
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0446217   -0.2704684    0.3597117
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0578136   -0.1463141    0.0306869
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                 0.0087482   -0.0266481    0.0441446
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002325   -0.0010162    0.0005513
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.0911658   -0.4069402    0.5892718
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.1871562   -0.0746815    0.4489940
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0156409   -0.0682294    0.0995113
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0393006   -0.0764553   -0.0021458
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0003075   -0.0020574    0.0014423

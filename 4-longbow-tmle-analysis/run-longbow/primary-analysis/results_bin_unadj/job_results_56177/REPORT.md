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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       62     221  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1       10     221  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      119     221  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       30     221  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        6      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        2      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       50      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        7      65  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        2      42  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2      42  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       31      42  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7      42  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        0      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        1      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       24      26  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1      26  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                   0       52     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1                   1        6     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                   0      145     223  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0                   1       20     223  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2     105  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     105  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       94     105  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        9     105  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       98     119  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       21     119  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                   0        2       7  stunted          
Birth       ki1000109-EE               PAKISTAN                       1                   1        1       7  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                   0        3       7  stunted          
Birth       ki1000109-EE               PAKISTAN                       0                   1        1       7  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      356     526  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       66     526  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       85     526  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1       19     526  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5646   10681  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2688   10681  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1580   10681  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      767   10681  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1409    2517  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      590    2517  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      347    2517  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1      171    2517  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       68     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       13     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      128     240  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       31     240  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       24     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      179     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        5     209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       13     233  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        4     233  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      176     233  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       40     233  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        8     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      215     235  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       12     235  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                   0       59     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1                   1       13     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                   0      153     272  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0                   1       47     272  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     250  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     250  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      199     250  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       48     250  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4     243  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        1     243  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      180     243  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     243  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                   0        3       9  stunted          
6 months    ki1000109-EE               PAKISTAN                       1                   1        1       9  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                   0        4       9  stunted          
6 months    ki1000109-EE               PAKISTAN                       0                   1        1       9  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      339     527  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       83     527  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       76     527  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       29     527  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     4980    8552  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1613    8552  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1458    8552  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      501    8552  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2479    4185  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      774    4185  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      649    4185  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      283    4185  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       31     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       38     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       80     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       63     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       20     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      142     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        7     169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     224  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       10     224  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      121     224  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       86     224  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        6     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      171     227  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       48     227  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                   0       33     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1                   1       20     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                   0       94     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0                   1       54     201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     235  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     235  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      150     235  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       82     235  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       57     213  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      152     213  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                   0        0       3  stunted          
24 months   ki1000109-EE               PAKISTAN                       1                   1        0       3  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                   0        2       3  stunted          
24 months   ki1000109-EE               PAKISTAN                       0                   1        1       3  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      208     446  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      155     446  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       40     446  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       43     446  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1707    4334  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1627    4334  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      505    4334  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      495    4334  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1905    4049  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1252    4049  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      503    4049  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      389    4049  stunted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/3208153c-9643-4d9b-b43c-89b715d1a3bc/f99da01f-16a2-463f-b787-3740648c309a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3208153c-9643-4d9b-b43c-89b715d1a3bc/f99da01f-16a2-463f-b787-3740648c309a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3208153c-9643-4d9b-b43c-89b715d1a3bc/f99da01f-16a2-463f-b787-3740648c309a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3208153c-9643-4d9b-b43c-89b715d1a3bc/f99da01f-16a2-463f-b787-3740648c309a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1388889   0.0588262   0.2189515
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2013423   0.1368084   0.2658761
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1034483   0.0248959   0.1820007
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1212121   0.0713010   0.1711232
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1563981   0.1217093   0.1910869
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1826923   0.1083566   0.2570280
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3225342   0.3107922   0.3342762
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3268002   0.3057876   0.3478128
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2951476   0.2712760   0.3190192
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3301158   0.2815740   0.3786576
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1604938   0.0803900   0.2405977
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1949686   0.1332601   0.2566770
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1805556   0.0915439   0.2695672
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2350000   0.1761295   0.2938705
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1966825   0.1587221   0.2346429
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2761905   0.1905888   0.3617922
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3617021   0.2240807   0.4993236
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3555556   0.2928937   0.4182174
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2446534   0.2328069   0.2564999
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2557427   0.2347393   0.2767461
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2379342   0.2217670   0.2541014
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3036481   0.2688614   0.3384348
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5507246   0.4330795   0.6683697
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4405594   0.3589978   0.5221211
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4154589   0.3481758   0.4827420
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.3773585   0.2465339   0.5081831
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3648649   0.2871151   0.4426147
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4269972   0.3760556   0.4779389
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5180723   0.4104549   0.6256897
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.5000000   0.3314881   0.6685119
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4838710   0.4049889   0.5627530
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4880024   0.4676603   0.5083445
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4950000   0.4584331   0.5315669
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3965790   0.3764588   0.4166992
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4360987   0.3972864   0.4749109


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1809955   0.1301194   0.2318716
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1165919   0.0743750   0.1588088
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1615970   0.1301114   0.1930825
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3234716   0.3131402   0.3338029
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3023441   0.2806174   0.3240708
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2125237   0.1775632   0.2474842
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2471936   0.2366536   0.2577336
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2525687   0.2374550   0.2676823
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.4285714   0.3636201   0.4935228
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4439462   0.3977834   0.4901089
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4896170   0.4715168   0.5077172
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.4052853   0.3865623   0.4240082


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.4496644   0.7495860   2.803584
Birth       ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 1.1717172   0.4939463   2.779495
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1681235   0.7349028   1.856725
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0132264   0.9415873   1.090316
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1184772   0.9485832   1.318800
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2148041   0.6727239   2.193692
6 months    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 1.3015385   0.7486836   2.262641
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4042456   0.9747072   2.023075
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9830065   0.6463228   1.495076
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0453266   0.9523432   1.147389
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2761850   1.1202448   1.453832
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.7999632   0.6029823   1.061293
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.7062802   0.4593272   1.086005
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 0.9668919   0.6436457   1.452476
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2132919   0.9548405   1.541700
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9677419   0.6655301   1.407186
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0143393   0.9333624   1.102342
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0996513   0.9979640   1.211700


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0421066   -0.0273321   0.1115453
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0131437   -0.0557257   0.0820130
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0051989   -0.0110450   0.0214427
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0009374   -0.0043092   0.0061840
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0071965   -0.0036810   0.0180740
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0228395   -0.0441821   0.0898611
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0400327   -0.0384888   0.1185541
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0158413   -0.0030122   0.0346947
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0050845   -0.1301713   0.1200023
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0025402   -0.0028575   0.0079379
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0146345    0.0062350   0.0230339
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0743095   -0.1711209   0.0225018
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1596639   -0.3851677   0.0658400
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0091993   -0.1212581   0.1028595
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0169489   -0.0054524   0.0393502
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0132275   -0.1658197   0.1393646
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0016146   -0.0078522   0.0110813
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0087062   -0.0003735   0.0177860


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2326389   -0.2590259   0.5323027
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1127321   -0.7244540   0.5434820
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0321717   -0.0736184   0.1275377
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0028979   -0.0134577   0.0189896
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0238023   -0.0128112   0.0590922
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1245791   -0.3277564   0.4228145
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.1814815   -0.2625165   0.4693356
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0745388   -0.0180969   0.1587456
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0142575   -0.4333092   0.2822775
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0102762   -0.0118072   0.0318777
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0579426    0.0244388   0.0902958
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1559765   -0.3797113   0.0314774
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.3725490   -1.0185025   0.0666889
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0249873   -0.3793914   0.2383606
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0381779   -0.0137168   0.0874160
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0271739   -0.3937793   0.2430034
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0032976   -0.0162252   0.0224455
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0214817   -0.0011183   0.0435716

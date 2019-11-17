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

**Intervention Variable:** trth2o

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    stunted   n_cell     n
----------  -------------------------  -----------------------------  -------  --------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0       97   119
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1       20   119
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0        2   119
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        0   119
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3    22
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        1    22
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       16    22
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        2    22
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     2
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     2
Birth       ki0047075b-MAL-ED          INDIA                          0               0        1     2
Birth       ki0047075b-MAL-ED          INDIA                          0               1        1     2
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        7     9
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     9
Birth       ki0047075b-MAL-ED          NEPAL                          0               0        2     9
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        0     9
Birth       ki0047075b-MAL-ED          PERU                           1               0       23    36
Birth       ki0047075b-MAL-ED          PERU                           1               1        5    36
Birth       ki0047075b-MAL-ED          PERU                           0               0        8    36
Birth       ki0047075b-MAL-ED          PERU                           0               1        0    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        4     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4    22
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    22
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       14    22
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        4    22
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       24    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0    26
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0    26
Birth       ki1000108-IRC              INDIA                          1               0      102   120
Birth       ki1000108-IRC              INDIA                          1               1       18   120
Birth       ki1000108-IRC              INDIA                          0               0        0   120
Birth       ki1000108-IRC              INDIA                          0               1        0   120
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0       11   539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1        1   539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      480   539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       47   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      345   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       64   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      286   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       37   732
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0        3     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1        0     4
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      107   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1       25   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0        2   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        0   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0       89   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        1   103
6 months    ki0047075b-MAL-ED          INDIA                          1               0        3     9
6 months    ki0047075b-MAL-ED          INDIA                          1               1        1     9
6 months    ki0047075b-MAL-ED          INDIA                          0               0        2     9
6 months    ki0047075b-MAL-ED          INDIA                          0               1        3     9
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       65    83
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        4    83
6 months    ki0047075b-MAL-ED          NEPAL                          0               0       13    83
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        1    83
6 months    ki0047075b-MAL-ED          PERU                           1               0       29    49
6 months    ki0047075b-MAL-ED          PERU                           1               1       10    49
6 months    ki0047075b-MAL-ED          PERU                           0               0        8    49
6 months    ki0047075b-MAL-ED          PERU                           0               1        2    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       10    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       26    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       10    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0       85   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       35   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   120
6 months    ki1000108-IRC              INDIA                          1               0       90   121
6 months    ki1000108-IRC              INDIA                          1               1       31   121
6 months    ki1000108-IRC              INDIA                          0               0        0   121
6 months    ki1000108-IRC              INDIA                          0               1        0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       12   604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        2   604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      496   604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1       94   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      300   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       96   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      265   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1       54   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0        3     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        0     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0       75   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1       58   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0       89   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1   103
24 months   ki0047075b-MAL-ED          INDIA                          1               0        4     9
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     9
24 months   ki0047075b-MAL-ED          INDIA                          0               0        2     9
24 months   ki0047075b-MAL-ED          INDIA                          0               1        3     9
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       54    83
24 months   ki0047075b-MAL-ED          NEPAL                          1               1       15    83
24 months   ki0047075b-MAL-ED          NEPAL                          0               0       11    83
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        3    83
24 months   ki0047075b-MAL-ED          PERU                           1               0       22    49
24 months   ki0047075b-MAL-ED          PERU                           1               1       17    49
24 months   ki0047075b-MAL-ED          PERU                           0               0        3    49
24 months   ki0047075b-MAL-ED          PERU                           0               1        7    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        1    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        8    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        2    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        4    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0        8    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       29    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0       43   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       76   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   119
24 months   ki1000108-IRC              INDIA                          1               0       69   121
24 months   ki1000108-IRC              INDIA                          1               1       52   121
24 months   ki1000108-IRC              INDIA                          0               0        0   121
24 months   ki1000108-IRC              INDIA                          0               1        0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0        9   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        5   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      379   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1      185   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      175   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       67   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      207   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1       65   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0        2     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        1     4


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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/fb99e023-a0ce-44c9-b9f7-e9ff075ad0f1/95a35660-36b7-4792-a593-87539f807fea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb99e023-a0ce-44c9-b9f7-e9ff075ad0f1/95a35660-36b7-4792-a593-87539f807fea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb99e023-a0ce-44c9-b9f7-e9ff075ad0f1/95a35660-36b7-4792-a593-87539f807fea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb99e023-a0ce-44c9-b9f7-e9ff075ad0f1/95a35660-36b7-4792-a593-87539f807fea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1564792   0.1212454   0.1917130
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1145511   0.0797955   0.1493067
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2424242   0.2001860   0.2846624
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1692790   0.1280990   0.2104589
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.3571429   0.1137552   0.6005305
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3280142   0.2892029   0.3668254
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.2768595   0.2204302   0.3332888
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.2389706   0.1882412   0.2897000


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1379781   0.1129774   0.1629789
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.7320530   0.5017102   1.0681496
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.6982759   0.5176965   0.9418438
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.9184397   0.4598937   1.8341879
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8631475   0.6430974   1.1584927


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0185011   -0.0403915    0.0033893
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0326340   -0.0590876   -0.0061805
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0284231   -0.2687245    0.2118783
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0200502   -0.0602377    0.0201374


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.1340870   -0.3030041    0.0129323
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.1555556   -0.2879475   -0.0367726
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0864662   -1.1293703    0.4456536
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0780741   -0.2463653    0.0674934

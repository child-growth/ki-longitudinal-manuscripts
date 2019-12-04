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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        trth2o    wasted   n_cell     n
----------  -------------------------  -----------------------------  -------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0       93   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              1       17   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              0        2   112
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              1        0   112
Birth       ki0047075b-MAL-ED          BRAZIL                         1              0        3    20
Birth       ki0047075b-MAL-ED          BRAZIL                         1              1        0    20
Birth       ki0047075b-MAL-ED          BRAZIL                         0              0       16    20
Birth       ki0047075b-MAL-ED          BRAZIL                         0              1        1    20
Birth       ki0047075b-MAL-ED          INDIA                          1              0        0     1
Birth       ki0047075b-MAL-ED          INDIA                          1              1        0     1
Birth       ki0047075b-MAL-ED          INDIA                          0              0        1     1
Birth       ki0047075b-MAL-ED          INDIA                          0              1        0     1
Birth       ki0047075b-MAL-ED          NEPAL                          1              0        7     9
Birth       ki0047075b-MAL-ED          NEPAL                          1              1        0     9
Birth       ki0047075b-MAL-ED          NEPAL                          0              0        2     9
Birth       ki0047075b-MAL-ED          NEPAL                          0              1        0     9
Birth       ki0047075b-MAL-ED          PERU                           1              0       26    36
Birth       ki0047075b-MAL-ED          PERU                           1              1        2    36
Birth       ki0047075b-MAL-ED          PERU                           0              0        8    36
Birth       ki0047075b-MAL-ED          PERU                           0              1        0    36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        1     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              0        4     5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        0     5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        4    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0       17    21
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        0    21
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0       23    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        1    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0        0    24
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              1        0    24
Birth       ki1000108-IRC              INDIA                          1              0       77   105
Birth       ki1000108-IRC              INDIA                          1              1       28   105
Birth       ki1000108-IRC              INDIA                          0              0        0   105
Birth       ki1000108-IRC              INDIA                          0              1        0   105
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              0        9   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              1        2   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0              0      406   532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0              1      115   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0      319   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1       78   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              0      216   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              1       94   707
Birth       ki1113344-GMS-Nepal        NEPAL                          1              0        1     4
Birth       ki1113344-GMS-Nepal        NEPAL                          1              1        0     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0              0        3     4
Birth       ki1113344-GMS-Nepal        NEPAL                          0              1        0     4
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0      129   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              1        3   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              0        2   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              1        0   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1              0       13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         1              1        0   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0              0       90   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0              1        0   103
6 months    ki0047075b-MAL-ED          INDIA                          1              0        4     9
6 months    ki0047075b-MAL-ED          INDIA                          1              1        0     9
6 months    ki0047075b-MAL-ED          INDIA                          0              0        5     9
6 months    ki0047075b-MAL-ED          INDIA                          0              1        0     9
6 months    ki0047075b-MAL-ED          NEPAL                          1              0       69    83
6 months    ki0047075b-MAL-ED          NEPAL                          1              1        0    83
6 months    ki0047075b-MAL-ED          NEPAL                          0              0       13    83
6 months    ki0047075b-MAL-ED          NEPAL                          0              1        1    83
6 months    ki0047075b-MAL-ED          PERU                           1              0       39    49
6 months    ki0047075b-MAL-ED          PERU                           1              1        0    49
6 months    ki0047075b-MAL-ED          PERU                           0              0       10    49
6 months    ki0047075b-MAL-ED          PERU                           0              1        0    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              0        7    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        3    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0       36    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        0    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0      101   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1       19   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0        0   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              1        0   120
6 months    ki1000108-IRC              INDIA                          1              0      106   121
6 months    ki1000108-IRC              INDIA                          1              1       15   121
6 months    ki1000108-IRC              INDIA                          0              0        0   121
6 months    ki1000108-IRC              INDIA                          0              1        0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0       14   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        0   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              0      564   603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              1       25   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      385   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1       11   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              0      309   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              1       10   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0        1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1        0     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              0        3     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              1        0     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0      120   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              1       13   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              0        2   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              1        0   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1              0       13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         1              1        0   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0              0       90   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0              1        0   103
24 months   ki0047075b-MAL-ED          INDIA                          1              0        4     9
24 months   ki0047075b-MAL-ED          INDIA                          1              1        0     9
24 months   ki0047075b-MAL-ED          INDIA                          0              0        2     9
24 months   ki0047075b-MAL-ED          INDIA                          0              1        3     9
24 months   ki0047075b-MAL-ED          NEPAL                          1              0       69    83
24 months   ki0047075b-MAL-ED          NEPAL                          1              1        0    83
24 months   ki0047075b-MAL-ED          NEPAL                          0              0       14    83
24 months   ki0047075b-MAL-ED          NEPAL                          0              1        0    83
24 months   ki0047075b-MAL-ED          PERU                           1              0       37    49
24 months   ki0047075b-MAL-ED          PERU                           1              1        2    49
24 months   ki0047075b-MAL-ED          PERU                           0              0       10    49
24 months   ki0047075b-MAL-ED          PERU                           0              1        0    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              0        2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              1        0    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              0        9    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              1        0    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              0        6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1        0    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              0       36    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              1        1    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0      112   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        7   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0        0   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              1        0   119
24 months   ki1000108-IRC              INDIA                          1              0      111   121
24 months   ki1000108-IRC              INDIA                          1              1       10   121
24 months   ki1000108-IRC              INDIA                          0              0        0   121
24 months   ki1000108-IRC              INDIA                          0              1        0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0       14   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1        0   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              0      503   579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              1       62   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      218   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       24   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              0      251   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              1       21   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1        0     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              0        1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              1        2     4


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/eac1421b-b3cc-4434-bdaf-afefcb158247/bd4e8859-11c4-4957-adfb-b0497c60a108/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eac1421b-b3cc-4434-bdaf-afefcb158247/bd4e8859-11c4-4957-adfb-b0497c60a108/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eac1421b-b3cc-4434-bdaf-afefcb158247/bd4e8859-11c4-4957-adfb-b0497c60a108/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eac1421b-b3cc-4434-bdaf-afefcb158247/bd4e8859-11c4-4957-adfb-b0497c60a108/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1964736   0.1573613   0.2355858
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.3032258   0.2520218   0.3544298
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0277778   0.0115807   0.0439748
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0313480   0.0122122   0.0504837
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0991736   0.0614787   0.1368684
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0772059   0.0454544   0.1089574


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2432815   0.2116319   0.2749310
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.5433416   1.1887533   2.003699
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.1285266   0.4851694   2.625006
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.7784926   0.4446818   1.362886


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0468079    0.0182869   0.0753289
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0015929   -0.0095931   0.0127788
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0116249   -0.0377232   0.0144734


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1924023    0.0677237   0.3004070
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0542328   -0.4137580   0.3673064
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.1327824   -0.4714306   0.1279263

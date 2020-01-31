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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        trth2o    swasted   n_cell     n  outcome_variable 
----------  -------------------------  -----------------------------  -------  --------  -------  ----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0      105   112  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        5   112  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0        2   112  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1        0   112  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        3    20  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        0    20  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       17    20  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        0    20  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0     1  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0     1  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0               0        1     1  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          0               1        0     1  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        7     9  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0     9  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0               0        2     9  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        0     9  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1               0       28    36  swasted          
Birth       ki0047075b-MAL-ED          PERU                           1               1        0    36  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0               0        8    36  swasted          
Birth       ki0047075b-MAL-ED          PERU                           0               1        0    36  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        1     5  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0     5  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        4     5  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0     5  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        4    21  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    21  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       17    21  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    21  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       24    24  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    24  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0    24  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0    24  swasted          
Birth       ki1000108-IRC              INDIA                          1               0       91   105  swasted          
Birth       ki1000108-IRC              INDIA                          1               1       14   105  swasted          
Birth       ki1000108-IRC              INDIA                          0               0        0   105  swasted          
Birth       ki1000108-IRC              INDIA                          0               1        0   105  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               0       10   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               1        1   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      509   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               1       12   532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0      373   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1       24   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0      287   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1       23   707  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1               0        1     4  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          1               1        0     4  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0               0        3     4  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          0               1        0     4  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0      131   134  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        1   134  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0        2   134  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        0   134  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       13   103  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0   103  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0       90   103  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0   103  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1               0        4     9  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     9  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0               0        5     9  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          0               1        0     9  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1               0       69    83  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0    83  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0               0       14    83  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          0               1        0    83  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1               0       39    49  swasted          
6 months    ki0047075b-MAL-ED          PERU                           1               1        0    49  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0               0       10    49  swasted          
6 months    ki0047075b-MAL-ED          PERU                           0               1        0    49  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    12  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    12  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        9    12  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        1    12  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    42  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    42  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       36    42  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    42  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      114   120  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        6   120  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   120  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   120  swasted          
6 months    ki1000108-IRC              INDIA                          1               0      114   121  swasted          
6 months    ki1000108-IRC              INDIA                          1               1        7   121  swasted          
6 months    ki1000108-IRC              INDIA                          0               0        0   121  swasted          
6 months    ki1000108-IRC              INDIA                          0               1        0   121  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0       14   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        0   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      584   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        5   603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      396   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      319   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0   715  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0        1     4  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     4  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0        3     4  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        0     4  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0      133   135  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0   135  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0        2   135  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1        0   135  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       13   103  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        0   103  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0       90   103  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        0   103  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1               0        4     9  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     9  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0               0        5     9  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          0               1        0     9  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1               0       69    83  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0    83  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0               0       14    83  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          0               1        0    83  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1               0       39    49  swasted          
24 months   ki0047075b-MAL-ED          PERU                           1               1        0    49  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0               0       10    49  swasted          
24 months   ki0047075b-MAL-ED          PERU                           0               1        0    49  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0        2    11  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        0    11  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0        9    11  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        0    11  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6    43  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0    43  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       37    43  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        0    43  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      118   119  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        1   119  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0        0   119  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        0   119  swasted          
24 months   ki1000108-IRC              INDIA                          1               0      121   121  swasted          
24 months   ki1000108-IRC              INDIA                          1               1        0   121  swasted          
24 months   ki1000108-IRC              INDIA                          0               0        0   121  swasted          
24 months   ki1000108-IRC              INDIA                          0               1        0   121  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0       14   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        0   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      556   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        9   579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      239   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        3   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      271   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1   514  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0        1     4  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        0     4  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0        2     4  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        1     4  swasted          


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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/dfcece89-4dde-4335-ac99-ab076fb3dcb4/fc20d196-fe97-4d2a-b76f-6cb560e9efef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dfcece89-4dde-4335-ac99-ab076fb3dcb4/fc20d196-fe97-4d2a-b76f-6cb560e9efef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dfcece89-4dde-4335-ac99-ab076fb3dcb4/fc20d196-fe97-4d2a-b76f-6cb560e9efef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dfcece89-4dde-4335-ac99-ab076fb3dcb4/fc20d196-fe97-4d2a-b76f-6cb560e9efef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0604534   0.0369933   0.0839135
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0741935   0.0449979   0.1033892


### Parameter: E(Y)


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539


### Parameter: RR


agecat   studyid                 country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
Birth    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.227285   0.7061934   2.132884


### Parameter: PAR


agecat   studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0060247   -0.0104053   0.0224547


### Parameter: PAF


agecat   studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0906265   -0.1919161   0.3061927

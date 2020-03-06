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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        trth2o    wast_rec90d   n_cell     n
------------  ---------------  -----------------------------  -------  ------------  -------  ----
0-24 months   CMC-V-BCS-2002   INDIA                          1                   0       37    99
0-24 months   CMC-V-BCS-2002   INDIA                          1                   1       62    99
0-24 months   CMC-V-BCS-2002   INDIA                          0                   0        0    99
0-24 months   CMC-V-BCS-2002   INDIA                          0                   1        0    99
0-24 months   GMS-Nepal        NEPAL                          1                   0        0     4
0-24 months   GMS-Nepal        NEPAL                          1                   1        0     4
0-24 months   GMS-Nepal        NEPAL                          0                   0        2     4
0-24 months   GMS-Nepal        NEPAL                          0                   1        2     4
0-24 months   IRC              INDIA                          1                   0       59   135
0-24 months   IRC              INDIA                          1                   1       76   135
0-24 months   IRC              INDIA                          0                   0        0   135
0-24 months   IRC              INDIA                          0                   1        0   135
0-24 months   MAL-ED           BANGLADESH                     1                   0       25    62
0-24 months   MAL-ED           BANGLADESH                     1                   1       37    62
0-24 months   MAL-ED           BANGLADESH                     0                   0        0    62
0-24 months   MAL-ED           BANGLADESH                     0                   1        0    62
0-24 months   MAL-ED           BRAZIL                         1                   0        0    10
0-24 months   MAL-ED           BRAZIL                         1                   1        0    10
0-24 months   MAL-ED           BRAZIL                         0                   0        1    10
0-24 months   MAL-ED           BRAZIL                         0                   1        9    10
0-24 months   MAL-ED           INDIA                          1                   0        0     8
0-24 months   MAL-ED           INDIA                          1                   1        1     8
0-24 months   MAL-ED           INDIA                          0                   0        4     8
0-24 months   MAL-ED           INDIA                          0                   1        3     8
0-24 months   MAL-ED           NEPAL                          1                   0        5    47
0-24 months   MAL-ED           NEPAL                          1                   1       37    47
0-24 months   MAL-ED           NEPAL                          0                   0        2    47
0-24 months   MAL-ED           NEPAL                          0                   1        3    47
0-24 months   MAL-ED           PERU                           1                   0        2     9
0-24 months   MAL-ED           PERU                           1                   1        4     9
0-24 months   MAL-ED           PERU                           0                   0        0     9
0-24 months   MAL-ED           PERU                           0                   1        3     9
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0        0     9
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     9
0-24 months   MAL-ED           SOUTH AFRICA                   0                   0        3     9
0-24 months   MAL-ED           SOUTH AFRICA                   0                   1        6     9
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0    10
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0    10
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        2    10
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        8    10
0-24 months   NIH-Crypto       BANGLADESH                     1                   0       65   310
0-24 months   NIH-Crypto       BANGLADESH                     1                   1       94   310
0-24 months   NIH-Crypto       BANGLADESH                     0                   0       52   310
0-24 months   NIH-Crypto       BANGLADESH                     0                   1       99   310
0-24 months   PROVIDE          BANGLADESH                     1                   0        0   308
0-24 months   PROVIDE          BANGLADESH                     1                   1        2   308
0-24 months   PROVIDE          BANGLADESH                     0                   0      129   308
0-24 months   PROVIDE          BANGLADESH                     0                   1      177   308
0-6 months    CMC-V-BCS-2002   INDIA                          1                   0       23    61
0-6 months    CMC-V-BCS-2002   INDIA                          1                   1       38    61
0-6 months    CMC-V-BCS-2002   INDIA                          0                   0        0    61
0-6 months    CMC-V-BCS-2002   INDIA                          0                   1        0    61
0-6 months    IRC              INDIA                          1                   0       30    80
0-6 months    IRC              INDIA                          1                   1       50    80
0-6 months    IRC              INDIA                          0                   0        0    80
0-6 months    IRC              INDIA                          0                   1        0    80
0-6 months    MAL-ED           BANGLADESH                     1                   0        5    26
0-6 months    MAL-ED           BANGLADESH                     1                   1       21    26
0-6 months    MAL-ED           BANGLADESH                     0                   0        0    26
0-6 months    MAL-ED           BANGLADESH                     0                   1        0    26
0-6 months    MAL-ED           BRAZIL                         1                   0        0     8
0-6 months    MAL-ED           BRAZIL                         1                   1        0     8
0-6 months    MAL-ED           BRAZIL                         0                   0        0     8
0-6 months    MAL-ED           BRAZIL                         0                   1        8     8
0-6 months    MAL-ED           INDIA                          1                   0        0     2
0-6 months    MAL-ED           INDIA                          1                   1        1     2
0-6 months    MAL-ED           INDIA                          0                   0        0     2
0-6 months    MAL-ED           INDIA                          0                   1        1     2
0-6 months    MAL-ED           NEPAL                          1                   0        2    21
0-6 months    MAL-ED           NEPAL                          1                   1       17    21
0-6 months    MAL-ED           NEPAL                          0                   0        1    21
0-6 months    MAL-ED           NEPAL                          0                   1        1    21
0-6 months    MAL-ED           PERU                           1                   0        0     3
0-6 months    MAL-ED           PERU                           1                   1        3     3
0-6 months    MAL-ED           PERU                           0                   0        0     3
0-6 months    MAL-ED           PERU                           0                   1        0     3
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0        0     4
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     4
0-6 months    MAL-ED           SOUTH AFRICA                   0                   0        2     4
0-6 months    MAL-ED           SOUTH AFRICA                   0                   1        2     4
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     3
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     3
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        0     3
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     3
0-6 months    NIH-Crypto       BANGLADESH                     1                   0       12   197
0-6 months    NIH-Crypto       BANGLADESH                     1                   1       81   197
0-6 months    NIH-Crypto       BANGLADESH                     0                   0        9   197
0-6 months    NIH-Crypto       BANGLADESH                     0                   1       95   197
0-6 months    PROVIDE          BANGLADESH                     1                   0        0   185
0-6 months    PROVIDE          BANGLADESH                     1                   1        2   185
0-6 months    PROVIDE          BANGLADESH                     0                   0       40   185
0-6 months    PROVIDE          BANGLADESH                     0                   1      143   185
6-24 months   CMC-V-BCS-2002   INDIA                          1                   0       14    38
6-24 months   CMC-V-BCS-2002   INDIA                          1                   1       24    38
6-24 months   CMC-V-BCS-2002   INDIA                          0                   0        0    38
6-24 months   CMC-V-BCS-2002   INDIA                          0                   1        0    38
6-24 months   GMS-Nepal        NEPAL                          1                   0        0     4
6-24 months   GMS-Nepal        NEPAL                          1                   1        0     4
6-24 months   GMS-Nepal        NEPAL                          0                   0        2     4
6-24 months   GMS-Nepal        NEPAL                          0                   1        2     4
6-24 months   IRC              INDIA                          1                   0       29    55
6-24 months   IRC              INDIA                          1                   1       26    55
6-24 months   IRC              INDIA                          0                   0        0    55
6-24 months   IRC              INDIA                          0                   1        0    55
6-24 months   MAL-ED           BANGLADESH                     1                   0       20    36
6-24 months   MAL-ED           BANGLADESH                     1                   1       16    36
6-24 months   MAL-ED           BANGLADESH                     0                   0        0    36
6-24 months   MAL-ED           BANGLADESH                     0                   1        0    36
6-24 months   MAL-ED           BRAZIL                         1                   0        0     2
6-24 months   MAL-ED           BRAZIL                         1                   1        0     2
6-24 months   MAL-ED           BRAZIL                         0                   0        1     2
6-24 months   MAL-ED           BRAZIL                         0                   1        1     2
6-24 months   MAL-ED           INDIA                          1                   0        0     6
6-24 months   MAL-ED           INDIA                          1                   1        0     6
6-24 months   MAL-ED           INDIA                          0                   0        4     6
6-24 months   MAL-ED           INDIA                          0                   1        2     6
6-24 months   MAL-ED           NEPAL                          1                   0        3    26
6-24 months   MAL-ED           NEPAL                          1                   1       20    26
6-24 months   MAL-ED           NEPAL                          0                   0        1    26
6-24 months   MAL-ED           NEPAL                          0                   1        2    26
6-24 months   MAL-ED           PERU                           1                   0        2     6
6-24 months   MAL-ED           PERU                           1                   1        1     6
6-24 months   MAL-ED           PERU                           0                   0        0     6
6-24 months   MAL-ED           PERU                           0                   1        3     6
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0        0     5
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     5
6-24 months   MAL-ED           SOUTH AFRICA                   0                   0        1     5
6-24 months   MAL-ED           SOUTH AFRICA                   0                   1        4     5
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     7
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     7
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0        2     7
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        5     7
6-24 months   NIH-Crypto       BANGLADESH                     1                   0       53   113
6-24 months   NIH-Crypto       BANGLADESH                     1                   1       13   113
6-24 months   NIH-Crypto       BANGLADESH                     0                   0       43   113
6-24 months   NIH-Crypto       BANGLADESH                     0                   1        4   113
6-24 months   PROVIDE          BANGLADESH                     1                   0        0   123
6-24 months   PROVIDE          BANGLADESH                     1                   1        0   123
6-24 months   PROVIDE          BANGLADESH                     0                   0       89   123
6-24 months   PROVIDE          BANGLADESH                     0                   1       34   123


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/d3413f93-ebc1-459b-b537-084c12cf8e72/7cae7229-150a-42c0-903c-1ee3402bdfe3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d3413f93-ebc1-459b-b537-084c12cf8e72/7cae7229-150a-42c0-903c-1ee3402bdfe3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d3413f93-ebc1-459b-b537-084c12cf8e72/7cae7229-150a-42c0-903c-1ee3402bdfe3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d3413f93-ebc1-459b-b537-084c12cf8e72/7cae7229-150a-42c0-903c-1ee3402bdfe3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.5911950   0.5137187   0.6686712
0-24 months   NIH-Crypto   BANGLADESH   0                    NA                0.6556291   0.5803463   0.7309120
0-6 months    NIH-Crypto   BANGLADESH   1                    NA                0.8709677   0.8020142   0.9399213
0-6 months    NIH-Crypto   BANGLADESH   0                    NA                0.9134615   0.8587561   0.9681669


### Parameter: E(Y)


agecat        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.8934010   0.8497799   0.9370221


### Parameter: RR


agecat        studyid      country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   NIH-Crypto   BANGLADESH   0                    1                 1.108990   0.9312886   1.320598
0-6 months    NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-6 months    NIH-Crypto   BANGLADESH   0                    1                 1.048789   0.9496775   1.158244


### Parameter: PAR


agecat        studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0313857   -0.0218893   0.0846606
0-6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0224333   -0.0241185   0.0689850


### Parameter: PAF


agecat        studyid      country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0504122   -0.0394507   0.1325063
0-6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0251100   -0.0286467   0.0760573

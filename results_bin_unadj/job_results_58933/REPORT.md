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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        trth2o    sstunted   n_cell     n
----------  ---------------  -----------------------------  -------  ---------  -------  ----
Birth       CMC-V-BCS-2002   INDIA                          1                0       25    26
Birth       CMC-V-BCS-2002   INDIA                          1                1        1    26
Birth       CMC-V-BCS-2002   INDIA                          0                0        0    26
Birth       CMC-V-BCS-2002   INDIA                          0                1        0    26
Birth       GMS-Nepal        NEPAL                          1                0        1     4
Birth       GMS-Nepal        NEPAL                          1                1        0     4
Birth       GMS-Nepal        NEPAL                          0                0        3     4
Birth       GMS-Nepal        NEPAL                          0                1        0     4
Birth       IRC              INDIA                          1                0      114   120
Birth       IRC              INDIA                          1                1        6   120
Birth       IRC              INDIA                          0                0        0   120
Birth       IRC              INDIA                          0                1        0   120
Birth       MAL-ED           BANGLADESH                     1                0      113   119
Birth       MAL-ED           BANGLADESH                     1                1        4   119
Birth       MAL-ED           BANGLADESH                     0                0        2   119
Birth       MAL-ED           BANGLADESH                     0                1        0   119
Birth       MAL-ED           BRAZIL                         1                0        3    22
Birth       MAL-ED           BRAZIL                         1                1        1    22
Birth       MAL-ED           BRAZIL                         0                0       17    22
Birth       MAL-ED           BRAZIL                         0                1        1    22
Birth       MAL-ED           INDIA                          1                0        0     2
Birth       MAL-ED           INDIA                          1                1        0     2
Birth       MAL-ED           INDIA                          0                0        1     2
Birth       MAL-ED           INDIA                          0                1        1     2
Birth       MAL-ED           NEPAL                          1                0        7     9
Birth       MAL-ED           NEPAL                          1                1        0     9
Birth       MAL-ED           NEPAL                          0                0        2     9
Birth       MAL-ED           NEPAL                          0                1        0     9
Birth       MAL-ED           PERU                           1                0       28    36
Birth       MAL-ED           PERU                           1                1        0    36
Birth       MAL-ED           PERU                           0                0        8    36
Birth       MAL-ED           PERU                           0                1        0    36
Birth       MAL-ED           SOUTH AFRICA                   1                0        1     5
Birth       MAL-ED           SOUTH AFRICA                   1                1        0     5
Birth       MAL-ED           SOUTH AFRICA                   0                0        4     5
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     5
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        4    22
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0    22
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       17    22
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        1    22
Birth       NIH-Crypto       BANGLADESH                     1                0      404   732
Birth       NIH-Crypto       BANGLADESH                     1                1        5   732
Birth       NIH-Crypto       BANGLADESH                     0                0      318   732
Birth       NIH-Crypto       BANGLADESH                     0                1        5   732
Birth       PROVIDE          BANGLADESH                     1                0       11   539
Birth       PROVIDE          BANGLADESH                     1                1        1   539
Birth       PROVIDE          BANGLADESH                     0                0      524   539
Birth       PROVIDE          BANGLADESH                     0                1        3   539
6 months    CMC-V-BCS-2002   INDIA                          1                0      105   120
6 months    CMC-V-BCS-2002   INDIA                          1                1       15   120
6 months    CMC-V-BCS-2002   INDIA                          0                0        0   120
6 months    CMC-V-BCS-2002   INDIA                          0                1        0   120
6 months    GMS-Nepal        NEPAL                          1                0        1     4
6 months    GMS-Nepal        NEPAL                          1                1        0     4
6 months    GMS-Nepal        NEPAL                          0                0        3     4
6 months    GMS-Nepal        NEPAL                          0                1        0     4
6 months    IRC              INDIA                          1                0      110   121
6 months    IRC              INDIA                          1                1       11   121
6 months    IRC              INDIA                          0                0        0   121
6 months    IRC              INDIA                          0                1        0   121
6 months    MAL-ED           BANGLADESH                     1                0      129   134
6 months    MAL-ED           BANGLADESH                     1                1        3   134
6 months    MAL-ED           BANGLADESH                     0                0        2   134
6 months    MAL-ED           BANGLADESH                     0                1        0   134
6 months    MAL-ED           BRAZIL                         1                0       13   103
6 months    MAL-ED           BRAZIL                         1                1        0   103
6 months    MAL-ED           BRAZIL                         0                0       90   103
6 months    MAL-ED           BRAZIL                         0                1        0   103
6 months    MAL-ED           INDIA                          1                0        4     9
6 months    MAL-ED           INDIA                          1                1        0     9
6 months    MAL-ED           INDIA                          0                0        5     9
6 months    MAL-ED           INDIA                          0                1        0     9
6 months    MAL-ED           NEPAL                          1                0       69    83
6 months    MAL-ED           NEPAL                          1                1        0    83
6 months    MAL-ED           NEPAL                          0                0       14    83
6 months    MAL-ED           NEPAL                          0                1        0    83
6 months    MAL-ED           PERU                           1                0       36    49
6 months    MAL-ED           PERU                           1                1        3    49
6 months    MAL-ED           PERU                           0                0       10    49
6 months    MAL-ED           PERU                           0                1        0    49
6 months    MAL-ED           SOUTH AFRICA                   1                0        1    12
6 months    MAL-ED           SOUTH AFRICA                   1                1        1    12
6 months    MAL-ED           SOUTH AFRICA                   0                0       10    12
6 months    MAL-ED           SOUTH AFRICA                   0                1        0    12
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        5    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       33    42
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        3    42
6 months    NIH-Crypto       BANGLADESH                     1                0      379   715
6 months    NIH-Crypto       BANGLADESH                     1                1       17   715
6 months    NIH-Crypto       BANGLADESH                     0                0      313   715
6 months    NIH-Crypto       BANGLADESH                     0                1        6   715
6 months    PROVIDE          BANGLADESH                     1                0       13   604
6 months    PROVIDE          BANGLADESH                     1                1        1   604
6 months    PROVIDE          BANGLADESH                     0                0      577   604
6 months    PROVIDE          BANGLADESH                     0                1       13   604
24 months   CMC-V-BCS-2002   INDIA                          1                0       87   119
24 months   CMC-V-BCS-2002   INDIA                          1                1       32   119
24 months   CMC-V-BCS-2002   INDIA                          0                0        0   119
24 months   CMC-V-BCS-2002   INDIA                          0                1        0   119
24 months   GMS-Nepal        NEPAL                          1                0        1     4
24 months   GMS-Nepal        NEPAL                          1                1        0     4
24 months   GMS-Nepal        NEPAL                          0                0        3     4
24 months   GMS-Nepal        NEPAL                          0                1        0     4
24 months   IRC              INDIA                          1                0      108   121
24 months   IRC              INDIA                          1                1       13   121
24 months   IRC              INDIA                          0                0        0   121
24 months   IRC              INDIA                          0                1        0   121
24 months   MAL-ED           BANGLADESH                     1                0      117   135
24 months   MAL-ED           BANGLADESH                     1                1       16   135
24 months   MAL-ED           BANGLADESH                     0                0        2   135
24 months   MAL-ED           BANGLADESH                     0                1        0   135
24 months   MAL-ED           BRAZIL                         1                0       13   103
24 months   MAL-ED           BRAZIL                         1                1        0   103
24 months   MAL-ED           BRAZIL                         0                0       90   103
24 months   MAL-ED           BRAZIL                         0                1        0   103
24 months   MAL-ED           INDIA                          1                0        4     9
24 months   MAL-ED           INDIA                          1                1        0     9
24 months   MAL-ED           INDIA                          0                0        4     9
24 months   MAL-ED           INDIA                          0                1        1     9
24 months   MAL-ED           NEPAL                          1                0       65    83
24 months   MAL-ED           NEPAL                          1                1        4    83
24 months   MAL-ED           NEPAL                          0                0       13    83
24 months   MAL-ED           NEPAL                          0                1        1    83
24 months   MAL-ED           PERU                           1                0       36    49
24 months   MAL-ED           PERU                           1                1        3    49
24 months   MAL-ED           PERU                           0                0        9    49
24 months   MAL-ED           PERU                           0                1        1    49
24 months   MAL-ED           SOUTH AFRICA                   1                0        1    11
24 months   MAL-ED           SOUTH AFRICA                   1                1        1    11
24 months   MAL-ED           SOUTH AFRICA                   0                0        8    11
24 months   MAL-ED           SOUTH AFRICA                   0                1        1    11
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        4    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       20    43
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       17    43
24 months   NIH-Crypto       BANGLADESH                     1                0      224   514
24 months   NIH-Crypto       BANGLADESH                     1                1       18   514
24 months   NIH-Crypto       BANGLADESH                     0                0      254   514
24 months   NIH-Crypto       BANGLADESH                     0                1       18   514
24 months   PROVIDE          BANGLADESH                     1                0       13   578
24 months   PROVIDE          BANGLADESH                     1                1        1   578
24 months   PROVIDE          BANGLADESH                     0                0      513   578
24 months   PROVIDE          BANGLADESH                     0                1       51   578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/0e23c650-6505-4bfc-830a-26e3433756c7/517d5f2e-b122-4310-aaf1-baa0d6d051fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0e23c650-6505-4bfc-830a-26e3433756c7/517d5f2e-b122-4310-aaf1-baa0d6d051fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0e23c650-6505-4bfc-830a-26e3433756c7/517d5f2e-b122-4310-aaf1-baa0d6d051fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0e23c650-6505-4bfc-830a-26e3433756c7/517d5f2e-b122-4310-aaf1-baa0d6d051fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Crypto   BANGLADESH   1                    NA                0.0122249   0.0015679   0.0228820
Birth       NIH-Crypto   BANGLADESH   0                    NA                0.0154799   0.0020076   0.0289521
6 months    NIH-Crypto   BANGLADESH   1                    NA                0.0429293   0.0229512   0.0629074
6 months    NIH-Crypto   BANGLADESH   0                    NA                0.0188088   0.0038907   0.0337269
24 months   NIH-Crypto   BANGLADESH   1                    NA                0.0743802   0.0412893   0.1074710
24 months   NIH-Crypto   BANGLADESH   0                    NA                0.0661765   0.0366051   0.0957478


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       NIH-Crypto   BANGLADESH   NA                   NA                0.0136612   0.0052463   0.0220761
6 months    NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH   0                    1                 1.2662539   0.3694450   4.340020
6 months    NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH   0                    1                 0.4381339   0.1746758   1.098958
24 months   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   0                    1                 0.8897059   0.4735849   1.671456


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.0014363   -0.0061444   0.0090169
6 months    NIH-Crypto   BANGLADESH   1                    NA                -0.0107615   -0.0219203   0.0003974
24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0043413   -0.0278284   0.0191459


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       NIH-Crypto   BANGLADESH   1                    NA                 0.1051345   -0.6567966    0.5166671
6 months    NIH-Crypto   BANGLADESH   1                    NA                -0.3345411   -0.6989904   -0.0482695
24 months   NIH-Crypto   BANGLADESH   1                    NA                -0.0619835   -0.4556591    0.2252246

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

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid        country                        earlybf    swasted   n_cell       n
----------  -------------  -----------------------------  --------  --------  -------  ------
Birth       EE             PAKISTAN                       1                0       34     170
Birth       EE             PAKISTAN                       1                1        2     170
Birth       EE             PAKISTAN                       0                0      130     170
Birth       EE             PAKISTAN                       0                1        4     170
Birth       GMS-Nepal      NEPAL                          1                0      162     586
Birth       GMS-Nepal      NEPAL                          1                1        9     586
Birth       GMS-Nepal      NEPAL                          0                0      398     586
Birth       GMS-Nepal      NEPAL                          0                1       17     586
Birth       MAL-ED         BANGLADESH                     1                0      135     214
Birth       MAL-ED         BANGLADESH                     1                1        5     214
Birth       MAL-ED         BANGLADESH                     0                0       71     214
Birth       MAL-ED         BANGLADESH                     0                1        3     214
Birth       MAL-ED         BRAZIL                         1                0       26      62
Birth       MAL-ED         BRAZIL                         1                1        0      62
Birth       MAL-ED         BRAZIL                         0                0       36      62
Birth       MAL-ED         BRAZIL                         0                1        0      62
Birth       MAL-ED         INDIA                          1                0       31      44
Birth       MAL-ED         INDIA                          1                1        0      44
Birth       MAL-ED         INDIA                          0                0       13      44
Birth       MAL-ED         INDIA                          0                1        0      44
Birth       MAL-ED         NEPAL                          1                0       14      26
Birth       MAL-ED         NEPAL                          1                1        0      26
Birth       MAL-ED         NEPAL                          0                0       11      26
Birth       MAL-ED         NEPAL                          0                1        1      26
Birth       MAL-ED         PERU                           1                0      172     228
Birth       MAL-ED         PERU                           1                1        0     228
Birth       MAL-ED         PERU                           0                0       56     228
Birth       MAL-ED         PERU                           0                1        0     228
Birth       MAL-ED         SOUTH AFRICA                   1                0       69     110
Birth       MAL-ED         SOUTH AFRICA                   1                1        0     110
Birth       MAL-ED         SOUTH AFRICA                   0                0       41     110
Birth       MAL-ED         SOUTH AFRICA                   0                1        0     110
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      103     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       12     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     115
Birth       NIH-Crypto     BANGLADESH                     1                0      571     707
Birth       NIH-Crypto     BANGLADESH                     1                1       42     707
Birth       NIH-Crypto     BANGLADESH                     0                0       89     707
Birth       NIH-Crypto     BANGLADESH                     0                1        5     707
Birth       SAS-CompFeed   INDIA                          1                0       77    1072
Birth       SAS-CompFeed   INDIA                          1                1        2    1072
Birth       SAS-CompFeed   INDIA                          0                0      968    1072
Birth       SAS-CompFeed   INDIA                          0                1       25    1072
Birth       ZVITAMBO       ZIMBABWE                       1                0     5862   11514
Birth       ZVITAMBO       ZIMBABWE                       1                1      280   11514
Birth       ZVITAMBO       ZIMBABWE                       0                0     4929   11514
Birth       ZVITAMBO       ZIMBABWE                       0                1      443   11514
6 months    EE             PAKISTAN                       1                0       67     364
6 months    EE             PAKISTAN                       1                1        2     364
6 months    EE             PAKISTAN                       0                0      285     364
6 months    EE             PAKISTAN                       0                1       10     364
6 months    GMS-Nepal      NEPAL                          1                0      148     511
6 months    GMS-Nepal      NEPAL                          1                1        3     511
6 months    GMS-Nepal      NEPAL                          0                0      356     511
6 months    GMS-Nepal      NEPAL                          0                1        4     511
6 months    MAL-ED         BANGLADESH                     1                0      147     240
6 months    MAL-ED         BANGLADESH                     1                1        0     240
6 months    MAL-ED         BANGLADESH                     0                0       91     240
6 months    MAL-ED         BANGLADESH                     0                1        2     240
6 months    MAL-ED         BRAZIL                         1                0       95     209
6 months    MAL-ED         BRAZIL                         1                1        0     209
6 months    MAL-ED         BRAZIL                         0                0      114     209
6 months    MAL-ED         BRAZIL                         0                1        0     209
6 months    MAL-ED         INDIA                          1                0      136     236
6 months    MAL-ED         INDIA                          1                1        4     236
6 months    MAL-ED         INDIA                          0                0       94     236
6 months    MAL-ED         INDIA                          0                1        2     236
6 months    MAL-ED         NEPAL                          1                0       96     236
6 months    MAL-ED         NEPAL                          1                1        0     236
6 months    MAL-ED         NEPAL                          0                0      140     236
6 months    MAL-ED         NEPAL                          0                1        0     236
6 months    MAL-ED         PERU                           1                0      202     273
6 months    MAL-ED         PERU                           1                1        0     273
6 months    MAL-ED         PERU                           0                0       71     273
6 months    MAL-ED         PERU                           0                1        0     273
6 months    MAL-ED         SOUTH AFRICA                   1                0      153     250
6 months    MAL-ED         SOUTH AFRICA                   1                1        3     250
6 months    MAL-ED         SOUTH AFRICA                   0                0       94     250
6 months    MAL-ED         SOUTH AFRICA                   0                1        0     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      205     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       42     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    NIH-Crypto     BANGLADESH                     1                0      619     715
6 months    NIH-Crypto     BANGLADESH                     1                1        0     715
6 months    NIH-Crypto     BANGLADESH                     0                0       96     715
6 months    NIH-Crypto     BANGLADESH                     0                1        0     715
6 months    SAS-CompFeed   INDIA                          1                0       92    1334
6 months    SAS-CompFeed   INDIA                          1                1        5    1334
6 months    SAS-CompFeed   INDIA                          0                0     1199    1334
6 months    SAS-CompFeed   INDIA                          0                1       38    1334
6 months    ZVITAMBO       ZIMBABWE                       1                0     4030    7553
6 months    ZVITAMBO       ZIMBABWE                       1                1       35    7553
6 months    ZVITAMBO       ZIMBABWE                       0                0     3454    7553
6 months    ZVITAMBO       ZIMBABWE                       0                1       34    7553
24 months   EE             PAKISTAN                       1                0       32     164
24 months   EE             PAKISTAN                       1                1        0     164
24 months   EE             PAKISTAN                       0                0      128     164
24 months   EE             PAKISTAN                       0                1        4     164
24 months   GMS-Nepal      NEPAL                          1                0      129     444
24 months   GMS-Nepal      NEPAL                          1                1        2     444
24 months   GMS-Nepal      NEPAL                          0                0      302     444
24 months   GMS-Nepal      NEPAL                          0                1       11     444
24 months   MAL-ED         BANGLADESH                     1                0      128     211
24 months   MAL-ED         BANGLADESH                     1                1        0     211
24 months   MAL-ED         BANGLADESH                     0                0       83     211
24 months   MAL-ED         BANGLADESH                     0                1        0     211
24 months   MAL-ED         BRAZIL                         1                0       79     169
24 months   MAL-ED         BRAZIL                         1                1        1     169
24 months   MAL-ED         BRAZIL                         0                0       89     169
24 months   MAL-ED         BRAZIL                         0                1        0     169
24 months   MAL-ED         INDIA                          1                0      133     227
24 months   MAL-ED         INDIA                          1                1        1     227
24 months   MAL-ED         INDIA                          0                0       92     227
24 months   MAL-ED         INDIA                          0                1        1     227
24 months   MAL-ED         NEPAL                          1                0       95     228
24 months   MAL-ED         NEPAL                          1                1        0     228
24 months   MAL-ED         NEPAL                          0                0      133     228
24 months   MAL-ED         NEPAL                          0                1        0     228
24 months   MAL-ED         PERU                           1                0      147     201
24 months   MAL-ED         PERU                           1                1        2     201
24 months   MAL-ED         PERU                           0                0       52     201
24 months   MAL-ED         PERU                           0                1        0     201
24 months   MAL-ED         SOUTH AFRICA                   1                0      144     235
24 months   MAL-ED         SOUTH AFRICA                   1                1        0     235
24 months   MAL-ED         SOUTH AFRICA                   0                0       91     235
24 months   MAL-ED         SOUTH AFRICA                   0                1        0     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      180     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       34     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   NIH-Crypto     BANGLADESH                     1                0      439     514
24 months   NIH-Crypto     BANGLADESH                     1                1        4     514
24 months   NIH-Crypto     BANGLADESH                     0                0       71     514
24 months   NIH-Crypto     BANGLADESH                     0                1        0     514
24 months   ZVITAMBO       ZIMBABWE                       1                0      187     379
24 months   ZVITAMBO       ZIMBABWE                       1                1       14     379
24 months   ZVITAMBO       ZIMBABWE                       0                0      163     379
24 months   ZVITAMBO       ZIMBABWE                       0                1       15     379


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH

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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/7dc8f76b-39d1-42f9-b526-e69becb3ecaa/03870eb1-dc12-4b71-9039-89ac7d4b8434/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dc8f76b-39d1-42f9-b526-e69becb3ecaa/03870eb1-dc12-4b71-9039-89ac7d4b8434/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dc8f76b-39d1-42f9-b526-e69becb3ecaa/03870eb1-dc12-4b71-9039-89ac7d4b8434/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dc8f76b-39d1-42f9-b526-e69becb3ecaa/03870eb1-dc12-4b71-9039-89ac7d4b8434/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                0.0526316   0.0191348   0.0861284
Birth       GMS-Nepal      NEPAL        0                    NA                0.0409639   0.0218779   0.0600498
Birth       NIH-Crypto     BANGLADESH   1                    NA                0.0685155   0.0485027   0.0885283
Birth       NIH-Crypto     BANGLADESH   0                    NA                0.0531915   0.0077928   0.0985902
Birth       ZVITAMBO       ZIMBABWE     1                    NA                0.0455878   0.0403710   0.0508046
Birth       ZVITAMBO       ZIMBABWE     0                    NA                0.0824646   0.0751086   0.0898207
6 months    SAS-CompFeed   INDIA        1                    NA                0.0515464   0.0256358   0.0774570
6 months    SAS-CompFeed   INDIA        0                    NA                0.0307195   0.0217846   0.0396544
6 months    ZVITAMBO       ZIMBABWE     1                    NA                0.0086101   0.0057697   0.0114504
6 months    ZVITAMBO       ZIMBABWE     0                    NA                0.0097477   0.0064870   0.0130084
24 months   ZVITAMBO       ZIMBABWE     1                    NA                0.0696517   0.0344136   0.1048898
24 months   ZVITAMBO       ZIMBABWE     0                    NA                0.0842697   0.0434066   0.1251328


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        NA                   NA                0.0443686   0.0276826   0.0610546
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.0627931   0.0583619   0.0672244
6 months    SAS-CompFeed   INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0091354   0.0069896   0.0112812
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.0765172   0.0497195   0.1033148


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal      NEPAL        0                    1                 0.7783133   0.3536728   1.712802
Birth       NIH-Crypto     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto     BANGLADESH   0                    1                 0.7763425   0.3149772   1.913496
Birth       ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO       ZIMBABWE     0                    1                 1.8089206   1.5646096   2.091380
6 months    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        0                    1                 0.5959580   0.3210516   1.106258
6 months    ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO       ZIMBABWE     0                    1                 1.1321265   0.7077149   1.811055
24 months   ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO       ZIMBABWE     0                    1                 1.2098716   0.6003371   2.438279


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0082630   -0.0355690   0.0190431
Birth       NIH-Crypto     BANGLADESH   1                    NA                -0.0020374   -0.0086451   0.0045702
Birth       ZVITAMBO       ZIMBABWE     1                    NA                 0.0172054    0.0129845   0.0214263
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0193125   -0.0457136   0.0070885
6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0005254   -0.0014717   0.0025224
24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.0068654   -0.0184872   0.0322181


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.1862348   -0.9869502   0.2918026
Birth       NIH-Crypto     BANGLADESH   1                    NA                -0.0306480   -0.1346550   0.0638253
Birth       ZVITAMBO       ZIMBABWE     1                    NA                 0.2740008    0.2063738   0.3358651
6 months    SAS-CompFeed   INDIA        1                    NA                -0.5991369   -1.7539793   0.0714386
6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0575075   -0.1880083   0.2522847
24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.0897238   -0.3081209   0.3665702

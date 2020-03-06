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

agecat      studyid         country                        safeh20    n_cell     n
----------  --------------  -----------------------------  --------  -------  ----
Birth       MAL-ED          BANGLADESH                     1               0   201
Birth       MAL-ED          BANGLADESH                     0             201   201
Birth       MAL-ED          BRAZIL                         1               0    38
Birth       MAL-ED          BRAZIL                         0              38    38
Birth       MAL-ED          INDIA                          1               0    39
Birth       MAL-ED          INDIA                          0              39    39
Birth       MAL-ED          NEPAL                          1               1    25
Birth       MAL-ED          NEPAL                          0              24    25
Birth       MAL-ED          PERU                           1               9   202
Birth       MAL-ED          PERU                           0             193   202
Birth       MAL-ED          SOUTH AFRICA                   1              13    95
Birth       MAL-ED          SOUTH AFRICA                   0              82    95
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              74   111
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              37   111
Birth       NIH-Birth       BANGLADESH                     1             573   575
Birth       NIH-Birth       BANGLADESH                     0               2   575
Birth       NIH-Crypto      BANGLADESH                     1             707   707
Birth       NIH-Crypto      BANGLADESH                     0               0   707
Birth       PROVIDE         BANGLADESH                     1              45    45
Birth       PROVIDE         BANGLADESH                     0               0    45
6 months    CONTENT         PERU                           1              54    57
6 months    CONTENT         PERU                           0               3    57
6 months    LCNI-5          MALAWI                         1             672   816
6 months    LCNI-5          MALAWI                         0             144   816
6 months    MAL-ED          BANGLADESH                     1               0   240
6 months    MAL-ED          BANGLADESH                     0             240   240
6 months    MAL-ED          BRAZIL                         1               0   142
6 months    MAL-ED          BRAZIL                         0             142   142
6 months    MAL-ED          INDIA                          1               0   235
6 months    MAL-ED          INDIA                          0             235   235
6 months    MAL-ED          NEPAL                          1               1   233
6 months    MAL-ED          NEPAL                          0             232   233
6 months    MAL-ED          PERU                           1              11   259
6 months    MAL-ED          PERU                           0             248   259
6 months    MAL-ED          SOUTH AFRICA                   1              37   248
6 months    MAL-ED          SOUTH AFRICA                   0             211   248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168   246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78   246
6 months    NIH-Birth       BANGLADESH                     1             535   537
6 months    NIH-Birth       BANGLADESH                     0               2   537
6 months    NIH-Crypto      BANGLADESH                     1             715   715
6 months    NIH-Crypto      BANGLADESH                     0               0   715
6 months    PROVIDE         BANGLADESH                     1              11    11
6 months    PROVIDE         BANGLADESH                     0               0    11
6 months    SAS-FoodSuppl   INDIA                          1             380   380
6 months    SAS-FoodSuppl   INDIA                          0               0   380
24 months   CONTENT         PERU                           1              45    48
24 months   CONTENT         PERU                           0               3    48
24 months   LCNI-5          MALAWI                         1             464   558
24 months   LCNI-5          MALAWI                         0              94   558
24 months   MAL-ED          BANGLADESH                     1               0   212
24 months   MAL-ED          BANGLADESH                     0             212   212
24 months   MAL-ED          BRAZIL                         1               0   113
24 months   MAL-ED          BRAZIL                         0             113   113
24 months   MAL-ED          INDIA                          1               0   227
24 months   MAL-ED          INDIA                          0             227   227
24 months   MAL-ED          NEPAL                          1               1   226
24 months   MAL-ED          NEPAL                          0             225   226
24 months   MAL-ED          PERU                           1               7   193
24 months   MAL-ED          PERU                           0             186   193
24 months   MAL-ED          SOUTH AFRICA                   1              34   237
24 months   MAL-ED          SOUTH AFRICA                   0             203   237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145   213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68   213
24 months   NIH-Birth       BANGLADESH                     1             426   428
24 months   NIH-Birth       BANGLADESH                     0               2   428
24 months   NIH-Crypto      BANGLADESH                     1             514   514
24 months   NIH-Crypto      BANGLADESH                     0               0   514
24 months   PROVIDE         BANGLADESH                     1               9     9
24 months   PROVIDE         BANGLADESH                     0               0     9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
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
![](/tmp/120eb685-d4ad-4ff9-8ce9-429478606c11/2c0468a8-65c5-4da4-b542-6c5977e4c0ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/120eb685-d4ad-4ff9-8ce9-429478606c11/2c0468a8-65c5-4da4-b542-6c5977e4c0ae/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/120eb685-d4ad-4ff9-8ce9-429478606c11/2c0468a8-65c5-4da4-b542-6c5977e4c0ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED    PERU                           1                    NA                 0.1222222   -0.3522777    0.5967221
Birth       MAL-ED    PERU                           0                    NA                -0.0486528   -0.1831806    0.0858749
Birth       MAL-ED    SOUTH AFRICA                   1                    NA                -0.1053846   -0.9165393    0.7057701
Birth       MAL-ED    SOUTH AFRICA                   0                    NA                -0.1836585   -0.4374958    0.0701788
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7435135    0.4886098    0.9984172
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7986486    0.4948919    1.1024054
6 months    LCNI-5    MALAWI                         1                    NA                 0.4328274    0.3555921    0.5100626
6 months    LCNI-5    MALAWI                         0                    NA                 0.4834722    0.2986770    0.6682674
6 months    MAL-ED    PERU                           1                    NA                 1.0318182    0.5730192    1.4906171
6 months    MAL-ED    PERU                           0                    NA                 1.0494556    0.9193408    1.1795705
6 months    MAL-ED    SOUTH AFRICA                   1                    NA                 0.5036937    0.1768323    0.8305551
6 months    MAL-ED    SOUTH AFRICA                   0                    NA                 0.5499131    0.3779029    0.7219233
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.6025496    0.4419945    0.7631047
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3920299    0.1645583    0.6195015
24 months   LCNI-5    MALAWI                         1                    NA                -0.0084698   -0.0986734    0.0817338
24 months   LCNI-5    MALAWI                         0                    NA                -0.2418617   -0.4385933   -0.0451301
24 months   MAL-ED    PERU                           1                    NA                 0.0150000   -0.4862499    0.5162499
24 months   MAL-ED    PERU                           0                    NA                 0.1005332   -0.0288801    0.2299464
24 months   MAL-ED    SOUTH AFRICA                   1                    NA                 0.2360294   -0.0398483    0.5119071
24 months   MAL-ED    SOUTH AFRICA                   0                    NA                 0.4338136    0.3002318    0.5673954
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0327011   -0.1221726    0.1875749
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0925735   -0.1208495    0.3059966


### Parameter: E(Y)


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED    PERU                           NA                   NA                -0.0410396   -0.1713918   0.0893125
Birth       MAL-ED    SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222   0.0727275
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7618919    0.5640188   0.9597650
6 months    LCNI-5    MALAWI                         NA                   NA                 0.4417647    0.3702742   0.5132552
6 months    MAL-ED    PERU                           NA                   NA                 1.0487066    0.9226025   1.1748107
6 months    MAL-ED    SOUTH AFRICA                   NA                   NA                 0.5430175    0.3887455   0.6972895
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5357995    0.4039850   0.6676139
24 months   LCNI-5    MALAWI                         NA                   NA                -0.0477867   -0.1301103   0.0345368
24 months   MAL-ED    PERU                           NA                   NA                 0.0974309   -0.0286270   0.2234888
24 months   MAL-ED    SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471   0.5268320
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0518153   -0.0737716   0.1774023


### Parameter: ATE


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED    PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED    PERU                           0                    1                 -0.1708751   -0.6640768    0.3223266
Birth       MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED    SOUTH AFRICA                   0                    1                 -0.0782739   -0.9282183    0.7716704
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0551351   -0.3414050    0.4516752
6 months    LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5    MALAWI                         0                    1                  0.0506448   -0.1496413    0.2509310
6 months    MAL-ED    PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED    PERU                           0                    1                  0.0176375   -0.4592550    0.4945299
6 months    MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED    SOUTH AFRICA                   0                    1                  0.0462194   -0.3231393    0.4155781
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2105197   -0.4889461    0.0679067
24 months   LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5    MALAWI                         0                    1                 -0.2333919   -0.4498174   -0.0169663
24 months   MAL-ED    PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED    PERU                           0                    1                  0.0855332   -0.4321533    0.6032196
24 months   MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED    SOUTH AFRICA                   0                    1                  0.1977842   -0.1087327    0.5043011
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0598724   -0.2038230    0.3235678


### Parameter: PAR


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED    PERU                           1                    NA                -0.1632618   -0.6345144    0.3079907
Birth       MAL-ED    SOUTH AFRICA                   1                    NA                -0.0675628   -0.8012191    0.6660936
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0183784   -0.1138909    0.1506476
6 months    LCNI-5    MALAWI                         1                    NA                 0.0089373   -0.0264321    0.0443068
6 months    MAL-ED    PERU                           1                    NA                 0.0168884   -0.4397501    0.4735269
6 months    MAL-ED    SOUTH AFRICA                   1                    NA                 0.0393238   -0.2749357    0.3535833
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0667501   -0.1558798    0.0223795
24 months   LCNI-5    MALAWI                         1                    NA                -0.0393169   -0.0764904   -0.0021434
24 months   MAL-ED    PERU                           1                    NA                 0.0824309   -0.4164844    0.5813463
24 months   MAL-ED    SOUTH AFRICA                   1                    NA                 0.1694101   -0.0932828    0.4321031
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0191142   -0.0651541    0.1033824

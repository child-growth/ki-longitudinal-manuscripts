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
Birth       MAL-ED          BANGLADESH                     1               0   213
Birth       MAL-ED          BANGLADESH                     0             213   213
Birth       MAL-ED          BRAZIL                         1               0    41
Birth       MAL-ED          BRAZIL                         0              41    41
Birth       MAL-ED          INDIA                          1               0    41
Birth       MAL-ED          INDIA                          0              41    41
Birth       MAL-ED          NEPAL                          1               1    26
Birth       MAL-ED          NEPAL                          0              25    26
Birth       MAL-ED          PERU                           1               9   207
Birth       MAL-ED          PERU                           0             198   207
Birth       MAL-ED          SOUTH AFRICA                   1              13    96
Birth       MAL-ED          SOUTH AFRICA                   0              83    96
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79   119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40   119
Birth       NIH-Birth       BANGLADESH                     1             606   608
Birth       NIH-Birth       BANGLADESH                     0               2   608
Birth       NIH-Crypto      BANGLADESH                     1             732   732
Birth       NIH-Crypto      BANGLADESH                     0               0   732
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
24 months   LCNI-5          MALAWI                         1             475   574
24 months   LCNI-5          MALAWI                         0              99   574
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
24 months   NIH-Birth       BANGLADESH                     1             427   429
24 months   NIH-Birth       BANGLADESH                     0               2   429
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
![](/tmp/470cc809-b644-404e-a0e3-a98038509f8e/80e00a13-dc13-4d19-9895-e9f156db4308/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/470cc809-b644-404e-a0e3-a98038509f8e/80e00a13-dc13-4d19-9895-e9f156db4308/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/470cc809-b644-404e-a0e3-a98038509f8e/80e00a13-dc13-4d19-9895-e9f156db4308/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED    PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       MAL-ED    PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       MAL-ED    SOUTH AFRICA                   1                    NA                -0.4084615   -1.0684465    0.2515234
Birth       MAL-ED    SOUTH AFRICA                   0                    NA                -0.5749398   -0.7848371   -0.3650425
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0713924   -1.3209812   -0.8218036
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.2037500   -1.5978845   -0.8096155
6 months    LCNI-5    MALAWI                         1                    NA                -1.6200000   -1.6970627   -1.5429373
6 months    LCNI-5    MALAWI                         0                    NA                -1.7486111   -1.9061062   -1.5911160
6 months    MAL-ED    PERU                           1                    NA                -1.1977273   -1.6713269   -0.7241276
6 months    MAL-ED    PERU                           0                    NA                -1.3113273   -1.4241570   -1.1984976
6 months    MAL-ED    SOUTH AFRICA                   1                    NA                -1.1074324   -1.5045802   -0.7102846
6 months    MAL-ED    SOUTH AFRICA                   0                    NA                -1.0439021   -1.1799376   -0.9078665
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3459821   -1.4962914   -1.1956729
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4087821   -1.6186491   -1.1989150
24 months   LCNI-5    MALAWI                         1                    NA                -1.8733579   -1.9639860   -1.7827298
24 months   LCNI-5    MALAWI                         0                    NA                -1.9250000   -2.1090919   -1.7409081
24 months   MAL-ED    PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   MAL-ED    PERU                           0                    NA                -1.7370699   -1.8647759   -1.6093639
24 months   MAL-ED    SOUTH AFRICA                   1                    NA                -1.7010294   -2.1129033   -1.2891556
24 months   MAL-ED    SOUTH AFRICA                   0                    NA                -1.6380993   -1.7799979   -1.4962008
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6762414   -2.8460121   -2.5064706
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5904412   -2.8122451   -2.3686373


### Parameter: E(Y)


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       MAL-ED    PERU                           NA                   NA                -0.8950725   -1.0180716   -0.7720734
Birth       MAL-ED    SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1158824   -1.3283278   -0.9034369
6 months    LCNI-5    MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    MAL-ED    PERU                           NA                   NA                -1.3065026   -1.4164323   -1.1965728
6 months    MAL-ED    SOUTH AFRICA                   NA                   NA                -1.0533804   -1.1834360   -0.9233247
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3658943   -1.4882808   -1.2435078
24 months   LCNI-5    MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   MAL-ED    PERU                           NA                   NA                -1.7529793   -1.8786399   -1.6273186
24 months   MAL-ED    SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6488498   -2.7844961   -2.5132034


### Parameter: ATE


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED    PERU                           0                    1                 -0.2376263   -0.8517435   0.3764910
Birth       MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED    SOUTH AFRICA                   0                    1                 -0.1664782   -0.8590365   0.5260801
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1323576   -0.5988729   0.3341577
6 months    LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
6 months    LCNI-5    MALAWI                         0                    1                 -0.1286111   -0.3039490   0.0467268
6 months    MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED    PERU                           0                    1                 -0.1136000   -0.6004544   0.3732544
6 months    MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED    SOUTH AFRICA                   0                    1                  0.0635304   -0.3562696   0.4833304
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0627999   -0.3209414   0.1953416
24 months   LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000   0.0000000
24 months   LCNI-5    MALAWI                         0                    1                 -0.0516421   -0.2568330   0.1535488
24 months   MAL-ED    PERU                           1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED    PERU                           0                    1                  0.4386444   -0.1962443   1.0735331
24 months   MAL-ED    SOUTH AFRICA                   1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED    SOUTH AFRICA                   0                    1                  0.0629301   -0.3727020   0.4985621
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000   0.0000000
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0858002   -0.1935188   0.3651192


### Parameter: PAR


agecat      studyid   country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       MAL-ED    PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       MAL-ED    SOUTH AFRICA                   1                    NA                -0.1439343   -0.7428182   0.4549496
Birth       MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0444899   -0.2017071   0.1127272
6 months    LCNI-5    MALAWI                         1                    NA                -0.0226961   -0.0538206   0.0084285
6 months    MAL-ED    PERU                           1                    NA                -0.1087753   -0.5749608   0.3574102
6 months    MAL-ED    SOUTH AFRICA                   1                    NA                 0.0540521   -0.3031276   0.4112317
6 months    MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0199122   -0.1018437   0.0620193
24 months   LCNI-5    MALAWI                         1                    NA                -0.0089069   -0.0443330   0.0265192
24 months   MAL-ED    PERU                           1                    NA                 0.4227350   -0.1892366   1.0347066
24 months   MAL-ED    SOUTH AFRICA                   1                    NA                 0.0539021   -0.3192448   0.4270490
24 months   MAL-ED    TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0273916   -0.0619430   0.1167263

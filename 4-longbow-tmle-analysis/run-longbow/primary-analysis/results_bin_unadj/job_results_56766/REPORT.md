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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country      nhh          sstunted   n_cell     n
----------  --------------  -----------  ----------  ---------  -------  ----
Birth       IRC             INDIA        3 or less           0       53   388
Birth       IRC             INDIA        3 or less           1        1   388
Birth       IRC             INDIA        4-5                 0      142   388
Birth       IRC             INDIA        4-5                 1        8   388
Birth       IRC             INDIA        6-7                 0       97   388
Birth       IRC             INDIA        6-7                 1        6   388
Birth       IRC             INDIA        8+                  0       80   388
Birth       IRC             INDIA        8+                  1        1   388
Birth       NIH-Birth       BANGLADESH   3 or less           0      106   608
Birth       NIH-Birth       BANGLADESH   3 or less           1        6   608
Birth       NIH-Birth       BANGLADESH   4-5                 0      248   608
Birth       NIH-Birth       BANGLADESH   4-5                 1        7   608
Birth       NIH-Birth       BANGLADESH   6-7                 0      135   608
Birth       NIH-Birth       BANGLADESH   6-7                 1        3   608
Birth       NIH-Birth       BANGLADESH   8+                  0      100   608
Birth       NIH-Birth       BANGLADESH   8+                  1        3   608
Birth       NIH-Crypto      BANGLADESH   3 or less           0      108   732
Birth       NIH-Crypto      BANGLADESH   3 or less           1        0   732
Birth       NIH-Crypto      BANGLADESH   4-5                 0      322   732
Birth       NIH-Crypto      BANGLADESH   4-5                 1        6   732
Birth       NIH-Crypto      BANGLADESH   6-7                 0      173   732
Birth       NIH-Crypto      BANGLADESH   6-7                 1        3   732
Birth       NIH-Crypto      BANGLADESH   8+                  0      119   732
Birth       NIH-Crypto      BANGLADESH   8+                  1        1   732
Birth       PROVIDE         BANGLADESH   3 or less           0      102   539
Birth       PROVIDE         BANGLADESH   3 or less           1        2   539
Birth       PROVIDE         BANGLADESH   4-5                 0      250   539
Birth       PROVIDE         BANGLADESH   4-5                 1        1   539
Birth       PROVIDE         BANGLADESH   6-7                 0      115   539
Birth       PROVIDE         BANGLADESH   6-7                 1        1   539
Birth       PROVIDE         BANGLADESH   8+                  0       68   539
Birth       PROVIDE         BANGLADESH   8+                  1        0   539
6 months    IRC             INDIA        3 or less           0       55   407
6 months    IRC             INDIA        3 or less           1        3   407
6 months    IRC             INDIA        4-5                 0      145   407
6 months    IRC             INDIA        4-5                 1       13   407
6 months    IRC             INDIA        6-7                 0       98   407
6 months    IRC             INDIA        6-7                 1        8   407
6 months    IRC             INDIA        8+                  0       80   407
6 months    IRC             INDIA        8+                  1        5   407
6 months    LCNI-5          MALAWI       3 or less           0      206   816
6 months    LCNI-5          MALAWI       3 or less           1       18   816
6 months    LCNI-5          MALAWI       4-5                 0      313   816
6 months    LCNI-5          MALAWI       4-5                 1       27   816
6 months    LCNI-5          MALAWI       6-7                 0      169   816
6 months    LCNI-5          MALAWI       6-7                 1       13   816
6 months    LCNI-5          MALAWI       8+                  0       63   816
6 months    LCNI-5          MALAWI       8+                  1        7   816
6 months    NIH-Birth       BANGLADESH   3 or less           0       89   537
6 months    NIH-Birth       BANGLADESH   3 or less           1        6   537
6 months    NIH-Birth       BANGLADESH   4-5                 0      211   537
6 months    NIH-Birth       BANGLADESH   4-5                 1       16   537
6 months    NIH-Birth       BANGLADESH   6-7                 0      119   537
6 months    NIH-Birth       BANGLADESH   6-7                 1        9   537
6 months    NIH-Birth       BANGLADESH   8+                  0       83   537
6 months    NIH-Birth       BANGLADESH   8+                  1        4   537
6 months    NIH-Crypto      BANGLADESH   3 or less           0       99   715
6 months    NIH-Crypto      BANGLADESH   3 or less           1        5   715
6 months    NIH-Crypto      BANGLADESH   4-5                 0      319   715
6 months    NIH-Crypto      BANGLADESH   4-5                 1        7   715
6 months    NIH-Crypto      BANGLADESH   6-7                 0      163   715
6 months    NIH-Crypto      BANGLADESH   6-7                 1        7   715
6 months    NIH-Crypto      BANGLADESH   8+                  0      111   715
6 months    NIH-Crypto      BANGLADESH   8+                  1        4   715
6 months    PROVIDE         BANGLADESH   3 or less           0      102   604
6 months    PROVIDE         BANGLADESH   3 or less           1        3   604
6 months    PROVIDE         BANGLADESH   4-5                 0      280   604
6 months    PROVIDE         BANGLADESH   4-5                 1        9   604
6 months    PROVIDE         BANGLADESH   6-7                 0      129   604
6 months    PROVIDE         BANGLADESH   6-7                 1        1   604
6 months    PROVIDE         BANGLADESH   8+                  0       79   604
6 months    PROVIDE         BANGLADESH   8+                  1        1   604
6 months    SAS-FoodSuppl   INDIA        3 or less           0       31   380
6 months    SAS-FoodSuppl   INDIA        3 or less           1        2   380
6 months    SAS-FoodSuppl   INDIA        4-5                 0      145   380
6 months    SAS-FoodSuppl   INDIA        4-5                 1       21   380
6 months    SAS-FoodSuppl   INDIA        6-7                 0       94   380
6 months    SAS-FoodSuppl   INDIA        6-7                 1       21   380
6 months    SAS-FoodSuppl   INDIA        8+                  0       56   380
6 months    SAS-FoodSuppl   INDIA        8+                  1       10   380
24 months   IRC             INDIA        3 or less           0       54   409
24 months   IRC             INDIA        3 or less           1        4   409
24 months   IRC             INDIA        4-5                 0      142   409
24 months   IRC             INDIA        4-5                 1       16   409
24 months   IRC             INDIA        6-7                 0       94   409
24 months   IRC             INDIA        6-7                 1       13   409
24 months   IRC             INDIA        8+                  0       78   409
24 months   IRC             INDIA        8+                  1        8   409
24 months   LCNI-5          MALAWI       3 or less           0      142   574
24 months   LCNI-5          MALAWI       3 or less           1       17   574
24 months   LCNI-5          MALAWI       4-5                 0      205   574
24 months   LCNI-5          MALAWI       4-5                 1       32   574
24 months   LCNI-5          MALAWI       6-7                 0      115   574
24 months   LCNI-5          MALAWI       6-7                 1       14   574
24 months   LCNI-5          MALAWI       8+                  0       43   574
24 months   LCNI-5          MALAWI       8+                  1        6   574
24 months   NIH-Birth       BANGLADESH   3 or less           0       64   429
24 months   NIH-Birth       BANGLADESH   3 or less           1       11   429
24 months   NIH-Birth       BANGLADESH   4-5                 0      139   429
24 months   NIH-Birth       BANGLADESH   4-5                 1       45   429
24 months   NIH-Birth       BANGLADESH   6-7                 0       75   429
24 months   NIH-Birth       BANGLADESH   6-7                 1       25   429
24 months   NIH-Birth       BANGLADESH   8+                  0       56   429
24 months   NIH-Birth       BANGLADESH   8+                  1       14   429
24 months   NIH-Crypto      BANGLADESH   3 or less           0       63   514
24 months   NIH-Crypto      BANGLADESH   3 or less           1        6   514
24 months   NIH-Crypto      BANGLADESH   4-5                 0      216   514
24 months   NIH-Crypto      BANGLADESH   4-5                 1       16   514
24 months   NIH-Crypto      BANGLADESH   6-7                 0      121   514
24 months   NIH-Crypto      BANGLADESH   6-7                 1        9   514
24 months   NIH-Crypto      BANGLADESH   8+                  0       78   514
24 months   NIH-Crypto      BANGLADESH   8+                  1        5   514
24 months   PROVIDE         BANGLADESH   3 or less           0       98   578
24 months   PROVIDE         BANGLADESH   3 or less           1        8   578
24 months   PROVIDE         BANGLADESH   4-5                 0      247   578
24 months   PROVIDE         BANGLADESH   4-5                 1       26   578
24 months   PROVIDE         BANGLADESH   6-7                 0      107   578
24 months   PROVIDE         BANGLADESH   6-7                 1       10   578
24 months   PROVIDE         BANGLADESH   8+                  0       74   578
24 months   PROVIDE         BANGLADESH   8+                  1        8   578


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/2730be4c-fb9a-4443-80e1-86161458ca1f/fbc3829a-3afa-4ef8-981a-d0f030cda756/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2730be4c-fb9a-4443-80e1-86161458ca1f/fbc3829a-3afa-4ef8-981a-d0f030cda756/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2730be4c-fb9a-4443-80e1-86161458ca1f/fbc3829a-3afa-4ef8-981a-d0f030cda756/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2730be4c-fb9a-4443-80e1-86161458ca1f/fbc3829a-3afa-4ef8-981a-d0f030cda756/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    LCNI-5       MALAWI       3 or less            NA                0.0803571   0.0447356   0.1159786
6 months    LCNI-5       MALAWI       4-5                  NA                0.0794118   0.0506543   0.1081692
6 months    LCNI-5       MALAWI       6-7                  NA                0.0714286   0.0339897   0.1088674
6 months    LCNI-5       MALAWI       8+                   NA                0.1000000   0.0296787   0.1703213
24 months   LCNI-5       MALAWI       3 or less            NA                0.1069182   0.0588454   0.1549911
24 months   LCNI-5       MALAWI       4-5                  NA                0.1350211   0.0914743   0.1785679
24 months   LCNI-5       MALAWI       6-7                  NA                0.1085271   0.0548048   0.1622495
24 months   LCNI-5       MALAWI       8+                   NA                0.1224490   0.0305856   0.2143124
24 months   NIH-Birth    BANGLADESH   3 or less            NA                0.1466667   0.0665082   0.2268251
24 months   NIH-Birth    BANGLADESH   4-5                  NA                0.2445652   0.1823865   0.3067439
24 months   NIH-Birth    BANGLADESH   6-7                  NA                0.2500000   0.1650320   0.3349680
24 months   NIH-Birth    BANGLADESH   8+                   NA                0.2000000   0.1061864   0.2938136
24 months   NIH-Crypto   BANGLADESH   3 or less            NA                0.0869565   0.0204073   0.1535058
24 months   NIH-Crypto   BANGLADESH   4-5                  NA                0.0689655   0.0363273   0.1016037
24 months   NIH-Crypto   BANGLADESH   6-7                  NA                0.0692308   0.0255521   0.1129095
24 months   NIH-Crypto   BANGLADESH   8+                   NA                0.0602410   0.0090037   0.1114783
24 months   PROVIDE      BANGLADESH   3 or less            NA                0.0754717   0.0251421   0.1258013
24 months   PROVIDE      BANGLADESH   4-5                  NA                0.0952381   0.0603871   0.1300891
24 months   PROVIDE      BANGLADESH   6-7                  NA                0.0854701   0.0347667   0.1361735
24 months   PROVIDE      BANGLADESH   8+                   NA                0.0975610   0.0332827   0.1618392


### Parameter: E(Y)


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    LCNI-5       MALAWI       NA                   NA                0.0796569   0.0610679   0.0982459
24 months   LCNI-5       MALAWI       NA                   NA                0.1202091   0.0935816   0.1468365
24 months   NIH-Birth    BANGLADESH   NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE      BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    LCNI-5       MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
6 months    LCNI-5       MALAWI       4-5                  3 or less         0.9882353   0.5575312   1.751667
6 months    LCNI-5       MALAWI       6-7                  3 or less         0.8888889   0.4474248   1.765936
6 months    LCNI-5       MALAWI       8+                   3 or less         1.2444444   0.5419491   2.857541
24 months   LCNI-5       MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   LCNI-5       MALAWI       4-5                  3 or less         1.2628444   0.7261728   2.196138
24 months   LCNI-5       MALAWI       6-7                  3 or less         1.0150479   0.5200694   1.981125
24 months   LCNI-5       MALAWI       8+                   3 or less         1.1452581   0.4775888   2.746329
24 months   NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH   4-5                  3 or less         1.6674901   0.9126008   3.046812
24 months   NIH-Birth    BANGLADESH   6-7                  3 or less         1.7045455   0.8955693   3.244277
24 months   NIH-Birth    BANGLADESH   8+                   3 or less         1.3636364   0.6636032   2.802132
24 months   NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH   4-5                  3 or less         0.7931034   0.3225095   1.950371
24 months   NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7961538   0.2952860   2.146600
24 months   NIH-Crypto   BANGLADESH   8+                   3 or less         0.6927711   0.2206393   2.175187
24 months   PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
24 months   PROVIDE      BANGLADESH   4-5                  3 or less         1.2619048   0.5897546   2.700112
24 months   PROVIDE      BANGLADESH   6-7                  3 or less         1.1324786   0.4638776   2.764755
24 months   PROVIDE      BANGLADESH   8+                   3 or less         1.2926829   0.5062512   3.300791


### Parameter: PAR


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    LCNI-5       MALAWI       3 or less            NA                -0.0007003   -0.0309954   0.0295949
24 months   LCNI-5       MALAWI       3 or less            NA                 0.0132908   -0.0284190   0.0550006
24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.0747786   -0.0008928   0.1504500
24 months   NIH-Crypto   BANGLADESH   3 or less            NA                -0.0169176   -0.0779707   0.0441355
24 months   PROVIDE      BANGLADESH   3 or less            NA                 0.0144937   -0.0318642   0.0608516


### Parameter: PAF


agecat      studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    LCNI-5       MALAWI       3 or less            NA                -0.0087912   -0.4707235   0.3080551
24 months   LCNI-5       MALAWI       3 or less            NA                 0.1105642   -0.3128563   0.3974238
24 months   NIH-Birth    BANGLADESH   3 or less            NA                 0.3376842   -0.1040113   0.6026651
24 months   NIH-Crypto   BANGLADESH   3 or less            NA                -0.2415459   -1.4999876   0.3834225
24 months   PROVIDE      BANGLADESH   3 or less            NA                 0.1611030   -0.5478798   0.5453471

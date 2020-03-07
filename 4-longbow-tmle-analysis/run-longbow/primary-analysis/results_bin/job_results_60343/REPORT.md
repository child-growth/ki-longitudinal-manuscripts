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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country      nhh          swasted   n_cell     n
----------  --------------  -----------  ----------  --------  -------  ----
Birth       IRC             INDIA        3 or less          0       41   343
Birth       IRC             INDIA        3 or less          1       11   343
Birth       IRC             INDIA        4-5                0      111   343
Birth       IRC             INDIA        4-5                1       20   343
Birth       IRC             INDIA        6-7                0       72   343
Birth       IRC             INDIA        6-7                1       12   343
Birth       IRC             INDIA        8+                 0       65   343
Birth       IRC             INDIA        8+                 1       11   343
Birth       NIH-Birth       BANGLADESH   3 or less          0       92   575
Birth       NIH-Birth       BANGLADESH   3 or less          1       12   575
Birth       NIH-Birth       BANGLADESH   4-5                0      229   575
Birth       NIH-Birth       BANGLADESH   4-5                1       15   575
Birth       NIH-Birth       BANGLADESH   6-7                0      124   575
Birth       NIH-Birth       BANGLADESH   6-7                1        6   575
Birth       NIH-Birth       BANGLADESH   8+                 0       92   575
Birth       NIH-Birth       BANGLADESH   8+                 1        5   575
Birth       NIH-Crypto      BANGLADESH   3 or less          0       94   707
Birth       NIH-Crypto      BANGLADESH   3 or less          1        9   707
Birth       NIH-Crypto      BANGLADESH   4-5                0      297   707
Birth       NIH-Crypto      BANGLADESH   4-5                1       21   707
Birth       NIH-Crypto      BANGLADESH   6-7                0      157   707
Birth       NIH-Crypto      BANGLADESH   6-7                1       10   707
Birth       NIH-Crypto      BANGLADESH   8+                 0      112   707
Birth       NIH-Crypto      BANGLADESH   8+                 1        7   707
Birth       PROVIDE         BANGLADESH   3 or less          0      100   532
Birth       PROVIDE         BANGLADESH   3 or less          1        3   532
Birth       PROVIDE         BANGLADESH   4-5                0      244   532
Birth       PROVIDE         BANGLADESH   4-5                1        5   532
Birth       PROVIDE         BANGLADESH   6-7                0      113   532
Birth       PROVIDE         BANGLADESH   6-7                1        1   532
Birth       PROVIDE         BANGLADESH   8+                 0       62   532
Birth       PROVIDE         BANGLADESH   8+                 1        4   532
6 months    IRC             INDIA        3 or less          0       52   408
6 months    IRC             INDIA        3 or less          1        5   408
6 months    IRC             INDIA        4-5                0      149   408
6 months    IRC             INDIA        4-5                1        8   408
6 months    IRC             INDIA        6-7                0      104   408
6 months    IRC             INDIA        6-7                1        3   408
6 months    IRC             INDIA        8+                 0       81   408
6 months    IRC             INDIA        8+                 1        6   408
6 months    LCNI-5          MALAWI       3 or less          0      224   816
6 months    LCNI-5          MALAWI       3 or less          1        0   816
6 months    LCNI-5          MALAWI       4-5                0      340   816
6 months    LCNI-5          MALAWI       4-5                1        0   816
6 months    LCNI-5          MALAWI       6-7                0      182   816
6 months    LCNI-5          MALAWI       6-7                1        0   816
6 months    LCNI-5          MALAWI       8+                 0       70   816
6 months    LCNI-5          MALAWI       8+                 1        0   816
6 months    NIH-Birth       BANGLADESH   3 or less          0       95   537
6 months    NIH-Birth       BANGLADESH   3 or less          1        0   537
6 months    NIH-Birth       BANGLADESH   4-5                0      224   537
6 months    NIH-Birth       BANGLADESH   4-5                1        3   537
6 months    NIH-Birth       BANGLADESH   6-7                0      126   537
6 months    NIH-Birth       BANGLADESH   6-7                1        2   537
6 months    NIH-Birth       BANGLADESH   8+                 0       86   537
6 months    NIH-Birth       BANGLADESH   8+                 1        1   537
6 months    NIH-Crypto      BANGLADESH   3 or less          0      104   715
6 months    NIH-Crypto      BANGLADESH   3 or less          1        0   715
6 months    NIH-Crypto      BANGLADESH   4-5                0      326   715
6 months    NIH-Crypto      BANGLADESH   4-5                1        0   715
6 months    NIH-Crypto      BANGLADESH   6-7                0      170   715
6 months    NIH-Crypto      BANGLADESH   6-7                1        0   715
6 months    NIH-Crypto      BANGLADESH   8+                 0      115   715
6 months    NIH-Crypto      BANGLADESH   8+                 1        0   715
6 months    PROVIDE         BANGLADESH   3 or less          0      103   603
6 months    PROVIDE         BANGLADESH   3 or less          1        2   603
6 months    PROVIDE         BANGLADESH   4-5                0      289   603
6 months    PROVIDE         BANGLADESH   4-5                1        0   603
6 months    PROVIDE         BANGLADESH   6-7                0      129   603
6 months    PROVIDE         BANGLADESH   6-7                1        1   603
6 months    PROVIDE         BANGLADESH   8+                 0       77   603
6 months    PROVIDE         BANGLADESH   8+                 1        2   603
6 months    SAS-FoodSuppl   INDIA        3 or less          0       33   380
6 months    SAS-FoodSuppl   INDIA        3 or less          1        0   380
6 months    SAS-FoodSuppl   INDIA        4-5                0      159   380
6 months    SAS-FoodSuppl   INDIA        4-5                1        7   380
6 months    SAS-FoodSuppl   INDIA        6-7                0      107   380
6 months    SAS-FoodSuppl   INDIA        6-7                1        8   380
6 months    SAS-FoodSuppl   INDIA        8+                 0       62   380
6 months    SAS-FoodSuppl   INDIA        8+                 1        4   380
24 months   IRC             INDIA        3 or less          0       57   409
24 months   IRC             INDIA        3 or less          1        1   409
24 months   IRC             INDIA        4-5                0      155   409
24 months   IRC             INDIA        4-5                1        3   409
24 months   IRC             INDIA        6-7                0      107   409
24 months   IRC             INDIA        6-7                1        0   409
24 months   IRC             INDIA        8+                 0       85   409
24 months   IRC             INDIA        8+                 1        1   409
24 months   LCNI-5          MALAWI       3 or less          0      156   558
24 months   LCNI-5          MALAWI       3 or less          1        1   558
24 months   LCNI-5          MALAWI       4-5                0      230   558
24 months   LCNI-5          MALAWI       4-5                1        0   558
24 months   LCNI-5          MALAWI       6-7                0      123   558
24 months   LCNI-5          MALAWI       6-7                1        0   558
24 months   LCNI-5          MALAWI       8+                 0       48   558
24 months   LCNI-5          MALAWI       8+                 1        0   558
24 months   NIH-Birth       BANGLADESH   3 or less          0       72   428
24 months   NIH-Birth       BANGLADESH   3 or less          1        2   428
24 months   NIH-Birth       BANGLADESH   4-5                0      179   428
24 months   NIH-Birth       BANGLADESH   4-5                1        5   428
24 months   NIH-Birth       BANGLADESH   6-7                0       99   428
24 months   NIH-Birth       BANGLADESH   6-7                1        1   428
24 months   NIH-Birth       BANGLADESH   8+                 0       68   428
24 months   NIH-Birth       BANGLADESH   8+                 1        2   428
24 months   NIH-Crypto      BANGLADESH   3 or less          0       69   514
24 months   NIH-Crypto      BANGLADESH   3 or less          1        0   514
24 months   NIH-Crypto      BANGLADESH   4-5                0      229   514
24 months   NIH-Crypto      BANGLADESH   4-5                1        3   514
24 months   NIH-Crypto      BANGLADESH   6-7                0      130   514
24 months   NIH-Crypto      BANGLADESH   6-7                1        0   514
24 months   NIH-Crypto      BANGLADESH   8+                 0       82   514
24 months   NIH-Crypto      BANGLADESH   8+                 1        1   514
24 months   PROVIDE         BANGLADESH   3 or less          0      105   579
24 months   PROVIDE         BANGLADESH   3 or less          1        1   579
24 months   PROVIDE         BANGLADESH   4-5                0      269   579
24 months   PROVIDE         BANGLADESH   4-5                1        4   579
24 months   PROVIDE         BANGLADESH   6-7                0      113   579
24 months   PROVIDE         BANGLADESH   6-7                1        4   579
24 months   PROVIDE         BANGLADESH   8+                 0       83   579
24 months   PROVIDE         BANGLADESH   8+                 1        0   579


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

* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/79ff7837-e90a-4e6d-8762-96af4938fd26/d4839ae2-144c-432c-b742-bab097ce4b57/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/79ff7837-e90a-4e6d-8762-96af4938fd26/d4839ae2-144c-432c-b742-bab097ce4b57/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/79ff7837-e90a-4e6d-8762-96af4938fd26/d4839ae2-144c-432c-b742-bab097ce4b57/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/79ff7837-e90a-4e6d-8762-96af4938fd26/d4839ae2-144c-432c-b742-bab097ce4b57/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    IRC          INDIA        3 or less            NA                0.1934737   0.0923638   0.2945835
Birth    IRC          INDIA        4-5                  NA                0.1545047   0.0921471   0.2168623
Birth    IRC          INDIA        6-7                  NA                0.1531010   0.0780453   0.2281567
Birth    IRC          INDIA        8+                   NA                0.1357232   0.0563148   0.2151316
Birth    NIH-Birth    BANGLADESH   3 or less            NA                0.1153846   0.0539291   0.1768401
Birth    NIH-Birth    BANGLADESH   4-5                  NA                0.0614754   0.0313103   0.0916405
Birth    NIH-Birth    BANGLADESH   6-7                  NA                0.0461538   0.0100547   0.0822530
Birth    NIH-Birth    BANGLADESH   8+                   NA                0.0515464   0.0075064   0.0955864
Birth    NIH-Crypto   BANGLADESH   3 or less            NA                0.0873786   0.0328048   0.1419525
Birth    NIH-Crypto   BANGLADESH   4-5                  NA                0.0660377   0.0387226   0.0933528
Birth    NIH-Crypto   BANGLADESH   6-7                  NA                0.0598802   0.0238696   0.0958909
Birth    NIH-Crypto   BANGLADESH   8+                   NA                0.0588235   0.0165184   0.1011287


### Parameter: E(Y)


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    IRC          INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth    NIH-Birth    BANGLADESH   NA                   NA                0.0660870   0.0457632   0.0864107
Birth    NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539


### Parameter: RR


agecat   studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth    IRC          INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    IRC          INDIA        4-5                  3 or less         0.7985825   0.4114206   1.550078
Birth    IRC          INDIA        6-7                  3 or less         0.7913274   0.3900977   1.605237
Birth    IRC          INDIA        8+                   3 or less         0.7015074   0.3188545   1.543377
Birth    NIH-Birth    BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    NIH-Birth    BANGLADESH   4-5                  3 or less         0.5327869   0.2582511   1.099170
Birth    NIH-Birth    BANGLADESH   6-7                  3 or less         0.4000000   0.1552738   1.030438
Birth    NIH-Birth    BANGLADESH   8+                   3 or less         0.4467354   0.1632318   1.222633
Birth    NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    NIH-Crypto   BANGLADESH   4-5                  3 or less         0.7557652   0.3573143   1.598540
Birth    NIH-Crypto   BANGLADESH   6-7                  3 or less         0.6852961   0.2879601   1.630888
Birth    NIH-Crypto   BANGLADESH   8+                   3 or less         0.6732026   0.2596970   1.745118


### Parameter: PAR


agecat   studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    IRC          INDIA        3 or less            NA                -0.0360393   -0.1280907   0.0560122
Birth    NIH-Birth    BANGLADESH   3 or less            NA                -0.0492977   -0.1024354   0.0038401
Birth    NIH-Crypto   BANGLADESH   3 or less            NA                -0.0209006   -0.0703797   0.0285786


### Parameter: PAF


agecat   studyid      country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  -----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth    IRC          INDIA        3 or less            NA                -0.2289162   -0.9786953    0.2367521
Birth    NIH-Birth    BANGLADESH   3 or less            NA                -0.7459514   -1.7277905   -0.1175148
Birth    NIH-Crypto   BANGLADESH   3 or less            NA                -0.3143979   -1.3082590    0.2515390

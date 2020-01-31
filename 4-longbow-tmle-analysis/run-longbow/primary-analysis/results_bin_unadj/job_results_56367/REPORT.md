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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          swasted   n_cell     n  outcome_variable 
----------  -------------------------  -----------  ----------  --------  -------  ----  -----------------
Birth       ki1000108-IRC              INDIA        3 or less          0       41   343  swasted          
Birth       ki1000108-IRC              INDIA        3 or less          1       11   343  swasted          
Birth       ki1000108-IRC              INDIA        4-5                0      111   343  swasted          
Birth       ki1000108-IRC              INDIA        4-5                1       20   343  swasted          
Birth       ki1000108-IRC              INDIA        6-7                0       72   343  swasted          
Birth       ki1000108-IRC              INDIA        6-7                1       12   343  swasted          
Birth       ki1000108-IRC              INDIA        8+                 0       65   343  swasted          
Birth       ki1000108-IRC              INDIA        8+                 1       11   343  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          0       92   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          1       12   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                0      229   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                1       15   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                0      124   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                1        6   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 0       92   575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 1        5   575  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less          0      100   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less          1        3   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                0      244   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                1        5   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                0      113   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                1        1   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                 0       62   532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                 1        4   532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       94   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        9   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      297   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       21   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      157   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       10   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      112   707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        7   707  swasted          
6 months    ki1000108-IRC              INDIA        3 or less          0       52   408  swasted          
6 months    ki1000108-IRC              INDIA        3 or less          1        5   408  swasted          
6 months    ki1000108-IRC              INDIA        4-5                0      149   408  swasted          
6 months    ki1000108-IRC              INDIA        4-5                1        8   408  swasted          
6 months    ki1000108-IRC              INDIA        6-7                0      104   408  swasted          
6 months    ki1000108-IRC              INDIA        6-7                1        3   408  swasted          
6 months    ki1000108-IRC              INDIA        8+                 0       81   408  swasted          
6 months    ki1000108-IRC              INDIA        8+                 1        6   408  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       33   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1        0   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                0      159   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                1        7   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                0      107   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                1        8   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       62   380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 1        4   380  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          0       95   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          1        0   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                0      224   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                1        3   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                0      126   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                1        2   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 0       86   537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 1        1   537  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0      103   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1        2   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      289   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1        0   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      129   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1        1   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       77   603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1        2   603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0      104   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        0   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      326   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        0   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      170   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        0   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 0      115   715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        0   715  swasted          
6 months    ki1148112-LCNI-5           MALAWI       3 or less          0      224   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       3 or less          1        0   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       4-5                0      340   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       4-5                1        0   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       6-7                0      182   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       6-7                1        0   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       8+                 0       70   816  swasted          
6 months    ki1148112-LCNI-5           MALAWI       8+                 1        0   816  swasted          
24 months   ki1000108-IRC              INDIA        3 or less          0       57   409  swasted          
24 months   ki1000108-IRC              INDIA        3 or less          1        1   409  swasted          
24 months   ki1000108-IRC              INDIA        4-5                0      155   409  swasted          
24 months   ki1000108-IRC              INDIA        4-5                1        3   409  swasted          
24 months   ki1000108-IRC              INDIA        6-7                0      107   409  swasted          
24 months   ki1000108-IRC              INDIA        6-7                1        0   409  swasted          
24 months   ki1000108-IRC              INDIA        8+                 0       85   409  swasted          
24 months   ki1000108-IRC              INDIA        8+                 1        1   409  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       72   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1        2   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0      179   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1        5   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0       99   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1        1   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       68   428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1        2   428  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0      105   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1        1   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      269   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1        4   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0      113   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1        4   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       83   579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1        0   579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       69   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        0   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      229   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        3   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      130   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        0   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       82   514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        1   514  swasted          
24 months   ki1148112-LCNI-5           MALAWI       3 or less          0      156   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       3 or less          1        1   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       4-5                0      230   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       4-5                1        0   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       6-7                0      123   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       6-7                1        0   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       8+                 0       48   558  swasted          
24 months   ki1148112-LCNI-5           MALAWI       8+                 1        0   558  swasted          


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/81e08c65-6076-4c2d-b247-78855af51fb3/b5ba22cc-72b9-43e2-b66f-6596b9f71ec6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/81e08c65-6076-4c2d-b247-78855af51fb3/b5ba22cc-72b9-43e2-b66f-6596b9f71ec6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/81e08c65-6076-4c2d-b247-78855af51fb3/b5ba22cc-72b9-43e2-b66f-6596b9f71ec6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/81e08c65-6076-4c2d-b247-78855af51fb3/b5ba22cc-72b9-43e2-b66f-6596b9f71ec6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1000108-IRC           INDIA        3 or less            NA                0.2115385   0.1003742   0.3227028
Birth    ki1000108-IRC           INDIA        4-5                  NA                0.1526718   0.0909907   0.2143528
Birth    ki1000108-IRC           INDIA        6-7                  NA                0.1428571   0.0679160   0.2177982
Birth    ki1000108-IRC           INDIA        8+                   NA                0.1447368   0.0655205   0.2239532
Birth    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1153846   0.0539291   0.1768401
Birth    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.0614754   0.0313103   0.0916405
Birth    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.0461538   0.0100547   0.0822530
Birth    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.0515464   0.0075064   0.0955864
Birth    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.0873786   0.0328048   0.1419525
Birth    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.0660377   0.0387226   0.0933528
Birth    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.0598802   0.0238696   0.0958909
Birth    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.0588235   0.0165184   0.1011287


### Parameter: E(Y)


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth    ki1000108-IRC           INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0660870   0.0457632   0.0864107
Birth    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539


### Parameter: RR


agecat   studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    ki1000108-IRC           INDIA        4-5                  3 or less         0.7217210   0.3719583   1.400375
Birth    ki1000108-IRC           INDIA        6-7                  3 or less         0.6753247   0.3213935   1.419019
Birth    ki1000108-IRC           INDIA        8+                   3 or less         0.6842105   0.3203816   1.461207
Birth    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.5327869   0.2582511   1.099170
Birth    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.4000000   0.1552738   1.030438
Birth    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.4467354   0.1632318   1.222633
Birth    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
Birth    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.7557652   0.3573143   1.598540
Birth    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.6852961   0.2879601   1.630888
Birth    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.6732026   0.2596970   1.745118


### Parameter: PAR


agecat   studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth    ki1000108-IRC           INDIA        3 or less            NA                -0.0541041   -0.1546057   0.0463976
Birth    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0492977   -0.1024354   0.0038401
Birth    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0209006   -0.0703797   0.0285786


### Parameter: PAF


agecat   studyid                 country      intervention_level   baseline_level      estimate    ci_lower     ci_upper
-------  ----------------------  -----------  -------------------  ---------------  -----------  ----------  -----------
Birth    ki1000108-IRC           INDIA        3 or less            NA                -0.3436610   -1.156382    0.1627527
Birth    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.7459514   -1.727791   -0.1175148
Birth    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.3143979   -1.308259    0.2515390

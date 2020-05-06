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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid      country        hfoodsec                n_cell       n  outcome_variable 
----------  -----------  -------------  ---------------------  -------  ------  -----------------
Birth       GMS-Nepal    NEPAL          Food Secure                442     620  whz              
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       100     620  whz              
Birth       GMS-Nepal    NEPAL          Food Insecure               78     620  whz              
Birth       JiVitA-3     BANGLADESH     Food Secure               5797   11763  whz              
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      3947   11763  whz              
Birth       JiVitA-3     BANGLADESH     Food Insecure             2019   11763  whz              
Birth       JiVitA-4     BANGLADESH     Food Secure               1205    2383  whz              
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure       870    2383  whz              
Birth       JiVitA-4     BANGLADESH     Food Insecure              308    2383  whz              
Birth       MAL-ED       BANGLADESH     Food Secure                138     162  whz              
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         3     162  whz              
Birth       MAL-ED       BANGLADESH     Food Insecure               21     162  whz              
Birth       MAL-ED       BRAZIL         Food Secure                  0      26  whz              
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      26  whz              
Birth       MAL-ED       BRAZIL         Food Insecure               22      26  whz              
Birth       MAL-ED       INDIA          Food Secure                 32      35  whz              
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      35  whz              
Birth       MAL-ED       INDIA          Food Insecure                2      35  whz              
Birth       MAL-ED       NEPAL          Food Secure                 10      14  whz              
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14  whz              
Birth       MAL-ED       NEPAL          Food Insecure                3      14  whz              
Birth       MAL-ED       PERU           Food Secure                 23      89  whz              
Birth       MAL-ED       PERU           Mildly Food Insecure        22      89  whz              
Birth       MAL-ED       PERU           Food Insecure               44      89  whz              
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      87  whz              
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      87  whz              
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               33      87  whz              
Birth       NIH-Birth    BANGLADESH     Food Secure                 86     575  whz              
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       453     575  whz              
Birth       NIH-Birth    BANGLADESH     Food Insecure               36     575  whz              
Birth       NIH-Crypto   BANGLADESH     Food Secure                429     707  whz              
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       199     707  whz              
Birth       NIH-Crypto   BANGLADESH     Food Insecure               79     707  whz              
6 months    GMS-Nepal    NEPAL          Food Secure                396     546  whz              
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546  whz              
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546  whz              
6 months    JiVitA-3     BANGLADESH     Food Secure               8396   16764  whz              
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5590   16764  whz              
6 months    JiVitA-3     BANGLADESH     Food Insecure             2778   16764  whz              
6 months    JiVitA-4     BANGLADESH     Food Secure               2445    4795  whz              
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1728    4795  whz              
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4795  whz              
6 months    MAL-ED       BANGLADESH     Food Secure                160     193  whz              
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  whz              
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193  whz              
6 months    MAL-ED       BRAZIL         Food Secure                  3     129  whz              
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129  whz              
6 months    MAL-ED       BRAZIL         Food Insecure              115     129  whz              
6 months    MAL-ED       INDIA          Food Secure                190     212  whz              
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212  whz              
6 months    MAL-ED       INDIA          Food Insecure               17     212  whz              
6 months    MAL-ED       NEPAL          Food Secure                 94     128  whz              
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128  whz              
6 months    MAL-ED       NEPAL          Food Insecure               19     128  whz              
6 months    MAL-ED       PERU           Food Secure                 27     111  whz              
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111  whz              
6 months    MAL-ED       PERU           Food Insecure               56     111  whz              
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228  whz              
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  whz              
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228  whz              
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537  whz              
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537  whz              
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537  whz              
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715  whz              
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715  whz              
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715  whz              
24 months   GMS-Nepal    NEPAL          Food Secure                341     477  whz              
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     477  whz              
24 months   GMS-Nepal    NEPAL          Food Insecure               69     477  whz              
24 months   JiVitA-3     BANGLADESH     Food Secure               3857    8190  whz              
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2753    8190  whz              
24 months   JiVitA-3     BANGLADESH     Food Insecure             1580    8190  whz              
24 months   JiVitA-4     BANGLADESH     Food Secure               2389    4696  whz              
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1699    4696  whz              
24 months   JiVitA-4     BANGLADESH     Food Insecure              608    4696  whz              
24 months   MAL-ED       BANGLADESH     Food Secure                161     194  whz              
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194  whz              
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194  whz              
24 months   MAL-ED       BRAZIL         Food Secure                  3     129  whz              
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129  whz              
24 months   MAL-ED       BRAZIL         Food Insecure              115     129  whz              
24 months   MAL-ED       INDIA          Food Secure                190     212  whz              
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212  whz              
24 months   MAL-ED       INDIA          Food Insecure               17     212  whz              
24 months   MAL-ED       NEPAL          Food Secure                 94     128  whz              
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128  whz              
24 months   MAL-ED       NEPAL          Food Insecure               19     128  whz              
24 months   MAL-ED       PERU           Food Secure                 26     107  whz              
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107  whz              
24 months   MAL-ED       PERU           Food Insecure               54     107  whz              
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228  whz              
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  whz              
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228  whz              
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     428  whz              
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       327     428  whz              
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     428  whz              
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514  whz              
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514  whz              
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514  whz              


The following strata were considered:

* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/41d7fdaf-bd8a-4ec5-8a85-ac1b60bce844/ded1d22e-f5bc-4a84-85a6-b9c3d1eb0c28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/41d7fdaf-bd8a-4ec5-8a85-ac1b60bce844/ded1d22e-f5bc-4a84-85a6-b9c3d1eb0c28/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/41d7fdaf-bd8a-4ec5-8a85-ac1b60bce844/ded1d22e-f5bc-4a84-85a6-b9c3d1eb0c28/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.1852160   -1.2896735   -1.0807584
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.9044332   -1.1484229   -0.6604436
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.0304757   -1.3045453   -0.7564062
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -0.7354472   -0.7702059   -0.7006885
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.7621701   -0.8032399   -0.7211002
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -0.7860452   -0.8385546   -0.7335359
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -0.6786960   -0.7458871   -0.6115049
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.7167405   -0.8048466   -0.6286344
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -0.6662287   -0.8379843   -0.4944730
Birth       MAL-ED       PERU           Food Secure            NA                -0.3445132   -0.8209544    0.1319281
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                -0.0605893   -0.3656944    0.2445158
Birth       MAL-ED       PERU           Food Insecure          NA                 0.0456000   -0.2370900    0.3282901
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.0800000   -0.4003913    0.2403913
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.2611111   -1.0678216    0.5455994
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.2157576   -0.6840291    0.2525139
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -1.1364598   -1.3814858   -0.8914338
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4044781   -1.5125291   -1.2964272
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -1.2163293   -1.6040322   -0.8286264
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -1.2596573   -1.3698623   -1.1494523
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2145001   -1.3752352   -1.0537650
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2243429   -1.4620725   -0.9866133
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -0.5999126   -0.7070094   -0.4928158
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -0.4350548   -0.6658350   -0.2042746
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -0.9411299   -1.1785412   -0.7037186
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -0.5828308   -0.6117429   -0.5539187
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -0.5895227   -0.6242757   -0.5547698
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -0.6525960   -0.7067216   -0.5984704
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -0.3832060   -0.4315207   -0.3348912
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -0.3974915   -0.4554019   -0.3395811
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -0.3891244   -0.5002362   -0.2780127
6 months    MAL-ED       INDIA          Food Secure            NA                -0.7025789   -0.8453715   -0.5597864
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -1.5420000   -2.3989104   -0.6850896
6 months    MAL-ED       INDIA          Food Insecure          NA                -0.6978922   -1.1435259   -0.2522584
6 months    MAL-ED       NEPAL          Food Secure            NA                 0.1806544   -0.0414061    0.4027150
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                 0.2991350   -0.4861842    1.0844542
6 months    MAL-ED       NEPAL          Food Insecure          NA                -0.3537679   -0.7983281    0.0907923
6 months    MAL-ED       PERU           Food Secure            NA                 1.0338618    0.5957818    1.4719418
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                 1.0083331    0.7393211    1.2773452
6 months    MAL-ED       PERU           Food Insecure          NA                 1.0321012    0.6794541    1.3847483
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.6476229    0.4303859    0.8648599
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.5749817   -0.0521490    1.2021123
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.3741839    0.1052406    0.6431271
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -0.4363714   -0.6385486   -0.2341943
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.4336478   -0.5379883   -0.3293074
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -0.6857454   -1.0506344   -0.3208563
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                 0.0753719   -0.0290210    0.1797648
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                 0.0486034   -0.0998705    0.1970774
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.1938020   -0.4012606    0.0136566
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.1240780   -1.2270102   -1.0211457
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.2766860   -1.5487141   -1.0046579
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -1.1525830   -1.4864372   -0.8187289
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.2821687   -1.3184888   -1.2458487
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.2861361   -1.3314436   -1.2408287
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -1.3601867   -1.4206842   -1.2996892
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.2119285   -1.2563683   -1.1674887
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.2343201   -1.2894668   -1.1791735
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.2431823   -1.3231679   -1.1631967
24 months   MAL-ED       INDIA          Food Secure            NA                -0.9256316   -1.0440690   -0.8071941
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -2.3840000   -3.4554070   -1.3125930
24 months   MAL-ED       INDIA          Food Insecure          NA                -0.9111765   -1.3418053   -0.4805476
24 months   MAL-ED       NEPAL          Food Secure            NA                -0.2144751   -0.4122145   -0.0167357
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.3433831   -0.8181203    0.1313541
24 months   MAL-ED       NEPAL          Food Insecure          NA                -0.5479632   -0.8932140   -0.2027124
24 months   MAL-ED       PERU           Food Secure            NA                 0.0061417   -0.4205954    0.4328787
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                 0.2381107   -0.0431004    0.5193219
24 months   MAL-ED       PERU           Food Insecure          NA                 0.1686999   -0.1114239    0.4488236
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                 0.3916086    0.2232232    0.5599940
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                 0.0385444   -0.3225547    0.3996435
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                 0.4743981    0.2538278    0.6949684
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -0.8610950   -1.1118386   -0.6103514
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9085448   -1.0250640   -0.7920256
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -1.0742366   -1.4289819   -0.7194912
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -0.6014475   -0.7242301   -0.4786649
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.5909647   -0.7620669   -0.4198625
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.6971775   -0.9721144   -0.4222405


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          NA                   NA                -1.1165161   -1.2055683   -1.0274639
Birth       JiVitA-3     BANGLADESH     NA                   NA                -0.7508875   -0.7730765   -0.7286985
Birth       JiVitA-4     BANGLADESH     NA                   NA                -0.6898154   -0.7422632   -0.6373675
Birth       MAL-ED       PERU           NA                   NA                -0.0483146   -0.2475806    0.1509514
Birth       MAL-ED       SOUTH AFRICA   NA                   NA                -0.1502299   -0.4075620    0.1071022
Birth       NIH-Birth    BANGLADESH     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto   BANGLADESH     NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    GMS-Nepal    NEPAL          NA                   NA                -0.6018803   -0.6892284   -0.5145323
6 months    JiVitA-3     BANGLADESH     NA                   NA                -0.5932301   -0.6127836   -0.5736767
6 months    JiVitA-4     BANGLADESH     NA                   NA                -0.3895527   -0.4270314   -0.3520739
6 months    MAL-ED       INDIA          NA                   NA                -0.7220008   -0.8576809   -0.5863207
6 months    MAL-ED       NEPAL          NA                   NA                 0.1277734   -0.0649431    0.3204900
6 months    MAL-ED       PERU           NA                   NA                 0.9819369    0.7674415    1.1964324
6 months    MAL-ED       SOUTH AFRICA   NA                   NA                 0.5429020    0.3813518    0.7044523
6 months    NIH-Birth    BANGLADESH     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto   BANGLADESH     NA                   NA                 0.0297622   -0.0491685    0.1086930
24 months   GMS-Nepal    NEPAL          NA                   NA                -1.1304997   -1.2205265   -1.0404728
24 months   JiVitA-3     BANGLADESH     NA                   NA                -1.2988352   -1.3224626   -1.2752078
24 months   JiVitA-4     BANGLADESH     NA                   NA                -1.2243590   -1.2566569   -1.1920612
24 months   MAL-ED       INDIA          NA                   NA                -0.9588679   -1.0774868   -0.8402491
24 months   MAL-ED       NEPAL          NA                   NA                -0.2730469   -0.4358169   -0.1102769
24 months   MAL-ED       PERU           NA                   NA                 0.0982009   -0.0794754    0.2758773
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                 0.4080227    0.2828348    0.5332106
24 months   NIH-Birth    BANGLADESH     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto   BANGLADESH     NA                   NA                -0.6103502   -0.7050157   -0.5156847


### Parameter: ATE


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.2807828    0.0153233    0.5462422
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure        0.1547402   -0.1381095    0.4475900
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0267228   -0.0782976    0.0248519
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0505980   -0.1119935    0.0107974
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0380445   -0.1477830    0.0716939
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0124673   -0.1717668    0.1967014
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2839239   -0.2815082    0.8493559
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.3901132   -0.1654808    0.9457072
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.1811111   -1.0491159    0.6868937
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1357576   -0.7031452    0.4316301
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.2680183   -0.5358562   -0.0001804
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.0798695   -0.5386615    0.3789225
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0451572   -0.1496301    0.2399445
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure        0.0353144   -0.2267804    0.2974093
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure        0.1648578   -0.0911213    0.4208369
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.3412173   -0.6019636   -0.0804711
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0066919   -0.0506359    0.0372520
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0697651   -0.1294214   -0.0101089
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0142855   -0.0851431    0.0565721
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0059185   -0.1235023    0.1116654
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -0.8394211   -1.7081472    0.0293051
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.0046868   -0.4632653    0.4726389
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.1184805   -0.6975024    0.9344635
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.5344223   -1.0359352   -0.0329095
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure       -0.0255287   -0.5405792    0.4895219
6 months    MAL-ED       PERU           Food Insecure          Food Secure       -0.0017606   -0.5686871    0.5651659
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0726412   -0.7367418    0.5914593
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2734390   -0.6195270    0.0726489
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure        0.0027236   -0.2246485    0.2300958
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2493739   -0.6676713    0.1689235
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0267685   -0.2084007    0.1548637
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.2691739   -0.5016785   -0.0366693
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1526080   -0.4433682    0.1381522
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0285051   -0.3779269    0.3209167
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0039674   -0.0609404    0.0530056
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0780180   -0.1461076   -0.0099283
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0223917   -0.0923622    0.0475788
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure       -0.0312538   -0.1226898    0.0601822
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure       -1.4583684   -2.5363018   -0.3804350
24 months   MAL-ED       INDIA          Food Insecure          Food Secure        0.0144551   -0.4321640    0.4610742
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.1289080   -0.6468111    0.3889950
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.3334881   -0.7404433    0.0734670
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2319691   -0.2851442    0.7490823
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.1625582   -0.3508582    0.6759747
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.3530642   -0.7540782    0.0479498
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure        0.0827895   -0.1964546    0.3620337
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.0474498   -0.3240189    0.2291193
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2131416   -0.6481355    0.2218524
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure        0.0104828   -0.1986893    0.2196549
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.0957300   -0.3965222    0.2050623


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                 0.0686998    0.0070846   0.1303150
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                -0.0154403   -0.0414367   0.0105560
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                -0.0111194   -0.0622115   0.0399727
Birth       MAL-ED       PERU           Food Secure          NA                 0.2961986   -0.0930022   0.6853993
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0702299   -0.3205899   0.1801302
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.2134619   -0.4424159   0.0154921
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                 0.0155060   -0.0529631   0.0839751
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0019678   -0.0589638   0.0550282
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0103993   -0.0313144   0.0105158
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                -0.0063467   -0.0382896   0.0255962
6 months    MAL-ED       INDIA          Food Secure          NA                -0.0194218   -0.0668687   0.0280250
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.0528810   -0.1761385   0.0703765
6 months    MAL-ED       PERU           Food Secure          NA                -0.0519249   -0.4385346   0.3346849
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.1047208   -0.2488828   0.0394411
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0110323   -0.2058523   0.1837876
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0456097   -0.1102917   0.0190724
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0064217   -0.0664029   0.0535595
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0166664   -0.0446452   0.0113123
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                -0.0124306   -0.0435213   0.0186602
24 months   MAL-ED       INDIA          Food Secure          NA                -0.0332363   -0.0875904   0.0211177
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.0585718   -0.1543649   0.0372214
24 months   MAL-ED       PERU           Food Secure          NA                 0.0920593   -0.2739416   0.4580601
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                 0.0164141   -0.0964605   0.1292887
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.0504840   -0.2843820   0.1834139
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0089027   -0.0743220   0.0565166

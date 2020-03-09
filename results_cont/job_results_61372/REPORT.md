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
Birth       GMS-Nepal    NEPAL          Food Secure                477     672  haz              
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       106     672  haz              
Birth       GMS-Nepal    NEPAL          Food Insecure               89     672  haz              
Birth       JiVitA-3     BANGLADESH     Food Secure               6951   14364  haz              
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      4877   14364  haz              
Birth       JiVitA-3     BANGLADESH     Food Insecure             2536   14364  haz              
Birth       JiVitA-4     BANGLADESH     Food Secure               1433    2810  haz              
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure      1018    2810  haz              
Birth       JiVitA-4     BANGLADESH     Food Insecure              359    2810  haz              
Birth       MAL-ED       BANGLADESH     Food Secure                144     172  haz              
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         4     172  haz              
Birth       MAL-ED       BANGLADESH     Food Insecure               24     172  haz              
Birth       MAL-ED       BRAZIL         Food Secure                  0      28  haz              
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      28  haz              
Birth       MAL-ED       BRAZIL         Food Insecure               24      28  haz              
Birth       MAL-ED       INDIA          Food Secure                 34      37  haz              
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      37  haz              
Birth       MAL-ED       INDIA          Food Insecure                2      37  haz              
Birth       MAL-ED       NEPAL          Food Secure                 10      14  haz              
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14  haz              
Birth       MAL-ED       NEPAL          Food Insecure                3      14  haz              
Birth       MAL-ED       PERU           Food Secure                 24      91  haz              
Birth       MAL-ED       PERU           Mildly Food Insecure        23      91  haz              
Birth       MAL-ED       PERU           Food Insecure               44      91  haz              
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      88  haz              
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88  haz              
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               34      88  haz              
Birth       NIH-Birth    BANGLADESH     Food Secure                 90     608  haz              
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       478     608  haz              
Birth       NIH-Birth    BANGLADESH     Food Insecure               40     608  haz              
Birth       NIH-Crypto   BANGLADESH     Food Secure                439     732  haz              
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732  haz              
Birth       NIH-Crypto   BANGLADESH     Food Insecure               84     732  haz              
6 months    GMS-Nepal    NEPAL          Food Secure                396     546  haz              
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546  haz              
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546  haz              
6 months    JiVitA-3     BANGLADESH     Food Secure               8415   16791  haz              
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5602   16791  haz              
6 months    JiVitA-3     BANGLADESH     Food Insecure             2774   16791  haz              
6 months    JiVitA-4     BANGLADESH     Food Secure               2442    4793  haz              
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1729    4793  haz              
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4793  haz              
6 months    MAL-ED       BANGLADESH     Food Secure                160     193  haz              
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193  haz              
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193  haz              
6 months    MAL-ED       BRAZIL         Food Secure                  3     129  haz              
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129  haz              
6 months    MAL-ED       BRAZIL         Food Insecure              115     129  haz              
6 months    MAL-ED       INDIA          Food Secure                190     212  haz              
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212  haz              
6 months    MAL-ED       INDIA          Food Insecure               17     212  haz              
6 months    MAL-ED       NEPAL          Food Secure                 94     128  haz              
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128  haz              
6 months    MAL-ED       NEPAL          Food Insecure               19     128  haz              
6 months    MAL-ED       PERU           Food Secure                 27     111  haz              
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111  haz              
6 months    MAL-ED       PERU           Food Insecure               56     111  haz              
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228  haz              
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  haz              
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228  haz              
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537  haz              
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537  haz              
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537  haz              
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715  haz              
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715  haz              
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715  haz              
24 months   GMS-Nepal    NEPAL          Food Secure                342     478  haz              
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     478  haz              
24 months   GMS-Nepal    NEPAL          Food Insecure               69     478  haz              
24 months   JiVitA-3     BANGLADESH     Food Secure               3875    8214  haz              
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2761    8214  haz              
24 months   JiVitA-3     BANGLADESH     Food Insecure             1578    8214  haz              
24 months   JiVitA-4     BANGLADESH     Food Secure               2399    4713  haz              
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1705    4713  haz              
24 months   JiVitA-4     BANGLADESH     Food Insecure              609    4713  haz              
24 months   MAL-ED       BANGLADESH     Food Secure                161     194  haz              
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194  haz              
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194  haz              
24 months   MAL-ED       BRAZIL         Food Secure                  3     129  haz              
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129  haz              
24 months   MAL-ED       BRAZIL         Food Insecure              115     129  haz              
24 months   MAL-ED       INDIA          Food Secure                190     212  haz              
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212  haz              
24 months   MAL-ED       INDIA          Food Insecure               17     212  haz              
24 months   MAL-ED       NEPAL          Food Secure                 94     128  haz              
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128  haz              
24 months   MAL-ED       NEPAL          Food Insecure               19     128  haz              
24 months   MAL-ED       PERU           Food Secure                 26     107  haz              
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107  haz              
24 months   MAL-ED       PERU           Food Insecure               54     107  haz              
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228  haz              
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228  haz              
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228  haz              
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     429  haz              
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       328     429  haz              
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     429  haz              
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514  haz              
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514  haz              
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514  haz              


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
![](/tmp/5f29cbb4-1cf6-4ab2-a717-29e0a2e0e41e/c06b8a46-f86c-49df-a4c2-83ac6797dffc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5f29cbb4-1cf6-4ab2-a717-29e0a2e0e41e/c06b8a46-f86c-49df-a4c2-83ac6797dffc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5f29cbb4-1cf6-4ab2-a717-29e0a2e0e41e/c06b8a46-f86c-49df-a4c2-83ac6797dffc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.0321668   -1.1294866   -0.9348469
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.2265956   -1.4555897   -0.9976016
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.3470745   -1.6727878   -1.0213612
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -1.5442164   -1.5781612   -1.5102716
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.5425075   -1.5828837   -1.5021314
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -1.5758417   -1.6322573   -1.5194262
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -1.5438737   -1.6116672   -1.4760802
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.4960517   -1.5806861   -1.4114172
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -1.5238088   -1.6439021   -1.4037154
Birth       MAL-ED       PERU           Food Secure            NA                -1.0200927   -1.4439505   -0.5962349
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                -0.8390939   -1.2425214   -0.4356663
Birth       MAL-ED       PERU           Food Insecure          NA                -0.9259782   -1.1814165   -0.6705399
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -0.7669489   -0.9912400   -0.5426578
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9460540   -1.0462030   -0.8459050
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -0.9764984   -1.5074620   -0.4455348
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8475076   -0.9358331   -0.7591822
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -0.9875640   -1.1270431   -0.8480848
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.0193767   -1.2743197   -0.7644336
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -1.3207634   -1.4144431   -1.2270837
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.5157368   -1.7797219   -1.2517517
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -1.3646544   -1.6398480   -1.0894608
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -1.2947359   -1.3258698   -1.2636020
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.3265820   -1.3620411   -1.2911229
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -1.4285208   -1.4810167   -1.3760250
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -1.3498144   -1.4014740   -1.2981548
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.3503312   -1.4095111   -1.2911514
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -1.3057997   -1.3947848   -1.2168146
6 months    MAL-ED       INDIA          Food Secure            NA                -1.2287544   -1.3589893   -1.0985195
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    MAL-ED       INDIA          Food Insecure          NA                -1.0694118   -1.5456747   -0.5931488
6 months    MAL-ED       NEPAL          Food Secure            NA                -0.5182829   -0.6774613   -0.3591045
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.5479683   -0.9909484   -0.1049881
6 months    MAL-ED       NEPAL          Food Insecure          NA                -1.0779377   -1.5653859   -0.5904896
6 months    MAL-ED       PERU           Food Secure            NA                -1.4275014   -1.8299485   -1.0250542
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                -1.1322273   -1.5241635   -0.7402912
6 months    MAL-ED       PERU           Food Insecure          NA                -1.4475661   -1.6846366   -1.2104956
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0108600   -1.1870844   -0.8346357
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.7306337   -1.3139258   -0.1473416
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1955675   -1.4304810   -0.9606540
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -1.3090063   -1.5548741   -1.0631384
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4143161   -1.5103754   -1.3182568
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -1.7632788   -2.1810558   -1.3455018
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1415016   -1.2343033   -1.0487000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2497252   -1.3850140   -1.1144364
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.3307724   -1.5640072   -1.0975377
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.8075991   -1.9113050   -1.7038932
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -2.1516595   -2.3914953   -1.9118237
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -2.1378323   -2.3667839   -1.9088808
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.9815131   -2.0228358   -1.9401905
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -2.0038425   -2.0510541   -1.9566308
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -2.1082360   -2.1729503   -2.0435217
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.7905674   -1.8396706   -1.7414641
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.7721014   -1.8262726   -1.7179303
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.7534997   -1.8396477   -1.6673517
24 months   MAL-ED       INDIA          Food Secure            NA                -1.8935000   -2.0301943   -1.7568057
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   MAL-ED       NEPAL          Food Secure            NA                -1.2976945   -1.4825682   -1.1128207
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.2526306   -1.5694160   -0.9358451
24 months   MAL-ED       NEPAL          Food Insecure          NA                -1.7780847   -2.2535296   -1.3026399
24 months   MAL-ED       PERU           Food Secure            NA                -1.8328192   -2.2897524   -1.3758859
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                -1.6238087   -1.9830162   -1.2646011
24 months   MAL-ED       PERU           Food Insecure          NA                -1.7706220   -1.9995389   -1.5417052
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5470611   -1.7292388   -1.3648834
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.5948240   -2.1742024   -1.0154456
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7814802   -2.0065115   -1.5564490
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -1.6746820   -1.9489736   -1.4003905
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -2.2673329   -2.3772908   -2.1573750
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -2.8945282   -3.3325543   -2.4565021
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -1.3998455   -1.5038494   -1.2958415
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.4974972   -1.6665028   -1.3284916
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5648939   -1.8137407   -1.3160472


### Parameter: E(Y)


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          NA                   NA                -1.0791964   -1.1604792   -0.9979137
Birth       JiVitA-3     BANGLADESH     NA                   NA                -1.5375132   -1.5596692   -1.5153573
Birth       JiVitA-4     BANGLADESH     NA                   NA                -1.5248719   -1.5743851   -1.4753587
Birth       MAL-ED       PERU           NA                   NA                -0.9490110   -1.1400314   -0.7579906
Birth       MAL-ED       SOUTH AFRICA   NA                   NA                -0.5503409   -0.7616444   -0.3390374
Birth       NIH-Birth    BANGLADESH     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto   BANGLADESH     NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    GMS-Nepal    NEPAL          NA                   NA                -1.3421764   -1.4201083   -1.2642445
6 months    JiVitA-3     BANGLADESH     NA                   NA                -1.3131326   -1.3362851   -1.2899801
6 months    JiVitA-4     BANGLADESH     NA                   NA                -1.3446891   -1.3822219   -1.3071564
6 months    MAL-ED       INDIA          NA                   NA                -1.2019969   -1.3256948   -1.0782989
6 months    MAL-ED       NEPAL          NA                   NA                -0.6262760   -0.7758267   -0.4767254
6 months    MAL-ED       PERU           NA                   NA                -1.3783784   -1.5611768   -1.1955799
6 months    MAL-ED       SOUTH AFRICA   NA                   NA                -1.0539254   -1.1902766   -0.9175743
6 months    NIH-Birth    BANGLADESH     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto   BANGLADESH     NA                   NA                -1.1986783   -1.2700937   -1.1272630
24 months   GMS-Nepal    NEPAL          NA                   NA                -1.8758368   -1.9623349   -1.7893388
24 months   JiVitA-3     BANGLADESH     NA                   NA                -2.0099416   -2.0377955   -1.9820876
24 months   JiVitA-4     BANGLADESH     NA                   NA                -1.7801485   -1.8158427   -1.7444543
24 months   MAL-ED       INDIA          NA                   NA                -1.8868396   -2.0164954   -1.7571839
24 months   MAL-ED       NEPAL          NA                   NA                -1.4092187   -1.5701249   -1.2483126
24 months   MAL-ED       PERU           NA                   NA                -1.7783956   -1.9536701   -1.6031212
24 months   MAL-ED       SOUTH AFRICA   NA                   NA                -1.6331323   -1.7704624   -1.4958022
24 months   NIH-Birth    BANGLADESH     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto   BANGLADESH     NA                   NA                -1.4412646   -1.5249156   -1.3576135


### Parameter: ATE


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1944289   -0.4435897    0.0547319
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.3149077   -0.6551053    0.0252898
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure        0.0017089   -0.0496559    0.0530736
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0316253   -0.0970181    0.0337675
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0478220   -0.0587190    0.1543631
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0200649   -0.1182537    0.1583835
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1809989   -0.4068724    0.7688701
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.0941145   -0.4028859    0.5911149
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1791051   -0.4257291    0.0675189
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.2095495   -0.7872526    0.3681536
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1400563   -0.3051890    0.0250764
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1718690   -0.4414118    0.0976737
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1949734   -0.4753618    0.0854149
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0438910   -0.3347142    0.2469323
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0318461   -0.0737627    0.0100705
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1337850   -0.1917714   -0.0757985
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0005168   -0.0759123    0.0748786
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0440147   -0.0584479    0.1464774
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5927544    0.2966371    0.8888717
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.1593426   -0.3344058    0.6530910
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure       -0.0296854   -0.5012386    0.4418679
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.5596548   -1.0722795   -0.0470302
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2952740   -0.2627941    0.8533421
6 months    MAL-ED       PERU           Food Insecure          Food Secure       -0.0200648   -0.4841274    0.4439979
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2802263   -0.3297867    0.8902393
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1847075   -0.4795414    0.1101263
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1053098   -0.3680945    0.1574748
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.4542726   -0.9394843    0.0309392
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1082235   -0.2725021    0.0560551
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1892708   -0.4401891    0.0616475
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.3440604   -0.6064088   -0.0817119
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.3302332   -0.5819642   -0.0785022
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0223294   -0.0822166    0.0375579
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1267229   -0.1970981   -0.0563476
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0184659   -0.0509678    0.0878996
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0370677   -0.0597206    0.1338559
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6565000    0.2562055    1.0567945
24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.1100294   -0.6138027    0.3937438
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0450639   -0.3226989    0.4128266
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.4803902   -0.9952896    0.0345091
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2090105   -0.3833422    0.8013632
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0621971   -0.4414418    0.5658361
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0477629   -0.6546564    0.5591306
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2344191   -0.5249654    0.0561271
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.5926508   -0.8880094   -0.2972923
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -1.2198462   -1.7362411   -0.7034512
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0976517   -0.2959166    0.1006131
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1650485   -0.4346487    0.1045518


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                -0.0470297   -0.1053722    0.0113129
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                 0.0067032   -0.0199396    0.0333460
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                 0.0190018   -0.0283893    0.0663929
Birth       MAL-ED       PERU           Food Secure          NA                 0.0710817   -0.2821159    0.4242794
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.1640709   -0.3781533    0.0500116
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0619869   -0.1226467   -0.0013271
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0214130   -0.0730925    0.0302665
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0183968   -0.0399549    0.0031614
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                 0.0051253   -0.0290337    0.0392843
6 months    MAL-ED       INDIA          Food Secure          NA                 0.0267575   -0.0163737    0.0698887
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.1079931   -0.2111239   -0.0048623
6 months    MAL-ED       PERU           Food Secure          NA                 0.0491230   -0.2903479    0.3885939
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0430654   -0.1653068    0.0791760
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.0983758   -0.3256492    0.1288976
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0571767   -0.1174057    0.0030523
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0682377   -0.1271723   -0.0093031
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0284284   -0.0585195    0.0016627
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0104188   -0.0209155    0.0417531
24 months   MAL-ED       INDIA          Food Secure          NA                 0.0066604   -0.0380987    0.0514195
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.1115243   -0.2157333   -0.0073153
24 months   MAL-ED       PERU           Food Secure          NA                 0.0544235   -0.3390350    0.4478821
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0860712   -0.2072138    0.0350714
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.5443759   -0.7947607   -0.2939910
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0414191   -0.1025180    0.0196798

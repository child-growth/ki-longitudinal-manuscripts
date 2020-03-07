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

agecat      studyid      country        hfoodsec                n_cell       n
----------  -----------  -------------  ---------------------  -------  ------
Birth       GMS-Nepal    NEPAL          Food Secure                477     672
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure       106     672
Birth       GMS-Nepal    NEPAL          Food Insecure               89     672
Birth       JiVitA-3     BANGLADESH     Food Secure               6951   14364
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure      4877   14364
Birth       JiVitA-3     BANGLADESH     Food Insecure             2536   14364
Birth       JiVitA-4     BANGLADESH     Food Secure               1433    2810
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure      1018    2810
Birth       JiVitA-4     BANGLADESH     Food Insecure              359    2810
Birth       MAL-ED       BANGLADESH     Food Secure                144     172
Birth       MAL-ED       BANGLADESH     Mildly Food Insecure         4     172
Birth       MAL-ED       BANGLADESH     Food Insecure               24     172
Birth       MAL-ED       BRAZIL         Food Secure                  0      28
Birth       MAL-ED       BRAZIL         Mildly Food Insecure         4      28
Birth       MAL-ED       BRAZIL         Food Insecure               24      28
Birth       MAL-ED       INDIA          Food Secure                 34      37
Birth       MAL-ED       INDIA          Mildly Food Insecure         1      37
Birth       MAL-ED       INDIA          Food Insecure                2      37
Birth       MAL-ED       NEPAL          Food Secure                 10      14
Birth       MAL-ED       NEPAL          Mildly Food Insecure         1      14
Birth       MAL-ED       NEPAL          Food Insecure                3      14
Birth       MAL-ED       PERU           Food Secure                 24      91
Birth       MAL-ED       PERU           Mildly Food Insecure        23      91
Birth       MAL-ED       PERU           Food Insecure               44      91
Birth       MAL-ED       SOUTH AFRICA   Food Secure                 45      88
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure         9      88
Birth       MAL-ED       SOUTH AFRICA   Food Insecure               34      88
Birth       NIH-Birth    BANGLADESH     Food Secure                 90     608
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure       478     608
Birth       NIH-Birth    BANGLADESH     Food Insecure               40     608
Birth       NIH-Crypto   BANGLADESH     Food Secure                439     732
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure       209     732
Birth       NIH-Crypto   BANGLADESH     Food Insecure               84     732
6 months    GMS-Nepal    NEPAL          Food Secure                396     546
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure        76     546
6 months    GMS-Nepal    NEPAL          Food Insecure               74     546
6 months    JiVitA-3     BANGLADESH     Food Secure               8415   16791
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure      5602   16791
6 months    JiVitA-3     BANGLADESH     Food Insecure             2774   16791
6 months    JiVitA-4     BANGLADESH     Food Secure               2442    4793
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure      1729    4793
6 months    JiVitA-4     BANGLADESH     Food Insecure              622    4793
6 months    MAL-ED       BANGLADESH     Food Secure                160     193
6 months    MAL-ED       BANGLADESH     Mildly Food Insecure         4     193
6 months    MAL-ED       BANGLADESH     Food Insecure               29     193
6 months    MAL-ED       BRAZIL         Food Secure                  3     129
6 months    MAL-ED       BRAZIL         Mildly Food Insecure        11     129
6 months    MAL-ED       BRAZIL         Food Insecure              115     129
6 months    MAL-ED       INDIA          Food Secure                190     212
6 months    MAL-ED       INDIA          Mildly Food Insecure         5     212
6 months    MAL-ED       INDIA          Food Insecure               17     212
6 months    MAL-ED       NEPAL          Food Secure                 94     128
6 months    MAL-ED       NEPAL          Mildly Food Insecure        15     128
6 months    MAL-ED       NEPAL          Food Insecure               19     128
6 months    MAL-ED       PERU           Food Secure                 27     111
6 months    MAL-ED       PERU           Mildly Food Insecure        28     111
6 months    MAL-ED       PERU           Food Insecure               56     111
6 months    MAL-ED       SOUTH AFRICA   Food Secure                129     228
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
6 months    MAL-ED       SOUTH AFRICA   Food Insecure               81     228
6 months    NIH-Birth    BANGLADESH     Food Secure                 80     537
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure       417     537
6 months    NIH-Birth    BANGLADESH     Food Insecure               40     537
6 months    NIH-Crypto   BANGLADESH     Food Secure                427     715
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure       204     715
6 months    NIH-Crypto   BANGLADESH     Food Insecure               84     715
24 months   GMS-Nepal    NEPAL          Food Secure                342     478
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure        67     478
24 months   GMS-Nepal    NEPAL          Food Insecure               69     478
24 months   JiVitA-3     BANGLADESH     Food Secure               3875    8214
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure      2761    8214
24 months   JiVitA-3     BANGLADESH     Food Insecure             1578    8214
24 months   JiVitA-4     BANGLADESH     Food Secure               2399    4713
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure      1705    4713
24 months   JiVitA-4     BANGLADESH     Food Insecure              609    4713
24 months   MAL-ED       BANGLADESH     Food Secure                161     194
24 months   MAL-ED       BANGLADESH     Mildly Food Insecure         4     194
24 months   MAL-ED       BANGLADESH     Food Insecure               29     194
24 months   MAL-ED       BRAZIL         Food Secure                  3     129
24 months   MAL-ED       BRAZIL         Mildly Food Insecure        11     129
24 months   MAL-ED       BRAZIL         Food Insecure              115     129
24 months   MAL-ED       INDIA          Food Secure                190     212
24 months   MAL-ED       INDIA          Mildly Food Insecure         5     212
24 months   MAL-ED       INDIA          Food Insecure               17     212
24 months   MAL-ED       NEPAL          Food Secure                 94     128
24 months   MAL-ED       NEPAL          Mildly Food Insecure        15     128
24 months   MAL-ED       NEPAL          Food Insecure               19     128
24 months   MAL-ED       PERU           Food Secure                 26     107
24 months   MAL-ED       PERU           Mildly Food Insecure        27     107
24 months   MAL-ED       PERU           Food Insecure               54     107
24 months   MAL-ED       SOUTH AFRICA   Food Secure                129     228
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure        18     228
24 months   MAL-ED       SOUTH AFRICA   Food Insecure               81     228
24 months   NIH-Birth    BANGLADESH     Food Secure                 68     429
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure       328     429
24 months   NIH-Birth    BANGLADESH     Food Insecure               33     429
24 months   NIH-Crypto   BANGLADESH     Food Secure                334     514
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure       124     514
24 months   NIH-Crypto   BANGLADESH     Food Insecure               56     514


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
![](/tmp/99f00f44-88e0-4ee4-a0e0-0a908ed4a5a0/7049e821-1956-40b8-ae2f-4f3159900d43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/99f00f44-88e0-4ee4-a0e0-0a908ed4a5a0/7049e821-1956-40b8-ae2f-4f3159900d43/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/99f00f44-88e0-4ee4-a0e0-0a908ed4a5a0/7049e821-1956-40b8-ae2f-4f3159900d43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country        intervention_level     baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  ---------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure            NA                -1.0312698   -1.1273512   -0.9351883
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.1933506   -1.4293878   -0.9573135
Birth       GMS-Nepal    NEPAL          Food Insecure          NA                -1.3665537   -1.6965318   -1.0365755
Birth       JiVitA-3     BANGLADESH     Food Secure            NA                -1.5420242   -1.5746450   -1.5094033
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.5409570   -1.5825696   -1.4993445
Birth       JiVitA-3     BANGLADESH     Food Insecure          NA                -1.5689516   -1.6252198   -1.5126833
Birth       JiVitA-4     BANGLADESH     Food Secure            NA                -1.5476722   -1.6157712   -1.4795732
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.4914518   -1.5763428   -1.4065608
Birth       JiVitA-4     BANGLADESH     Food Insecure          NA                -1.5260604   -1.6488361   -1.4032847
Birth       MAL-ED       PERU           Food Secure            NA                -1.0319859   -1.4493930   -0.6145789
Birth       MAL-ED       PERU           Mildly Food Insecure   NA                -0.8726837   -1.2837213   -0.4616461
Birth       MAL-ED       PERU           Food Insecure          NA                -0.9373462   -1.1968949   -0.6777974
Birth       MAL-ED       SOUTH AFRICA   Food Secure            NA                -0.4535556   -0.7370575   -0.1700536
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.0888889   -0.6955550    0.5177773
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          NA                -0.8005882   -1.1433809   -0.4577955
Birth       NIH-Birth    BANGLADESH     Food Secure            NA                -0.7777805   -0.9985609   -0.5570002
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -0.9457131   -1.0461731   -0.8452531
Birth       NIH-Birth    BANGLADESH     Food Insecure          NA                -0.9544366   -1.4955992   -0.4132740
Birth       NIH-Crypto   BANGLADESH     Food Secure            NA                -0.8449042   -0.9342634   -0.7555450
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.0027687   -1.1402181   -0.8653193
Birth       NIH-Crypto   BANGLADESH     Food Insecure          NA                -0.9977409   -1.2596405   -0.7358412
6 months    GMS-Nepal    NEPAL          Food Secure            NA                -1.3188363   -1.4116375   -1.2260351
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -1.5383736   -1.7926942   -1.2840529
6 months    GMS-Nepal    NEPAL          Food Insecure          NA                -1.3819866   -1.6596162   -1.1043569
6 months    JiVitA-3     BANGLADESH     Food Secure            NA                -1.2952926   -1.3262166   -1.2643687
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -1.3262740   -1.3613645   -1.2911834
6 months    JiVitA-3     BANGLADESH     Food Insecure          NA                -1.4196281   -1.4739817   -1.3652744
6 months    JiVitA-4     BANGLADESH     Food Secure            NA                -1.3475307   -1.3993783   -1.2956831
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.3520195   -1.4111896   -1.2928493
6 months    JiVitA-4     BANGLADESH     Food Insecure          NA                -1.3128409   -1.4021711   -1.2235107
6 months    MAL-ED       INDIA          Food Secure            NA                -1.2287544   -1.3589893   -1.0985195
6 months    MAL-ED       INDIA          Mildly Food Insecure   NA                -0.6360000   -0.9019405   -0.3700595
6 months    MAL-ED       INDIA          Food Insecure          NA                -1.0694118   -1.5456747   -0.5931488
6 months    MAL-ED       NEPAL          Food Secure            NA                -0.5139500   -0.6740094   -0.3538905
6 months    MAL-ED       NEPAL          Mildly Food Insecure   NA                -0.5108099   -0.9172041   -0.1044156
6 months    MAL-ED       NEPAL          Food Insecure          NA                -1.0833395   -1.5783749   -0.5883041
6 months    MAL-ED       PERU           Food Secure            NA                -1.4128460   -1.8261285   -0.9995635
6 months    MAL-ED       PERU           Mildly Food Insecure   NA                -1.1181977   -1.5116610   -0.7247344
6 months    MAL-ED       PERU           Food Insecure          NA                -1.4729433   -1.7099960   -1.2358906
6 months    MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.0032473   -1.1803645   -0.8261302
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -0.7699164   -1.3737657   -0.1660672
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.1887990   -1.4198531   -0.9577449
6 months    NIH-Birth    BANGLADESH     Food Secure            NA                -1.2493998   -1.5074260   -0.9913735
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -1.4259785   -1.5230620   -1.3288950
6 months    NIH-Birth    BANGLADESH     Food Insecure          NA                -1.6981244   -2.1243588   -1.2718900
6 months    NIH-Crypto   BANGLADESH     Food Secure            NA                -1.1513862   -1.2438026   -1.0589698
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.2610005   -1.3967072   -1.1252938
6 months    NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.2858616   -1.5201964   -1.0515268
24 months   GMS-Nepal    NEPAL          Food Secure            NA                -1.8225682   -1.9295177   -1.7156187
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   NA                -2.1967425   -2.4590743   -1.9344108
24 months   GMS-Nepal    NEPAL          Food Insecure          NA                -2.1457633   -2.3831156   -1.9084110
24 months   JiVitA-3     BANGLADESH     Food Secure            NA                -1.9831204   -2.0251303   -1.9411105
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   NA                -2.0062114   -2.0530515   -1.9593714
24 months   JiVitA-3     BANGLADESH     Food Insecure          NA                -2.1171903   -2.1810700   -2.0533106
24 months   JiVitA-4     BANGLADESH     Food Secure            NA                -1.7900251   -1.8389786   -1.7410716
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   NA                -1.7741735   -1.8282894   -1.7200576
24 months   JiVitA-4     BANGLADESH     Food Insecure          NA                -1.7612583   -1.8475472   -1.6749694
24 months   MAL-ED       INDIA          Food Secure            NA                -1.8935000   -2.0301943   -1.7568057
24 months   MAL-ED       INDIA          Mildly Food Insecure   NA                -1.2370000   -1.6132318   -0.8607682
24 months   MAL-ED       INDIA          Food Insecure          NA                -2.0035294   -2.4884028   -1.5186561
24 months   MAL-ED       NEPAL          Food Secure            NA                -1.2986244   -1.4835577   -1.1136911
24 months   MAL-ED       NEPAL          Mildly Food Insecure   NA                -1.2400446   -1.6241597   -0.8559296
24 months   MAL-ED       NEPAL          Food Insecure          NA                -1.8142072   -2.2907985   -1.3376159
24 months   MAL-ED       PERU           Food Secure            NA                -1.9261256   -2.3856207   -1.4666305
24 months   MAL-ED       PERU           Mildly Food Insecure   NA                -1.6437872   -1.9901947   -1.2973798
24 months   MAL-ED       PERU           Food Insecure          NA                -1.8301497   -2.0509673   -1.6093320
24 months   MAL-ED       SOUTH AFRICA   Food Secure            NA                -1.5441350   -1.7283086   -1.3599614
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   NA                -1.5561678   -2.1329440   -0.9793916
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          NA                -1.7730453   -2.0011681   -1.5449224
24 months   NIH-Birth    BANGLADESH     Food Secure            NA                -1.6448422   -1.9365860   -1.3530983
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   NA                -2.2701620   -2.3793470   -2.1609770
24 months   NIH-Birth    BANGLADESH     Food Insecure          NA                -2.8978267   -3.3388989   -2.4567545
24 months   NIH-Crypto   BANGLADESH     Food Secure            NA                -1.4007819   -1.5050036   -1.2965602
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   NA                -1.5001722   -1.6702682   -1.3300763
24 months   NIH-Crypto   BANGLADESH     Food Insecure          NA                -1.5501861   -1.7951005   -1.3052716


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
Birth       GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.1620808   -0.4172751    0.0931134
Birth       GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.3352839   -0.6791167    0.0085489
Birth       JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure        0.0010671   -0.0506105    0.0527447
Birth       JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.0269274   -0.0915182    0.0376634
Birth       JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0562204   -0.0509110    0.1633518
Birth       JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0216118   -0.1192944    0.1625181
Birth       MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.1593022   -0.4269840    0.7455884
Birth       MAL-ED       PERU           Food Insecure          Food Secure        0.0946398   -0.3987377    0.5880172
Birth       MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.3646667   -0.3049729    1.0343063
Birth       MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.3470327   -0.7918699    0.0978046
Birth       NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1679325   -0.4113799    0.0755149
Birth       NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.1766561   -0.7625189    0.4092068
Birth       NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1578645   -0.3219875    0.0062585
Birth       NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1528367   -0.4294841    0.1238108
6 months    GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.2195373   -0.4904545    0.0513799
6 months    GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.0631503   -0.3559593    0.2296588
6 months    JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0309813   -0.0723425    0.0103799
6 months    JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1243354   -0.1838879   -0.0647830
6 months    JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0044888   -0.0799098    0.0709323
6 months    JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0346898   -0.0683570    0.1377366
6 months    MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.5927544    0.2966371    0.8888717
6 months    MAL-ED       INDIA          Food Insecure          Food Secure        0.1593426   -0.3344058    0.6530910
6 months    MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0031401   -0.4347760    0.4410562
6 months    MAL-ED       NEPAL          Food Insecure          Food Secure       -0.5693896   -1.0897719   -0.0490073
6 months    MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2946483   -0.2727839    0.8620805
6 months    MAL-ED       PERU           Food Insecure          Food Secure       -0.0600973   -0.5349313    0.4147366
6 months    MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure        0.2333309   -0.3964119    0.8630737
6 months    MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.1855517   -0.4769157    0.1058123
6 months    NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.1765787   -0.4519450    0.0987875
6 months    NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -0.4487247   -0.9470962    0.0496469
6 months    NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.1096143   -0.2735517    0.0543231
6 months    NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1344754   -0.3859423    0.1169915
24 months   GMS-Nepal    NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal    NEPAL          Mildly Food Insecure   Food Secure       -0.3741743   -0.6585631   -0.0897856
24 months   GMS-Nepal    NEPAL          Food Insecure          Food Secure       -0.3231951   -0.5838678   -0.0625223
24 months   JiVitA-3     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-3     BANGLADESH     Mildly Food Insecure   Food Secure       -0.0230910   -0.0828764    0.0366944
24 months   JiVitA-3     BANGLADESH     Food Insecure          Food Secure       -0.1340699   -0.2042550   -0.0638848
24 months   JiVitA-4     BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   JiVitA-4     BANGLADESH     Mildly Food Insecure   Food Secure        0.0158516   -0.0532222    0.0849255
24 months   JiVitA-4     BANGLADESH     Food Insecure          Food Secure        0.0287668   -0.0679650    0.1254987
24 months   MAL-ED       INDIA          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       INDIA          Mildly Food Insecure   Food Secure        0.6565000    0.2562055    1.0567945
24 months   MAL-ED       INDIA          Food Insecure          Food Secure       -0.1100294   -0.6138027    0.3937438
24 months   MAL-ED       NEPAL          Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       NEPAL          Mildly Food Insecure   Food Secure        0.0585798   -0.3694728    0.4866323
24 months   MAL-ED       NEPAL          Food Insecure          Food Secure       -0.5155828   -1.0268621   -0.0043035
24 months   MAL-ED       PERU           Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       PERU           Mildly Food Insecure   Food Secure        0.2823384   -0.2949588    0.8596356
24 months   MAL-ED       PERU           Food Insecure          Food Secure        0.0959760   -0.4104525    0.6024045
24 months   MAL-ED       SOUTH AFRICA   Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   MAL-ED       SOUTH AFRICA   Mildly Food Insecure   Food Secure       -0.0120328   -0.6176289    0.5935633
24 months   MAL-ED       SOUTH AFRICA   Food Insecure          Food Secure       -0.2289102   -0.5237652    0.0659448
24 months   NIH-Birth    BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Birth    BANGLADESH     Mildly Food Insecure   Food Secure       -0.6253198   -0.9371504   -0.3134892
24 months   NIH-Birth    BANGLADESH     Food Insecure          Food Secure       -1.2529846   -1.7822461   -0.7237230
24 months   NIH-Crypto   BANGLADESH     Food Secure            Food Secure        0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto   BANGLADESH     Mildly Food Insecure   Food Secure       -0.0993903   -0.2989426    0.1001620
24 months   NIH-Crypto   BANGLADESH     Food Insecure          Food Secure       -0.1494041   -0.4155927    0.1167844


### Parameter: PAR


agecat      studyid      country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal    NEPAL          Food Secure          NA                -0.0479267   -0.1052405    0.0093872
Birth       JiVitA-3     BANGLADESH     Food Secure          NA                 0.0045109   -0.0210248    0.0300467
Birth       JiVitA-4     BANGLADESH     Food Secure          NA                 0.0228003   -0.0250023    0.0706030
Birth       MAL-ED       PERU           Food Secure          NA                 0.0829749   -0.2641000    0.4300499
Birth       MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0967854   -0.3037214    0.1101506
Birth       NIH-Birth    BANGLADESH     Food Secure          NA                -0.1532392   -0.3640558    0.0575774
Birth       NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0645903   -0.1260170   -0.0031637
6 months    GMS-Nepal    NEPAL          Food Secure          NA                -0.0233401   -0.0748143    0.0281340
6 months    JiVitA-3     BANGLADESH     Food Secure          NA                -0.0178400   -0.0393850    0.0037050
6 months    JiVitA-4     BANGLADESH     Food Secure          NA                 0.0028416   -0.0314445    0.0371276
6 months    MAL-ED       INDIA          Food Secure          NA                 0.0267575   -0.0163737    0.0698887
6 months    MAL-ED       NEPAL          Food Secure          NA                -0.1123261   -0.2164703   -0.0081819
6 months    MAL-ED       PERU           Food Secure          NA                 0.0344676   -0.3149427    0.3838779
6 months    MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0506781   -0.1735202    0.0721640
6 months    NIH-Birth    BANGLADESH     Food Secure          NA                -0.1579823   -0.3962354    0.0802708
6 months    NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0472921   -0.1067123    0.0121281
24 months   GMS-Nepal    NEPAL          Food Secure          NA                -0.0532686   -0.1160200    0.0094828
24 months   JiVitA-3     BANGLADESH     Food Secure          NA                -0.0268211   -0.0577646    0.0041223
24 months   JiVitA-4     BANGLADESH     Food Secure          NA                 0.0098766   -0.0213323    0.0410855
24 months   MAL-ED       INDIA          Food Secure          NA                 0.0066604   -0.0380987    0.0514195
24 months   MAL-ED       NEPAL          Food Secure          NA                -0.1105944   -0.2133963   -0.0077924
24 months   MAL-ED       PERU           Food Secure          NA                 0.1477300   -0.2353443    0.5308043
24 months   MAL-ED       SOUTH AFRICA   Food Secure          NA                -0.0889973   -0.2118173    0.0338227
24 months   NIH-Birth    BANGLADESH     Food Secure          NA                -0.5742157   -0.8418757   -0.3065558
24 months   NIH-Crypto   BANGLADESH     Food Secure          NA                -0.0404827   -0.1018558    0.0208905

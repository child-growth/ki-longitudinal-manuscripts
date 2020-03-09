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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country        cleanck    n_cell     n
-------------  ---------------  -------------  --------  -------  ----
0-3 months     CMC-V-BCS-2002   INDIA          1             147   331
0-3 months     CMC-V-BCS-2002   INDIA          0             184   331
0-3 months     GMS-Nepal        NEPAL          1               7   460
0-3 months     GMS-Nepal        NEPAL          0             453   460
0-3 months     IRC              INDIA          1             223   386
0-3 months     IRC              INDIA          0             163   386
0-3 months     MAL-ED           PERU           1               1     1
0-3 months     MAL-ED           PERU           0               0     1
0-3 months     MAL-ED           SOUTH AFRICA   1               2     3
0-3 months     MAL-ED           SOUTH AFRICA   0               1     3
0-3 months     NIH-Crypto       BANGLADESH     1             337   550
0-3 months     NIH-Crypto       BANGLADESH     0             213   550
0-3 months     PROVIDE          BANGLADESH     1             529   640
0-3 months     PROVIDE          BANGLADESH     0             111   640
3-6 months     CMC-V-BCS-2002   INDIA          1             138   322
3-6 months     CMC-V-BCS-2002   INDIA          0             184   322
3-6 months     GMS-Nepal        NEPAL          1               6   424
3-6 months     GMS-Nepal        NEPAL          0             418   424
3-6 months     IRC              INDIA          1             225   391
3-6 months     IRC              INDIA          0             166   391
3-6 months     MAL-ED           SOUTH AFRICA   1               1     1
3-6 months     MAL-ED           SOUTH AFRICA   0               0     1
3-6 months     NIH-Crypto       BANGLADESH     1             320   532
3-6 months     NIH-Crypto       BANGLADESH     0             212   532
3-6 months     PROVIDE          BANGLADESH     1             494   601
3-6 months     PROVIDE          BANGLADESH     0             107   601
6-9 months     CMC-V-BCS-2002   INDIA          1             141   325
6-9 months     CMC-V-BCS-2002   INDIA          0             184   325
6-9 months     GMS-Nepal        NEPAL          1               8   429
6-9 months     GMS-Nepal        NEPAL          0             421   429
6-9 months     IRC              INDIA          1             231   400
6-9 months     IRC              INDIA          0             169   400
6-9 months     MAL-ED           SOUTH AFRICA   1               1     1
6-9 months     MAL-ED           SOUTH AFRICA   0               0     1
6-9 months     NIH-Crypto       BANGLADESH     1             315   529
6-9 months     NIH-Crypto       BANGLADESH     0             214   529
6-9 months     PROVIDE          BANGLADESH     1             472   576
6-9 months     PROVIDE          BANGLADESH     0             104   576
9-12 months    CMC-V-BCS-2002   INDIA          1             139   327
9-12 months    CMC-V-BCS-2002   INDIA          0             188   327
9-12 months    GMS-Nepal        NEPAL          1               8   412
9-12 months    GMS-Nepal        NEPAL          0             404   412
9-12 months    IRC              INDIA          1             228   393
9-12 months    IRC              INDIA          0             165   393
9-12 months    MAL-ED           SOUTH AFRICA   1               1     1
9-12 months    MAL-ED           SOUTH AFRICA   0               0     1
9-12 months    NIH-Crypto       BANGLADESH     1             310   524
9-12 months    NIH-Crypto       BANGLADESH     0             214   524
9-12 months    PROVIDE          BANGLADESH     1             467   569
9-12 months    PROVIDE          BANGLADESH     0             102   569
12-15 months   CMC-V-BCS-2002   INDIA          1             140   334
12-15 months   CMC-V-BCS-2002   INDIA          0             194   334
12-15 months   GMS-Nepal        NEPAL          1               8   410
12-15 months   GMS-Nepal        NEPAL          0             402   410
12-15 months   IRC              INDIA          1             221   382
12-15 months   IRC              INDIA          0             161   382
12-15 months   MAL-ED           SOUTH AFRICA   1               1     1
12-15 months   MAL-ED           SOUTH AFRICA   0               0     1
12-15 months   NIH-Crypto       BANGLADESH     1             299   511
12-15 months   NIH-Crypto       BANGLADESH     0             212   511
12-15 months   PROVIDE          BANGLADESH     1             445   537
12-15 months   PROVIDE          BANGLADESH     0              92   537
15-18 months   CMC-V-BCS-2002   INDIA          1             138   325
15-18 months   CMC-V-BCS-2002   INDIA          0             187   325
15-18 months   GMS-Nepal        NEPAL          1               8   432
15-18 months   GMS-Nepal        NEPAL          0             424   432
15-18 months   IRC              INDIA          1             218   375
15-18 months   IRC              INDIA          0             157   375
15-18 months   MAL-ED           SOUTH AFRICA   1               1     1
15-18 months   MAL-ED           SOUTH AFRICA   0               0     1
15-18 months   NIH-Crypto       BANGLADESH     1             257   467
15-18 months   NIH-Crypto       BANGLADESH     0             210   467
15-18 months   PROVIDE          BANGLADESH     1             442   533
15-18 months   PROVIDE          BANGLADESH     0              91   533
18-21 months   CMC-V-BCS-2002   INDIA          1             129   310
18-21 months   CMC-V-BCS-2002   INDIA          0             181   310
18-21 months   GMS-Nepal        NEPAL          1               7   407
18-21 months   GMS-Nepal        NEPAL          0             400   407
18-21 months   IRC              INDIA          1             213   372
18-21 months   IRC              INDIA          0             159   372
18-21 months   MAL-ED           SOUTH AFRICA   1               1     1
18-21 months   MAL-ED           SOUTH AFRICA   0               0     1
18-21 months   NIH-Crypto       BANGLADESH     1             222   431
18-21 months   NIH-Crypto       BANGLADESH     0             209   431
18-21 months   PROVIDE          BANGLADESH     1             442   542
18-21 months   PROVIDE          BANGLADESH     0             100   542
21-24 months   CMC-V-BCS-2002   INDIA          1             126   311
21-24 months   CMC-V-BCS-2002   INDIA          0             185   311
21-24 months   GMS-Nepal        NEPAL          1               4   310
21-24 months   GMS-Nepal        NEPAL          0             306   310
21-24 months   IRC              INDIA          1             216   380
21-24 months   IRC              INDIA          0             164   380
21-24 months   MAL-ED           SOUTH AFRICA   1               1     1
21-24 months   MAL-ED           SOUTH AFRICA   0               0     1
21-24 months   NIH-Crypto       BANGLADESH     1             186   395
21-24 months   NIH-Crypto       BANGLADESH     0             209   395
21-24 months   PROVIDE          BANGLADESH     1             396   485
21-24 months   PROVIDE          BANGLADESH     0              89   485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA

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




# Results Detail

## Results Plots
![](/tmp/bacd1757-5dcc-4ff3-aa18-1b094ada6137/e03d6596-bf8c-4439-b266-ce34a089ae9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bacd1757-5dcc-4ff3-aa18-1b094ada6137/e03d6596-bf8c-4439-b266-ce34a089ae9d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bacd1757-5dcc-4ff3-aa18-1b094ada6137/e03d6596-bf8c-4439-b266-ce34a089ae9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                0.7657185   0.7313513   0.8000857
0-3 months     CMC-V-BCS-2002   INDIA        0                    NA                0.7313179   0.6965001   0.7661357
0-3 months     GMS-Nepal        NEPAL        1                    NA                0.8517935   0.7801961   0.9233909
0-3 months     GMS-Nepal        NEPAL        0                    NA                0.8221249   0.8038873   0.8403626
0-3 months     IRC              INDIA        1                    NA                0.7619392   0.7336599   0.7902186
0-3 months     IRC              INDIA        0                    NA                0.7628757   0.7299955   0.7957560
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                0.8712119   0.8434394   0.8989844
0-3 months     NIH-Crypto       BANGLADESH   0                    NA                0.8820579   0.8428692   0.9212465
0-3 months     PROVIDE          BANGLADESH   1                    NA                0.9069416   0.8892030   0.9246801
0-3 months     PROVIDE          BANGLADESH   0                    NA                0.8576045   0.8126504   0.9025585
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                0.4935068   0.4588051   0.5282085
3-6 months     CMC-V-BCS-2002   INDIA        0                    NA                0.4583396   0.4364833   0.4801960
3-6 months     GMS-Nepal        NEPAL        1                    NA                0.3977899   0.3730672   0.4225126
3-6 months     GMS-Nepal        NEPAL        0                    NA                0.4950234   0.4799980   0.5100489
3-6 months     IRC              INDIA        1                    NA                0.4734196   0.4478309   0.4990083
3-6 months     IRC              INDIA        0                    NA                0.4565019   0.4278266   0.4851772
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                0.4961744   0.4774617   0.5148871
3-6 months     NIH-Crypto       BANGLADESH   0                    NA                0.4857422   0.4586658   0.5128186
3-6 months     PROVIDE          BANGLADESH   1                    NA                0.4982575   0.4830776   0.5134373
3-6 months     PROVIDE          BANGLADESH   0                    NA                0.4502241   0.4245349   0.4759133
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                0.2647471   0.2387924   0.2907018
6-9 months     CMC-V-BCS-2002   INDIA        0                    NA                0.2583733   0.2370911   0.2796556
6-9 months     GMS-Nepal        NEPAL        1                    NA                0.2373516   0.2071781   0.2675251
6-9 months     GMS-Nepal        NEPAL        0                    NA                0.1884564   0.1750948   0.2018179
6-9 months     IRC              INDIA        1                    NA                0.2699683   0.2485210   0.2914155
6-9 months     IRC              INDIA        0                    NA                0.2619893   0.2385483   0.2854303
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                0.2695116   0.2505253   0.2884979
6-9 months     NIH-Crypto       BANGLADESH   0                    NA                0.2913870   0.2626839   0.3200902
6-9 months     PROVIDE          BANGLADESH   1                    NA                0.2523501   0.2383903   0.2663099
6-9 months     PROVIDE          BANGLADESH   0                    NA                0.2388174   0.2135015   0.2641333
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                0.2331709   0.2056182   0.2607235
9-12 months    CMC-V-BCS-2002   INDIA        0                    NA                0.1954120   0.1705725   0.2202515
9-12 months    GMS-Nepal        NEPAL        1                    NA                0.1404390   0.0774489   0.2034290
9-12 months    GMS-Nepal        NEPAL        0                    NA                0.1395699   0.1259592   0.1531806
9-12 months    IRC              INDIA        1                    NA                0.2119333   0.1908324   0.2330342
9-12 months    IRC              INDIA        0                    NA                0.2226698   0.1999876   0.2453520
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                0.1999515   0.1833648   0.2165381
9-12 months    NIH-Crypto       BANGLADESH   0                    NA                0.2175367   0.1882024   0.2468710
9-12 months    PROVIDE          BANGLADESH   1                    NA                0.1789699   0.1682466   0.1896933
9-12 months    PROVIDE          BANGLADESH   0                    NA                0.1758459   0.1586217   0.1930701
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1621418   0.1400812   0.1842024
12-15 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1445437   0.1245795   0.1645079
12-15 months   GMS-Nepal        NEPAL        1                    NA                0.2124379   0.1407820   0.2840939
12-15 months   GMS-Nepal        NEPAL        0                    NA                0.1754264   0.1615923   0.1892604
12-15 months   IRC              INDIA        1                    NA                0.1907755   0.1728192   0.2087319
12-15 months   IRC              INDIA        0                    NA                0.1630554   0.1440460   0.1820649
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                0.1878480   0.1682934   0.2074027
12-15 months   NIH-Crypto       BANGLADESH   0                    NA                0.1678755   0.1348133   0.2009376
12-15 months   PROVIDE          BANGLADESH   1                    NA                0.1846459   0.1715142   0.1977776
12-15 months   PROVIDE          BANGLADESH   0                    NA                0.1567395   0.1298137   0.1836654
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1741424   0.1502150   0.1980698
15-18 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1370356   0.1191434   0.1549277
15-18 months   GMS-Nepal        NEPAL        1                    NA                0.2159802   0.1441626   0.2877979
15-18 months   GMS-Nepal        NEPAL        0                    NA                0.2374486   0.2212279   0.2536693
15-18 months   IRC              INDIA        1                    NA                0.1635598   0.1450202   0.1820995
15-18 months   IRC              INDIA        0                    NA                0.1540708   0.1294123   0.1787293
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                0.1517259   0.1282772   0.1751746
15-18 months   NIH-Crypto       BANGLADESH   0                    NA                0.1754266   0.1546026   0.1962505
15-18 months   PROVIDE          BANGLADESH   1                    NA                0.1552575   0.1421574   0.1683575
15-18 months   PROVIDE          BANGLADESH   0                    NA                0.1618561   0.1348219   0.1888904
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1329157   0.1062273   0.1596041
18-21 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1387787   0.1214203   0.1561371
18-21 months   GMS-Nepal        NEPAL        1                    NA                0.1069112   0.0173514   0.1964710
18-21 months   GMS-Nepal        NEPAL        0                    NA                0.1405466   0.1237035   0.1573898
18-21 months   IRC              INDIA        1                    NA                0.1633328   0.1445910   0.1820746
18-21 months   IRC              INDIA        0                    NA                0.1516385   0.1327087   0.1705683
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                0.1513483   0.1261235   0.1765731
18-21 months   NIH-Crypto       BANGLADESH   0                    NA                0.1420808   0.1115668   0.1725948
18-21 months   PROVIDE          BANGLADESH   1                    NA                0.1315527   0.1184839   0.1446215
18-21 months   PROVIDE          BANGLADESH   0                    NA                0.1384906   0.1158742   0.1611070
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.1468782   0.1259760   0.1677803
21-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.1426226   0.1227402   0.1625049
21-24 months   IRC              INDIA        1                    NA                0.1739708   0.1548685   0.1930731
21-24 months   IRC              INDIA        0                    NA                0.1811158   0.1594933   0.2027383
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.1834944   0.1519602   0.2150286
21-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.1990229   0.1647424   0.2333033
21-24 months   PROVIDE          BANGLADESH   1                    NA                0.1419412   0.1293227   0.1545598
21-24 months   PROVIDE          BANGLADESH   0                    NA                0.1403961   0.1124434   0.1683487


### Parameter: E(Y)


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     GMS-Nepal        NEPAL        NA                   NA                0.8225764   0.8047018   0.8404511
0-3 months     IRC              INDIA        NA                   NA                0.7669350   0.7473009   0.7865692
0-3 months     NIH-Crypto       BANGLADESH   NA                   NA                0.8901037   0.8738687   0.9063387
0-3 months     PROVIDE          BANGLADESH   NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CMC-V-BCS-2002   INDIA        NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     GMS-Nepal        NEPAL        NA                   NA                0.4936475   0.4789438   0.5083512
3-6 months     IRC              INDIA        NA                   NA                0.4640137   0.4462252   0.4818022
3-6 months     NIH-Crypto       BANGLADESH   NA                   NA                0.5011716   0.4886950   0.5136482
3-6 months     PROVIDE          BANGLADESH   NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CMC-V-BCS-2002   INDIA        NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     GMS-Nepal        NEPAL        NA                   NA                0.1893682   0.1763037   0.2024326
6-9 months     IRC              INDIA        NA                   NA                0.2625992   0.2484830   0.2767153
6-9 months     NIH-Crypto       BANGLADESH   NA                   NA                0.2799276   0.2681500   0.2917053
6-9 months     PROVIDE          BANGLADESH   NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    GMS-Nepal        NEPAL        NA                   NA                0.1395867   0.1262232   0.1529503
9-12 months    IRC              INDIA        NA                   NA                0.2148825   0.2005353   0.2292297
9-12 months    NIH-Crypto       BANGLADESH   NA                   NA                0.1997882   0.1879938   0.2115826
9-12 months    PROVIDE          BANGLADESH   NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   GMS-Nepal        NEPAL        NA                   NA                0.1761486   0.1625329   0.1897642
12-15 months   IRC              INDIA        NA                   NA                0.1807123   0.1677267   0.1936978
12-15 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1634289   0.1511149   0.1757429
12-15 months   PROVIDE          BANGLADESH   NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   GMS-Nepal        NEPAL        NA                   NA                0.2370510   0.2211319   0.2529701
15-18 months   IRC              INDIA        NA                   NA                0.1621526   0.1485252   0.1757800
15-18 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1636945   0.1517037   0.1756852
15-18 months   PROVIDE          BANGLADESH   NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   GMS-Nepal        NEPAL        NA                   NA                0.1399681   0.1233886   0.1565477
18-21 months   IRC              INDIA        NA                   NA                0.1576598   0.1441337   0.1711860
18-21 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1460095   0.1336664   0.1583525
18-21 months   PROVIDE          BANGLADESH   NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   IRC              INDIA        NA                   NA                0.1775274   0.1635028   0.1915520
21-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.1808389   0.1670473   0.1946304
21-24 months   PROVIDE          BANGLADESH   NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0344006   -0.0831797    0.0143785
0-3 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL        0                    1                 -0.0296686   -0.1035523    0.0442151
0-3 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA        0                    1                  0.0009365   -0.0424327    0.0443057
0-3 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH   0                    1                  0.0108460   -0.0371989    0.0588909
0-3 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH   0                    1                 -0.0493371   -0.0977200   -0.0009542
3-6 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0351671   -0.0761064    0.0057721
3-6 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL        0                    1                  0.0972335    0.0683030    0.1261641
3-6 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA        0                    1                 -0.0169177   -0.0551923    0.0213569
3-6 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH   0                    1                 -0.0104322   -0.0434970    0.0226326
3-6 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH   0                    1                 -0.0480333   -0.0780510   -0.0180157
6-9 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0063738   -0.0399619    0.0272143
6-9 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL        0                    1                 -0.0488953   -0.0818949   -0.0158957
6-9 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA        0                    1                 -0.0079790   -0.0403219    0.0243640
6-9 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH   0                    1                  0.0218755   -0.0125637    0.0563146
6-9 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH   0                    1                 -0.0135327   -0.0423782    0.0153129
9-12 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.0377589   -0.0749673   -0.0005505
9-12 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL        0                    1                 -0.0008691   -0.0653129    0.0635747
9-12 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA        0                    1                  0.0107364   -0.0203684    0.0418413
9-12 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH   0                    1                  0.0175852   -0.0159628    0.0511332
9-12 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH   0                    1                 -0.0031240   -0.0234144    0.0171663
12-15 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0175981   -0.0472713    0.0120750
12-15 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL        0                    1                 -0.0370116   -0.1099908    0.0359676
12-15 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA        0                    1                 -0.0277201   -0.0539248   -0.0015154
12-15 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0199726   -0.0585952    0.0186501
12-15 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH   0                    1                 -0.0279064   -0.0579277    0.0021149
15-18 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0371069   -0.0670249   -0.0071888
15-18 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL        0                    1                  0.0214684   -0.0521583    0.0950951
15-18 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA        0                    1                 -0.0094890   -0.0404769    0.0214989
15-18 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH   0                    1                  0.0237007   -0.0076816    0.0550830
15-18 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH   0                    1                  0.0065986   -0.0236703    0.0368676
18-21 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0058630   -0.0261789    0.0379049
18-21 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL        0                    1                  0.0336355   -0.0574944    0.1247653
18-21 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA        0                    1                 -0.0116943   -0.0384112    0.0150227
18-21 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0092675   -0.0490160    0.0304811
18-21 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH   0                    1                  0.0069379   -0.0192293    0.0331051
21-24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0042556   -0.0334138    0.0249026
21-24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA        0                    1                  0.0071450   -0.0219079    0.0361978
21-24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0155285   -0.0311558    0.0622128
21-24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH   0                    1                 -0.0015452   -0.0322968    0.0292065


### Parameter: PAR


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0189626   -0.0465714    0.0086462
0-3 months     GMS-Nepal        NEPAL        1                    NA                -0.0292171   -0.1012545    0.0428203
0-3 months     IRC              INDIA        1                    NA                 0.0049958   -0.0141391    0.0241306
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0188918   -0.0048208    0.0426044
0-3 months     PROVIDE          BANGLADESH   1                    NA                -0.0052944   -0.0142573    0.0036684
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0183501   -0.0433590    0.0066588
3-6 months     GMS-Nepal        NEPAL        1                    NA                 0.0958576    0.0676291    0.1240861
3-6 months     IRC              INDIA        1                    NA                -0.0094059   -0.0266100    0.0077983
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0049972   -0.0098298    0.0198241
3-6 months     PROVIDE          BANGLADESH   1                    NA                -0.0091963   -0.0146077   -0.0037849
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0051582   -0.0245729    0.0142565
6-9 months     GMS-Nepal        NEPAL        1                    NA                -0.0479835   -0.0801642   -0.0158028
6-9 months     IRC              INDIA        1                    NA                -0.0073691   -0.0228890    0.0081508
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0104161   -0.0051591    0.0259912
6-9 months     PROVIDE          BANGLADESH   1                    NA                -0.0031847   -0.0081629    0.0017934
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0208401   -0.0435035    0.0018234
9-12 months    GMS-Nepal        NEPAL        1                    NA                -0.0008522   -0.0636849    0.0619804
9-12 months    IRC              INDIA        1                    NA                 0.0029492   -0.0121425    0.0180409
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0001633   -0.0131802    0.0128536
9-12 months    PROVIDE          BANGLADESH   1                    NA                -0.0014383   -0.0053843    0.0025076
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0116750   -0.0294404    0.0060904
12-15 months   GMS-Nepal        NEPAL        1                    NA                -0.0362894   -0.1074458    0.0348670
12-15 months   IRC              INDIA        1                    NA                -0.0100633   -0.0221454    0.0020188
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0244191   -0.0412585   -0.0075797
12-15 months   PROVIDE          BANGLADESH   1                    NA                -0.0046136   -0.0097808    0.0005537
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0219589   -0.0396303   -0.0042875
15-18 months   GMS-Nepal        NEPAL        1                    NA                 0.0210708   -0.0507157    0.0928573
15-18 months   IRC              INDIA        1                    NA                -0.0014072   -0.0141742    0.0113597
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0119686   -0.0077405    0.0316776
15-18 months   PROVIDE          BANGLADESH   1                    NA                 0.0010940   -0.0040566    0.0062445
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0023170   -0.0170359    0.0216699
18-21 months   GMS-Nepal        NEPAL        1                    NA                 0.0330570   -0.0557956    0.1219096
18-21 months   IRC              INDIA        1                    NA                -0.0056730   -0.0175594    0.0062134
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0053388   -0.0283212    0.0176436
18-21 months   PROVIDE          BANGLADESH   1                    NA                 0.0009355   -0.0041311    0.0060021
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0015709   -0.0157790    0.0189208
21-24 months   IRC              INDIA        1                    NA                 0.0035565   -0.0093845    0.0164976
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0026555   -0.0300472    0.0247362
21-24 months   PROVIDE          BANGLADESH   1                    NA                 0.0000292   -0.0055493    0.0056078

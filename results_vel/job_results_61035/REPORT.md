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

**Outcome Variable:** y_rate_haz

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
0-3 months     CMC-V-BCS-2002   INDIA          1              40    88
0-3 months     CMC-V-BCS-2002   INDIA          0              48    88
0-3 months     GMS-Nepal        NEPAL          1               6   460
0-3 months     GMS-Nepal        NEPAL          0             454   460
0-3 months     IRC              INDIA          1             212   369
0-3 months     IRC              INDIA          0             157   369
0-3 months     MAL-ED           PERU           1               1     1
0-3 months     MAL-ED           PERU           0               0     1
0-3 months     MAL-ED           SOUTH AFRICA   1               1     2
0-3 months     MAL-ED           SOUTH AFRICA   0               1     2
0-3 months     NIH-Crypto       BANGLADESH     1             334   547
0-3 months     NIH-Crypto       BANGLADESH     0             213   547
0-3 months     PROVIDE          BANGLADESH     1             529   640
0-3 months     PROVIDE          BANGLADESH     0             111   640
3-6 months     CMC-V-BCS-2002   INDIA          1             133   307
3-6 months     CMC-V-BCS-2002   INDIA          0             174   307
3-6 months     GMS-Nepal        NEPAL          1               6   424
3-6 months     GMS-Nepal        NEPAL          0             418   424
3-6 months     IRC              INDIA          1             224   390
3-6 months     IRC              INDIA          0             166   390
3-6 months     MAL-ED           SOUTH AFRICA   1               1     1
3-6 months     MAL-ED           SOUTH AFRICA   0               0     1
3-6 months     NIH-Crypto       BANGLADESH     1             315   527
3-6 months     NIH-Crypto       BANGLADESH     0             212   527
3-6 months     PROVIDE          BANGLADESH     1             492   598
3-6 months     PROVIDE          BANGLADESH     0             106   598
6-9 months     CMC-V-BCS-2002   INDIA          1             136   313
6-9 months     CMC-V-BCS-2002   INDIA          0             177   313
6-9 months     GMS-Nepal        NEPAL          1               8   433
6-9 months     GMS-Nepal        NEPAL          0             425   433
6-9 months     IRC              INDIA          1             230   398
6-9 months     IRC              INDIA          0             168   398
6-9 months     MAL-ED           SOUTH AFRICA   1               1     1
6-9 months     MAL-ED           SOUTH AFRICA   0               0     1
6-9 months     NIH-Crypto       BANGLADESH     1             311   525
6-9 months     NIH-Crypto       BANGLADESH     0             214   525
6-9 months     PROVIDE          BANGLADESH     1             462   565
6-9 months     PROVIDE          BANGLADESH     0             103   565
9-12 months    CMC-V-BCS-2002   INDIA          1             132   317
9-12 months    CMC-V-BCS-2002   INDIA          0             185   317
9-12 months    GMS-Nepal        NEPAL          1               8   424
9-12 months    GMS-Nepal        NEPAL          0             416   424
9-12 months    IRC              INDIA          1             227   391
9-12 months    IRC              INDIA          0             164   391
9-12 months    MAL-ED           SOUTH AFRICA   1               1     1
9-12 months    MAL-ED           SOUTH AFRICA   0               0     1
9-12 months    NIH-Crypto       BANGLADESH     1             304   518
9-12 months    NIH-Crypto       BANGLADESH     0             214   518
9-12 months    PROVIDE          BANGLADESH     1             464   566
9-12 months    PROVIDE          BANGLADESH     0             102   566
12-15 months   CMC-V-BCS-2002   INDIA          1             136   329
12-15 months   CMC-V-BCS-2002   INDIA          0             193   329
12-15 months   GMS-Nepal        NEPAL          1               8   423
12-15 months   GMS-Nepal        NEPAL          0             415   423
12-15 months   IRC              INDIA          1             220   380
12-15 months   IRC              INDIA          0             160   380
12-15 months   MAL-ED           SOUTH AFRICA   1               1     1
12-15 months   MAL-ED           SOUTH AFRICA   0               0     1
12-15 months   NIH-Crypto       BANGLADESH     1             295   507
12-15 months   NIH-Crypto       BANGLADESH     0             212   507
12-15 months   PROVIDE          BANGLADESH     1             441   532
12-15 months   PROVIDE          BANGLADESH     0              91   532
15-18 months   CMC-V-BCS-2002   INDIA          1             135   321
15-18 months   CMC-V-BCS-2002   INDIA          0             186   321
15-18 months   GMS-Nepal        NEPAL          1               8   434
15-18 months   GMS-Nepal        NEPAL          0             426   434
15-18 months   IRC              INDIA          1             217   374
15-18 months   IRC              INDIA          0             157   374
15-18 months   MAL-ED           SOUTH AFRICA   1               1     1
15-18 months   MAL-ED           SOUTH AFRICA   0               0     1
15-18 months   NIH-Crypto       BANGLADESH     1             256   466
15-18 months   NIH-Crypto       BANGLADESH     0             210   466
15-18 months   PROVIDE          BANGLADESH     1             438   528
15-18 months   PROVIDE          BANGLADESH     0              90   528
18-21 months   CMC-V-BCS-2002   INDIA          1             127   305
18-21 months   CMC-V-BCS-2002   INDIA          0             178   305
18-21 months   GMS-Nepal        NEPAL          1               7   406
18-21 months   GMS-Nepal        NEPAL          0             399   406
18-21 months   IRC              INDIA          1             212   371
18-21 months   IRC              INDIA          0             159   371
18-21 months   MAL-ED           SOUTH AFRICA   1               1     1
18-21 months   MAL-ED           SOUTH AFRICA   0               0     1
18-21 months   NIH-Crypto       BANGLADESH     1             222   431
18-21 months   NIH-Crypto       BANGLADESH     0             209   431
18-21 months   PROVIDE          BANGLADESH     1             441   541
18-21 months   PROVIDE          BANGLADESH     0             100   541
21-24 months   CMC-V-BCS-2002   INDIA          1             125   308
21-24 months   CMC-V-BCS-2002   INDIA          0             183   308
21-24 months   GMS-Nepal        NEPAL          1               4   310
21-24 months   GMS-Nepal        NEPAL          0             306   310
21-24 months   IRC              INDIA          1             216   380
21-24 months   IRC              INDIA          0             164   380
21-24 months   MAL-ED           SOUTH AFRICA   1               1     1
21-24 months   MAL-ED           SOUTH AFRICA   0               0     1
21-24 months   NIH-Crypto       BANGLADESH     1             184   393
21-24 months   NIH-Crypto       BANGLADESH     0             209   393
21-24 months   PROVIDE          BANGLADESH     1             387   471
21-24 months   PROVIDE          BANGLADESH     0              84   471


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
![](/tmp/2ce54e4f-4541-4f44-9625-49c653662cee/1b594d5e-db28-45b5-a6bf-c46e367d1c4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2ce54e4f-4541-4f44-9625-49c653662cee/1b594d5e-db28-45b5-a6bf-c46e367d1c4e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2ce54e4f-4541-4f44-9625-49c653662cee/1b594d5e-db28-45b5-a6bf-c46e367d1c4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                 0.0495151   -0.1049134    0.2039436
0-3 months     CMC-V-BCS-2002   INDIA        0                    NA                -0.2004776   -0.3497273   -0.0512280
0-3 months     GMS-Nepal        NEPAL        1                    NA                 0.1731986    0.0774761    0.2689210
0-3 months     GMS-Nepal        NEPAL        0                    NA                -0.0350183   -0.0621623   -0.0078743
0-3 months     IRC              INDIA        1                    NA                -0.1876195   -0.2627530   -0.1124861
0-3 months     IRC              INDIA        0                    NA                -0.3173619   -0.4255474   -0.2091764
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                -0.2243928   -0.2587076   -0.1900780
0-3 months     NIH-Crypto       BANGLADESH   0                    NA                -0.2681385   -0.3082837   -0.2279934
0-3 months     PROVIDE          BANGLADESH   1                    NA                -0.1861491   -0.2058816   -0.1664167
0-3 months     PROVIDE          BANGLADESH   0                    NA                -0.2331365   -0.2935826   -0.1726904
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0792278   -0.1512519   -0.0072037
3-6 months     CMC-V-BCS-2002   INDIA        0                    NA                -0.1172758   -0.1823773   -0.0521742
3-6 months     GMS-Nepal        NEPAL        1                    NA                -0.3974205   -0.4687983   -0.3260427
3-6 months     GMS-Nepal        NEPAL        0                    NA                -0.1617840   -0.1819009   -0.1416670
3-6 months     IRC              INDIA        1                    NA                -0.0329602   -0.0794751    0.0135547
3-6 months     IRC              INDIA        0                    NA                -0.0713708   -0.1159305   -0.0268110
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0082879   -0.0237003    0.0402760
3-6 months     NIH-Crypto       BANGLADESH   0                    NA                 0.0712208    0.0096486    0.1327929
3-6 months     PROVIDE          BANGLADESH   1                    NA                -0.0257030   -0.0439216   -0.0074843
3-6 months     PROVIDE          BANGLADESH   0                    NA                -0.0294032   -0.0638446    0.0050382
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0814929   -0.1431395   -0.0198464
6-9 months     CMC-V-BCS-2002   INDIA        0                    NA                -0.0904592   -0.1378530   -0.0430654
6-9 months     GMS-Nepal        NEPAL        1                    NA                -0.0321023   -0.1124147    0.0482102
6-9 months     GMS-Nepal        NEPAL        0                    NA                -0.0450512   -0.0643517   -0.0257508
6-9 months     IRC              INDIA        1                    NA                -0.0232665   -0.0528250    0.0062921
6-9 months     IRC              INDIA        0                    NA                -0.0175357   -0.0474222    0.0123508
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0134751   -0.0127121    0.0396622
6-9 months     NIH-Crypto       BANGLADESH   0                    NA                -0.0379772   -0.0864783    0.0105238
6-9 months     PROVIDE          BANGLADESH   1                    NA                -0.0563494   -0.0685016   -0.0441972
6-9 months     PROVIDE          BANGLADESH   0                    NA                -0.0868031   -0.1143557   -0.0592505
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.1020634   -0.1458439   -0.0582829
9-12 months    CMC-V-BCS-2002   INDIA        0                    NA                -0.1301396   -0.1706318   -0.0896474
9-12 months    GMS-Nepal        NEPAL        1                    NA                -0.0314007   -0.0618148   -0.0009866
9-12 months    GMS-Nepal        NEPAL        0                    NA                -0.0780277   -0.0930251   -0.0630303
9-12 months    IRC              INDIA        1                    NA                -0.0451073   -0.0703997   -0.0198150
9-12 months    IRC              INDIA        0                    NA                -0.0242337   -0.0487970    0.0003296
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                -0.0455896   -0.0696010   -0.0215782
9-12 months    NIH-Crypto       BANGLADESH   0                    NA                -0.0066082   -0.0394163    0.0262000
9-12 months    PROVIDE          BANGLADESH   1                    NA                -0.0580013   -0.0703231   -0.0456795
9-12 months    PROVIDE          BANGLADESH   0                    NA                -0.0866366   -0.1129164   -0.0603568
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0606295   -0.1088377   -0.0124212
12-15 months   CMC-V-BCS-2002   INDIA        0                    NA                -0.0764773   -0.1144802   -0.0384744
12-15 months   GMS-Nepal        NEPAL        1                    NA                -0.0525575   -0.0932027   -0.0119122
12-15 months   GMS-Nepal        NEPAL        0                    NA                -0.0684343   -0.0802563   -0.0566123
12-15 months   IRC              INDIA        1                    NA                -0.0453368   -0.0696393   -0.0210344
12-15 months   IRC              INDIA        0                    NA                -0.0333271   -0.0599241   -0.0067301
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0344931   -0.0582579   -0.0107282
12-15 months   NIH-Crypto       BANGLADESH   0                    NA                -0.0342716   -0.0630475   -0.0054957
12-15 months   PROVIDE          BANGLADESH   1                    NA                -0.0386614   -0.0498864   -0.0274364
12-15 months   PROVIDE          BANGLADESH   0                    NA                -0.0511673   -0.0770242   -0.0253105
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0594510   -0.1032434   -0.0156587
15-18 months   CMC-V-BCS-2002   INDIA        0                    NA                -0.0767210   -0.1061985   -0.0472435
15-18 months   GMS-Nepal        NEPAL        1                    NA                -0.1358700   -0.1700189   -0.1017211
15-18 months   GMS-Nepal        NEPAL        0                    NA                -0.0662360   -0.0800615   -0.0524104
15-18 months   IRC              INDIA        1                    NA                -0.0441186   -0.0672297   -0.0210075
15-18 months   IRC              INDIA        0                    NA                -0.0348626   -0.0553915   -0.0143337
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0239235   -0.0460219   -0.0018250
15-18 months   NIH-Crypto       BANGLADESH   0                    NA                -0.0145079   -0.0402851    0.0112693
15-18 months   PROVIDE          BANGLADESH   1                    NA                -0.0380052   -0.0477060   -0.0283045
15-18 months   PROVIDE          BANGLADESH   0                    NA                -0.0364980   -0.0570178   -0.0159782
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0597920   -0.0980842   -0.0214997
18-21 months   CMC-V-BCS-2002   INDIA        0                    NA                -0.0414721   -0.0703340   -0.0126102
18-21 months   GMS-Nepal        NEPAL        1                    NA                -0.0084094   -0.0345648    0.0177460
18-21 months   GMS-Nepal        NEPAL        0                    NA                 0.0169791    0.0040007    0.0299576
18-21 months   IRC              INDIA        1                    NA                -0.0348344   -0.0539049   -0.0157639
18-21 months   IRC              INDIA        0                    NA                -0.0457678   -0.0686605   -0.0228751
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0243709   -0.0457935   -0.0029483
18-21 months   NIH-Crypto       BANGLADESH   0                    NA                -0.0121507   -0.0323302    0.0080288
18-21 months   PROVIDE          BANGLADESH   1                    NA                -0.0120547   -0.0208907   -0.0032187
18-21 months   PROVIDE          BANGLADESH   0                    NA                 0.0008913   -0.0216365    0.0234192
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0046586   -0.0319781    0.0412952
21-24 months   CMC-V-BCS-2002   INDIA        0                    NA                 0.0239374    0.0002749    0.0475998
21-24 months   IRC              INDIA        1                    NA                -0.0121643   -0.0327677    0.0084392
21-24 months   IRC              INDIA        0                    NA                -0.0133266   -0.0346253    0.0079720
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0617337    0.0428988    0.0805685
21-24 months   NIH-Crypto       BANGLADESH   0                    NA                 0.0713177    0.0542024    0.0884330
21-24 months   PROVIDE          BANGLADESH   1                    NA                 0.0456077    0.0360363    0.0551791
21-24 months   PROVIDE          BANGLADESH   0                    NA                 0.0539373    0.0341137    0.0737609


### Parameter: E(Y)


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     GMS-Nepal        NEPAL        NA                   NA                -0.0323024   -0.0589635   -0.0056413
0-3 months     IRC              INDIA        NA                   NA                -0.2520229   -0.3078384   -0.1962074
0-3 months     NIH-Crypto       BANGLADESH   NA                   NA                -0.2248633   -0.2444011   -0.2053256
0-3 months     PROVIDE          BANGLADESH   NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     CMC-V-BCS-2002   INDIA        NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     GMS-Nepal        NEPAL        NA                   NA                -0.1651184   -0.1849912   -0.1452456
3-6 months     IRC              INDIA        NA                   NA                -0.0517747   -0.0822588   -0.0212906
3-6 months     NIH-Crypto       BANGLADESH   NA                   NA                 0.0302642    0.0105575    0.0499710
3-6 months     PROVIDE          BANGLADESH   NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     CMC-V-BCS-2002   INDIA        NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     GMS-Nepal        NEPAL        NA                   NA                -0.0448120   -0.0637374   -0.0258865
6-9 months     IRC              INDIA        NA                   NA                -0.0191453   -0.0403295    0.0020389
6-9 months     NIH-Crypto       BANGLADESH   NA                   NA                -0.0219170   -0.0369369   -0.0068971
6-9 months     PROVIDE          BANGLADESH   NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    CMC-V-BCS-2002   INDIA        NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    GMS-Nepal        NEPAL        NA                   NA                -0.0771479   -0.0918027   -0.0624932
9-12 months    IRC              INDIA        NA                   NA                -0.0361183   -0.0532692   -0.0189675
9-12 months    NIH-Crypto       BANGLADESH   NA                   NA                -0.0352217   -0.0477064   -0.0227371
9-12 months    PROVIDE          BANGLADESH   NA                   NA                -0.0630470   -0.0740183   -0.0520757
12-15 months   CMC-V-BCS-2002   INDIA        NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   GMS-Nepal        NEPAL        NA                   NA                -0.0681340   -0.0797070   -0.0565610
12-15 months   IRC              INDIA        NA                   NA                -0.0446142   -0.0616724   -0.0275560
12-15 months   NIH-Crypto       BANGLADESH   NA                   NA                -0.0365229   -0.0475564   -0.0254894
12-15 months   PROVIDE          BANGLADESH   NA                   NA                -0.0409107   -0.0510053   -0.0308161
15-18 months   CMC-V-BCS-2002   INDIA        NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   GMS-Nepal        NEPAL        NA                   NA                -0.0675196   -0.0810553   -0.0539839
15-18 months   IRC              INDIA        NA                   NA                -0.0367739   -0.0516890   -0.0218588
15-18 months   NIH-Crypto       BANGLADESH   NA                   NA                -0.0162904   -0.0258853   -0.0066955
15-18 months   PROVIDE          BANGLADESH   NA                   NA                -0.0376437   -0.0463882   -0.0288992
18-21 months   CMC-V-BCS-2002   INDIA        NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   GMS-Nepal        NEPAL        NA                   NA                 0.0165414    0.0038665    0.0292163
18-21 months   IRC              INDIA        NA                   NA                -0.0410011   -0.0544100   -0.0275923
18-21 months   NIH-Crypto       BANGLADESH   NA                   NA                -0.0253964   -0.0344213   -0.0163714
18-21 months   PROVIDE          BANGLADESH   NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   IRC              INDIA        NA                   NA                -0.0141818   -0.0280342   -0.0003294
21-24 months   NIH-Crypto       BANGLADESH   NA                   NA                 0.0634123    0.0544343    0.0723903
21-24 months   PROVIDE          BANGLADESH   NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.2499927   -0.4671709   -0.0328146
0-3 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL        0                    1                 -0.2082168   -0.3077134   -0.1087202
0-3 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA        0                    1                 -0.1297424   -0.2618227    0.0023380
0-3 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH   0                    1                 -0.0437457   -0.0968473    0.0093558
0-3 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH   0                    1                 -0.0469874   -0.1108422    0.0168675
3-6 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0380480   -0.1352465    0.0591506
3-6 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL        0                    1                  0.2356365    0.1614780    0.3097950
3-6 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA        0                    1                 -0.0384106   -0.1028816    0.0260604
3-6 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH   0                    1                  0.0629329   -0.0065030    0.1323688
3-6 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH   0                    1                 -0.0037003   -0.0427494    0.0353489
6-9 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0089663   -0.0866647    0.0687322
6-9 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL        0                    1                 -0.0129489   -0.0955480    0.0696501
6-9 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA        0                    1                  0.0057308   -0.0364884    0.0479499
6-9 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH   0                    1                 -0.0514523   -0.1068053    0.0039006
6-9 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH   0                    1                 -0.0304538   -0.0606480   -0.0002595
9-12 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.0280762   -0.0879018    0.0317494
9-12 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL        0                    1                 -0.0466270   -0.0805378   -0.0127163
9-12 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA        0                    1                  0.0208737   -0.0145364    0.0562837
9-12 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH   0                    1                  0.0389814   -0.0015916    0.0795545
9-12 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH   0                    1                 -0.0286353   -0.0576899    0.0004193
12-15 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0158478   -0.0773005    0.0456049
12-15 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL        0                    1                 -0.0158768   -0.0582064    0.0264528
12-15 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA        0                    1                  0.0120097   -0.0240845    0.0481040
12-15 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH   0                    1                  0.0002215   -0.0373014    0.0377443
12-15 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH   0                    1                 -0.0125060   -0.0406998    0.0156879
15-18 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0172699   -0.0710416    0.0365018
15-18 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL        0                    1                  0.0696340    0.0327926    0.1064755
15-18 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA        0                    1                  0.0092560   -0.0222006    0.0407127
15-18 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH   0                    1                  0.0094156   -0.0245575    0.0433887
15-18 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH   0                    1                  0.0015072   -0.0212077    0.0242222
18-21 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0183199   -0.0297613    0.0664011
18-21 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL        0                    1                  0.0253885   -0.0038098    0.0545869
18-21 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA        0                    1                 -0.0109334   -0.0413099    0.0194431
18-21 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH   0                    1                  0.0122203   -0.0172499    0.0416904
18-21 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH   0                    1                  0.0129460   -0.0112690    0.0371611
21-24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0192788   -0.0244709    0.0630285
21-24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA        0                    1                 -0.0011624   -0.0308356    0.0285108
21-24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0095840   -0.0159325    0.0351006
21-24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH   0                    1                  0.0083296   -0.0136442    0.0303034


### Parameter: PAR


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.1373537   -0.2655557   -0.0091517
0-3 months     GMS-Nepal        NEPAL        1                    NA                -0.2055009   -0.3025342   -0.1084677
0-3 months     IRC              INDIA        1                    NA                -0.0644034   -0.1198011   -0.0090056
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                -0.0004705   -0.0276662    0.0267252
0-3 months     PROVIDE          BANGLADESH   1                    NA                -0.0018911   -0.0118867    0.0081045
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0187337   -0.0755824    0.0381150
3-6 months     GMS-Nepal        NEPAL        1                    NA                 0.2323021    0.1599489    0.3046552
3-6 months     IRC              INDIA        1                    NA                -0.0188145   -0.0476548    0.0100257
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0219764   -0.0067017    0.0506545
3-6 months     PROVIDE          BANGLADESH   1                    NA                -0.0012595   -0.0081660    0.0056470
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0004727   -0.0482121    0.0472668
6-9 months     GMS-Nepal        NEPAL        1                    NA                -0.0127097   -0.0932439    0.0678245
6-9 months     IRC              INDIA        1                    NA                 0.0041212   -0.0143599    0.0226022
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                -0.0353921   -0.0569606   -0.0138236
6-9 months     PROVIDE          BANGLADESH   1                    NA                -0.0050770   -0.0102290    0.0000750
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0167522   -0.0528471    0.0193427
9-12 months    GMS-Nepal        NEPAL        1                    NA                -0.0457472   -0.0788158   -0.0126787
9-12 months    IRC              INDIA        1                    NA                 0.0089890   -0.0075829    0.0255609
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0103679   -0.0100896    0.0308253
9-12 months    PROVIDE          BANGLADESH   1                    NA                -0.0050457   -0.0097187   -0.0003728
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0106041   -0.0492982    0.0280900
12-15 months   GMS-Nepal        NEPAL        1                    NA                -0.0155766   -0.0568484    0.0256953
12-15 months   IRC              INDIA        1                    NA                 0.0007226   -0.0148239    0.0162692
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0020299   -0.0226931    0.0186333
12-15 months   PROVIDE          BANGLADESH   1                    NA                -0.0022493   -0.0066222    0.0021235
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0086360   -0.0411454    0.0238733
15-18 months   GMS-Nepal        NEPAL        1                    NA                 0.0683504    0.0324192    0.1042817
15-18 months   IRC              INDIA        1                    NA                 0.0073447   -0.0067418    0.0214312
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0076331   -0.0119310    0.0271971
15-18 months   PROVIDE          BANGLADESH   1                    NA                 0.0003615   -0.0035470    0.0042700
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0160262   -0.0138150    0.0458674
18-21 months   GMS-Nepal        NEPAL        1                    NA                 0.0249508   -0.0035194    0.0534210
18-21 months   IRC              INDIA        1                    NA                -0.0061667   -0.0188788    0.0065453
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0010254   -0.0200378    0.0179870
18-21 months   PROVIDE          BANGLADESH   1                    NA                 0.0011148   -0.0031326    0.0053623
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0130425   -0.0138851    0.0399702
21-24 months   IRC              INDIA        1                    NA                -0.0020176   -0.0161077    0.0120726
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0016786   -0.0147132    0.0180704
21-24 months   PROVIDE          BANGLADESH   1                    NA                 0.0006265   -0.0034328    0.0046859

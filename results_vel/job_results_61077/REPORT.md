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

**Outcome Variable:** y_rate_len

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
![](/tmp/066d97fa-4338-47ab-8a15-b53afeb5f749/6e07d2ef-7002-4b37-a64e-c0c933c7f637/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/066d97fa-4338-47ab-8a15-b53afeb5f749/6e07d2ef-7002-4b37-a64e-c0c933c7f637/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/066d97fa-4338-47ab-8a15-b53afeb5f749/6e07d2ef-7002-4b37-a64e-c0c933c7f637/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                3.7597571   3.4511692   4.0683451
0-3 months     CMC-V-BCS-2002   INDIA        0                    NA                3.2112151   2.9204323   3.5019978
0-3 months     GMS-Nepal        NEPAL        1                    NA                4.0267398   3.8145010   4.2389786
0-3 months     GMS-Nepal        NEPAL        0                    NA                3.5890576   3.5338399   3.6442753
0-3 months     IRC              INDIA        1                    NA                3.2885614   3.1318918   3.4452310
0-3 months     IRC              INDIA        0                    NA                3.0118414   2.8248679   3.1988149
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                3.1486270   3.0803447   3.2169093
0-3 months     NIH-Crypto       BANGLADESH   0                    NA                3.0180628   2.9433788   3.0927468
0-3 months     PROVIDE          BANGLADESH   1                    NA                3.2687204   3.2264967   3.3109440
0-3 months     PROVIDE          BANGLADESH   0                    NA                3.1853817   3.0599631   3.3108002
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                1.8206878   1.6671967   1.9741790
3-6 months     CMC-V-BCS-2002   INDIA        0                    NA                1.7704439   1.6282621   1.9126258
3-6 months     GMS-Nepal        NEPAL        1                    NA                1.2139650   1.0591458   1.3687842
3-6 months     GMS-Nepal        NEPAL        0                    NA                1.7068916   1.6642904   1.7494928
3-6 months     IRC              INDIA        1                    NA                1.8877753   1.7893688   1.9861817
3-6 months     IRC              INDIA        0                    NA                1.8515790   1.7593205   1.9438376
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                1.9799416   1.9050183   2.0548650
3-6 months     NIH-Crypto       BANGLADESH   0                    NA                2.0896414   1.9551754   2.2241073
3-6 months     PROVIDE          BANGLADESH   1                    NA                1.9714753   1.9325492   2.0104015
3-6 months     PROVIDE          BANGLADESH   0                    NA                1.9408391   1.8643604   2.0173178
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                1.2452067   1.0967370   1.3936763
6-9 months     CMC-V-BCS-2002   INDIA        0                    NA                1.1965284   1.0972804   1.2957765
6-9 months     GMS-Nepal        NEPAL        1                    NA                1.3515781   1.1725495   1.5306067
6-9 months     GMS-Nepal        NEPAL        0                    NA                1.3140376   1.2691138   1.3589614
6-9 months     IRC              INDIA        1                    NA                1.3609263   1.2946638   1.4271889
6-9 months     IRC              INDIA        0                    NA                1.3765655   1.3056927   1.4474382
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                1.4041426   1.3320349   1.4762502
6-9 months     NIH-Crypto       BANGLADESH   0                    NA                1.2712032   1.1659002   1.3765062
6-9 months     PROVIDE          BANGLADESH   1                    NA                1.2988546   1.2707408   1.3269684
6-9 months     PROVIDE          BANGLADESH   0                    NA                1.2104205   1.1450884   1.2757526
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                0.9701025   0.8642345   1.0759706
9-12 months    CMC-V-BCS-2002   INDIA        0                    NA                0.8541747   0.7635143   0.9448351
9-12 months    GMS-Nepal        NEPAL        1                    NA                1.1461261   1.0720811   1.2201711
9-12 months    GMS-Nepal        NEPAL        0                    NA                1.0011032   0.9653508   1.0368557
9-12 months    IRC              INDIA        1                    NA                1.1098601   1.0535185   1.1662018
9-12 months    IRC              INDIA        0                    NA                1.1392436   1.0793182   1.1991689
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                1.0982074   1.0424780   1.1539368
9-12 months    NIH-Crypto       BANGLADESH   0                    NA                1.1780213   1.0977003   1.2583423
9-12 months    PROVIDE          BANGLADESH   1                    NA                1.0659188   1.0355916   1.0962459
9-12 months    PROVIDE          BANGLADESH   0                    NA                0.9815500   0.9106310   1.0524689
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                0.8755870   0.7617755   0.9893986
12-15 months   CMC-V-BCS-2002   INDIA        0                    NA                0.8324681   0.7393582   0.9255781
12-15 months   GMS-Nepal        NEPAL        1                    NA                0.9345104   0.8314399   1.0375809
12-15 months   GMS-Nepal        NEPAL        0                    NA                0.8742379   0.8427187   0.9057571
12-15 months   IRC              INDIA        1                    NA                0.9485722   0.8926209   1.0045235
12-15 months   IRC              INDIA        0                    NA                0.9844513   0.9131064   1.0557962
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                0.9928269   0.9312863   1.0543675
12-15 months   NIH-Crypto       BANGLADESH   0                    NA                0.9831781   0.9144834   1.0518727
12-15 months   PROVIDE          BANGLADESH   1                    NA                0.9712361   0.9422522   1.0002199
12-15 months   PROVIDE          BANGLADESH   0                    NA                0.9040282   0.8397780   0.9682785
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                0.7482633   0.6387123   0.8578143
15-18 months   CMC-V-BCS-2002   INDIA        0                    NA                0.7092605   0.6297007   0.7888202
15-18 months   GMS-Nepal        NEPAL        1                    NA                0.5938125   0.5084972   0.6791279
15-18 months   GMS-Nepal        NEPAL        0                    NA                0.7611989   0.7229049   0.7994929
15-18 months   IRC              INDIA        1                    NA                0.8567375   0.7966939   0.9167811
15-18 months   IRC              INDIA        0                    NA                0.8686626   0.8089656   0.9283595
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                0.8946778   0.8338978   0.9554577
15-18 months   NIH-Crypto       BANGLADESH   0                    NA                0.9255379   0.8546273   0.9964484
15-18 months   PROVIDE          BANGLADESH   1                    NA                0.8609707   0.8343341   0.8876072
15-18 months   PROVIDE          BANGLADESH   0                    NA                0.8344414   0.7766283   0.8922545
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                0.6691096   0.5637761   0.7744431
18-21 months   CMC-V-BCS-2002   INDIA        0                    NA                0.7002143   0.6164728   0.7839558
18-21 months   GMS-Nepal        NEPAL        1                    NA                0.8652948   0.7802558   0.9503338
18-21 months   GMS-Nepal        NEPAL        0                    NA                0.9075162   0.8701345   0.9448979
18-21 months   IRC              INDIA        1                    NA                0.7850693   0.7282631   0.8418756
18-21 months   IRC              INDIA        0                    NA                0.7259946   0.6596257   0.7923635
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                0.8028543   0.7378446   0.8678639
18-21 months   NIH-Crypto       BANGLADESH   0                    NA                0.8378458   0.7827684   0.8929233
18-21 months   PROVIDE          BANGLADESH   1                    NA                0.8433991   0.8174119   0.8693863
18-21 months   PROVIDE          BANGLADESH   0                    NA                0.8533867   0.7895453   0.9172281
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.7143127   0.5820183   0.8466072
21-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.7374989   0.6539445   0.8210532
21-24 months   IRC              INDIA        1                    NA                0.7297546   0.6702859   0.7892232
21-24 months   IRC              INDIA        0                    NA                0.6982655   0.6358597   0.7606713
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.8293577   0.7750558   0.8836597
21-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.8358453   0.7875571   0.8841334
21-24 months   PROVIDE          BANGLADESH   1                    NA                0.7676677   0.7399351   0.7954003
21-24 months   PROVIDE          BANGLADESH   0                    NA                0.7570699   0.6937016   0.8204382


### Parameter: E(Y)


agecat         studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA        NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     GMS-Nepal        NEPAL        NA                   NA                3.5947665   3.5404780   3.6490550
0-3 months     IRC              INDIA        NA                   NA                3.1459932   3.0340880   3.2578984
0-3 months     NIH-Crypto       BANGLADESH   NA                   NA                3.1373236   3.0972506   3.1773966
0-3 months     PROVIDE          BANGLADESH   NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CMC-V-BCS-2002   INDIA        NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     GMS-Nepal        NEPAL        NA                   NA                1.6999162   1.6578328   1.7419997
3-6 months     IRC              INDIA        NA                   NA                1.8807708   1.8161067   1.9454349
3-6 months     NIH-Crypto       BANGLADESH   NA                   NA                2.0125524   1.9699507   2.0551541
3-6 months     PROVIDE          BANGLADESH   NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CMC-V-BCS-2002   INDIA        NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     GMS-Nepal        NEPAL        NA                   NA                1.3147312   1.2706998   1.3587625
6-9 months     IRC              INDIA        NA                   NA                1.3656516   1.3178011   1.4135021
6-9 months     NIH-Crypto       BANGLADESH   NA                   NA                1.3527759   1.3181375   1.3874142
6-9 months     PROVIDE          BANGLADESH   NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    GMS-Nepal        NEPAL        NA                   NA                1.0038395   0.9688811   1.0387978
9-12 months    IRC              INDIA        NA                   NA                1.1229343   1.0831083   1.1627603
9-12 months    NIH-Crypto       BANGLADESH   NA                   NA                1.1243367   1.0942919   1.1543816
9-12 months    PROVIDE          BANGLADESH   NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   GMS-Nepal        NEPAL        NA                   NA                0.8753778   0.8445288   0.9062268
12-15 months   IRC              INDIA        NA                   NA                0.9574323   0.9150475   0.9998172
12-15 months   NIH-Crypto       BANGLADESH   NA                   NA                0.9797232   0.9513105   1.0081359
12-15 months   PROVIDE          BANGLADESH   NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   GMS-Nepal        NEPAL        NA                   NA                0.7581134   0.7206558   0.7955710
15-18 months   IRC              INDIA        NA                   NA                0.8635602   0.8235728   0.9035477
15-18 months   NIH-Crypto       BANGLADESH   NA                   NA                0.9239169   0.8976277   0.9502061
15-18 months   PROVIDE          BANGLADESH   NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   GMS-Nepal        NEPAL        NA                   NA                0.9067882   0.8702752   0.9433012
18-21 months   IRC              INDIA        NA                   NA                0.7567726   0.7181843   0.7953609
18-21 months   NIH-Crypto       BANGLADESH   NA                   NA                0.8098412   0.7838581   0.8358244
18-21 months   PROVIDE          BANGLADESH   NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   IRC              INDIA        NA                   NA                0.7066493   0.6649098   0.7483888
21-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.8147508   0.7880257   0.8414758
21-24 months   PROVIDE          BANGLADESH   NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.5485421   -0.9751004   -0.1219837
0-3 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL        0                    1                 -0.4376822   -0.6569863   -0.2183781
0-3 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA        0                    1                 -0.2767200   -0.5217180   -0.0317219
0-3 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH   0                    1                 -0.1305642   -0.2324525   -0.0286759
0-3 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH   0                    1                 -0.0833387   -0.2157058    0.0490284
3-6 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0502439   -0.2598050    0.1593172
3-6 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL        0                    1                  0.4929266    0.3323531    0.6535001
3-6 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA        0                    1                 -0.0361962   -0.1717581    0.0993657
3-6 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH   0                    1                  0.1096997   -0.0443422    0.2637416
3-6 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH   0                    1                 -0.0306363   -0.1165020    0.0552295
6-9 months     CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA        0                    1                 -0.0486782   -0.2274409    0.1300845
6-9 months     GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL        0                    1                 -0.0375405   -0.2221194    0.1470385
6-9 months     IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA        0                    1                  0.0156391   -0.0818913    0.1131696
6-9 months     NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH   0                    1                 -0.1329394   -0.2610378   -0.0048409
6-9 months     PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH   0                    1                 -0.0884341   -0.1595141   -0.0173540
9-12 months    CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA        0                    1                 -0.1159278   -0.2559688    0.0241131
9-12 months    GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL        0                    1                 -0.1450229   -0.2272476   -0.0627982
9-12 months    IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA        0                    1                  0.0293834   -0.0531556    0.1119224
9-12 months    NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH   0                    1                  0.0798139   -0.0178716    0.1774993
9-12 months    PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH   0                    1                 -0.0843688   -0.1617056   -0.0070320
12-15 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0431189   -0.1901284    0.1038906
12-15 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL        0                    1                 -0.0602725   -0.1680547    0.0475096
12-15 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA        0                    1                  0.0358791   -0.0548438    0.1266019
12-15 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH   0                    1                 -0.0096488   -0.1019799    0.0826823
12-15 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH   0                    1                 -0.0672079   -0.1376164    0.0032007
15-18 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA        0                    1                 -0.0390028   -0.1776950    0.0996893
15-18 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL        0                    1                  0.1673863    0.0738709    0.2609018
15-18 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA        0                    1                  0.0119250   -0.0733453    0.0971953
15-18 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH   0                    1                  0.0308601   -0.0627084    0.1244287
15-18 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH   0                    1                 -0.0265292   -0.0903558    0.0372973
18-21 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0311047   -0.1035519    0.1657612
18-21 months   GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL        0                    1                  0.0422214   -0.0506711    0.1351139
18-21 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA        0                    1                 -0.0590748   -0.1469703    0.0288208
18-21 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH   0                    1                  0.0349915   -0.0503006    0.1202837
18-21 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH   0                    1                  0.0099876   -0.0589754    0.0789506
21-24 months   CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA        0                    1                  0.0231861   -0.1424616    0.1888339
21-24 months   IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA        0                    1                 -0.0314891   -0.1180799    0.0551017
21-24 months   NIH-Crypto       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH   0                    1                  0.0064875   -0.0663705    0.0793455
21-24 months   PROVIDE          BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH   0                    1                 -0.0105978   -0.0797873    0.0585917


### Parameter: PAR


agecat         studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.2995696   -0.5517532   -0.0473860
0-3 months     GMS-Nepal        NEPAL        1                    NA                -0.4319733   -0.6458430   -0.2181035
0-3 months     IRC              INDIA        1                    NA                -0.1425682   -0.2582745   -0.0268618
0-3 months     NIH-Crypto       BANGLADESH   1                    NA                -0.0113034   -0.0650666    0.0424598
0-3 months     PROVIDE          BANGLADESH   1                    NA                -0.0110393   -0.0319779    0.0098992
3-6 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0168998   -0.1395073    0.1057077
3-6 months     GMS-Nepal        NEPAL        1                    NA                 0.4859512    0.3292938    0.6426086
3-6 months     IRC              INDIA        1                    NA                -0.0070044   -0.0678546    0.0538458
3-6 months     NIH-Crypto       BANGLADESH   1                    NA                 0.0326108   -0.0347267    0.0999484
3-6 months     PROVIDE          BANGLADESH   1                    NA                -0.0057296   -0.0204725    0.0090133
6-9 months     CMC-V-BCS-2002   INDIA        1                    NA                -0.0278685   -0.1416236    0.0858866
6-9 months     GMS-Nepal        NEPAL        1                    NA                -0.0368469   -0.2168120    0.1431182
6-9 months     IRC              INDIA        1                    NA                 0.0047252   -0.0361902    0.0456407
6-9 months     NIH-Crypto       BANGLADESH   1                    NA                -0.0513667   -0.1124415    0.0097081
6-9 months     PROVIDE          BANGLADESH   1                    NA                -0.0164361   -0.0286689   -0.0042033
9-12 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0705801   -0.1570910    0.0159307
9-12 months    GMS-Nepal        NEPAL        1                    NA                -0.1422866   -0.2224777   -0.0620955
9-12 months    IRC              INDIA        1                    NA                 0.0130741   -0.0233952    0.0495435
9-12 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0261293   -0.0205825    0.0728411
9-12 months    PROVIDE          BANGLADESH   1                    NA                -0.0159438   -0.0278881   -0.0039994
12-15 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0222146   -0.1138764    0.0694472
12-15 months   GMS-Nepal        NEPAL        1                    NA                -0.0591326   -0.1642231    0.0459579
12-15 months   IRC              INDIA        1                    NA                 0.0088601   -0.0266594    0.0443796
12-15 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0131037   -0.0665663    0.0403590
12-15 months   PROVIDE          BANGLADESH   1                    NA                -0.0114860   -0.0229227   -0.0000494
15-18 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0143498   -0.0978049    0.0691054
15-18 months   GMS-Nepal        NEPAL        1                    NA                 0.1643009    0.0730987    0.2555031
15-18 months   IRC              INDIA        1                    NA                 0.0068227   -0.0295541    0.0431995
15-18 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0292392   -0.0243885    0.0828668
15-18 months   PROVIDE          BANGLADESH   1                    NA                -0.0048708   -0.0157369    0.0059952
18-21 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0308823   -0.0503004    0.1120651
18-21 months   GMS-Nepal        NEPAL        1                    NA                 0.0414934   -0.0490784    0.1320652
18-21 months   IRC              INDIA        1                    NA                -0.0282967   -0.0664109    0.0098174
18-21 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0069870   -0.0508454    0.0648193
18-21 months   PROVIDE          BANGLADESH   1                    NA                -0.0040614   -0.0168378    0.0087149
21-24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0074655   -0.1132956    0.0983645
21-24 months   IRC              INDIA        1                    NA                -0.0231053   -0.0635643    0.0173537
21-24 months   NIH-Crypto       BANGLADESH   1                    NA                -0.0146070   -0.0607892    0.0315753
21-24 months   PROVIDE          BANGLADESH   1                    NA                -0.0045287   -0.0169193    0.0078620

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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_wasted06    dead   n_cell       n
----------------  -----------------------------  --------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
EE                PAKISTAN                       0                   0      248     380
EE                PAKISTAN                       0                   1        2     380
EE                PAKISTAN                       1                   0      128     380
EE                PAKISTAN                       1                   1        2     380
GMS-Nepal         NEPAL                          0                   0      422     686
GMS-Nepal         NEPAL                          0                   1        5     686
GMS-Nepal         NEPAL                          1                   0      257     686
GMS-Nepal         NEPAL                          1                   1        2     686
iLiNS-DOSE        MALAWI                         0                   0     1675    1814
iLiNS-DOSE        MALAWI                         0                   1      110    1814
iLiNS-DOSE        MALAWI                         1                   0       25    1814
iLiNS-DOSE        MALAWI                         1                   1        4    1814
iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182
iLiNS-DYAD-M      MALAWI                         0                   1       33    1182
iLiNS-DYAD-M      MALAWI                         1                   0       53    1182
iLiNS-DYAD-M      MALAWI                         1                   1        5    1182
JiVitA-3          BANGLADESH                     0                   0    21075   26918
JiVitA-3          BANGLADESH                     0                   1      399   26918
JiVitA-3          BANGLADESH                     1                   0     5282   26918
JiVitA-3          BANGLADESH                     1                   1      162   26918
JiVitA-4          BANGLADESH                     0                   0     4521    5252
JiVitA-4          BANGLADESH                     0                   1       37    5252
JiVitA-4          BANGLADESH                     1                   0      684    5252
JiVitA-4          BANGLADESH                     1                   1       10    5252
Keneba            GAMBIA                         0                   0     1763    2480
Keneba            GAMBIA                         0                   1       33    2480
Keneba            GAMBIA                         1                   0      660    2480
Keneba            GAMBIA                         1                   1       24    2480
MAL-ED            BANGLADESH                     0                   0      201     263
MAL-ED            BANGLADESH                     0                   1        2     263
MAL-ED            BANGLADESH                     1                   0       60     263
MAL-ED            BANGLADESH                     1                   1        0     263
MAL-ED            INDIA                          0                   0      166     251
MAL-ED            INDIA                          0                   1        1     251
MAL-ED            INDIA                          1                   0       83     251
MAL-ED            INDIA                          1                   1        1     251
MAL-ED            PERU                           0                   0      289     302
MAL-ED            PERU                           0                   1        2     302
MAL-ED            PERU                           1                   0       11     302
MAL-ED            PERU                           1                   1        0     302
MAL-ED            SOUTH AFRICA                   0                   0      276     312
MAL-ED            SOUTH AFRICA                   0                   1        0     312
MAL-ED            SOUTH AFRICA                   1                   0       36     312
MAL-ED            SOUTH AFRICA                   1                   1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      244     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0       14     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
PROVIDE           BANGLADESH                     0                   0      515     700
PROVIDE           BANGLADESH                     0                   1        4     700
PROVIDE           BANGLADESH                     1                   0      181     700
PROVIDE           BANGLADESH                     1                   1        0     700
SAS-CompFeed      INDIA                          0                   0     1142    1508
SAS-CompFeed      INDIA                          0                   1       22    1508
SAS-CompFeed      INDIA                          1                   0      330    1508
SAS-CompFeed      INDIA                          1                   1       14    1508
SAS-FoodSuppl     INDIA                          0                   0      316     418
SAS-FoodSuppl     INDIA                          0                   1        2     418
SAS-FoodSuppl     INDIA                          1                   0       96     418
SAS-FoodSuppl     INDIA                          1                   1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2038    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      357    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
VITAMIN-A         INDIA                          0                   0     2967    3895
VITAMIN-A         INDIA                          0                   1       36    3895
VITAMIN-A         INDIA                          1                   0      853    3895
VITAMIN-A         INDIA                          1                   1       39    3895
ZVITAMBO          ZIMBABWE                       0                   0    10499   13862
ZVITAMBO          ZIMBABWE                       0                   1      728   13862
ZVITAMBO          ZIMBABWE                       1                   0     2316   13862
ZVITAMBO          ZIMBABWE                       1                   1      319   13862


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/7a9beab8-cc57-41a7-a949-c5365c3362b1/a3c142a6-209c-4494-9c23-2d20f99d3fb8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a9beab8-cc57-41a7-a949-c5365c3362b1/a3c142a6-209c-4494-9c23-2d20f99d3fb8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a9beab8-cc57-41a7-a949-c5365c3362b1/a3c142a6-209c-4494-9c23-2d20f99d3fb8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a9beab8-cc57-41a7-a949-c5365c3362b1/a3c142a6-209c-4494-9c23-2d20f99d3fb8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
iLiNS-DYAD-M   MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
JiVitA-3       BANGLADESH   0                    NA                0.0185806   0.0168083   0.0203529
JiVitA-3       BANGLADESH   1                    NA                0.0297575   0.0251549   0.0343602
JiVitA-4       BANGLADESH   0                    NA                0.0081176   0.0053939   0.0108413
JiVitA-4       BANGLADESH   1                    NA                0.0144092   0.0043006   0.0245178
Keneba         GAMBIA       0                    NA                0.0183742   0.0121618   0.0245866
Keneba         GAMBIA       1                    NA                0.0350877   0.0212957   0.0488798
SAS-CompFeed   INDIA        0                    NA                0.0189003   0.0093894   0.0284113
SAS-CompFeed   INDIA        1                    NA                0.0406977   0.0171911   0.0642042
VITAMIN-A      INDIA        0                    NA                0.0119880   0.0080950   0.0158810
VITAMIN-A      INDIA        1                    NA                0.0437220   0.0303016   0.0571423
ZVITAMBO       ZIMBABWE     0                    NA                0.0648437   0.0602885   0.0693989
ZVITAMBO       ZIMBABWE     1                    NA                0.1210626   0.1086072   0.1335180


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0321489   0.0220886   0.0422092
JiVitA-3       BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
JiVitA-4       BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597
Keneba         GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.936259   1.1899998   7.245058
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.601537   1.3436363   1.908940
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.775060   0.8149034   3.866519
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.909623   1.1370363   3.207161
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.153277   1.1387933   4.071504
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.647141   2.3328655   5.701846
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.866992   1.6483077   2.114689


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
JiVitA-3       BANGLADESH   0                    NA                0.0022605    0.0012869   0.0032340
JiVitA-4       BANGLADESH   0                    NA                0.0008314   -0.0005557   0.0022184
Keneba         GAMBIA       0                    NA                0.0046097    0.0004273   0.0087921
SAS-CompFeed   INDIA        0                    NA                0.0049723   -0.0005357   0.0104804
VITAMIN-A      INDIA        0                    NA                0.0072674    0.0040400   0.0104948
ZVITAMBO       ZIMBABWE     0                    NA                0.0106865    0.0081389   0.0132341


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
JiVitA-3       BANGLADESH   0                    NA                0.1084620    0.0620250   0.1525999
JiVitA-4       BANGLADESH   0                    NA                0.0929019   -0.0708635   0.2316229
Keneba         GAMBIA       0                    NA                0.2005627    0.0051517   0.3575904
SAS-CompFeed   INDIA        0                    NA                0.2082856   -0.0245883   0.3882307
VITAMIN-A      INDIA        0                    NA                0.3774226    0.2137743   0.5070084
ZVITAMBO       ZIMBABWE     0                    NA                0.1414870    0.1079976   0.1737191

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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0      325     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0       11     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1        0     338  dead             
EE                PAKISTAN                       0                     0      213     379  dead             
EE                PAKISTAN                       0                     1        3     379  dead             
EE                PAKISTAN                       1                     0      162     379  dead             
EE                PAKISTAN                       1                     1        1     379  dead             
GMS-Nepal         NEPAL                          0                     0      634     698  dead             
GMS-Nepal         NEPAL                          0                     1        4     698  dead             
GMS-Nepal         NEPAL                          1                     0       56     698  dead             
GMS-Nepal         NEPAL                          1                     1        4     698  dead             
iLiNS-DOSE        MALAWI                         0                     0     1588    1813  dead             
iLiNS-DOSE        MALAWI                         0                     1      101    1813  dead             
iLiNS-DOSE        MALAWI                         1                     0      111    1813  dead             
iLiNS-DOSE        MALAWI                         1                     1       13    1813  dead             
iLiNS-DYAD-M      MALAWI                         0                     0     1066    1191  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       34    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                     0       86    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                     1        5    1191  dead             
JiVitA-3          BANGLADESH                     0                     0    22511   27197  dead             
JiVitA-3          BANGLADESH                     0                     1      435   27197  dead             
JiVitA-3          BANGLADESH                     1                     0     3885   27197  dead             
JiVitA-3          BANGLADESH                     1                     1      366   27197  dead             
JiVitA-4          BANGLADESH                     0                     0     4639    5270  dead             
JiVitA-4          BANGLADESH                     0                     1       31    5270  dead             
JiVitA-4          BANGLADESH                     1                     0      584    5270  dead             
JiVitA-4          BANGLADESH                     1                     1       16    5270  dead             
Keneba            GAMBIA                         0                     0     2142    2479  dead             
Keneba            GAMBIA                         0                     1       43    2479  dead             
Keneba            GAMBIA                         1                     0      278    2479  dead             
Keneba            GAMBIA                         1                     1       16    2479  dead             
MAL-ED            BANGLADESH                     0                     0      240     265  dead             
MAL-ED            BANGLADESH                     0                     1        2     265  dead             
MAL-ED            BANGLADESH                     1                     0       22     265  dead             
MAL-ED            BANGLADESH                     1                     1        1     265  dead             
MAL-ED            INDIA                          0                     0      228     251  dead             
MAL-ED            INDIA                          0                     1        2     251  dead             
MAL-ED            INDIA                          1                     0       21     251  dead             
MAL-ED            INDIA                          1                     1        0     251  dead             
MAL-ED            PERU                           0                     0      260     303  dead             
MAL-ED            PERU                           0                     1        2     303  dead             
MAL-ED            PERU                           1                     0       41     303  dead             
MAL-ED            PERU                           1                     1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                     0      283     314  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                     0       30     314  dead             
MAL-ED            SOUTH AFRICA                   1                     1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      219     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       40     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        1     262  dead             
PROVIDE           BANGLADESH                     0                     0      665     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0       31     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0     1266    1532  dead             
SAS-CompFeed      INDIA                          0                     1       29    1532  dead             
SAS-CompFeed      INDIA                          1                     0      216    1532  dead             
SAS-CompFeed      INDIA                          1                     1       21    1532  dead             
SAS-FoodSuppl     INDIA                          0                     0      351     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                     0       61     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     3274    3898  dead             
VITAMIN-A         INDIA                          0                     1       50    3898  dead             
VITAMIN-A         INDIA                          1                     0      547    3898  dead             
VITAMIN-A         INDIA                          1                     1       27    3898  dead             
ZVITAMBO          ZIMBABWE                       0                     0    11756   14060  dead             
ZVITAMBO          ZIMBABWE                       0                     1      871   14060  dead             
ZVITAMBO          ZIMBABWE                       1                     0     1199   14060  dead             
ZVITAMBO          ZIMBABWE                       1                     1      234   14060  dead             


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
![](/tmp/d9deea85-1801-4fc3-9447-342fd08c5f47/e13fdd41-11b2-4391-b044-e8b794f6fafe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d9deea85-1801-4fc3-9447-342fd08c5f47/e13fdd41-11b2-4391-b044-e8b794f6fafe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d9deea85-1801-4fc3-9447-342fd08c5f47/e13fdd41-11b2-4391-b044-e8b794f6fafe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d9deea85-1801-4fc3-9447-342fd08c5f47/e13fdd41-11b2-4391-b044-e8b794f6fafe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0597987   0.0484875   0.0711099
iLiNS-DOSE     MALAWI       1                    NA                0.1048387   0.0509040   0.1587734
iLiNS-DYAD-M   MALAWI       0                    NA                0.0309091   0.0206771   0.0411411
iLiNS-DYAD-M   MALAWI       1                    NA                0.0549451   0.0081066   0.1017835
JiVitA-3       BANGLADESH   0                    NA                0.0189576   0.0171627   0.0207524
JiVitA-3       BANGLADESH   1                    NA                0.0860974   0.0771076   0.0950872
JiVitA-4       BANGLADESH   0                    NA                0.0066381   0.0040615   0.0092147
JiVitA-4       BANGLADESH   1                    NA                0.0266667   0.0142290   0.0391043
Keneba         GAMBIA       0                    NA                0.0196796   0.0138545   0.0255047
Keneba         GAMBIA       1                    NA                0.0544218   0.0284861   0.0803574
SAS-CompFeed   INDIA        0                    NA                0.0223938   0.0101909   0.0345967
SAS-CompFeed   INDIA        1                    NA                0.0886076   0.0604552   0.1167600
VITAMIN-A      INDIA        0                    NA                0.0150421   0.0109037   0.0191806
VITAMIN-A      INDIA        1                    NA                0.0470383   0.0297158   0.0643609
ZVITAMBO       ZIMBABWE     0                    NA                0.0689792   0.0645589   0.0733995
ZVITAMBO       ZIMBABWE     1                    NA                0.1632938   0.1441551   0.1824325


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
JiVitA-3       BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
JiVitA-4       BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291
Keneba         GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.753194   1.013402   3.033041
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.777634   0.712343   4.436041
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.541588   3.939215   5.236073
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 4.017204   2.197427   7.344011
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.765385   1.578021   4.846167
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.956787   2.360639   6.632173
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.127108   1.974711   4.952017
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.367291   2.071282   2.705603


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0030805   -0.0007248   0.0068858
iLiNS-DYAD-M   MALAWI       0                    NA                0.0018365   -0.0018446   0.0055176
JiVitA-3       BANGLADESH   0                    NA                0.0104942    0.0090149   0.0119736
JiVitA-4       BANGLADESH   0                    NA                0.0022803    0.0008328   0.0037278
Keneba         GAMBIA       0                    NA                0.0041203    0.0009369   0.0073037
SAS-CompFeed   INDIA        0                    NA                0.0102433    0.0057889   0.0146976
VITAMIN-A      INDIA        0                    NA                0.0047116    0.0020649   0.0073583
ZVITAMBO       ZIMBABWE     0                    NA                0.0096126    0.0075558   0.0116694


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0489909   -0.0129086   0.1071077
iLiNS-DYAD-M   MALAWI       0                    NA                0.0560839   -0.0618845   0.1609468
JiVitA-3       BANGLADESH   0                    NA                0.3563189    0.3125848   0.3972706
JiVitA-4       BANGLADESH   0                    NA                0.2556836    0.0859905   0.3938719
Keneba         GAMBIA       0                    NA                0.1731218    0.0361595   0.2906217
SAS-CompFeed   INDIA        0                    NA                0.3138533    0.1284525   0.4598145
VITAMIN-A      INDIA        0                    NA                0.2385172    0.1044299   0.3525286
ZVITAMBO       ZIMBABWE     0                    NA                0.1223103    0.0965597   0.1473269

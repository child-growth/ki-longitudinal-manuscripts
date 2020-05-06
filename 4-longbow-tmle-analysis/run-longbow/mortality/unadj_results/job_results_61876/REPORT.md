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

**Outcome Variable:** dead0plus

## Predictor Variables

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0      325     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                          1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          0       11     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        0     338  dead0plus        
EE                PAKISTAN                       0                          0      213     379  dead0plus        
EE                PAKISTAN                       0                          1        3     379  dead0plus        
EE                PAKISTAN                       1                          0      162     379  dead0plus        
EE                PAKISTAN                       1                          1        1     379  dead0plus        
GMS-Nepal         NEPAL                          0                          0      634     698  dead0plus        
GMS-Nepal         NEPAL                          0                          1        4     698  dead0plus        
GMS-Nepal         NEPAL                          1                          0       56     698  dead0plus        
GMS-Nepal         NEPAL                          1                          1        4     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                          0     1588    1813  dead0plus        
iLiNS-DOSE        MALAWI                         0                          1      101    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                          0      111    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                          1       13    1813  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1063    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          1       37    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          0       85    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          1        6    1191  dead0plus        
JiVitA-3          BANGLADESH                     0                          0    22481   27197  dead0plus        
JiVitA-3          BANGLADESH                     0                          1      465   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                          0     3874   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                          1      377   27197  dead0plus        
JiVitA-4          BANGLADESH                     0                          0     4639    5270  dead0plus        
JiVitA-4          BANGLADESH                     0                          1       31    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                          0      583    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                          1       17    5270  dead0plus        
Keneba            GAMBIA                         0                          0     2115    2479  dead0plus        
Keneba            GAMBIA                         0                          1       70    2479  dead0plus        
Keneba            GAMBIA                         1                          0      276    2479  dead0plus        
Keneba            GAMBIA                         1                          1       18    2479  dead0plus        
MAL-ED            BANGLADESH                     0                          0      240     265  dead0plus        
MAL-ED            BANGLADESH                     0                          1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                          0       22     265  dead0plus        
MAL-ED            BANGLADESH                     1                          1        1     265  dead0plus        
MAL-ED            INDIA                          0                          0      228     251  dead0plus        
MAL-ED            INDIA                          0                          1        2     251  dead0plus        
MAL-ED            INDIA                          1                          0       21     251  dead0plus        
MAL-ED            INDIA                          1                          1        0     251  dead0plus        
MAL-ED            PERU                           0                          0      260     303  dead0plus        
MAL-ED            PERU                           0                          1        2     303  dead0plus        
MAL-ED            PERU                           1                          0       41     303  dead0plus        
MAL-ED            PERU                           1                          1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          0      283     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          0       30     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      219     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       40     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                          0      664     700  dead0plus        
PROVIDE           BANGLADESH                     0                          1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                          0       31     700  dead0plus        
PROVIDE           BANGLADESH                     1                          1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                          0     1266    1532  dead0plus        
SAS-CompFeed      INDIA                          0                          1       29    1532  dead0plus        
SAS-CompFeed      INDIA                          1                          0      216    1532  dead0plus        
SAS-CompFeed      INDIA                          1                          1       21    1532  dead0plus        
SAS-FoodSuppl     INDIA                          0                          0      351     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                          1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          0       61     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2284    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      111    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                          0     3274    3898  dead0plus        
VITAMIN-A         INDIA                          0                          1       50    3898  dead0plus        
VITAMIN-A         INDIA                          1                          0      547    3898  dead0plus        
VITAMIN-A         INDIA                          1                          1       27    3898  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          0    11746   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          1      881   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          0     1199   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          1      234   14060  dead0plus        


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
![](/tmp/1029ffac-5df6-4b9c-a220-6a86e6eeb80c/dcd1619c-2a30-4470-8264-8f119e5b739a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1029ffac-5df6-4b9c-a220-6a86e6eeb80c/dcd1619c-2a30-4470-8264-8f119e5b739a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1029ffac-5df6-4b9c-a220-6a86e6eeb80c/dcd1619c-2a30-4470-8264-8f119e5b739a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1029ffac-5df6-4b9c-a220-6a86e6eeb80c/dcd1619c-2a30-4470-8264-8f119e5b739a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0597987   0.0484875   0.0711099
iLiNS-DOSE     MALAWI       1                    NA                0.1048387   0.0509040   0.1587734
iLiNS-DYAD-M   MALAWI       0                    NA                0.0336364   0.0229775   0.0442952
iLiNS-DYAD-M   MALAWI       1                    NA                0.0659341   0.0149243   0.1169439
JiVitA-3       BANGLADESH   0                    NA                0.0202650   0.0184331   0.0220968
JiVitA-3       BANGLADESH   1                    NA                0.0886850   0.0795040   0.0978661
JiVitA-4       BANGLADESH   0                    NA                0.0066381   0.0040615   0.0092147
JiVitA-4       BANGLADESH   1                    NA                0.0283333   0.0152557   0.0414110
Keneba         GAMBIA       0                    NA                0.0320366   0.0246514   0.0394218
Keneba         GAMBIA       1                    NA                0.0612245   0.0338147   0.0886343
SAS-CompFeed   INDIA        0                    NA                0.0223938   0.0101909   0.0345967
SAS-CompFeed   INDIA        1                    NA                0.0886076   0.0604552   0.1167600
VITAMIN-A      INDIA        0                    NA                0.0150421   0.0109037   0.0191806
VITAMIN-A      INDIA        1                    NA                0.0470383   0.0297158   0.0643609
ZVITAMBO       ZIMBABWE     0                    NA                0.0697711   0.0653274   0.0742148
ZVITAMBO       ZIMBABWE     1                    NA                0.1632938   0.1441551   0.1824325


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0361041   0.0255050   0.0467032
JiVitA-3       BANGLADESH   NA                   NA                0.0309593   0.0288157   0.0331029
JiVitA-4       BANGLADESH   NA                   NA                0.0091082   0.0063617   0.0118546
Keneba         GAMBIA       NA                   NA                0.0354982   0.0282128   0.0427836
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793030   0.0748364   0.0837696


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.753194   1.0134015   3.033041
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.960202   0.8496056   4.522559
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.376272   3.8104128   5.026163
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 4.268280   2.3409251   7.782483
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.911079   1.1550113   3.162066
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.956787   2.3606390   6.632173
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.127108   1.9747114   4.952017
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.340421   2.0481557   2.674391


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0030805   -0.0007248   0.0068858
iLiNS-DYAD-M   MALAWI       0                    NA                0.0024678   -0.0015436   0.0064791
JiVitA-3       BANGLADESH   0                    NA                0.0106943    0.0091851   0.0122035
JiVitA-4       BANGLADESH   0                    NA                0.0024700    0.0009502   0.0039899
Keneba         GAMBIA       0                    NA                0.0034616    0.0000745   0.0068486
SAS-CompFeed   INDIA        0                    NA                0.0102433    0.0057889   0.0146976
VITAMIN-A      INDIA        0                    NA                0.0047116    0.0020649   0.0073583
ZVITAMBO       ZIMBABWE     0                    NA                0.0095319    0.0074755   0.0115883


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0489909   -0.0129086   0.1071077
iLiNS-DYAD-M   MALAWI       0                    NA                0.0683510   -0.0477396   0.1715786
JiVitA-3       BANGLADESH   0                    NA                0.3454318    0.3031214   0.3851735
JiVitA-4       BANGLADESH   0                    NA                0.2711902    0.0984778   0.4108146
Keneba         GAMBIA       0                    NA                0.0975140   -0.0009292   0.1862752
SAS-CompFeed   INDIA        0                    NA                0.3138533    0.1284525   0.4598145
VITAMIN-A      INDIA        0                    NA                0.2385172    0.1044299   0.3525286
ZVITAMBO       ZIMBABWE     0                    NA                0.1201955    0.0946619   0.1450089

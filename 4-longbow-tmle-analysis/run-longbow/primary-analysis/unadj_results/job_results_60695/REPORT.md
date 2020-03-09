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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_swasted06    dead   n_cell       n
----------------  -----------------------------  ---------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                    0      328     338
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
Burkina Faso Zn   BURKINA FASO                   1                    0        8     338
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
EE                PAKISTAN                       0                    0      337     380
EE                PAKISTAN                       0                    1        4     380
EE                PAKISTAN                       1                    0       39     380
EE                PAKISTAN                       1                    1        0     380
GMS-Nepal         NEPAL                          0                    0      600     686
GMS-Nepal         NEPAL                          0                    1        7     686
GMS-Nepal         NEPAL                          1                    0       79     686
GMS-Nepal         NEPAL                          1                    1        0     686
iLiNS-DOSE        MALAWI                         0                    0     1699    1814
iLiNS-DOSE        MALAWI                         0                    1      113    1814
iLiNS-DOSE        MALAWI                         1                    0        1    1814
iLiNS-DOSE        MALAWI                         1                    1        1    1814
iLiNS-DYAD-M      MALAWI                         0                    0     1132    1182
iLiNS-DYAD-M      MALAWI                         0                    1       36    1182
iLiNS-DYAD-M      MALAWI                         1                    0       12    1182
iLiNS-DYAD-M      MALAWI                         1                    1        2    1182
JiVitA-3          BANGLADESH                     0                    0    25129   26918
JiVitA-3          BANGLADESH                     0                    1      508   26918
JiVitA-3          BANGLADESH                     1                    0     1228   26918
JiVitA-3          BANGLADESH                     1                    1       53   26918
JiVitA-4          BANGLADESH                     0                    0     5076    5252
JiVitA-4          BANGLADESH                     0                    1       42    5252
JiVitA-4          BANGLADESH                     1                    0      129    5252
JiVitA-4          BANGLADESH                     1                    1        5    5252
Keneba            GAMBIA                         0                    0     2199    2480
Keneba            GAMBIA                         0                    1       45    2480
Keneba            GAMBIA                         1                    0      224    2480
Keneba            GAMBIA                         1                    1       12    2480
MAL-ED            BANGLADESH                     0                    0      245     263
MAL-ED            BANGLADESH                     0                    1        2     263
MAL-ED            BANGLADESH                     1                    0       16     263
MAL-ED            BANGLADESH                     1                    1        0     263
MAL-ED            INDIA                          0                    0      226     251
MAL-ED            INDIA                          0                    1        2     251
MAL-ED            INDIA                          1                    0       23     251
MAL-ED            INDIA                          1                    1        0     251
MAL-ED            PERU                           0                    0      299     302
MAL-ED            PERU                           0                    1        2     302
MAL-ED            PERU                           1                    0        1     302
MAL-ED            PERU                           1                    1        0     302
MAL-ED            SOUTH AFRICA                   0                    0      304     312
MAL-ED            SOUTH AFRICA                   0                    1        0     312
MAL-ED            SOUTH AFRICA                   1                    0        8     312
MAL-ED            SOUTH AFRICA                   1                    1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      253     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0        5     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
PROVIDE           BANGLADESH                     0                    0      667     700
PROVIDE           BANGLADESH                     0                    1        4     700
PROVIDE           BANGLADESH                     1                    0       29     700
PROVIDE           BANGLADESH                     1                    1        0     700
SAS-CompFeed      INDIA                          0                    0     1378    1508
SAS-CompFeed      INDIA                          0                    1       26    1508
SAS-CompFeed      INDIA                          1                    0       94    1508
SAS-CompFeed      INDIA                          1                    1       10    1508
SAS-FoodSuppl     INDIA                          0                    0      385     418
SAS-FoodSuppl     INDIA                          0                    1        3     418
SAS-FoodSuppl     INDIA                          1                    0       27     418
SAS-FoodSuppl     INDIA                          1                    1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2310    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       85    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
VITAMIN-A         INDIA                          0                    0     3588    3895
VITAMIN-A         INDIA                          0                    1       55    3895
VITAMIN-A         INDIA                          1                    0      232    3895
VITAMIN-A         INDIA                          1                    1       20    3895
ZVITAMBO          ZIMBABWE                       0                    0    11948   13862
ZVITAMBO          ZIMBABWE                       0                    1      905   13862
ZVITAMBO          ZIMBABWE                       1                    0      867   13862
ZVITAMBO          ZIMBABWE                       1                    1      142   13862


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/67bca8be-5ec5-4ac5-8791-d5ac43302ed2/88ebf1ff-c4c7-4521-a8c6-7f2bc64b59ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67bca8be-5ec5-4ac5-8791-d5ac43302ed2/88ebf1ff-c4c7-4521-a8c6-7f2bc64b59ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67bca8be-5ec5-4ac5-8791-d5ac43302ed2/88ebf1ff-c4c7-4521-a8c6-7f2bc64b59ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67bca8be-5ec5-4ac5-8791-d5ac43302ed2/88ebf1ff-c4c7-4521-a8c6-7f2bc64b59ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0198151    0.0181123   0.0215179
JiVitA-3       BANGLADESH   1                    NA                0.0413739    0.0301098   0.0526380
JiVitA-4       BANGLADESH   0                    NA                0.0082063    0.0056243   0.0107884
JiVitA-4       BANGLADESH   1                    NA                0.0373134   -0.0014001   0.0760270
Keneba         GAMBIA       0                    NA                0.0200535    0.0142522   0.0258547
Keneba         GAMBIA       1                    NA                0.0508475    0.0228136   0.0788813
SAS-CompFeed   INDIA        0                    NA                0.0185185    0.0100366   0.0270005
SAS-CompFeed   INDIA        1                    NA                0.0961538    0.0387779   0.1535298
VITAMIN-A      INDIA        0                    NA                0.0150974    0.0111372   0.0190577
VITAMIN-A      INDIA        1                    NA                0.0793651    0.0459869   0.1127432
ZVITAMBO       ZIMBABWE     0                    NA                0.0704116    0.0659885   0.0748347
ZVITAMBO       ZIMBABWE     1                    NA                0.1407334    0.1192758   0.1621910


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
JiVitA-4       BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597
Keneba         GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.087999   1.580689    2.758126
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.546908   1.538202   13.440613
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.535593   1.360441    4.725846
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 5.192308   2.776266    9.710906
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.256854   3.202300    8.629584
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.998725   1.694870    2.357055


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0010260    0.0004862   0.0015657
JiVitA-4       BANGLADESH   0                    NA                0.0007426   -0.0002615   0.0017468
Keneba         GAMBIA       0                    NA                0.0029304    0.0001830   0.0056778
SAS-CompFeed   INDIA        0                    NA                0.0053542    0.0009882   0.0097201
VITAMIN-A      INDIA        0                    NA                0.0041580    0.0019274   0.0063886
ZVITAMBO       ZIMBABWE     0                    NA                0.0051186    0.0034952   0.0067421


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0492279    0.0236516   0.0741342
JiVitA-4       BANGLADESH   0                    NA                0.0829862   -0.0306227   0.1840717
Keneba         GAMBIA       0                    NA                0.1274979    0.0043924   0.2353816
SAS-CompFeed   INDIA        0                    NA                0.2242798    0.0739639   0.3501962
VITAMIN-A      INDIA        0                    NA                0.2159392    0.1029106   0.3147269
ZVITAMBO       ZIMBABWE     0                    NA                0.0677695    0.0463423   0.0887153

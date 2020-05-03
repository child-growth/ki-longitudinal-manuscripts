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

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_co06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0               0      325     338  dead             
Burkina Faso Zn   BURKINA FASO                   0               1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1               0       11     338  dead             
Burkina Faso Zn   BURKINA FASO                   1               1        0     338  dead             
EE                PAKISTAN                       0               0      314     379  dead             
EE                PAKISTAN                       0               1        2     379  dead             
EE                PAKISTAN                       1               0       61     379  dead             
EE                PAKISTAN                       1               1        2     379  dead             
GMS-Nepal         NEPAL                          0               0      645     686  dead             
GMS-Nepal         NEPAL                          0               1        5     686  dead             
GMS-Nepal         NEPAL                          1               0       34     686  dead             
GMS-Nepal         NEPAL                          1               1        2     686  dead             
iLiNS-DOSE        MALAWI                         0               0     1686    1813  dead             
iLiNS-DOSE        MALAWI                         0               1      111    1813  dead             
iLiNS-DOSE        MALAWI                         1               0       13    1813  dead             
iLiNS-DOSE        MALAWI                         1               1        3    1813  dead             
iLiNS-DYAD-M      MALAWI                         0               0     1131    1182  dead             
iLiNS-DYAD-M      MALAWI                         0               1       34    1182  dead             
iLiNS-DYAD-M      MALAWI                         1               0       13    1182  dead             
iLiNS-DYAD-M      MALAWI                         1               1        4    1182  dead             
JiVitA-3          BANGLADESH                     0               0    25085   26883  dead             
JiVitA-3          BANGLADESH                     0               1      467   26883  dead             
JiVitA-3          BANGLADESH                     1               0     1246   26883  dead             
JiVitA-3          BANGLADESH                     1               1       85   26883  dead             
JiVitA-4          BANGLADESH                     0               0     5019    5247  dead             
JiVitA-4          BANGLADESH                     0               1       42    5247  dead             
JiVitA-4          BANGLADESH                     1               0      182    5247  dead             
JiVitA-4          BANGLADESH                     1               1        4    5247  dead             
Keneba            GAMBIA                         0               0     2359    2476  dead             
Keneba            GAMBIA                         0               1       45    2476  dead             
Keneba            GAMBIA                         1               0       60    2476  dead             
Keneba            GAMBIA                         1               1       12    2476  dead             
MAL-ED            BANGLADESH                     0               0      252     263  dead             
MAL-ED            BANGLADESH                     0               1        2     263  dead             
MAL-ED            BANGLADESH                     1               0        9     263  dead             
MAL-ED            BANGLADESH                     1               1        0     263  dead             
MAL-ED            INDIA                          0               0      230     251  dead             
MAL-ED            INDIA                          0               1        2     251  dead             
MAL-ED            INDIA                          1               0       19     251  dead             
MAL-ED            INDIA                          1               1        0     251  dead             
MAL-ED            PERU                           0               0      298     302  dead             
MAL-ED            PERU                           0               1        2     302  dead             
MAL-ED            PERU                           1               0        2     302  dead             
MAL-ED            PERU                           1               1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0               0      306     312  dead             
MAL-ED            SOUTH AFRICA                   0               1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1               0        6     312  dead             
MAL-ED            SOUTH AFRICA                   1               1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0               0      254     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0               1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1               0        4     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1               1        0     261  dead             
PROVIDE           BANGLADESH                     0               0      666     700  dead             
PROVIDE           BANGLADESH                     0               1        4     700  dead             
PROVIDE           BANGLADESH                     1               0       30     700  dead             
PROVIDE           BANGLADESH                     1               1        0     700  dead             
SAS-CompFeed      INDIA                          0               0     1371    1507  dead             
SAS-CompFeed      INDIA                          0               1       26    1507  dead             
SAS-CompFeed      INDIA                          1               0      100    1507  dead             
SAS-CompFeed      INDIA                          1               1       10    1507  dead             
SAS-FoodSuppl     INDIA                          0               0      362     418  dead             
SAS-FoodSuppl     INDIA                          0               1        3     418  dead             
SAS-FoodSuppl     INDIA                          1               0       50     418  dead             
SAS-FoodSuppl     INDIA                          1               1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               0     2373    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               0       22    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               1        0    2396  dead             
VITAMIN-A         INDIA                          0               0     3488    3893  dead             
VITAMIN-A         INDIA                          0               1       48    3893  dead             
VITAMIN-A         INDIA                          1               0      330    3893  dead             
VITAMIN-A         INDIA                          1               1       27    3893  dead             
ZVITAMBO          ZIMBABWE                       0               0    12682   13857  dead             
ZVITAMBO          ZIMBABWE                       0               1      966   13857  dead             
ZVITAMBO          ZIMBABWE                       1               0      132   13857  dead             
ZVITAMBO          ZIMBABWE                       1               1       77   13857  dead             


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
* studyid: JiVitA-4, country: BANGLADESH
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
![](/tmp/01f1f437-a015-458a-87ad-7dc748c74a91/dc1e0380-a9ee-48f3-b77b-7aa38ab48a12/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01f1f437-a015-458a-87ad-7dc748c74a91/dc1e0380-a9ee-48f3-b77b-7aa38ab48a12/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01f1f437-a015-458a-87ad-7dc748c74a91/dc1e0380-a9ee-48f3-b77b-7aa38ab48a12/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01f1f437-a015-458a-87ad-7dc748c74a91/dc1e0380-a9ee-48f3-b77b-7aa38ab48a12/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0182765   0.0166079   0.0199450
JiVitA-3       BANGLADESH   1                    NA                0.0638618   0.0501366   0.0775870
Keneba         GAMBIA       0                    NA                0.0187188   0.0133000   0.0241376
Keneba         GAMBIA       1                    NA                0.1666667   0.0805666   0.2527667
SAS-CompFeed   INDIA        0                    NA                0.0186113   0.0089416   0.0282810
SAS-CompFeed   INDIA        1                    NA                0.0909091   0.0498338   0.1319844
VITAMIN-A      INDIA        0                    NA                0.0135747   0.0097601   0.0173892
VITAMIN-A      INDIA        1                    NA                0.0756303   0.0481993   0.1030612
ZVITAMBO       ZIMBABWE     0                    NA                0.0707796   0.0664331   0.0751261
ZVITAMBO       ZIMBABWE     1                    NA                0.3684211   0.3289650   0.4078771


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0205334   0.0188040   0.0222628
Keneba         GAMBIA       NA                   NA                0.0230210   0.0171127   0.0289293
SAS-CompFeed   INDIA        NA                   NA                0.0238885   0.0131223   0.0346548
VITAMIN-A      INDIA        NA                   NA                0.0192653   0.0149469   0.0235838
ZVITAMBO       ZIMBABWE     NA                   NA                0.0752688   0.0708760   0.0796616


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.494209   2.763580    4.418000
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 8.903704   4.924817   16.097236
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.884615   2.903947    8.216220
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.571429   3.521311    8.815129
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.205187   4.600678    5.889125


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0022570   0.0015566   0.0029573
Keneba         GAMBIA       0                    NA                0.0043022   0.0016091   0.0069953
SAS-CompFeed   INDIA        0                    NA                0.0052772   0.0017175   0.0088369
VITAMIN-A      INDIA        0                    NA                0.0056907   0.0030894   0.0082920
ZVITAMBO       ZIMBABWE     0                    NA                0.0044892   0.0033275   0.0056510


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1099167   0.0766395   0.1419946
Keneba         GAMBIA       0                    NA                0.1868815   0.0723956   0.2872374
SAS-CompFeed   INDIA        0                    NA                0.2209099   0.0721362   0.3458292
VITAMIN-A      INDIA        0                    NA                0.2953846   0.1667041   0.4041938
ZVITAMBO       ZIMBABWE     0                    NA                0.0596424   0.0442912   0.0747471

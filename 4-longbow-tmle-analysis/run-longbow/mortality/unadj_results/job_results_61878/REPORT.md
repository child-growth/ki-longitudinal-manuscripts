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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sunderweight06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                              0      315     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                              1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              0       21     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              1        0     338  dead0plus        
EE                PAKISTAN                       0                              0      218     380  dead0plus        
EE                PAKISTAN                       0                              1        1     380  dead0plus        
EE                PAKISTAN                       1                              0      158     380  dead0plus        
EE                PAKISTAN                       1                              1        3     380  dead0plus        
GMS-Nepal         NEPAL                          0                              0      600     697  dead0plus        
GMS-Nepal         NEPAL                          0                              1        3     697  dead0plus        
GMS-Nepal         NEPAL                          1                              0       90     697  dead0plus        
GMS-Nepal         NEPAL                          1                              1        4     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                              0     1646    1816  dead0plus        
iLiNS-DOSE        MALAWI                         0                              1      106    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                              0       56    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                              1        8    1816  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              0     1080    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              1       30    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              0       78    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              1       14    1202  dead0plus        
JiVitA-3          BANGLADESH                     0                              0    22216   27237  dead0plus        
JiVitA-3          BANGLADESH                     0                              1      436   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                              0     4155   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                              1      430   27237  dead0plus        
JiVitA-4          BANGLADESH                     0                              0     4716    5276  dead0plus        
JiVitA-4          BANGLADESH                     0                              1       32    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                              0      512    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                              1       16    5276  dead0plus        
Keneba            GAMBIA                         0                              0     2379    2632  dead0plus        
Keneba            GAMBIA                         0                              1       71    2632  dead0plus        
Keneba            GAMBIA                         1                              0      158    2632  dead0plus        
Keneba            GAMBIA                         1                              1       24    2632  dead0plus        
MAL-ED            BANGLADESH                     0                              0      243     265  dead0plus        
MAL-ED            BANGLADESH                     0                              1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                              0       19     265  dead0plus        
MAL-ED            BANGLADESH                     1                              1        1     265  dead0plus        
MAL-ED            INDIA                          0                              0      217     251  dead0plus        
MAL-ED            INDIA                          0                              1        1     251  dead0plus        
MAL-ED            INDIA                          1                              0       32     251  dead0plus        
MAL-ED            INDIA                          1                              1        1     251  dead0plus        
MAL-ED            PERU                           0                              0      290     303  dead0plus        
MAL-ED            PERU                           0                              1        2     303  dead0plus        
MAL-ED            PERU                           1                              0       11     303  dead0plus        
MAL-ED            PERU                           1                              1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              0      300     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              0       13     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      251     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0        8     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                              0      647     700  dead0plus        
PROVIDE           BANGLADESH                     0                              1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                              0       48     700  dead0plus        
PROVIDE           BANGLADESH                     1                              1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                              0     1247    1533  dead0plus        
SAS-CompFeed      INDIA                          0                              1       26    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              0      236    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              1       24    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                              0      304     416  dead0plus        
SAS-FoodSuppl     INDIA                          0                              1        2     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                              0      106     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                              1        4     416  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2325    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       70    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                              0     2858    3906  dead0plus        
VITAMIN-A         INDIA                          0                              1       30    3906  dead0plus        
VITAMIN-A         INDIA                          1                              0      970    3906  dead0plus        
VITAMIN-A         INDIA                          1                              1       48    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              0    12411   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              1      816   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              0      556   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              1      302   14085  dead0plus        


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
![](/tmp/e1d6d6d1-e082-4893-aa16-63c40f76ae48/2bac32d5-0ddf-4caa-af1c-72fba9cb1096/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e1d6d6d1-e082-4893-aa16-63c40f76ae48/2bac32d5-0ddf-4caa-af1c-72fba9cb1096/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e1d6d6d1-e082-4893-aa16-63c40f76ae48/2bac32d5-0ddf-4caa-af1c-72fba9cb1096/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e1d6d6d1-e082-4893-aa16-63c40f76ae48/2bac32d5-0ddf-4caa-af1c-72fba9cb1096/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0270270   0.0174833   0.0365707
iLiNS-DYAD-M   MALAWI       1                    NA                0.1521739   0.0787465   0.2256014
JiVitA-3       BANGLADESH   0                    NA                0.0192477   0.0174699   0.0210256
JiVitA-3       BANGLADESH   1                    NA                0.0937841   0.0847066   0.1028615
JiVitA-4       BANGLADESH   0                    NA                0.0067397   0.0042344   0.0092450
JiVitA-4       BANGLADESH   1                    NA                0.0303030   0.0146059   0.0460001
Keneba         GAMBIA       0                    NA                0.0289796   0.0223359   0.0356233
Keneba         GAMBIA       1                    NA                0.1318681   0.0827029   0.1810333
SAS-CompFeed   INDIA        0                    NA                0.0204242   0.0079449   0.0329035
SAS-CompFeed   INDIA        1                    NA                0.0923077   0.0593946   0.1252208
VITAMIN-A      INDIA        0                    NA                0.0103878   0.0066895   0.0140861
VITAMIN-A      INDIA        1                    NA                0.0471513   0.0341290   0.0601736
ZVITAMBO       ZIMBABWE     0                    NA                0.0616920   0.0575917   0.0657923
ZVITAMBO       ZIMBABWE     1                    NA                0.3519814   0.3200238   0.3839389


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0366057   0.0259850   0.0472263
JiVitA-3       BANGLADESH   NA                   NA                0.0317950   0.0295928   0.0339972
JiVitA-4       BANGLADESH   NA                   NA                0.0090978   0.0063582   0.0118374
Keneba         GAMBIA       NA                   NA                0.0360942   0.0289669   0.0432215
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793752   0.0749108   0.0838397


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847    4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 5.630435   3.096451   10.238106
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 4.872470   4.267010    5.563841
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.496212   2.370617    8.527707
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 4.550379   2.937417    7.049034
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.519527   2.433539    8.393587
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.539096   2.892561    7.122889
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.705462   5.098279    6.384959


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0095786    0.0036071   0.0155502
JiVitA-3       BANGLADESH   0                    NA                0.0125472    0.0109462   0.0141483
JiVitA-4       BANGLADESH   0                    NA                0.0023581    0.0007662   0.0039500
Keneba         GAMBIA       0                    NA                0.0071146    0.0035420   0.0106873
SAS-CompFeed   INDIA        0                    NA                0.0121916    0.0058295   0.0185537
VITAMIN-A      INDIA        0                    NA                0.0095815    0.0060172   0.0131457
ZVITAMBO       ZIMBABWE     0                    NA                0.0176832    0.0154101   0.0199563


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2616708    0.1008386   0.3937350
JiVitA-3       BANGLADESH   0                    NA                0.3946294    0.3529744   0.4336027
JiVitA-4       BANGLADESH   0                    NA                0.2591969    0.0832377   0.4013832
Keneba         GAMBIA       0                    NA                0.1971128    0.1001870   0.2835979
SAS-CompFeed   INDIA        0                    NA                0.3737942    0.1172654   0.5557739
VITAMIN-A      INDIA        0                    NA                0.4798104    0.3127948   0.6062351
ZVITAMBO       ZIMBABWE     0                    NA                0.2227802    0.1961793   0.2485008

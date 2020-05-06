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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_underweight06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0      262     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             0       74     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0     338  dead0plus        
EE                PAKISTAN                       0                             0      103     380  dead0plus        
EE                PAKISTAN                       0                             1        0     380  dead0plus        
EE                PAKISTAN                       1                             0      273     380  dead0plus        
EE                PAKISTAN                       1                             1        4     380  dead0plus        
GMS-Nepal         NEPAL                          0                             0      388     697  dead0plus        
GMS-Nepal         NEPAL                          0                             1        2     697  dead0plus        
GMS-Nepal         NEPAL                          1                             0      302     697  dead0plus        
GMS-Nepal         NEPAL                          1                             1        5     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                             0     1464    1816  dead0plus        
iLiNS-DOSE        MALAWI                         0                             1       89    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                             0      238    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                             1       25    1816  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             0      928    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             1       22    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             0      230    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             1       22    1202  dead0plus        
JiVitA-3          BANGLADESH                     0                             0    14413   27237  dead0plus        
JiVitA-3          BANGLADESH                     0                             1      251   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                             0    11958   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                             1      615   27237  dead0plus        
JiVitA-4          BANGLADESH                     0                             0     3471    5276  dead0plus        
JiVitA-4          BANGLADESH                     0                             1       17    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                             0     1757    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                             1       31    5276  dead0plus        
Keneba            GAMBIA                         0                             0     2024    2632  dead0plus        
Keneba            GAMBIA                         0                             1       55    2632  dead0plus        
Keneba            GAMBIA                         1                             0      513    2632  dead0plus        
Keneba            GAMBIA                         1                             1       40    2632  dead0plus        
MAL-ED            BANGLADESH                     0                             0      174     265  dead0plus        
MAL-ED            BANGLADESH                     0                             1        1     265  dead0plus        
MAL-ED            BANGLADESH                     1                             0       88     265  dead0plus        
MAL-ED            BANGLADESH                     1                             1        2     265  dead0plus        
MAL-ED            INDIA                          0                             0      144     251  dead0plus        
MAL-ED            INDIA                          0                             1        1     251  dead0plus        
MAL-ED            INDIA                          1                             0      105     251  dead0plus        
MAL-ED            INDIA                          1                             1        1     251  dead0plus        
MAL-ED            PERU                           0                             0      251     303  dead0plus        
MAL-ED            PERU                           0                             1        2     303  dead0plus        
MAL-ED            PERU                           1                             0       50     303  dead0plus        
MAL-ED            PERU                           1                             1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             0      258     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             0       55     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      214     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       45     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                             0      470     700  dead0plus        
PROVIDE           BANGLADESH                     0                             1        3     700  dead0plus        
PROVIDE           BANGLADESH                     1                             0      225     700  dead0plus        
PROVIDE           BANGLADESH                     1                             1        2     700  dead0plus        
SAS-CompFeed      INDIA                          0                             0      867    1533  dead0plus        
SAS-CompFeed      INDIA                          0                             1       16    1533  dead0plus        
SAS-CompFeed      INDIA                          1                             0      616    1533  dead0plus        
SAS-CompFeed      INDIA                          1                             1       34    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                             0      194     416  dead0plus        
SAS-FoodSuppl     INDIA                          0                             1        2     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                             0      216     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                             1        4     416  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2110    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      285    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                             0     1692    3906  dead0plus        
VITAMIN-A         INDIA                          0                             1       10    3906  dead0plus        
VITAMIN-A         INDIA                          1                             0     2136    3906  dead0plus        
VITAMIN-A         INDIA                          1                             1       68    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             0    10950   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             1      571   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             0     2017   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             1      547   14085  dead0plus        


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
![](/tmp/a7b10651-41c7-4bf5-8931-d339e6a482bd/3609c065-3fd1-425e-bf13-fd104244028e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a7b10651-41c7-4bf5-8931-d339e6a482bd/3609c065-3fd1-425e-bf13-fd104244028e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a7b10651-41c7-4bf5-8931-d339e6a482bd/3609c065-3fd1-425e-bf13-fd104244028e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a7b10651-41c7-4bf5-8931-d339e6a482bd/3609c065-3fd1-425e-bf13-fd104244028e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0573084   0.0457453   0.0688716
iLiNS-DOSE     MALAWI       1                    NA                0.0950570   0.0596008   0.1305133
iLiNS-DYAD-M   MALAWI       0                    NA                0.0231579   0.0135897   0.0327261
iLiNS-DYAD-M   MALAWI       1                    NA                0.0873016   0.0524355   0.1221677
JiVitA-3       BANGLADESH   0                    NA                0.0171167   0.0149538   0.0192797
JiVitA-3       BANGLADESH   1                    NA                0.0489143   0.0449731   0.0528556
JiVitA-4       BANGLADESH   0                    NA                0.0048739   0.0021726   0.0075751
JiVitA-4       BANGLADESH   1                    NA                0.0173378   0.0113111   0.0233645
Keneba         GAMBIA       0                    NA                0.0264550   0.0195552   0.0333548
Keneba         GAMBIA       1                    NA                0.0723327   0.0507388   0.0939267
SAS-CompFeed   INDIA        0                    NA                0.0181200   0.0101243   0.0261158
SAS-CompFeed   INDIA        1                    NA                0.0523077   0.0316785   0.0729369
VITAMIN-A      INDIA        0                    NA                0.0058754   0.0022441   0.0095068
VITAMIN-A      INDIA        1                    NA                0.0308530   0.0236329   0.0380731
ZVITAMBO       ZIMBABWE     0                    NA                0.0495617   0.0455984   0.0535249
ZVITAMBO       ZIMBABWE     1                    NA                0.2133385   0.1974811   0.2291960


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
iLiNS-DOSE     MALAWI       1                    0                 1.658692   1.085406    2.534775
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.769841   2.122073    6.697086
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.857689   2.462006    3.316964
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.557310   1.853773    6.826325
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.734177   1.839352    4.064325
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 2.886731   1.935349    4.305795
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.251180   2.711718   10.168790
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.304507   3.859300    4.801072


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0054669   0.0000314   0.0109024
iLiNS-DYAD-M   MALAWI       0                    NA                0.0134478   0.0057253   0.0211702
JiVitA-3       BANGLADESH   0                    NA                0.0146782   0.0125960   0.0167605
JiVitA-4       BANGLADESH   0                    NA                0.0042239   0.0019864   0.0064615
Keneba         GAMBIA       0                    NA                0.0096392   0.0048230   0.0144554
SAS-CompFeed   INDIA        0                    NA                0.0144957   0.0063071   0.0226844
VITAMIN-A      INDIA        0                    NA                0.0140938   0.0095171   0.0186706
ZVITAMBO       ZIMBABWE     0                    NA                0.0298136   0.0266604   0.0329667


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0870867   -0.0023957   0.1685811
iLiNS-DYAD-M   MALAWI       0                    NA                0.3673684    0.1544171   0.5266901
JiVitA-3       BANGLADESH   0                    NA                0.4616526    0.4014850   0.5157716
JiVitA-4       BANGLADESH   0                    NA                0.4642823    0.1841384   0.6482326
Keneba         GAMBIA       0                    NA                0.2670565    0.1329040   0.3804537
SAS-CompFeed   INDIA        0                    NA                0.4444394    0.2506527   0.5881115
VITAMIN-A      INDIA        0                    NA                0.7057760    0.4763554   0.8346822
ZVITAMBO       ZIMBABWE     0                    NA                0.3756028    0.3402916   0.4090239

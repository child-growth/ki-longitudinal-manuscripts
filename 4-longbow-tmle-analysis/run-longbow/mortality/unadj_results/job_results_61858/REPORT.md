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

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        pers_wasted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                   0      296     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                   1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   0       40     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                   1        0     338  dead             
EE                PAKISTAN                       0                   0      349     380  dead             
EE                PAKISTAN                       0                   1        4     380  dead             
EE                PAKISTAN                       1                   0       27     380  dead             
EE                PAKISTAN                       1                   1        0     380  dead             
GMS-Nepal         NEPAL                          0                   0      592     686  dead             
GMS-Nepal         NEPAL                          0                   1        5     686  dead             
GMS-Nepal         NEPAL                          1                   0       87     686  dead             
GMS-Nepal         NEPAL                          1                   1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                   0     1675    1814  dead             
iLiNS-DOSE        MALAWI                         0                   1      110    1814  dead             
iLiNS-DOSE        MALAWI                         1                   0       25    1814  dead             
iLiNS-DOSE        MALAWI                         1                   1        4    1814  dead             
iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182  dead             
iLiNS-DYAD-M      MALAWI                         0                   1       33    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   0       53    1182  dead             
iLiNS-DYAD-M      MALAWI                         1                   1        5    1182  dead             
JiVitA-3          BANGLADESH                     0                   0    24564   26918  dead             
JiVitA-3          BANGLADESH                     0                   1      446   26918  dead             
JiVitA-3          BANGLADESH                     1                   0     1793   26918  dead             
JiVitA-3          BANGLADESH                     1                   1      115   26918  dead             
JiVitA-4          BANGLADESH                     0                   0     4866    5252  dead             
JiVitA-4          BANGLADESH                     0                   1       42    5252  dead             
JiVitA-4          BANGLADESH                     1                   0      339    5252  dead             
JiVitA-4          BANGLADESH                     1                   1        5    5252  dead             
Keneba            GAMBIA                         0                   0     2331    2480  dead             
Keneba            GAMBIA                         0                   1       51    2480  dead             
Keneba            GAMBIA                         1                   0       92    2480  dead             
Keneba            GAMBIA                         1                   1        6    2480  dead             
MAL-ED            BANGLADESH                     0                   0      251     263  dead             
MAL-ED            BANGLADESH                     0                   1        2     263  dead             
MAL-ED            BANGLADESH                     1                   0       10     263  dead             
MAL-ED            BANGLADESH                     1                   1        0     263  dead             
MAL-ED            INDIA                          0                   0      231     251  dead             
MAL-ED            INDIA                          0                   1        2     251  dead             
MAL-ED            INDIA                          1                   0       18     251  dead             
MAL-ED            INDIA                          1                   1        0     251  dead             
MAL-ED            PERU                           0                   0      300     302  dead             
MAL-ED            PERU                           0                   1        2     302  dead             
MAL-ED            PERU                           1                   0        0     302  dead             
MAL-ED            PERU                           1                   1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                   0      305     312  dead             
MAL-ED            SOUTH AFRICA                   0                   1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                   0        7     312  dead             
MAL-ED            SOUTH AFRICA                   1                   1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      258     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0        0     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     261  dead             
PROVIDE           BANGLADESH                     0                   0      669     700  dead             
PROVIDE           BANGLADESH                     0                   1        4     700  dead             
PROVIDE           BANGLADESH                     1                   0       27     700  dead             
PROVIDE           BANGLADESH                     1                   1        0     700  dead             
SAS-CompFeed      INDIA                          0                   0     1340    1508  dead             
SAS-CompFeed      INDIA                          0                   1       24    1508  dead             
SAS-CompFeed      INDIA                          1                   0      132    1508  dead             
SAS-CompFeed      INDIA                          1                   1       12    1508  dead             
SAS-FoodSuppl     INDIA                          0                   0      316     418  dead             
SAS-FoodSuppl     INDIA                          0                   1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                   0       96     418  dead             
SAS-FoodSuppl     INDIA                          1                   1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2327    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       68    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396  dead             
VITAMIN-A         INDIA                          0                   0     2967    3895  dead             
VITAMIN-A         INDIA                          0                   1       36    3895  dead             
VITAMIN-A         INDIA                          1                   0      853    3895  dead             
VITAMIN-A         INDIA                          1                   1       39    3895  dead             
ZVITAMBO          ZIMBABWE                       0                   0    12019   13862  dead             
ZVITAMBO          ZIMBABWE                       0                   1      846   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   0      796   13862  dead             
ZVITAMBO          ZIMBABWE                       1                   1      201   13862  dead             


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
![](/tmp/60330666-442f-4b62-afad-07f22c49564c/d0e9abc3-379b-448f-96e1-29fa10c0655c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60330666-442f-4b62-afad-07f22c49564c/d0e9abc3-379b-448f-96e1-29fa10c0655c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60330666-442f-4b62-afad-07f22c49564c/d0e9abc3-379b-448f-96e1-29fa10c0655c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60330666-442f-4b62-afad-07f22c49564c/d0e9abc3-379b-448f-96e1-29fa10c0655c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
iLiNS-DYAD-M   MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
JiVitA-3       BANGLADESH   0                    NA                0.0178329   0.0162144   0.0194513
JiVitA-3       BANGLADESH   1                    NA                0.0602725   0.0489881   0.0715570
JiVitA-4       BANGLADESH   0                    NA                0.0085575   0.0057769   0.0113380
JiVitA-4       BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774
Keneba         GAMBIA       0                    NA                0.0214106   0.0155965   0.0272246
Keneba         GAMBIA       1                    NA                0.0612245   0.0137494   0.1086996
SAS-CompFeed   INDIA        0                    NA                0.0175953   0.0097989   0.0253918
SAS-CompFeed   INDIA        1                    NA                0.0833333   0.0339558   0.1327109
VITAMIN-A      INDIA        0                    NA                0.0119880   0.0080950   0.0158810
VITAMIN-A      INDIA        1                    NA                0.0437220   0.0303016   0.0571423
ZVITAMBO       ZIMBABWE     0                    NA                0.0657598   0.0614766   0.0700430
ZVITAMBO       ZIMBABWE     1                    NA                0.2016048   0.1767004   0.2265092


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


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.936259   1.190000   7.245058
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 3.379857   2.759390   4.139840
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.698505   0.732828   3.936693
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.859544   1.257420   6.502991
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 4.736111   2.763927   8.115537
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.647141   2.332866   5.701846
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 3.065775   2.666189   3.525249


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
JiVitA-3       BANGLADESH   0                    NA                0.0030082    0.0022090   0.0038074
JiVitA-4       BANGLADESH   0                    NA                0.0003915   -0.0003701   0.0011531
Keneba         GAMBIA       0                    NA                0.0015733   -0.0003413   0.0034878
SAS-CompFeed   INDIA        0                    NA                0.0062774    0.0008215   0.0117333
VITAMIN-A      INDIA        0                    NA                0.0072674    0.0040400   0.0104948
ZVITAMBO       ZIMBABWE     0                    NA                0.0097704    0.0078613   0.0116795


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
JiVitA-3       BANGLADESH   0                    NA                0.1443403    0.1081038   0.1791045
JiVitA-4       BANGLADESH   0                    NA                0.0437497   -0.0456966   0.1255450
Keneba         GAMBIA       0                    NA                0.0684520   -0.0167295   0.1464969
SAS-CompFeed   INDIA        0                    NA                0.2629521    0.0783839   0.4105576
VITAMIN-A      INDIA        0                    NA                0.3774226    0.2137743   0.5070084
ZVITAMBO       ZIMBABWE     0                    NA                0.1293577    0.1047216   0.1533157

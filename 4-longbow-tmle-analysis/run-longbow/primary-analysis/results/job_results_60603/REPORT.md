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

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        pers_wasted06    dead   n_cell       n
----------------  -----------------------------  --------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                   0      296     338
Burkina Faso Zn   BURKINA FASO                   0                   1        2     338
Burkina Faso Zn   BURKINA FASO                   1                   0       40     338
Burkina Faso Zn   BURKINA FASO                   1                   1        0     338
EE                PAKISTAN                       0                   0      349     380
EE                PAKISTAN                       0                   1        4     380
EE                PAKISTAN                       1                   0       27     380
EE                PAKISTAN                       1                   1        0     380
GMS-Nepal         NEPAL                          0                   0      592     686
GMS-Nepal         NEPAL                          0                   1        5     686
GMS-Nepal         NEPAL                          1                   0       87     686
GMS-Nepal         NEPAL                          1                   1        2     686
iLiNS-DOSE        MALAWI                         0                   0     1675    1814
iLiNS-DOSE        MALAWI                         0                   1      110    1814
iLiNS-DOSE        MALAWI                         1                   0       25    1814
iLiNS-DOSE        MALAWI                         1                   1        4    1814
iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182
iLiNS-DYAD-M      MALAWI                         0                   1       33    1182
iLiNS-DYAD-M      MALAWI                         1                   0       53    1182
iLiNS-DYAD-M      MALAWI                         1                   1        5    1182
JiVitA-3          BANGLADESH                     0                   0    24564   26918
JiVitA-3          BANGLADESH                     0                   1      446   26918
JiVitA-3          BANGLADESH                     1                   0     1793   26918
JiVitA-3          BANGLADESH                     1                   1      115   26918
JiVitA-4          BANGLADESH                     0                   0     4866    5252
JiVitA-4          BANGLADESH                     0                   1       42    5252
JiVitA-4          BANGLADESH                     1                   0      339    5252
JiVitA-4          BANGLADESH                     1                   1        5    5252
Keneba            GAMBIA                         0                   0     2331    2480
Keneba            GAMBIA                         0                   1       51    2480
Keneba            GAMBIA                         1                   0       92    2480
Keneba            GAMBIA                         1                   1        6    2480
MAL-ED            BANGLADESH                     0                   0      251     263
MAL-ED            BANGLADESH                     0                   1        2     263
MAL-ED            BANGLADESH                     1                   0       10     263
MAL-ED            BANGLADESH                     1                   1        0     263
MAL-ED            INDIA                          0                   0      231     251
MAL-ED            INDIA                          0                   1        2     251
MAL-ED            INDIA                          1                   0       18     251
MAL-ED            INDIA                          1                   1        0     251
MAL-ED            PERU                           0                   0      300     302
MAL-ED            PERU                           0                   1        2     302
MAL-ED            PERU                           1                   0        0     302
MAL-ED            PERU                           1                   1        0     302
MAL-ED            SOUTH AFRICA                   0                   0      305     312
MAL-ED            SOUTH AFRICA                   0                   1        0     312
MAL-ED            SOUTH AFRICA                   1                   0        7     312
MAL-ED            SOUTH AFRICA                   1                   1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      258     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
PROVIDE           BANGLADESH                     0                   0      669     700
PROVIDE           BANGLADESH                     0                   1        4     700
PROVIDE           BANGLADESH                     1                   0       27     700
PROVIDE           BANGLADESH                     1                   1        0     700
SAS-CompFeed      INDIA                          0                   0     1340    1508
SAS-CompFeed      INDIA                          0                   1       24    1508
SAS-CompFeed      INDIA                          1                   0      132    1508
SAS-CompFeed      INDIA                          1                   1       12    1508
SAS-FoodSuppl     INDIA                          0                   0      316     418
SAS-FoodSuppl     INDIA                          0                   1        2     418
SAS-FoodSuppl     INDIA                          1                   0       96     418
SAS-FoodSuppl     INDIA                          1                   1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2327    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       68    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
VITAMIN-A         INDIA                          0                   0     2967    3895
VITAMIN-A         INDIA                          0                   1       36    3895
VITAMIN-A         INDIA                          1                   0      853    3895
VITAMIN-A         INDIA                          1                   1       39    3895
ZVITAMBO          ZIMBABWE                       0                   0    12019   13862
ZVITAMBO          ZIMBABWE                       0                   1      846   13862
ZVITAMBO          ZIMBABWE                       1                   0      796   13862
ZVITAMBO          ZIMBABWE                       1                   1      201   13862


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7bea1507-762a-4b29-9d92-9783a83d09fb/4bfd7929-f501-4527-a533-a9415aea468a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7bea1507-762a-4b29-9d92-9783a83d09fb/4bfd7929-f501-4527-a533-a9415aea468a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7bea1507-762a-4b29-9d92-9783a83d09fb/4bfd7929-f501-4527-a533-a9415aea468a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7bea1507-762a-4b29-9d92-9783a83d09fb/4bfd7929-f501-4527-a533-a9415aea468a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
iLiNS-DYAD-M   MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
JiVitA-3       BANGLADESH   0                    NA                0.0178652   0.0162465   0.0194838
JiVitA-3       BANGLADESH   1                    NA                0.0598853   0.0486090   0.0711616
JiVitA-4       BANGLADESH   0                    NA                0.0085575   0.0057769   0.0113380
JiVitA-4       BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774
Keneba         GAMBIA       0                    NA                0.0214106   0.0155965   0.0272246
Keneba         GAMBIA       1                    NA                0.0612245   0.0137494   0.1086996
SAS-CompFeed   INDIA        0                    NA                0.0175383   0.0097705   0.0253061
SAS-CompFeed   INDIA        1                    NA                0.0960108   0.0436683   0.1483533
VITAMIN-A      INDIA        0                    NA                0.0120487   0.0081508   0.0159466
VITAMIN-A      INDIA        1                    NA                0.0433715   0.0298592   0.0568837
ZVITAMBO       ZIMBABWE     0                    NA                0.0660251   0.0617286   0.0703215
ZVITAMBO       ZIMBABWE     1                    NA                0.2232836   0.1934127   0.2531545


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
JiVitA-3       BANGLADESH   1                    0                 3.352070   2.734594   4.108974
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.698505   0.732828   3.936693
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.859544   1.257420   6.502991
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 5.474342   3.293463   9.099365
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.599678   2.297458   5.640008
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 3.381800   2.915636   3.922496


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
JiVitA-3       BANGLADESH   0                    NA                0.0029759    0.0021788   0.0037730
JiVitA-4       BANGLADESH   0                    NA                0.0003915   -0.0003701   0.0011531
Keneba         GAMBIA       0                    NA                0.0015733   -0.0003413   0.0034878
SAS-CompFeed   INDIA        0                    NA                0.0063344    0.0008249   0.0118438
VITAMIN-A      INDIA        0                    NA                0.0072067    0.0039799   0.0104336
ZVITAMBO       ZIMBABWE     0                    NA                0.0095052    0.0076254   0.0113849


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
JiVitA-3       BANGLADESH   0                    NA                0.1427900    0.1066416   0.1774756
JiVitA-4       BANGLADESH   0                    NA                0.0437497   -0.0456966   0.1255450
Keneba         GAMBIA       0                    NA                0.0684520   -0.0167295   0.1464969
SAS-CompFeed   INDIA        0                    NA                0.2653393    0.0789971   0.4139798
VITAMIN-A      INDIA        0                    NA                0.3742705    0.2105831   0.5040169
ZVITAMBO       ZIMBABWE     0                    NA                0.1258456    0.1015249   0.1495081

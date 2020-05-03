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

studyid           country                        pers_wasted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      296     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        0       40     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead0plus        
EE                PAKISTAN                       0                        0      349     380  dead0plus        
EE                PAKISTAN                       0                        1        4     380  dead0plus        
EE                PAKISTAN                       1                        0       27     380  dead0plus        
EE                PAKISTAN                       1                        1        0     380  dead0plus        
GMS-Nepal         NEPAL                          0                        0      592     686  dead0plus        
GMS-Nepal         NEPAL                          0                        1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                        0       87     686  dead0plus        
GMS-Nepal         NEPAL                          1                        1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                        0     1675    1814  dead0plus        
iLiNS-DOSE        MALAWI                         0                        1      110    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        0       25    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        1        4    1814  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        1       36    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        0       52    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        1        6    1182  dead0plus        
JiVitA-3          BANGLADESH                     0                        0    24532   26918  dead0plus        
JiVitA-3          BANGLADESH                     0                        1      478   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        0     1785   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        1      123   26918  dead0plus        
JiVitA-4          BANGLADESH                     0                        0     4865    5252  dead0plus        
JiVitA-4          BANGLADESH                     0                        1       43    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        0      339    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        1        5    5252  dead0plus        
Keneba            GAMBIA                         0                        0     2305    2480  dead0plus        
Keneba            GAMBIA                         0                        1       77    2480  dead0plus        
Keneba            GAMBIA                         1                        0       89    2480  dead0plus        
Keneba            GAMBIA                         1                        1        9    2480  dead0plus        
MAL-ED            BANGLADESH                     0                        0      251     263  dead0plus        
MAL-ED            BANGLADESH                     0                        1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                        0       10     263  dead0plus        
MAL-ED            BANGLADESH                     1                        1        0     263  dead0plus        
MAL-ED            INDIA                          0                        0      231     251  dead0plus        
MAL-ED            INDIA                          0                        1        2     251  dead0plus        
MAL-ED            INDIA                          1                        0       18     251  dead0plus        
MAL-ED            INDIA                          1                        1        0     251  dead0plus        
MAL-ED            PERU                           0                        0      300     302  dead0plus        
MAL-ED            PERU                           0                        1        2     302  dead0plus        
MAL-ED            PERU                           1                        0        0     302  dead0plus        
MAL-ED            PERU                           1                        1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        0      305     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        0        7     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      258     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0        0     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                        0      668     700  dead0plus        
PROVIDE           BANGLADESH                     0                        1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                        0       27     700  dead0plus        
PROVIDE           BANGLADESH                     1                        1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                        0     1340    1508  dead0plus        
SAS-CompFeed      INDIA                          0                        1       24    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        0      132    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        1       12    1508  dead0plus        
SAS-FoodSuppl     INDIA                          0                        0      316     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                        1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        0       96     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2327    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0       68    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                        0     2967    3895  dead0plus        
VITAMIN-A         INDIA                          0                        1       36    3895  dead0plus        
VITAMIN-A         INDIA                          1                        0      853    3895  dead0plus        
VITAMIN-A         INDIA                          1                        1       39    3895  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        0    12010   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        1      855   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        0      796   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        1      201   13862  dead0plus        


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
![](/tmp/8c0a22d8-d7fe-4c94-b332-1467ef111ad6/11a16c04-bb87-4f6f-bb26-c8f8aa8f59f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c0a22d8-d7fe-4c94-b332-1467ef111ad6/11a16c04-bb87-4f6f-bb26-c8f8aa8f59f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c0a22d8-d7fe-4c94-b332-1467ef111ad6/11a16c04-bb87-4f6f-bb26-c8f8aa8f59f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c0a22d8-d7fe-4c94-b332-1467ef111ad6/11a16c04-bb87-4f6f-bb26-c8f8aa8f59f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0320285   0.0217306   0.0423264
iLiNS-DYAD-M   MALAWI       1                    NA                0.1034483   0.0250390   0.1818575
JiVitA-3       BANGLADESH   0                    NA                0.0191449   0.0174459   0.0208440
JiVitA-3       BANGLADESH   1                    NA                0.0632413   0.0515196   0.0749631
JiVitA-4       BANGLADESH   0                    NA                0.0087612   0.0059408   0.0115816
JiVitA-4       BANGLADESH   1                    NA                0.0145349   0.0031924   0.0258774
Keneba         GAMBIA       0                    NA                0.0323258   0.0252218   0.0394298
Keneba         GAMBIA       1                    NA                0.0918367   0.0346477   0.1490258
SAS-CompFeed   INDIA        0                    NA                0.0175383   0.0097705   0.0253061
SAS-CompFeed   INDIA        1                    NA                0.0960108   0.0436683   0.1483533
VITAMIN-A      INDIA        0                    NA                0.0120147   0.0081225   0.0159069
VITAMIN-A      INDIA        1                    NA                0.0431765   0.0297264   0.0566266
ZVITAMBO       ZIMBABWE     0                    NA                0.0666525   0.0623399   0.0709651
ZVITAMBO       ZIMBABWE     1                    NA                0.2317557   0.2018589   0.2616525


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
JiVitA-3       BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
JiVitA-4       BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858
Keneba         GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.229885   1.4178129   7.357923
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 3.303295   2.6977998   4.044688
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.659005   0.7165587   3.840993
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.840975   1.4678255   5.498706
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 5.474342   3.2934630   9.099365
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.593644   2.2926593   5.632880
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 3.477074   3.0111140   4.015141


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0035045   -0.0004745   0.0074836
JiVitA-3       BANGLADESH   0                    NA                0.0031821    0.0023561   0.0040081
JiVitA-4       BANGLADESH   0                    NA                0.0003782   -0.0003841   0.0011404
Keneba         GAMBIA       0                    NA                0.0023516    0.0000291   0.0046742
SAS-CompFeed   INDIA        0                    NA                0.0063344    0.0008249   0.0118438
VITAMIN-A      INDIA        0                    NA                0.0072408    0.0040148   0.0104667
ZVITAMBO       ZIMBABWE     0                    NA                0.0095270    0.0076564   0.0113976


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0986274   -0.0164951   0.2007117
JiVitA-3       BANGLADESH   0                    NA                0.1425239    0.1070954   0.1765467
JiVitA-4       BANGLADESH   0                    NA                0.0413780   -0.0462224   0.1216436
Keneba         GAMBIA       0                    NA                0.0678148   -0.0001263   0.1311405
SAS-CompFeed   INDIA        0                    NA                0.2653393    0.0789971   0.4139798
VITAMIN-A      INDIA        0                    NA                0.3760371    0.2125300   0.5055942
ZVITAMBO       ZIMBABWE     0                    NA                0.1250597    0.1010598   0.1484188

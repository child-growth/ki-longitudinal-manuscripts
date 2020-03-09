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

**Intervention Variable:** ever_swasted06_noBW

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

studyid           country                        ever_swasted06_noBW    dead   n_cell       n
----------------  -----------------------------  --------------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0       41      41
Burkina Faso Zn   BURKINA FASO                   0                         1        0      41
Burkina Faso Zn   BURKINA FASO                   1                         0        0      41
Burkina Faso Zn   BURKINA FASO                   1                         1        0      41
EE                PAKISTAN                       0                         0      351     375
EE                PAKISTAN                       0                         1        4     375
EE                PAKISTAN                       1                         0       20     375
EE                PAKISTAN                       1                         1        0     375
GMS-Nepal         NEPAL                          0                         0      605     642
GMS-Nepal         NEPAL                          0                         1        6     642
GMS-Nepal         NEPAL                          1                         0       31     642
GMS-Nepal         NEPAL                          1                         1        0     642
iLiNS-DOSE        MALAWI                         0                         0     1112    1182
iLiNS-DOSE        MALAWI                         0                         1       70    1182
iLiNS-DOSE        MALAWI                         1                         0        0    1182
iLiNS-DOSE        MALAWI                         1                         1        0    1182
iLiNS-DYAD-M      MALAWI                         0                         0     1059    1093
iLiNS-DYAD-M      MALAWI                         0                         1       34    1093
iLiNS-DYAD-M      MALAWI                         1                         0        0    1093
iLiNS-DYAD-M      MALAWI                         1                         1        0    1093
JiVitA-3          BANGLADESH                     0                         0    25329   26234
JiVitA-3          BANGLADESH                     0                         1      470   26234
JiVitA-3          BANGLADESH                     1                         0      420   26234
JiVitA-3          BANGLADESH                     1                         1       15   26234
JiVitA-4          BANGLADESH                     0                         0     4898    4957
JiVitA-4          BANGLADESH                     0                         1       38    4957
JiVitA-4          BANGLADESH                     1                         0       20    4957
JiVitA-4          BANGLADESH                     1                         1        1    4957
Keneba            GAMBIA                         0                         0     2278    2424
Keneba            GAMBIA                         0                         1       51    2424
Keneba            GAMBIA                         1                         0       90    2424
Keneba            GAMBIA                         1                         1        5    2424
MAL-ED            BANGLADESH                     0                         0      253     262
MAL-ED            BANGLADESH                     0                         1        2     262
MAL-ED            BANGLADESH                     1                         0        7     262
MAL-ED            BANGLADESH                     1                         1        0     262
MAL-ED            INDIA                          0                         0      235     244
MAL-ED            INDIA                          0                         1        2     244
MAL-ED            INDIA                          1                         0        7     244
MAL-ED            INDIA                          1                         1        0     244
MAL-ED            PERU                           0                         0      299     302
MAL-ED            PERU                           0                         1        2     302
MAL-ED            PERU                           1                         0        1     302
MAL-ED            PERU                           1                         1        0     302
MAL-ED            SOUTH AFRICA                   0                         0      304     307
MAL-ED            SOUTH AFRICA                   0                         1        0     307
MAL-ED            SOUTH AFRICA                   1                         0        3     307
MAL-ED            SOUTH AFRICA                   1                         1        0     307
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      255     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     261
PROVIDE           BANGLADESH                     0                         0      673     683
PROVIDE           BANGLADESH                     0                         1        4     683
PROVIDE           BANGLADESH                     1                         0        6     683
PROVIDE           BANGLADESH                     1                         1        0     683
SAS-CompFeed      INDIA                          0                         0     1401    1473
SAS-CompFeed      INDIA                          0                         1       26    1473
SAS-CompFeed      INDIA                          1                         0       40    1473
SAS-CompFeed      INDIA                          1                         1        6    1473
SAS-FoodSuppl     INDIA                          0                         0      339     341
SAS-FoodSuppl     INDIA                          0                         1        2     341
SAS-FoodSuppl     INDIA                          1                         0        0     341
SAS-FoodSuppl     INDIA                          1                         1        0     341
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2333    2376
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2376
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       42    2376
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2376
VITAMIN-A         INDIA                          0                         0     3253    3301
VITAMIN-A         INDIA                          0                         1       45    3301
VITAMIN-A         INDIA                          1                         0        3    3301
VITAMIN-A         INDIA                          1                         1        0    3301
ZVITAMBO          ZIMBABWE                       0                         0    12328   13376
ZVITAMBO          ZIMBABWE                       0                         1      916   13376
ZVITAMBO          ZIMBABWE                       1                         0      109   13376
ZVITAMBO          ZIMBABWE                       1                         1       23   13376


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
* studyid: VITAMIN-A, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/872480ed-6529-4567-8678-57e3763eba05/8a07b348-97bc-40c8-ac8a-932938323b3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/872480ed-6529-4567-8678-57e3763eba05/8a07b348-97bc-40c8-ac8a-932938323b3b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/872480ed-6529-4567-8678-57e3763eba05/8a07b348-97bc-40c8-ac8a-932938323b3b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/872480ed-6529-4567-8678-57e3763eba05/8a07b348-97bc-40c8-ac8a-932938323b3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0182213   0.0165723   0.0198703
JiVitA-3       BANGLADESH   1                    NA                0.0339403   0.0218772   0.0460034
Keneba         GAMBIA       0                    NA                0.0218978   0.0159529   0.0278427
Keneba         GAMBIA       1                    NA                0.0526316   0.0077200   0.0975432
SAS-CompFeed   INDIA        0                    NA                0.0182200   0.0089631   0.0274770
SAS-CompFeed   INDIA        1                    NA                0.1304348   0.0352161   0.2256534
ZVITAMBO       ZIMBABWE     0                    NA                0.0691466   0.0647581   0.0735351
ZVITAMBO       ZIMBABWE     1                    NA                0.1727112   0.1463812   0.1990413


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0184875   0.0168427   0.0201323
Keneba         GAMBIA       NA                   NA                0.0231023   0.0171206   0.0290840
SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ZVITAMBO       ZIMBABWE     NA                   NA                0.0702004   0.0658706   0.0745301


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 1.862670   1.2939116    2.681435
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.403509   0.9816343    5.884935
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.158863   2.5902900   19.785166
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.497755   2.1175216    2.946266


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0002661   -0.0000370   0.0005693
Keneba         GAMBIA       0                    NA                0.0012045   -0.0005868   0.0029958
SAS-CompFeed   INDIA        0                    NA                0.0035043    0.0009152   0.0060935
ZVITAMBO       ZIMBABWE     0                    NA                0.0010538    0.0003808   0.0017268


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0143962   -0.0020861   0.0306073
Keneba         GAMBIA       0                    NA                0.0521376   -0.0274339   0.1255467
SAS-CompFeed   INDIA        0                    NA                0.1613087   -0.0013692   0.2975587
ZVITAMBO       ZIMBABWE     0                    NA                0.0150109    0.0053229   0.0246046

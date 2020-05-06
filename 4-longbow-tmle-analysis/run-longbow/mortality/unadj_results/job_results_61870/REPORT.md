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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sunderweight06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                            0      313     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                            1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                            0       21     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                            1        0     336  dead624          
EE                PAKISTAN                       0                            0      215     375  dead624          
EE                PAKISTAN                       0                            1        1     375  dead624          
EE                PAKISTAN                       1                            0      156     375  dead624          
EE                PAKISTAN                       1                            1        3     375  dead624          
GMS-Nepal         NEPAL                          0                            0      508     592  dead624          
GMS-Nepal         NEPAL                          0                            1        1     592  dead624          
GMS-Nepal         NEPAL                          1                            0       82     592  dead624          
GMS-Nepal         NEPAL                          1                            1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                            0     1593    1759  dead624          
iLiNS-DOSE        MALAWI                         0                            1      105    1759  dead624          
iLiNS-DOSE        MALAWI                         1                            0       53    1759  dead624          
iLiNS-DOSE        MALAWI                         1                            1        8    1759  dead624          
iLiNS-DYAD-M      MALAWI                         0                            0     1057    1158  dead624          
iLiNS-DYAD-M      MALAWI                         0                            1       19    1158  dead624          
iLiNS-DYAD-M      MALAWI                         1                            0       77    1158  dead624          
iLiNS-DYAD-M      MALAWI                         1                            1        5    1158  dead624          
JiVitA-3          BANGLADESH                     0                            0    17600   21023  dead624          
JiVitA-3          BANGLADESH                     0                            1      169   21023  dead624          
JiVitA-3          BANGLADESH                     1                            0     3153   21023  dead624          
JiVitA-3          BANGLADESH                     1                            1      101   21023  dead624          
JiVitA-4          BANGLADESH                     0                            0     4708    5266  dead624          
JiVitA-4          BANGLADESH                     0                            1       31    5266  dead624          
JiVitA-4          BANGLADESH                     1                            0      511    5266  dead624          
JiVitA-4          BANGLADESH                     1                            1       16    5266  dead624          
Keneba            GAMBIA                         0                            0     2270    2464  dead624          
Keneba            GAMBIA                         0                            1       30    2464  dead624          
Keneba            GAMBIA                         1                            0      153    2464  dead624          
Keneba            GAMBIA                         1                            1       11    2464  dead624          
MAL-ED            BANGLADESH                     0                            0      224     240  dead624          
MAL-ED            BANGLADESH                     0                            1        0     240  dead624          
MAL-ED            BANGLADESH                     1                            0       16     240  dead624          
MAL-ED            BANGLADESH                     1                            1        0     240  dead624          
MAL-ED            INDIA                          0                            0      204     235  dead624          
MAL-ED            INDIA                          0                            1        0     235  dead624          
MAL-ED            INDIA                          1                            0       31     235  dead624          
MAL-ED            INDIA                          1                            1        0     235  dead624          
MAL-ED            PERU                           0                            0      263     273  dead624          
MAL-ED            PERU                           0                            1        1     273  dead624          
MAL-ED            PERU                           1                            0        9     273  dead624          
MAL-ED            PERU                           1                            1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                            0      249     261  dead624          
MAL-ED            SOUTH AFRICA                   0                            1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                            0       12     261  dead624          
MAL-ED            SOUTH AFRICA                   1                            1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            0      237     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                            1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            0        8     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                            1        0     245  dead624          
PROVIDE           BANGLADESH                     0                            0      572     617  dead624          
PROVIDE           BANGLADESH                     0                            1        2     617  dead624          
PROVIDE           BANGLADESH                     1                            0       43     617  dead624          
PROVIDE           BANGLADESH                     1                            1        0     617  dead624          
SAS-CompFeed      INDIA                          0                            0     1164    1389  dead624          
SAS-CompFeed      INDIA                          0                            1        5    1389  dead624          
SAS-CompFeed      INDIA                          1                            0      213    1389  dead624          
SAS-CompFeed      INDIA                          1                            1        7    1389  dead624          
SAS-FoodSuppl     INDIA                          0                            0      291     400  dead624          
SAS-FoodSuppl     INDIA                          0                            1        1     400  dead624          
SAS-FoodSuppl     INDIA                          1                            0      105     400  dead624          
SAS-FoodSuppl     INDIA                          1                            1        3     400  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     2034    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0       62    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2096  dead624          
VITAMIN-A         INDIA                          0                            0     2673    3615  dead624          
VITAMIN-A         INDIA                          0                            1       14    3615  dead624          
VITAMIN-A         INDIA                          1                            0      910    3615  dead624          
VITAMIN-A         INDIA                          1                            1       18    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                            0    10798   11707  dead624          
ZVITAMBO          ZIMBABWE                       0                            1      296   11707  dead624          
ZVITAMBO          ZIMBABWE                       1                            0      503   11707  dead624          
ZVITAMBO          ZIMBABWE                       1                            1      110   11707  dead624          


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
![](/tmp/fccf24df-1340-4311-afe3-fc055387f584/f7438e4c-866a-4dda-8042-4e00ed7e137d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fccf24df-1340-4311-afe3-fc055387f584/f7438e4c-866a-4dda-8042-4e00ed7e137d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fccf24df-1340-4311-afe3-fc055387f584/f7438e4c-866a-4dda-8042-4e00ed7e137d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fccf24df-1340-4311-afe3-fc055387f584/f7438e4c-866a-4dda-8042-4e00ed7e137d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0618375    0.0503779   0.0732970
iLiNS-DOSE     MALAWI       1                    NA                0.1311475    0.0464131   0.2158819
iLiNS-DYAD-M   MALAWI       0                    NA                0.0176580    0.0097851   0.0255308
iLiNS-DYAD-M   MALAWI       1                    NA                0.0609756    0.0091618   0.1127894
JiVitA-3       BANGLADESH   0                    NA                0.0095109    0.0080668   0.0109551
JiVitA-3       BANGLADESH   1                    NA                0.0310387    0.0248541   0.0372234
JiVitA-4       BANGLADESH   0                    NA                0.0065415    0.0040863   0.0089966
JiVitA-4       BANGLADESH   1                    NA                0.0303605    0.0146631   0.0460580
Keneba         GAMBIA       0                    NA                0.0130435    0.0084056   0.0176813
Keneba         GAMBIA       1                    NA                0.0670732    0.0287808   0.1053656
SAS-CompFeed   INDIA        0                    NA                0.0042772   -0.0001115   0.0086658
SAS-CompFeed   INDIA        1                    NA                0.0318182    0.0181644   0.0454719
VITAMIN-A      INDIA        0                    NA                0.0052103    0.0024878   0.0079328
VITAMIN-A      INDIA        1                    NA                0.0193966    0.0105221   0.0282710
ZVITAMBO       ZIMBABWE     0                    NA                0.0266811    0.0236823   0.0296799
ZVITAMBO       ZIMBABWE     1                    NA                0.1794454    0.1490676   0.2098231


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0207254   0.0125165   0.0289343
JiVitA-3       BANGLADESH   NA                   NA                0.0128431   0.0112928   0.0143934
JiVitA-4       BANGLADESH   NA                   NA                0.0089252   0.0062212   0.0116291
Keneba         GAMBIA       NA                   NA                0.0166396   0.0115878   0.0216914
SAS-CompFeed   INDIA        NA                   NA                0.0086393   0.0042356   0.0130430
VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO       ZIMBABWE     NA                   NA                0.0346801   0.0313656   0.0379946


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.120843   1.082921    4.153557
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.453145   1.322700    9.015052
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.263474   2.537029    4.197927
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.641244   2.443722    8.814891
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.142276   2.624570   10.075175
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.439091   2.727800   20.287438
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.722752   1.858809    7.455790
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 6.725563   5.488825    8.240963


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0024036   -0.0006203   0.0054275
iLiNS-DYAD-M   MALAWI       0                    NA                0.0030674   -0.0006986   0.0068334
JiVitA-3       BANGLADESH   0                    NA                0.0033321    0.0023408   0.0043235
JiVitA-4       BANGLADESH   0                    NA                0.0023837    0.0007927   0.0039747
Keneba         GAMBIA       0                    NA                0.0035961    0.0009743   0.0062180
SAS-CompFeed   INDIA        0                    NA                0.0043621    0.0020152   0.0067091
VITAMIN-A      INDIA        0                    NA                0.0036417    0.0012502   0.0060332
ZVITAMBO       ZIMBABWE     0                    NA                0.0079990    0.0062859   0.0097121


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0374152   -0.0103929   0.0829612
iLiNS-DYAD-M   MALAWI       0                    NA                0.1480019   -0.0430202   0.3040395
JiVitA-3       BANGLADESH   0                    NA                0.2594496    0.1860897   0.3261973
JiVitA-4       BANGLADESH   0                    NA                0.2670776    0.0885319   0.4106483
Keneba         GAMBIA       0                    NA                0.2161188    0.0584623   0.3473764
SAS-CompFeed   INDIA        0                    NA                0.5049187    0.0566503   0.7401754
VITAMIN-A      INDIA        0                    NA                0.4114021    0.1294884   0.6020186
ZVITAMBO       ZIMBABWE     0                    NA                0.2306515    0.1848297   0.2738975

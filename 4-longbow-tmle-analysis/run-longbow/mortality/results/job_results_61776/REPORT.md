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

**Intervention Variable:** ever_underweight06

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_underweight06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                           0      260     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                           1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                           0       74     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                           1        0     336  dead624          
EE                PAKISTAN                       0                           0      102     375  dead624          
EE                PAKISTAN                       0                           1        0     375  dead624          
EE                PAKISTAN                       1                           0      269     375  dead624          
EE                PAKISTAN                       1                           1        4     375  dead624          
GMS-Nepal         NEPAL                          0                           0      319     592  dead624          
GMS-Nepal         NEPAL                          0                           1        1     592  dead624          
GMS-Nepal         NEPAL                          1                           0      271     592  dead624          
GMS-Nepal         NEPAL                          1                           1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                           0     1415    1759  dead624          
iLiNS-DOSE        MALAWI                         0                           1       89    1759  dead624          
iLiNS-DOSE        MALAWI                         1                           0      231    1759  dead624          
iLiNS-DOSE        MALAWI                         1                           1       24    1759  dead624          
iLiNS-DYAD-M      MALAWI                         0                           0      908    1158  dead624          
iLiNS-DYAD-M      MALAWI                         0                           1       16    1158  dead624          
iLiNS-DYAD-M      MALAWI                         1                           0      226    1158  dead624          
iLiNS-DYAD-M      MALAWI                         1                           1        8    1158  dead624          
JiVitA-3          BANGLADESH                     0                           0    11458   21023  dead624          
JiVitA-3          BANGLADESH                     0                           1      104   21023  dead624          
JiVitA-3          BANGLADESH                     1                           0     9295   21023  dead624          
JiVitA-3          BANGLADESH                     1                           1      166   21023  dead624          
JiVitA-4          BANGLADESH                     0                           0     3463    5266  dead624          
JiVitA-4          BANGLADESH                     0                           1       17    5266  dead624          
JiVitA-4          BANGLADESH                     1                           0     1756    5266  dead624          
JiVitA-4          BANGLADESH                     1                           1       30    5266  dead624          
Keneba            GAMBIA                         0                           0     1921    2464  dead624          
Keneba            GAMBIA                         0                           1       26    2464  dead624          
Keneba            GAMBIA                         1                           0      502    2464  dead624          
Keneba            GAMBIA                         1                           1       15    2464  dead624          
MAL-ED            BANGLADESH                     0                           0      161     240  dead624          
MAL-ED            BANGLADESH                     0                           1        0     240  dead624          
MAL-ED            BANGLADESH                     1                           0       79     240  dead624          
MAL-ED            BANGLADESH                     1                           1        0     240  dead624          
MAL-ED            INDIA                          0                           0      134     235  dead624          
MAL-ED            INDIA                          0                           1        0     235  dead624          
MAL-ED            INDIA                          1                           0      101     235  dead624          
MAL-ED            INDIA                          1                           1        0     235  dead624          
MAL-ED            PERU                           0                           0      225     273  dead624          
MAL-ED            PERU                           0                           1        1     273  dead624          
MAL-ED            PERU                           1                           0       47     273  dead624          
MAL-ED            PERU                           1                           1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                           0      216     261  dead624          
MAL-ED            SOUTH AFRICA                   0                           1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                           0       45     261  dead624          
MAL-ED            SOUTH AFRICA                   1                           1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      203     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0       42     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        0     245  dead624          
PROVIDE           BANGLADESH                     0                           0      414     617  dead624          
PROVIDE           BANGLADESH                     0                           1        1     617  dead624          
PROVIDE           BANGLADESH                     1                           0      201     617  dead624          
PROVIDE           BANGLADESH                     1                           1        1     617  dead624          
SAS-CompFeed      INDIA                          0                           0      805    1389  dead624          
SAS-CompFeed      INDIA                          0                           1        1    1389  dead624          
SAS-CompFeed      INDIA                          1                           0      572    1389  dead624          
SAS-CompFeed      INDIA                          1                           1       11    1389  dead624          
SAS-FoodSuppl     INDIA                          0                           0      187     400  dead624          
SAS-FoodSuppl     INDIA                          0                           1        1     400  dead624          
SAS-FoodSuppl     INDIA                          1                           0      209     400  dead624          
SAS-FoodSuppl     INDIA                          1                           1        3     400  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1843    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      253    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2096  dead624          
VITAMIN-A         INDIA                          0                           0     1579    3615  dead624          
VITAMIN-A         INDIA                          0                           1        7    3615  dead624          
VITAMIN-A         INDIA                          1                           0     2004    3615  dead624          
VITAMIN-A         INDIA                          1                           1       25    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                           0     9484   11707  dead624          
ZVITAMBO          ZIMBABWE                       0                           1      207   11707  dead624          
ZVITAMBO          ZIMBABWE                       1                           0     1817   11707  dead624          
ZVITAMBO          ZIMBABWE                       1                           1      199   11707  dead624          


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
* studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/363f2305-87b2-40a9-b669-9ee191b20111/d9dd19b4-24df-4d43-813f-cbae974cd9e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/363f2305-87b2-40a9-b669-9ee191b20111/d9dd19b4-24df-4d43-813f-cbae974cd9e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/363f2305-87b2-40a9-b669-9ee191b20111/d9dd19b4-24df-4d43-813f-cbae974cd9e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/363f2305-87b2-40a9-b669-9ee191b20111/d9dd19b4-24df-4d43-813f-cbae974cd9e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0593446   0.0474029   0.0712862
iLiNS-DOSE     MALAWI       1                    NA                0.0925484   0.0566184   0.1284785
iLiNS-DYAD-M   MALAWI       0                    NA                0.0173160   0.0089015   0.0257306
iLiNS-DYAD-M   MALAWI       1                    NA                0.0341880   0.0108958   0.0574803
JiVitA-3       BANGLADESH   0                    NA                0.0090173   0.0072652   0.0107694
JiVitA-3       BANGLADESH   1                    NA                0.0166755   0.0139651   0.0193858
JiVitA-4       BANGLADESH   0                    NA                0.0048698   0.0021462   0.0075934
JiVitA-4       BANGLADESH   1                    NA                0.0165571   0.0106902   0.0224241
Keneba         GAMBIA       0                    NA                0.0134041   0.0082841   0.0185241
Keneba         GAMBIA       1                    NA                0.0292026   0.0143074   0.0440978
VITAMIN-A      INDIA        0                    NA                0.0044136   0.0011508   0.0076764
VITAMIN-A      INDIA        1                    NA                0.0123213   0.0075206   0.0171220
ZVITAMBO       ZIMBABWE     0                    NA                0.0215858   0.0186904   0.0244812
ZVITAMBO       ZIMBABWE     1                    NA                0.0909396   0.0781781   0.1037011


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0207254   0.0125165   0.0289343
JiVitA-3       BANGLADESH   NA                   NA                0.0128431   0.0112928   0.0143934
JiVitA-4       BANGLADESH   NA                   NA                0.0089252   0.0062212   0.0116291
Keneba         GAMBIA       NA                   NA                0.0166396   0.0115878   0.0216914
VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO       ZIMBABWE     NA                   NA                0.0346801   0.0313656   0.0379946


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.559510   1.0071495   2.414807
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.974359   0.8550476   4.558920
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.849277   1.4384003   2.377521
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.399953   1.7574150   6.577662
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.178627   1.1516151   4.121530
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.791664   1.2104410   6.438469
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.212939   3.4700753   5.114833


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0048965   -0.0006086   0.0104015
iLiNS-DYAD-M   MALAWI       0                    NA                0.0034094   -0.0016103   0.0084290
JiVitA-3       BANGLADESH   0                    NA                0.0038258    0.0023011   0.0053505
JiVitA-4       BANGLADESH   0                    NA                0.0040554    0.0018544   0.0062563
Keneba         GAMBIA       0                    NA                0.0032355   -0.0000040   0.0064750
VITAMIN-A      INDIA        0                    NA                0.0044384    0.0011779   0.0076988
ZVITAMBO       ZIMBABWE     0                    NA                0.0130943    0.0107348   0.0154538


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0762205   -0.0124981   0.1571653
iLiNS-DYAD-M   MALAWI       0                    NA                0.1645022   -0.1050107   0.3682806
JiVitA-3       BANGLADESH   0                    NA                0.2978869    0.1772573   0.4008299
JiVitA-4       BANGLADESH   0                    NA                0.4543734    0.1688378   0.6418167
Keneba         GAMBIA       0                    NA                0.1944442   -0.0144747   0.3603388
VITAMIN-A      INDIA        0                    NA                0.5013990    0.0420265   0.7404907
ZVITAMBO       ZIMBABWE     0                    NA                0.3775744    0.3167639   0.4329725

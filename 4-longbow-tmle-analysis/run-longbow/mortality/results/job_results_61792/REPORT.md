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

**Outcome Variable:** dead6plus

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

studyid           country                        ever_underweight06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0      260     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                             0       74     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0     336  dead6plus        
EE                PAKISTAN                       0                             0      102     375  dead6plus        
EE                PAKISTAN                       0                             1        0     375  dead6plus        
EE                PAKISTAN                       1                             0      269     375  dead6plus        
EE                PAKISTAN                       1                             1        4     375  dead6plus        
GMS-Nepal         NEPAL                          0                             0      319     592  dead6plus        
GMS-Nepal         NEPAL                          0                             1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                             0      271     592  dead6plus        
GMS-Nepal         NEPAL                          1                             1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                             0     1415    1759  dead6plus        
iLiNS-DOSE        MALAWI                         0                             1       89    1759  dead6plus        
iLiNS-DOSE        MALAWI                         1                             0      231    1759  dead6plus        
iLiNS-DOSE        MALAWI                         1                             1       24    1759  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                             0      906    1158  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                             1       18    1158  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                             0      224    1158  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                             1       10    1158  dead6plus        
JiVitA-3          BANGLADESH                     0                             0    11447   21023  dead6plus        
JiVitA-3          BANGLADESH                     0                             1      115   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                             0     9265   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                             1      196   21023  dead6plus        
JiVitA-4          BANGLADESH                     0                             0     3463    5266  dead6plus        
JiVitA-4          BANGLADESH                     0                             1       17    5266  dead6plus        
JiVitA-4          BANGLADESH                     1                             0     1755    5266  dead6plus        
JiVitA-4          BANGLADESH                     1                             1       31    5266  dead6plus        
Keneba            GAMBIA                         0                             0     1900    2464  dead6plus        
Keneba            GAMBIA                         0                             1       47    2464  dead6plus        
Keneba            GAMBIA                         1                             0      489    2464  dead6plus        
Keneba            GAMBIA                         1                             1       28    2464  dead6plus        
MAL-ED            BANGLADESH                     0                             0      161     240  dead6plus        
MAL-ED            BANGLADESH                     0                             1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                             0       79     240  dead6plus        
MAL-ED            BANGLADESH                     1                             1        0     240  dead6plus        
MAL-ED            INDIA                          0                             0      134     235  dead6plus        
MAL-ED            INDIA                          0                             1        0     235  dead6plus        
MAL-ED            INDIA                          1                             0      101     235  dead6plus        
MAL-ED            INDIA                          1                             1        0     235  dead6plus        
MAL-ED            PERU                           0                             0      225     273  dead6plus        
MAL-ED            PERU                           0                             1        1     273  dead6plus        
MAL-ED            PERU                           1                             0       47     273  dead6plus        
MAL-ED            PERU                           1                             1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                             0      216     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                             0       45     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                             1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      203     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       42     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                             0      414     617  dead6plus        
PROVIDE           BANGLADESH                     0                             1        1     617  dead6plus        
PROVIDE           BANGLADESH                     1                             0      200     617  dead6plus        
PROVIDE           BANGLADESH                     1                             1        2     617  dead6plus        
SAS-CompFeed      INDIA                          0                             0      805    1389  dead6plus        
SAS-CompFeed      INDIA                          0                             1        1    1389  dead6plus        
SAS-CompFeed      INDIA                          1                             0      572    1389  dead6plus        
SAS-CompFeed      INDIA                          1                             1       11    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                             0      187     400  dead6plus        
SAS-FoodSuppl     INDIA                          0                             1        1     400  dead6plus        
SAS-FoodSuppl     INDIA                          1                             0      209     400  dead6plus        
SAS-FoodSuppl     INDIA                          1                             1        3     400  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1843    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      253    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                             0     1579    3615  dead6plus        
VITAMIN-A         INDIA                          0                             1        7    3615  dead6plus        
VITAMIN-A         INDIA                          1                             0     2004    3615  dead6plus        
VITAMIN-A         INDIA                          1                             1       25    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                             0     9476   11707  dead6plus        
ZVITAMBO          ZIMBABWE                       0                             1      215   11707  dead6plus        
ZVITAMBO          ZIMBABWE                       1                             0     1815   11707  dead6plus        
ZVITAMBO          ZIMBABWE                       1                             1      201   11707  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/6792a6d3-c7d6-4ffb-b075-0f7d363f08e7/9b2de2f1-fe61-45eb-b9eb-e2a0ff1c313f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6792a6d3-c7d6-4ffb-b075-0f7d363f08e7/9b2de2f1-fe61-45eb-b9eb-e2a0ff1c313f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6792a6d3-c7d6-4ffb-b075-0f7d363f08e7/9b2de2f1-fe61-45eb-b9eb-e2a0ff1c313f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6792a6d3-c7d6-4ffb-b075-0f7d363f08e7/9b2de2f1-fe61-45eb-b9eb-e2a0ff1c313f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0593179   0.0473845   0.0712512
iLiNS-DOSE     MALAWI       1                    NA                0.0911038   0.0550181   0.1271896
iLiNS-DYAD-M   MALAWI       0                    NA                0.0194111   0.0105137   0.0283085
iLiNS-DYAD-M   MALAWI       1                    NA                0.0430690   0.0173887   0.0687493
JiVitA-3       BANGLADESH   0                    NA                0.0102233   0.0082888   0.0121579
JiVitA-3       BANGLADESH   1                    NA                0.0195255   0.0166038   0.0224471
JiVitA-4       BANGLADESH   0                    NA                0.0048897   0.0021654   0.0076140
JiVitA-4       BANGLADESH   1                    NA                0.0169551   0.0109873   0.0229230
Keneba         GAMBIA       0                    NA                0.0245147   0.0176283   0.0314011
Keneba         GAMBIA       1                    NA                0.0531806   0.0330720   0.0732891
VITAMIN-A      INDIA        0                    NA                0.0044136   0.0011508   0.0076764
VITAMIN-A      INDIA        1                    NA                0.0123213   0.0075206   0.0171220
ZVITAMBO       ZIMBABWE     0                    NA                0.0225042   0.0195440   0.0254644
ZVITAMBO       ZIMBABWE     1                    NA                0.0926964   0.0798426   0.1055502


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0241796   0.0153286   0.0330306
JiVitA-3       BANGLADESH   NA                   NA                0.0147933   0.0131485   0.0164382
JiVitA-4       BANGLADESH   NA                   NA                0.0091151   0.0063755   0.0118547
Keneba         GAMBIA       NA                   NA                0.0304383   0.0236539   0.0372227
VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO       ZIMBABWE     NA                   NA                0.0355343   0.0321807   0.0388879


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.535858   0.9848916   2.395046
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.218784   1.0443507   4.713937
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.909894   1.4984831   2.434258
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.467512   1.7963182   6.693492
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.169334   1.3542609   3.474965
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.791664   1.2104410   6.438469
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.119071   3.4030081   4.985808


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0049232   -0.0005823   0.0104286
iLiNS-DYAD-M   MALAWI       0                    NA                0.0047685   -0.0008181   0.0103552
JiVitA-3       BANGLADESH   0                    NA                0.0045700    0.0028873   0.0062527
JiVitA-4       BANGLADESH   0                    NA                0.0042254    0.0019753   0.0064754
Keneba         GAMBIA       0                    NA                0.0059236    0.0015187   0.0103285
VITAMIN-A      INDIA        0                    NA                0.0044384    0.0011779   0.0076988
ZVITAMBO       ZIMBABWE     0                    NA                0.0130301    0.0106563   0.0154039


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0766361   -0.0120677   0.1575655
iLiNS-DYAD-M   MALAWI       0                    NA                0.1972131   -0.0557199   0.3895476
JiVitA-3       BANGLADESH   0                    NA                0.3089233    0.1924555   0.4085935
JiVitA-4       BANGLADESH   0                    NA                0.4635574    0.1806224   0.6487937
Keneba         GAMBIA       0                    NA                0.1946104    0.0440941   0.3214265
VITAMIN-A      INDIA        0                    NA                0.5013990    0.0420265   0.7404907
ZVITAMBO       ZIMBABWE     0                    NA                0.3666907    0.3065354   0.4216277

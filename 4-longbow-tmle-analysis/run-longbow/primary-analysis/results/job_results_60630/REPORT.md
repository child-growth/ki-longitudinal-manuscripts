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

studyid           country                        ever_underweight06    dead6plus   n_cell       n
----------------  -----------------------------  -------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                             0      260     336
Burkina Faso Zn   BURKINA FASO                   0                             1        2     336
Burkina Faso Zn   BURKINA FASO                   1                             0       74     336
Burkina Faso Zn   BURKINA FASO                   1                             1        0     336
EE                PAKISTAN                       0                             0      102     375
EE                PAKISTAN                       0                             1        0     375
EE                PAKISTAN                       1                             0      269     375
EE                PAKISTAN                       1                             1        4     375
GMS-Nepal         NEPAL                          0                             0      319     592
GMS-Nepal         NEPAL                          0                             1        1     592
GMS-Nepal         NEPAL                          1                             0      271     592
GMS-Nepal         NEPAL                          1                             1        1     592
iLiNS-DOSE        MALAWI                         0                             0     1415    1759
iLiNS-DOSE        MALAWI                         0                             1       89    1759
iLiNS-DOSE        MALAWI                         1                             0      231    1759
iLiNS-DOSE        MALAWI                         1                             1       24    1759
iLiNS-DYAD-M      MALAWI                         0                             0      906    1158
iLiNS-DYAD-M      MALAWI                         0                             1       18    1158
iLiNS-DYAD-M      MALAWI                         1                             0      224    1158
iLiNS-DYAD-M      MALAWI                         1                             1       10    1158
JiVitA-3          BANGLADESH                     0                             0    11447   21023
JiVitA-3          BANGLADESH                     0                             1      115   21023
JiVitA-3          BANGLADESH                     1                             0     9265   21023
JiVitA-3          BANGLADESH                     1                             1      196   21023
JiVitA-4          BANGLADESH                     0                             0     3463    5266
JiVitA-4          BANGLADESH                     0                             1       17    5266
JiVitA-4          BANGLADESH                     1                             0     1755    5266
JiVitA-4          BANGLADESH                     1                             1       31    5266
Keneba            GAMBIA                         0                             0     1900    2464
Keneba            GAMBIA                         0                             1       47    2464
Keneba            GAMBIA                         1                             0      489    2464
Keneba            GAMBIA                         1                             1       28    2464
MAL-ED            BANGLADESH                     0                             0      161     240
MAL-ED            BANGLADESH                     0                             1        0     240
MAL-ED            BANGLADESH                     1                             0       79     240
MAL-ED            BANGLADESH                     1                             1        0     240
MAL-ED            INDIA                          0                             0      134     235
MAL-ED            INDIA                          0                             1        0     235
MAL-ED            INDIA                          1                             0      101     235
MAL-ED            INDIA                          1                             1        0     235
MAL-ED            PERU                           0                             0      225     273
MAL-ED            PERU                           0                             1        1     273
MAL-ED            PERU                           1                             0       47     273
MAL-ED            PERU                           1                             1        0     273
MAL-ED            SOUTH AFRICA                   0                             0      216     261
MAL-ED            SOUTH AFRICA                   0                             1        0     261
MAL-ED            SOUTH AFRICA                   1                             0       45     261
MAL-ED            SOUTH AFRICA                   1                             1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      203     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       42     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     245
PROVIDE           BANGLADESH                     0                             0      414     617
PROVIDE           BANGLADESH                     0                             1        1     617
PROVIDE           BANGLADESH                     1                             0      200     617
PROVIDE           BANGLADESH                     1                             1        2     617
SAS-CompFeed      INDIA                          0                             0      805    1389
SAS-CompFeed      INDIA                          0                             1        1    1389
SAS-CompFeed      INDIA                          1                             0      572    1389
SAS-CompFeed      INDIA                          1                             1       11    1389
SAS-FoodSuppl     INDIA                          0                             0      187     400
SAS-FoodSuppl     INDIA                          0                             1        1     400
SAS-FoodSuppl     INDIA                          1                             0      209     400
SAS-FoodSuppl     INDIA                          1                             1        3     400
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1843    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      253    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2096
VITAMIN-A         INDIA                          0                             0     1579    3615
VITAMIN-A         INDIA                          0                             1        7    3615
VITAMIN-A         INDIA                          1                             0     2004    3615
VITAMIN-A         INDIA                          1                             1       25    3615
ZVITAMBO          ZIMBABWE                       0                             0     9476   11707
ZVITAMBO          ZIMBABWE                       0                             1      215   11707
ZVITAMBO          ZIMBABWE                       1                             0     1815   11707
ZVITAMBO          ZIMBABWE                       1                             1      201   11707


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
![](/tmp/67745dce-0dd2-4c0e-aab5-28a6dd57347c/9a617ba9-8b20-47fc-b13a-e111ee6e9c9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67745dce-0dd2-4c0e-aab5-28a6dd57347c/9a617ba9-8b20-47fc-b13a-e111ee6e9c9d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67745dce-0dd2-4c0e-aab5-28a6dd57347c/9a617ba9-8b20-47fc-b13a-e111ee6e9c9d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67745dce-0dd2-4c0e-aab5-28a6dd57347c/9a617ba9-8b20-47fc-b13a-e111ee6e9c9d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0593232   0.0473866   0.0712599
iLiNS-DOSE     MALAWI       1                    NA                0.0935842   0.0574505   0.1297180
iLiNS-DYAD-M   MALAWI       0                    NA                0.0195811   0.0106769   0.0284854
iLiNS-DYAD-M   MALAWI       1                    NA                0.0432142   0.0174657   0.0689627
JiVitA-3       BANGLADESH   0                    NA                0.0101883   0.0082410   0.0121357
JiVitA-3       BANGLADESH   1                    NA                0.0197193   0.0167705   0.0226681
JiVitA-4       BANGLADESH   0                    NA                0.0048891   0.0021669   0.0076112
JiVitA-4       BANGLADESH   1                    NA                0.0170407   0.0110505   0.0230310
Keneba         GAMBIA       0                    NA                0.0248359   0.0178389   0.0318329
Keneba         GAMBIA       1                    NA                0.0517400   0.0317914   0.0716886
VITAMIN-A      INDIA        0                    NA                0.0044136   0.0011508   0.0076764
VITAMIN-A      INDIA        1                    NA                0.0123213   0.0075206   0.0171220
ZVITAMBO       ZIMBABWE     0                    NA                0.0224279   0.0194759   0.0253800
ZVITAMBO       ZIMBABWE     1                    NA                0.0949567   0.0819444   0.1079691


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


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.577531   1.020642   2.438272
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.206930   1.041058   4.678453
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.935475   1.516615   2.470016
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.485473   1.807152   6.722465
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.083273   1.292099   3.358896
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.791664   1.210441   6.438469
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.233861   3.501590   5.119268


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0049178   -0.0005900   0.0104256
iLiNS-DYAD-M   MALAWI       0                    NA                0.0045985   -0.0009893   0.0101863
JiVitA-3       BANGLADESH   0                    NA                0.0046050    0.0029129   0.0062970
JiVitA-4       BANGLADESH   0                    NA                0.0042260    0.0019778   0.0064742
Keneba         GAMBIA       0                    NA                0.0056024    0.0011400   0.0100647
VITAMIN-A      INDIA        0                    NA                0.0044384    0.0011779   0.0076988
ZVITAMBO       ZIMBABWE     0                    NA                0.0131064    0.0107352   0.0154775


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0765527   -0.0121979   0.1575215
iLiNS-DYAD-M   MALAWI       0                    NA                0.1901800   -0.0626120   0.3828336
JiVitA-3       BANGLADESH   0                    NA                0.3112878    0.1938736   0.4116003
JiVitA-4       BANGLADESH   0                    NA                0.4636280    0.1810816   0.6486892
Keneba         GAMBIA       0                    NA                0.1840569    0.0304762   0.3133092
VITAMIN-A      INDIA        0                    NA                0.5013990    0.0420265   0.7404907
ZVITAMBO       ZIMBABWE     0                    NA                0.3688370    0.3088636   0.4236063

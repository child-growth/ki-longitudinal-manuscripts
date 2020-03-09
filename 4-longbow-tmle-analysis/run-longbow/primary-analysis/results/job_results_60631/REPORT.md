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

**Intervention Variable:** ever_sunderweight06

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

studyid           country                        ever_sunderweight06    dead6plus   n_cell       n
----------------  -----------------------------  --------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                              0      313     336
Burkina Faso Zn   BURKINA FASO                   0                              1        2     336
Burkina Faso Zn   BURKINA FASO                   1                              0       21     336
Burkina Faso Zn   BURKINA FASO                   1                              1        0     336
EE                PAKISTAN                       0                              0      215     375
EE                PAKISTAN                       0                              1        1     375
EE                PAKISTAN                       1                              0      156     375
EE                PAKISTAN                       1                              1        3     375
GMS-Nepal         NEPAL                          0                              0      508     592
GMS-Nepal         NEPAL                          0                              1        1     592
GMS-Nepal         NEPAL                          1                              0       82     592
GMS-Nepal         NEPAL                          1                              1        1     592
iLiNS-DOSE        MALAWI                         0                              0     1593    1759
iLiNS-DOSE        MALAWI                         0                              1      105    1759
iLiNS-DOSE        MALAWI                         1                              0       53    1759
iLiNS-DOSE        MALAWI                         1                              1        8    1759
iLiNS-DYAD-M      MALAWI                         0                              0     1053    1158
iLiNS-DYAD-M      MALAWI                         0                              1       23    1158
iLiNS-DYAD-M      MALAWI                         1                              0       77    1158
iLiNS-DYAD-M      MALAWI                         1                              1        5    1158
JiVitA-3          BANGLADESH                     0                              0    17578   21023
JiVitA-3          BANGLADESH                     0                              1      191   21023
JiVitA-3          BANGLADESH                     1                              0     3134   21023
JiVitA-3          BANGLADESH                     1                              1      120   21023
JiVitA-4          BANGLADESH                     0                              0     4707    5266
JiVitA-4          BANGLADESH                     0                              1       32    5266
JiVitA-4          BANGLADESH                     1                              0      511    5266
JiVitA-4          BANGLADESH                     1                              1       16    5266
Keneba            GAMBIA                         0                              0     2242    2464
Keneba            GAMBIA                         0                              1       58    2464
Keneba            GAMBIA                         1                              0      147    2464
Keneba            GAMBIA                         1                              1       17    2464
MAL-ED            BANGLADESH                     0                              0      224     240
MAL-ED            BANGLADESH                     0                              1        0     240
MAL-ED            BANGLADESH                     1                              0       16     240
MAL-ED            BANGLADESH                     1                              1        0     240
MAL-ED            INDIA                          0                              0      204     235
MAL-ED            INDIA                          0                              1        0     235
MAL-ED            INDIA                          1                              0       31     235
MAL-ED            INDIA                          1                              1        0     235
MAL-ED            PERU                           0                              0      263     273
MAL-ED            PERU                           0                              1        1     273
MAL-ED            PERU                           1                              0        9     273
MAL-ED            PERU                           1                              1        0     273
MAL-ED            SOUTH AFRICA                   0                              0      249     261
MAL-ED            SOUTH AFRICA                   0                              1        0     261
MAL-ED            SOUTH AFRICA                   1                              0       12     261
MAL-ED            SOUTH AFRICA                   1                              1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      237     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0        8     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        0     245
PROVIDE           BANGLADESH                     0                              0      571     617
PROVIDE           BANGLADESH                     0                              1        3     617
PROVIDE           BANGLADESH                     1                              0       43     617
PROVIDE           BANGLADESH                     1                              1        0     617
SAS-CompFeed      INDIA                          0                              0     1164    1389
SAS-CompFeed      INDIA                          0                              1        5    1389
SAS-CompFeed      INDIA                          1                              0      213    1389
SAS-CompFeed      INDIA                          1                              1        7    1389
SAS-FoodSuppl     INDIA                          0                              0      291     400
SAS-FoodSuppl     INDIA                          0                              1        1     400
SAS-FoodSuppl     INDIA                          1                              0      105     400
SAS-FoodSuppl     INDIA                          1                              1        3     400
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2034    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       62    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2096
VITAMIN-A         INDIA                          0                              0     2673    3615
VITAMIN-A         INDIA                          0                              1       14    3615
VITAMIN-A         INDIA                          1                              0      910    3615
VITAMIN-A         INDIA                          1                              1       18    3615
ZVITAMBO          ZIMBABWE                       0                              0    10789   11707
ZVITAMBO          ZIMBABWE                       0                              1      305   11707
ZVITAMBO          ZIMBABWE                       1                              0      502   11707
ZVITAMBO          ZIMBABWE                       1                              1      111   11707


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
![](/tmp/0d6a0689-5009-42dd-bf12-7d006bec831b/46d00592-4778-4fae-8ace-6ea3ad6db9ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d6a0689-5009-42dd-bf12-7d006bec831b/46d00592-4778-4fae-8ace-6ea3ad6db9ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d6a0689-5009-42dd-bf12-7d006bec831b/46d00592-4778-4fae-8ace-6ea3ad6db9ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d6a0689-5009-42dd-bf12-7d006bec831b/46d00592-4778-4fae-8ace-6ea3ad6db9ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0618375    0.0503779   0.0732970
iLiNS-DOSE     MALAWI       1                    NA                0.1311475    0.0464131   0.2158819
iLiNS-DYAD-M   MALAWI       0                    NA                0.0213755    0.0127299   0.0300211
iLiNS-DYAD-M   MALAWI       1                    NA                0.0609756    0.0091618   0.1127894
JiVitA-3       BANGLADESH   0                    NA                0.0108510    0.0092531   0.0124489
JiVitA-3       BANGLADESH   1                    NA                0.0341200    0.0270128   0.0412272
JiVitA-4       BANGLADESH   0                    NA                0.0067671    0.0042548   0.0092795
JiVitA-4       BANGLADESH   1                    NA                0.0284934    0.0132225   0.0437643
Keneba         GAMBIA       0                    NA                0.0252734    0.0188450   0.0317018
Keneba         GAMBIA       1                    NA                0.0918607    0.0484134   0.1353080
SAS-CompFeed   INDIA        0                    NA                0.0042772   -0.0001115   0.0086658
SAS-CompFeed   INDIA        1                    NA                0.0318182    0.0181644   0.0454719
VITAMIN-A      INDIA        0                    NA                0.0052375    0.0024998   0.0079752
VITAMIN-A      INDIA        1                    NA                0.0191441    0.0103372   0.0279510
ZVITAMBO       ZIMBABWE     0                    NA                0.0276393    0.0245860   0.0306927
ZVITAMBO       ZIMBABWE     1                    NA                0.1695444    0.1379277   0.2011610


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0642410   0.0527799   0.0757022
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0241796   0.0153286   0.0330306
JiVitA-3       BANGLADESH   NA                   NA                0.0147933   0.0131485   0.0164382
JiVitA-4       BANGLADESH   NA                   NA                0.0091151   0.0063755   0.0118547
Keneba         GAMBIA       NA                   NA                0.0304383   0.0236539   0.0372227
SAS-CompFeed   INDIA        NA                   NA                0.0086393   0.0042356   0.0130430
VITAMIN-A      INDIA        NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO       ZIMBABWE     NA                   NA                0.0355343   0.0321807   0.0388879


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.120843   1.082921    4.153557
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.852598   1.113085    7.310597
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.144411   2.426489    4.074745
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.210553   2.186749    8.107358
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 3.634678   2.124941    6.217058
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.439091   2.727800   20.287438
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.655189   1.821984    7.332889
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 6.134168   4.939048    7.618476


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0024036   -0.0006203   0.0054275
iLiNS-DYAD-M   MALAWI       0                    NA                0.0028042   -0.0009614   0.0065697
JiVitA-3       BANGLADESH   0                    NA                0.0039423    0.0028395   0.0050451
JiVitA-4       BANGLADESH   0                    NA                0.0023479    0.0007547   0.0039411
Keneba         GAMBIA       0                    NA                0.0051649    0.0019311   0.0083987
SAS-CompFeed   INDIA        0                    NA                0.0043621    0.0020152   0.0067091
VITAMIN-A      INDIA        0                    NA                0.0036145    0.0012182   0.0060108
ZVITAMBO       ZIMBABWE     0                    NA                0.0078950    0.0061776   0.0096123


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0374152   -0.0103929   0.0829612
iLiNS-DYAD-M   MALAWI       0                    NA                0.1159719   -0.0476197   0.2540177
JiVitA-3       BANGLADESH   0                    NA                0.2664936    0.1940825   0.3323987
JiVitA-4       BANGLADESH   0                    NA                0.2575880    0.0814762   0.3999333
Keneba         GAMBIA       0                    NA                0.1696840    0.0637488   0.2636328
SAS-CompFeed   INDIA        0                    NA                0.5049187    0.0566503   0.7401754
VITAMIN-A      INDIA        0                    NA                0.4083245    0.1247797   0.6000093
ZVITAMBO       ZIMBABWE     0                    NA                0.2221785    0.1771277   0.2647629

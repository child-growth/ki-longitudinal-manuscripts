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

**Intervention Variable:** ever_sstunted06

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

studyid           country                        ever_sstunted06    dead624   n_cell       n
----------------  -----------------------------  ----------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                        0      323     336
Burkina Faso Zn   BURKINA FASO                   0                        1        2     336
Burkina Faso Zn   BURKINA FASO                   1                        0       11     336
Burkina Faso Zn   BURKINA FASO                   1                        1        0     336
EE                PAKISTAN                       0                        0      209     374
EE                PAKISTAN                       0                        1        3     374
EE                PAKISTAN                       1                        0      161     374
EE                PAKISTAN                       1                        1        1     374
GMS-Nepal         NEPAL                          0                        0      543     592
GMS-Nepal         NEPAL                          0                        1        1     592
GMS-Nepal         NEPAL                          1                        0       47     592
GMS-Nepal         NEPAL                          1                        1        1     592
iLiNS-DOSE        MALAWI                         0                        0     1534    1756
iLiNS-DOSE        MALAWI                         0                        1      101    1756
iLiNS-DOSE        MALAWI                         1                        0      109    1756
iLiNS-DOSE        MALAWI                         1                        1       12    1756
iLiNS-DYAD-M      MALAWI                         0                        0     1041    1148
iLiNS-DYAD-M      MALAWI                         0                        1       21    1148
iLiNS-DYAD-M      MALAWI                         1                        0       83    1148
iLiNS-DYAD-M      MALAWI                         1                        1        3    1148
JiVitA-3          BANGLADESH                     0                        0    17803   21009
JiVitA-3          BANGLADESH                     0                        1      179   21009
JiVitA-3          BANGLADESH                     1                        0     2937   21009
JiVitA-3          BANGLADESH                     1                        1       90   21009
JiVitA-4          BANGLADESH                     0                        0     4630    5260
JiVitA-4          BANGLADESH                     0                        1       31    5260
JiVitA-4          BANGLADESH                     1                        0      583    5260
JiVitA-4          BANGLADESH                     1                        1       16    5260
Keneba            GAMBIA                         0                        0     2010    2312
Keneba            GAMBIA                         0                        1       26    2312
Keneba            GAMBIA                         1                        0      263    2312
Keneba            GAMBIA                         1                        1       13    2312
MAL-ED            BANGLADESH                     0                        0      222     240
MAL-ED            BANGLADESH                     0                        1        0     240
MAL-ED            BANGLADESH                     1                        0       18     240
MAL-ED            BANGLADESH                     1                        1        0     240
MAL-ED            INDIA                          0                        0      215     235
MAL-ED            INDIA                          0                        1        0     235
MAL-ED            INDIA                          1                        0       20     235
MAL-ED            INDIA                          1                        1        0     235
MAL-ED            PERU                           0                        0      236     273
MAL-ED            PERU                           0                        1        1     273
MAL-ED            PERU                           1                        0       36     273
MAL-ED            PERU                           1                        1        0     273
MAL-ED            SOUTH AFRICA                   0                        0      233     261
MAL-ED            SOUTH AFRICA                   0                        1        0     261
MAL-ED            SOUTH AFRICA                   1                        0       28     261
MAL-ED            SOUTH AFRICA                   1                        1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      208     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       37     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
PROVIDE           BANGLADESH                     0                        0      586     617
PROVIDE           BANGLADESH                     0                        1        2     617
PROVIDE           BANGLADESH                     1                        0       29     617
PROVIDE           BANGLADESH                     1                        1        0     617
SAS-CompFeed      INDIA                          0                        0     1176    1388
SAS-CompFeed      INDIA                          0                        1        5    1388
SAS-CompFeed      INDIA                          1                        0      200    1388
SAS-CompFeed      INDIA                          1                        1        7    1388
SAS-FoodSuppl     INDIA                          0                        0      337     402
SAS-FoodSuppl     INDIA                          0                        1        1     402
SAS-FoodSuppl     INDIA                          1                        0       61     402
SAS-FoodSuppl     INDIA                          1                        1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1995    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      101    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096
VITAMIN-A         INDIA                          0                        0     3059    3605
VITAMIN-A         INDIA                          0                        1       20    3605
VITAMIN-A         INDIA                          1                        0      515    3605
VITAMIN-A         INDIA                          1                        1       11    3605
ZVITAMBO          ZIMBABWE                       0                        0    10174   11694
ZVITAMBO          ZIMBABWE                       0                        1      299   11694
ZVITAMBO          ZIMBABWE                       1                        0     1115   11694
ZVITAMBO          ZIMBABWE                       1                        1      106   11694


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/7c430205-e332-4d27-b6df-073170c810d4/cf330dfb-cb5d-46ad-bf41-62575d616a8f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c430205-e332-4d27-b6df-073170c810d4/cf330dfb-cb5d-46ad-bf41-62575d616a8f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c430205-e332-4d27-b6df-073170c810d4/cf330dfb-cb5d-46ad-bf41-62575d616a8f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c430205-e332-4d27-b6df-073170c810d4/cf330dfb-cb5d-46ad-bf41-62575d616a8f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0617595   0.0500882   0.0734307
iLiNS-DOSE     MALAWI       1                    NA                0.0998153   0.0447609   0.1548696
JiVitA-3       BANGLADESH   0                    NA                0.0100018   0.0085260   0.0114776
JiVitA-3       BANGLADESH   1                    NA                0.0315808   0.0238493   0.0393123
JiVitA-4       BANGLADESH   0                    NA                0.0066703   0.0040810   0.0092597
JiVitA-4       BANGLADESH   1                    NA                0.0259300   0.0136501   0.0382099
Keneba         GAMBIA       0                    NA                0.0127581   0.0078755   0.0176406
Keneba         GAMBIA       1                    NA                0.0465318   0.0202711   0.0727926
SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
VITAMIN-A      INDIA        0                    NA                0.0064977   0.0036570   0.0093384
VITAMIN-A      INDIA        1                    NA                0.0202038   0.0080937   0.0323139
ZVITAMBO       ZIMBABWE     0                    NA                0.0287888   0.0255801   0.0319975
ZVITAMBO       ZIMBABWE     1                    NA                0.0797446   0.0642837   0.0952055


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
JiVitA-3       BANGLADESH   NA                   NA                0.0128040   0.0112517   0.0143564
JiVitA-4       BANGLADESH   NA                   NA                0.0089354   0.0062246   0.0116461
Keneba         GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
SAS-CompFeed   INDIA        NA                   NA                0.0086455   0.0042433   0.0130478
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0346331   0.0313190   0.0379473


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.616194   0.9022152    2.895189
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.157525   2.3762996    4.195583
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.887363   2.1139870    7.148384
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 3.647248   1.8438430    7.214507
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.109369   1.4815587    6.525680
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.769983   2.2153240    3.463516


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0025913   -0.0011895   0.0063721
JiVitA-3       BANGLADESH   0                    NA                0.0028023    0.0018825   0.0037220
JiVitA-4       BANGLADESH   0                    NA                0.0022650    0.0008147   0.0037153
Keneba         GAMBIA       0                    NA                0.0041104    0.0010323   0.0071886
SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
VITAMIN-A      INDIA        0                    NA                0.0021015    0.0002632   0.0039397
ZVITAMBO       ZIMBABWE     0                    NA                0.0058443    0.0041295   0.0075591


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0402690   -0.0199172   0.0969036
JiVitA-3       BANGLADESH   0                    NA                0.2188591    0.1494217   0.2826279
JiVitA-4       BANGLADESH   0                    NA                0.2534892    0.0831657   0.3921712
Keneba         GAMBIA       0                    NA                0.2436759    0.0573443   0.3931759
SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
VITAMIN-A      INDIA        0                    NA                0.2443790    0.0203061   0.4172025
ZVITAMBO       ZIMBABWE     0                    NA                0.1687491    0.1204765   0.2143724

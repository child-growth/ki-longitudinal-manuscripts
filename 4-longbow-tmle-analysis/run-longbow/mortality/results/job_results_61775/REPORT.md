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

studyid           country                        ever_sstunted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      323     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                        1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                        0       11     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                        1        0     336  dead624          
EE                PAKISTAN                       0                        0      209     374  dead624          
EE                PAKISTAN                       0                        1        3     374  dead624          
EE                PAKISTAN                       1                        0      161     374  dead624          
EE                PAKISTAN                       1                        1        1     374  dead624          
GMS-Nepal         NEPAL                          0                        0      543     592  dead624          
GMS-Nepal         NEPAL                          0                        1        1     592  dead624          
GMS-Nepal         NEPAL                          1                        0       47     592  dead624          
GMS-Nepal         NEPAL                          1                        1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                        0     1534    1756  dead624          
iLiNS-DOSE        MALAWI                         0                        1      101    1756  dead624          
iLiNS-DOSE        MALAWI                         1                        0      109    1756  dead624          
iLiNS-DOSE        MALAWI                         1                        1       12    1756  dead624          
iLiNS-DYAD-M      MALAWI                         0                        0     1041    1148  dead624          
iLiNS-DYAD-M      MALAWI                         0                        1       21    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                        0       83    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                        1        3    1148  dead624          
JiVitA-3          BANGLADESH                     0                        0    17803   21009  dead624          
JiVitA-3          BANGLADESH                     0                        1      179   21009  dead624          
JiVitA-3          BANGLADESH                     1                        0     2937   21009  dead624          
JiVitA-3          BANGLADESH                     1                        1       90   21009  dead624          
JiVitA-4          BANGLADESH                     0                        0     4630    5260  dead624          
JiVitA-4          BANGLADESH                     0                        1       31    5260  dead624          
JiVitA-4          BANGLADESH                     1                        0      583    5260  dead624          
JiVitA-4          BANGLADESH                     1                        1       16    5260  dead624          
Keneba            GAMBIA                         0                        0     2010    2312  dead624          
Keneba            GAMBIA                         0                        1       26    2312  dead624          
Keneba            GAMBIA                         1                        0      263    2312  dead624          
Keneba            GAMBIA                         1                        1       13    2312  dead624          
MAL-ED            BANGLADESH                     0                        0      222     240  dead624          
MAL-ED            BANGLADESH                     0                        1        0     240  dead624          
MAL-ED            BANGLADESH                     1                        0       18     240  dead624          
MAL-ED            BANGLADESH                     1                        1        0     240  dead624          
MAL-ED            INDIA                          0                        0      215     235  dead624          
MAL-ED            INDIA                          0                        1        0     235  dead624          
MAL-ED            INDIA                          1                        0       20     235  dead624          
MAL-ED            INDIA                          1                        1        0     235  dead624          
MAL-ED            PERU                           0                        0      236     273  dead624          
MAL-ED            PERU                           0                        1        1     273  dead624          
MAL-ED            PERU                           1                        0       36     273  dead624          
MAL-ED            PERU                           1                        1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                        0      233     261  dead624          
MAL-ED            SOUTH AFRICA                   0                        1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                        0       28     261  dead624          
MAL-ED            SOUTH AFRICA                   1                        1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      208     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       37     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead624          
PROVIDE           BANGLADESH                     0                        0      586     617  dead624          
PROVIDE           BANGLADESH                     0                        1        2     617  dead624          
PROVIDE           BANGLADESH                     1                        0       29     617  dead624          
PROVIDE           BANGLADESH                     1                        1        0     617  dead624          
SAS-CompFeed      INDIA                          0                        0     1176    1388  dead624          
SAS-CompFeed      INDIA                          0                        1        5    1388  dead624          
SAS-CompFeed      INDIA                          1                        0      200    1388  dead624          
SAS-CompFeed      INDIA                          1                        1        7    1388  dead624          
SAS-FoodSuppl     INDIA                          0                        0      337     402  dead624          
SAS-FoodSuppl     INDIA                          0                        1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                        0       61     402  dead624          
SAS-FoodSuppl     INDIA                          1                        1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1995    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      101    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead624          
VITAMIN-A         INDIA                          0                        0     3059    3605  dead624          
VITAMIN-A         INDIA                          0                        1       20    3605  dead624          
VITAMIN-A         INDIA                          1                        0      515    3605  dead624          
VITAMIN-A         INDIA                          1                        1       11    3605  dead624          
ZVITAMBO          ZIMBABWE                       0                        0    10174   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                        1      299   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                        0     1115   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                        1      106   11694  dead624          


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
![](/tmp/631a7224-31cf-403f-ab93-2610c9c30ceb/08610472-33fb-4a27-8a7a-2b7faaa098e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/631a7224-31cf-403f-ab93-2610c9c30ceb/08610472-33fb-4a27-8a7a-2b7faaa098e7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/631a7224-31cf-403f-ab93-2610c9c30ceb/08610472-33fb-4a27-8a7a-2b7faaa098e7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/631a7224-31cf-403f-ab93-2610c9c30ceb/08610472-33fb-4a27-8a7a-2b7faaa098e7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0617356   0.0500653   0.0734058
iLiNS-DOSE     MALAWI       1                    NA                0.0964047   0.0424159   0.1503935
JiVitA-3       BANGLADESH   0                    NA                0.0100149   0.0085372   0.0114927
JiVitA-3       BANGLADESH   1                    NA                0.0329914   0.0247110   0.0412717
JiVitA-4       BANGLADESH   0                    NA                0.0066657   0.0040803   0.0092511
JiVitA-4       BANGLADESH   1                    NA                0.0257782   0.0135482   0.0380082
Keneba         GAMBIA       0                    NA                0.0127767   0.0078932   0.0176602
Keneba         GAMBIA       1                    NA                0.0474519   0.0218185   0.0730852
SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
VITAMIN-A      INDIA        0                    NA                0.0065024   0.0036612   0.0093436
VITAMIN-A      INDIA        1                    NA                0.0208804   0.0085851   0.0331756
ZVITAMBO       ZIMBABWE     0                    NA                0.0288905   0.0256722   0.0321089
ZVITAMBO       ZIMBABWE     1                    NA                0.0783944   0.0629387   0.0938501


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
iLiNS-DOSE     MALAWI       1                    0                 1.561576   0.8650516    2.818928
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.294214   2.4678773    4.397239
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.867296   2.1013184    7.117428
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 3.713928   1.9159904    7.199023
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.211165   1.5433729    6.681199
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.713499   2.1640375    3.402473


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0026152   -0.0011575   0.0063880
JiVitA-3       BANGLADESH   0                    NA                0.0027891    0.0018598   0.0037184
JiVitA-4       BANGLADESH   0                    NA                0.0022697    0.0008204   0.0037189
Keneba         GAMBIA       0                    NA                0.0040918    0.0010152   0.0071683
SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
VITAMIN-A      INDIA        0                    NA                0.0020967    0.0002589   0.0039346
ZVITAMBO       ZIMBABWE     0                    NA                0.0057426    0.0040243   0.0074610


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0406404   -0.0194171   0.0971598
JiVitA-3       BANGLADESH   0                    NA                0.2178292    0.1476476   0.2822322
JiVitA-4       BANGLADESH   0                    NA                0.2540093    0.0840210   0.3924510
Keneba         GAMBIA       0                    NA                0.2425692    0.0563377   0.3920479
SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
VITAMIN-A      INDIA        0                    NA                0.2438301    0.0198024   0.4166554
ZVITAMBO       ZIMBABWE     0                    NA                0.1658130    0.1173545   0.2116110

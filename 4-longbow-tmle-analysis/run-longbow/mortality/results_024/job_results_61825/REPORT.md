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

**Intervention Variable:** ever_wasted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
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

studyid           country                        ever_wasted024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                       0     5735    7164  dead624          
Burkina Faso Zn   BURKINA FASO                   0                       1       23    7164  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       0     1390    7164  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       1       16    7164  dead624          
EE                PAKISTAN                       0                       0      149     375  dead624          
EE                PAKISTAN                       0                       1        1     375  dead624          
EE                PAKISTAN                       1                       0      222     375  dead624          
EE                PAKISTAN                       1                       1        3     375  dead624          
GMS-Nepal         NEPAL                          0                       0      208     592  dead624          
GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
GMS-Nepal         NEPAL                          1                       0      382     592  dead624          
GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                       0     1606    1874  dead624          
iLiNS-DOSE        MALAWI                         0                       1      112    1874  dead624          
iLiNS-DOSE        MALAWI                         1                       0      141    1874  dead624          
iLiNS-DOSE        MALAWI                         1                       1       15    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                       0     1034    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                       1       19    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                       0      103    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                       1        5    1161  dead624          
JiVitA-3          BANGLADESH                     0                       0    15084   21023  dead624          
JiVitA-3          BANGLADESH                     0                       1      181   21023  dead624          
JiVitA-3          BANGLADESH                     1                       0     5674   21023  dead624          
JiVitA-3          BANGLADESH                     1                       1       84   21023  dead624          
JiVitA-4          BANGLADESH                     0                       0     3717    5433  dead624          
JiVitA-4          BANGLADESH                     0                       1       30    5433  dead624          
JiVitA-4          BANGLADESH                     1                       0     1667    5433  dead624          
JiVitA-4          BANGLADESH                     1                       1       19    5433  dead624          
Keneba            GAMBIA                         0                       0     1485    2752  dead624          
Keneba            GAMBIA                         0                       1       21    2752  dead624          
Keneba            GAMBIA                         1                       0     1223    2752  dead624          
Keneba            GAMBIA                         1                       1       23    2752  dead624          
MAL-ED            BANGLADESH                     0                       0      157     240  dead624          
MAL-ED            BANGLADESH                     0                       1        0     240  dead624          
MAL-ED            BANGLADESH                     1                       0       83     240  dead624          
MAL-ED            BANGLADESH                     1                       1        0     240  dead624          
MAL-ED            INDIA                          0                       0      121     235  dead624          
MAL-ED            INDIA                          0                       1        0     235  dead624          
MAL-ED            INDIA                          1                       0      114     235  dead624          
MAL-ED            INDIA                          1                       1        0     235  dead624          
MAL-ED            PERU                           0                       0      246     273  dead624          
MAL-ED            PERU                           0                       1        1     273  dead624          
MAL-ED            PERU                           1                       0       26     273  dead624          
MAL-ED            PERU                           1                       1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                       0      204     261  dead624          
MAL-ED            SOUTH AFRICA                   0                       1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       0       57     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      209     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0       36     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
PROVIDE           BANGLADESH                     0                       0      392     617  dead624          
PROVIDE           BANGLADESH                     0                       1        2     617  dead624          
PROVIDE           BANGLADESH                     1                       0      223     617  dead624          
PROVIDE           BANGLADESH                     1                       1        0     617  dead624          
SAS-CompFeed      INDIA                          0                       0      783    1389  dead624          
SAS-CompFeed      INDIA                          0                       1        2    1389  dead624          
SAS-CompFeed      INDIA                          1                       0      594    1389  dead624          
SAS-CompFeed      INDIA                          1                       1       10    1389  dead624          
SAS-FoodSuppl     INDIA                          0                       0      208     402  dead624          
SAS-FoodSuppl     INDIA                          0                       1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                       0      190     402  dead624          
SAS-FoodSuppl     INDIA                          1                       1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1560    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      536    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
VITAMIN-A         INDIA                          0                       0     2357    3615  dead624          
VITAMIN-A         INDIA                          0                       1       12    3615  dead624          
VITAMIN-A         INDIA                          1                       0     1227    3615  dead624          
VITAMIN-A         INDIA                          1                       1       19    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                       0     8640   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                       1      225   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       0     2651   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       1      178   11694  dead624          


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
![](/tmp/ad8a51d9-5893-4649-8f64-9b2982054ca7/e7b55483-6118-47da-94dd-b17559a1579e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad8a51d9-5893-4649-8f64-9b2982054ca7/e7b55483-6118-47da-94dd-b17559a1579e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad8a51d9-5893-4649-8f64-9b2982054ca7/e7b55483-6118-47da-94dd-b17559a1579e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad8a51d9-5893-4649-8f64-9b2982054ca7/e7b55483-6118-47da-94dd-b17559a1579e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0040043   0.0023698   0.0056388
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0112108   0.0057298   0.0166918
iLiNS-DOSE        MALAWI         0                    NA                0.0651981   0.0535208   0.0768754
iLiNS-DOSE        MALAWI         1                    NA                0.0939120   0.0488717   0.1389523
iLiNS-DYAD-M      MALAWI         0                    NA                0.0180437   0.0100005   0.0260869
iLiNS-DYAD-M      MALAWI         1                    NA                0.0462963   0.0066499   0.0859426
JiVitA-3          BANGLADESH     0                    NA                0.0119764   0.0102206   0.0137322
JiVitA-3          BANGLADESH     1                    NA                0.0142972   0.0111289   0.0174654
JiVitA-4          BANGLADESH     0                    NA                0.0079860   0.0051468   0.0108252
JiVitA-4          BANGLADESH     1                    NA                0.0110755   0.0057749   0.0163762
Keneba            GAMBIA         0                    NA                0.0138663   0.0079298   0.0198029
Keneba            GAMBIA         1                    NA                0.0182361   0.0107506   0.0257216
VITAMIN-A         INDIA          0                    NA                0.0050801   0.0022098   0.0079504
VITAMIN-A         INDIA          1                    NA                0.0154319   0.0085217   0.0223421
ZVITAMBO          ZIMBABWE       0                    NA                0.0257124   0.0224140   0.0290109
ZVITAMBO          ZIMBABWE       1                    NA                0.0607700   0.0519119   0.0696280


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0126052   0.0110619   0.0141486
JiVitA-4          BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681
Keneba            GAMBIA         NA                   NA                0.0159884   0.0113013   0.0206755
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0344621   0.0311558   0.0377684


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.799702   1.4808360   5.293180
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.440409   0.8632447   2.403466
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.565790   0.9771002   6.737564
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.193777   0.9162954   1.555289
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.386868   0.7632649   2.519966
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.315133   0.7266544   2.380191
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.037717   1.4774157   6.245856
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.363445   1.9465219   2.869668


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014396    0.0003018   0.0025774
iLiNS-DOSE        MALAWI         0                    NA                0.0025714   -0.0014215   0.0065642
iLiNS-DYAD-M      MALAWI         0                    NA                0.0026281   -0.0011645   0.0064208
JiVitA-3          BANGLADESH     0                    NA                0.0006288   -0.0003594   0.0016170
JiVitA-4          BANGLADESH     0                    NA                0.0010329   -0.0008332   0.0028991
Keneba            GAMBIA         0                    NA                0.0021220   -0.0022065   0.0064506
VITAMIN-A         INDIA          0                    NA                0.0034953    0.0009411   0.0060495
ZVITAMBO          ZIMBABWE       0                    NA                0.0087497    0.0064190   0.0110804


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2644422    0.0448830   0.4335298
iLiNS-DOSE        MALAWI         0                    NA                0.0379427   -0.0225007   0.0948131
iLiNS-DYAD-M      MALAWI         0                    NA                0.1271368   -0.0687060   0.2870909
JiVitA-3          BANGLADESH     0                    NA                0.0498870   -0.0314920   0.1248457
JiVitA-4          BANGLADESH     0                    NA                0.1145303   -0.1134724   0.2958456
Keneba            GAMBIA         0                    NA                0.1327231   -0.1816770   0.3634730
VITAMIN-A         INDIA          0                    NA                0.4075963    0.0783799   0.6192117
ZVITAMBO          ZIMBABWE       0                    NA                0.2538924    0.1879330   0.3144943

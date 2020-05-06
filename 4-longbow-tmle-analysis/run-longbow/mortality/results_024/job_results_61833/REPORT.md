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

**Intervention Variable:** ever_sunderweight024

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

studyid           country                        ever_sunderweight024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0     6331    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   0                             1       31    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   1                             0      793    7163  dead624          
Burkina Faso Zn   BURKINA FASO                   1                             1        8    7163  dead624          
EE                PAKISTAN                       0                             0      172     375  dead624          
EE                PAKISTAN                       0                             1        1     375  dead624          
EE                PAKISTAN                       1                             0      199     375  dead624          
EE                PAKISTAN                       1                             1        3     375  dead624          
GMS-Nepal         NEPAL                          0                             0      372     592  dead624          
GMS-Nepal         NEPAL                          0                             1        1     592  dead624          
GMS-Nepal         NEPAL                          1                             0      218     592  dead624          
GMS-Nepal         NEPAL                          1                             1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                             0     1523    1874  dead624          
iLiNS-DOSE        MALAWI                         0                             1       99    1874  dead624          
iLiNS-DOSE        MALAWI                         1                             0      224    1874  dead624          
iLiNS-DOSE        MALAWI                         1                             1       28    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                             0      997    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                             1       17    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                             0      140    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                             1        7    1161  dead624          
JiVitA-3          BANGLADESH                     0                             0    16947   21046  dead624          
JiVitA-3          BANGLADESH                     0                             1      168   21046  dead624          
JiVitA-3          BANGLADESH                     1                             0     3828   21046  dead624          
JiVitA-3          BANGLADESH                     1                             1      103   21046  dead624          
JiVitA-4          BANGLADESH                     0                             0     4469    5433  dead624          
JiVitA-4          BANGLADESH                     0                             1       28    5433  dead624          
JiVitA-4          BANGLADESH                     1                             0      915    5433  dead624          
JiVitA-4          BANGLADESH                     1                             1       21    5433  dead624          
Keneba            GAMBIA                         0                             0     2237    2761  dead624          
Keneba            GAMBIA                         0                             1       28    2761  dead624          
Keneba            GAMBIA                         1                             0      480    2761  dead624          
Keneba            GAMBIA                         1                             1       16    2761  dead624          
MAL-ED            BANGLADESH                     0                             0      204     240  dead624          
MAL-ED            BANGLADESH                     0                             1        0     240  dead624          
MAL-ED            BANGLADESH                     1                             0       36     240  dead624          
MAL-ED            BANGLADESH                     1                             1        0     240  dead624          
MAL-ED            INDIA                          0                             0      184     235  dead624          
MAL-ED            INDIA                          0                             1        0     235  dead624          
MAL-ED            INDIA                          1                             0       51     235  dead624          
MAL-ED            INDIA                          1                             1        0     235  dead624          
MAL-ED            PERU                           0                             0      258     273  dead624          
MAL-ED            PERU                           0                             1        1     273  dead624          
MAL-ED            PERU                           1                             0       14     273  dead624          
MAL-ED            PERU                           1                             1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                             0      236     261  dead624          
MAL-ED            SOUTH AFRICA                   0                             1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                             0       25     261  dead624          
MAL-ED            SOUTH AFRICA                   1                             1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      211     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       34     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead624          
PROVIDE           BANGLADESH                     0                             0      526     617  dead624          
PROVIDE           BANGLADESH                     0                             1        2     617  dead624          
PROVIDE           BANGLADESH                     1                             0       89     617  dead624          
PROVIDE           BANGLADESH                     1                             1        0     617  dead624          
SAS-CompFeed      INDIA                          0                             0     1017    1389  dead624          
SAS-CompFeed      INDIA                          0                             1        2    1389  dead624          
SAS-CompFeed      INDIA                          1                             0      360    1389  dead624          
SAS-CompFeed      INDIA                          1                             1       10    1389  dead624          
SAS-FoodSuppl     INDIA                          0                             0      217     402  dead624          
SAS-FoodSuppl     INDIA                          0                             1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                             0      181     402  dead624          
SAS-FoodSuppl     INDIA                          1                             1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1951    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      145    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2096  dead624          
VITAMIN-A         INDIA                          0                             0     2427    3615  dead624          
VITAMIN-A         INDIA                          0                             1       11    3615  dead624          
VITAMIN-A         INDIA                          1                             0     1156    3615  dead624          
VITAMIN-A         INDIA                          1                             1       21    3615  dead624          
ZVITAMBO          ZIMBABWE                       0                             0    10427   11708  dead624          
ZVITAMBO          ZIMBABWE                       0                             1      211   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                             0      875   11708  dead624          
ZVITAMBO          ZIMBABWE                       1                             1      195   11708  dead624          


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
![](/tmp/6f4c6492-b1cd-4aa8-83a0-10d23f268805/9a6e9718-a779-4352-9e0f-cff04157e2a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f4c6492-b1cd-4aa8-83a0-10d23f268805/9a6e9718-a779-4352-9e0f-cff04157e2a8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f4c6492-b1cd-4aa8-83a0-10d23f268805/9a6e9718-a779-4352-9e0f-cff04157e2a8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f4c6492-b1cd-4aa8-83a0-10d23f268805/9a6e9718-a779-4352-9e0f-cff04157e2a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048727   0.0031615   0.0065839
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0099875   0.0031008   0.0168742
iLiNS-DOSE        MALAWI         0                    NA                0.0611260   0.0494738   0.0727782
iLiNS-DOSE        MALAWI         1                    NA                0.1102127   0.0710707   0.1493547
iLiNS-DYAD-M      MALAWI         0                    NA                0.0167653   0.0088594   0.0246712
iLiNS-DYAD-M      MALAWI         1                    NA                0.0476190   0.0131783   0.0820598
JiVitA-3          BANGLADESH     0                    NA                0.0099883   0.0084454   0.0115312
JiVitA-3          BANGLADESH     1                    NA                0.0244766   0.0188205   0.0301326
JiVitA-4          BANGLADESH     0                    NA                0.0062459   0.0038658   0.0086261
JiVitA-4          BANGLADESH     1                    NA                0.0216147   0.0122242   0.0310053
Keneba            GAMBIA         0                    NA                0.0123599   0.0078202   0.0168996
Keneba            GAMBIA         1                    NA                0.0323826   0.0170477   0.0477176
VITAMIN-A         INDIA          0                    NA                0.0044972   0.0018386   0.0071558
VITAMIN-A         INDIA          1                    NA                0.0170716   0.0096758   0.0244674
ZVITAMBO          ZIMBABWE       0                    NA                0.0201016   0.0174262   0.0227771
ZVITAMBO          ZIMBABWE       1                    NA                0.1705228   0.1469578   0.1940877


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0128766   0.0113280   0.0144251
JiVitA-4          BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681
Keneba            GAMBIA         NA                   NA                0.0159363   0.0112643   0.0206082
VITAMIN-A         INDIA          NA                   NA                0.0088520   0.0057982   0.0119058
ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.049696   0.9454255    4.443769
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.803040   1.2049298    2.698045
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.840336   1.1978362    6.735069
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.450527   1.8514235    3.243493
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 3.460620   1.9351073    6.188747
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.619967   1.4383752    4.772209
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 3.796062   1.8244576    7.898284
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 8.483028   7.0027203   10.276257


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005720   -0.0002224   0.0013664
iLiNS-DOSE        MALAWI         0                    NA                0.0066434    0.0011454   0.0121415
iLiNS-DYAD-M      MALAWI         0                    NA                0.0039065   -0.0006064   0.0084195
JiVitA-3          BANGLADESH     0                    NA                0.0028883    0.0018354   0.0039411
JiVitA-4          BANGLADESH     0                    NA                0.0027730    0.0010786   0.0044675
Keneba            GAMBIA         0                    NA                0.0035763    0.0006508   0.0065018
VITAMIN-A         INDIA          0                    NA                0.0043548    0.0017363   0.0069733
ZVITAMBO          ZIMBABWE       0                    NA                0.0145755    0.0122836   0.0168674


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1050508   -0.0490555   0.2365189
iLiNS-DOSE        MALAWI         0                    NA                0.0980301    0.0147842   0.1742421
iLiNS-DYAD-M      MALAWI         0                    NA                0.1889793   -0.0449610   0.3705463
JiVitA-3          BANGLADESH     0                    NA                0.2243044    0.1436352   0.2973745
JiVitA-4          BANGLADESH     0                    NA                0.3074689    0.1149838   0.4580897
Keneba            GAMBIA         0                    NA                0.2244142    0.0325579   0.3782228
VITAMIN-A         INDIA          0                    NA                0.4919577    0.1802326   0.6851461
ZVITAMBO          ZIMBABWE       0                    NA                0.4203201    0.3648264   0.4709655

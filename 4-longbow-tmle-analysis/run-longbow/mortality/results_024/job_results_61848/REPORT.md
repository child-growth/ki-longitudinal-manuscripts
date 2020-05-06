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

**Intervention Variable:** ever_stunted024

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

studyid           country                        ever_stunted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0     4563    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                          1       25    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7162  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                          1       23    7162  dead6plus        
EE                PAKISTAN                       0                          0       39     374  dead6plus        
EE                PAKISTAN                       0                          1        0     374  dead6plus        
EE                PAKISTAN                       1                          0      331     374  dead6plus        
EE                PAKISTAN                       1                          1        4     374  dead6plus        
GMS-Nepal         NEPAL                          0                          0      174     592  dead6plus        
GMS-Nepal         NEPAL                          0                          1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                          0      416     592  dead6plus        
GMS-Nepal         NEPAL                          1                          1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                          0      864    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                          1       62    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                          0      883    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                          1       65    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          0      589    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                          1       10    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          0      544    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                          1       18    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                          0    10298   21039  dead6plus        
JiVitA-3          BANGLADESH                     0                          1      112   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                          0    10430   21039  dead6plus        
JiVitA-3          BANGLADESH                     1                          1      199   21039  dead6plus        
JiVitA-4          BANGLADESH                     0                          0     2257    5432  dead6plus        
JiVitA-4          BANGLADESH                     0                          1       15    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                          0     3125    5432  dead6plus        
JiVitA-4          BANGLADESH                     1                          1       35    5432  dead6plus        
Keneba            GAMBIA                         0                          0     1272    2748  dead6plus        
Keneba            GAMBIA                         0                          1       25    2748  dead6plus        
Keneba            GAMBIA                         1                          0     1397    2748  dead6plus        
Keneba            GAMBIA                         1                          1       54    2748  dead6plus        
MAL-ED            BANGLADESH                     0                          0       91     240  dead6plus        
MAL-ED            BANGLADESH                     0                          1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                          0      149     240  dead6plus        
MAL-ED            BANGLADESH                     1                          1        0     240  dead6plus        
MAL-ED            INDIA                          0                          0       89     235  dead6plus        
MAL-ED            INDIA                          0                          1        0     235  dead6plus        
MAL-ED            INDIA                          1                          0      146     235  dead6plus        
MAL-ED            INDIA                          1                          1        0     235  dead6plus        
MAL-ED            PERU                           0                          0       92     273  dead6plus        
MAL-ED            PERU                           0                          1        0     273  dead6plus        
MAL-ED            PERU                           1                          0      180     273  dead6plus        
MAL-ED            PERU                           1                          1        1     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          0       99     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          0      162     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                          1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0       31     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0      214     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                          0      319     617  dead6plus        
PROVIDE           BANGLADESH                     0                          1        2     617  dead6plus        
PROVIDE           BANGLADESH                     1                          0      295     617  dead6plus        
PROVIDE           BANGLADESH                     1                          1        1     617  dead6plus        
SAS-CompFeed      INDIA                          0                          0      404    1389  dead6plus        
SAS-CompFeed      INDIA                          0                          1        0    1389  dead6plus        
SAS-CompFeed      INDIA                          1                          0      973    1389  dead6plus        
SAS-CompFeed      INDIA                          1                          1       12    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                          0       59     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                          1        0     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          0      339     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                          1        4     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1312    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      784    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                          0     1494    3614  dead6plus        
VITAMIN-A         INDIA                          0                          1        9    3614  dead6plus        
VITAMIN-A         INDIA                          1                          0     2089    3614  dead6plus        
VITAMIN-A         INDIA                          1                          1       22    3614  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          0     6237   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       0                          1      133   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          0     5055   11708  dead6plus        
ZVITAMBO          ZIMBABWE                       1                          1      283   11708  dead6plus        


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
![](/tmp/a6ab6c8b-00a3-4951-a66f-03760f208201/2d3fd691-9567-4500-a83a-bbc8df582f40/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6ab6c8b-00a3-4951-a66f-03760f208201/2d3fd691-9567-4500-a83a-bbc8df582f40/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6ab6c8b-00a3-4951-a66f-03760f208201/2d3fd691-9567-4500-a83a-bbc8df582f40/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6ab6c8b-00a3-4951-a66f-03760f208201/2d3fd691-9567-4500-a83a-bbc8df582f40/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055217   0.0033646   0.0076787
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087952   0.0051864   0.0124039
iLiNS-DOSE        MALAWI         0                    NA                0.0671416   0.0506794   0.0836037
iLiNS-DOSE        MALAWI         1                    NA                0.0692258   0.0527205   0.0857310
iLiNS-DYAD-M      MALAWI         0                    NA                0.0167252   0.0065090   0.0269414
iLiNS-DYAD-M      MALAWI         1                    NA                0.0336254   0.0190689   0.0481819
JiVitA-3          BANGLADESH     0                    NA                0.0116734   0.0093773   0.0139695
JiVitA-3          BANGLADESH     1                    NA                0.0181535   0.0151543   0.0211527
JiVitA-4          BANGLADESH     0                    NA                0.0066936   0.0027179   0.0106693
JiVitA-4          BANGLADESH     1                    NA                0.0109869   0.0075356   0.0144382
Keneba            GAMBIA         0                    NA                0.0206543   0.0117816   0.0295270
Keneba            GAMBIA         1                    NA                0.0339963   0.0247623   0.0432303
VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ZVITAMBO          ZIMBABWE       0                    NA                0.0217136   0.0180303   0.0253970
ZVITAMBO          ZIMBABWE       1                    NA                0.0516104   0.0455868   0.0576340


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067020   0.0048123   0.0085918
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0147821   0.0131375   0.0164266
JiVitA-4          BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917
Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.592851   0.9038742   2.807001
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.031042   0.7323850   1.451487
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.010466   0.9502664   4.253516
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.555116   1.1974166   2.019671
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.641400   0.8341713   3.229786
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.645967   0.9899881   2.736605
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.740407   0.8035728   3.769438
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.376866   1.9347949   2.919944


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0011804   -0.0003494   0.0027101
iLiNS-DOSE        MALAWI         0                    NA                0.0006279   -0.0113896   0.0126454
iLiNS-DYAD-M      MALAWI         0                    NA                0.0073920   -0.0012351   0.0160191
JiVitA-3          BANGLADESH     0                    NA                0.0031087    0.0011374   0.0050799
JiVitA-4          BANGLADESH     0                    NA                0.0025111   -0.0005940   0.0056162
Keneba            GAMBIA         0                    NA                0.0080939    0.0002478   0.0159400
VITAMIN-A         INDIA          0                    NA                0.0025897   -0.0008164   0.0059959
ZVITAMBO          ZIMBABWE       0                    NA                0.0138176    0.0105013   0.0171340


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1761228   -0.0796873   0.3713239
iLiNS-DOSE        MALAWI         0                    NA                0.0092656   -0.1849115   0.1716219
iLiNS-DYAD-M      MALAWI         0                    NA                0.3065028   -0.1314873   0.5749503
JiVitA-3          BANGLADESH     0                    NA                0.2103005    0.0682556   0.3306907
JiVitA-4          BANGLADESH     0                    NA                0.2728064   -0.1662159   0.5465586
Keneba            GAMBIA         0                    NA                0.2815443   -0.0404427   0.5038856
VITAMIN-A         INDIA          0                    NA                0.3019123   -0.2081567   0.5966364
ZVITAMBO          ZIMBABWE       0                    NA                0.3888863    0.2966072   0.4690592

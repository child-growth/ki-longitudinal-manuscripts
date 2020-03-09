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

studyid           country                        ever_stunted024    dead624   n_cell       n
----------------  -----------------------------  ----------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                        0     4566    7162
Burkina Faso Zn   BURKINA FASO                   0                        1       22    7162
Burkina Faso Zn   BURKINA FASO                   1                        0     2557    7162
Burkina Faso Zn   BURKINA FASO                   1                        1       17    7162
EE                PAKISTAN                       0                        0       39     374
EE                PAKISTAN                       0                        1        0     374
EE                PAKISTAN                       1                        0      331     374
EE                PAKISTAN                       1                        1        4     374
GMS-Nepal         NEPAL                          0                        0      174     592
GMS-Nepal         NEPAL                          0                        1        1     592
GMS-Nepal         NEPAL                          1                        0      416     592
GMS-Nepal         NEPAL                          1                        1        1     592
iLiNS-DOSE        MALAWI                         0                        0      864    1874
iLiNS-DOSE        MALAWI                         0                        1       62    1874
iLiNS-DOSE        MALAWI                         1                        0      883    1874
iLiNS-DOSE        MALAWI                         1                        1       65    1874
iLiNS-DYAD-M      MALAWI                         0                        0      590    1161
iLiNS-DYAD-M      MALAWI                         0                        1        9    1161
iLiNS-DYAD-M      MALAWI                         1                        0      547    1161
iLiNS-DYAD-M      MALAWI                         1                        1       15    1161
JiVitA-3          BANGLADESH                     0                        0    10313   21039
JiVitA-3          BANGLADESH                     0                        1       97   21039
JiVitA-3          BANGLADESH                     1                        0    10456   21039
JiVitA-3          BANGLADESH                     1                        1      173   21039
JiVitA-4          BANGLADESH                     0                        0     2257    5432
JiVitA-4          BANGLADESH                     0                        1       15    5432
JiVitA-4          BANGLADESH                     1                        0     3126    5432
JiVitA-4          BANGLADESH                     1                        1       34    5432
Keneba            GAMBIA                         0                        0     1281    2748
Keneba            GAMBIA                         0                        1       16    2748
Keneba            GAMBIA                         1                        0     1423    2748
Keneba            GAMBIA                         1                        1       28    2748
MAL-ED            BANGLADESH                     0                        0       91     240
MAL-ED            BANGLADESH                     0                        1        0     240
MAL-ED            BANGLADESH                     1                        0      149     240
MAL-ED            BANGLADESH                     1                        1        0     240
MAL-ED            INDIA                          0                        0       89     235
MAL-ED            INDIA                          0                        1        0     235
MAL-ED            INDIA                          1                        0      146     235
MAL-ED            INDIA                          1                        1        0     235
MAL-ED            PERU                           0                        0       92     273
MAL-ED            PERU                           0                        1        0     273
MAL-ED            PERU                           1                        0      180     273
MAL-ED            PERU                           1                        1        1     273
MAL-ED            SOUTH AFRICA                   0                        0       99     261
MAL-ED            SOUTH AFRICA                   0                        1        0     261
MAL-ED            SOUTH AFRICA                   1                        0      162     261
MAL-ED            SOUTH AFRICA                   1                        1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0       31     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0      214     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
PROVIDE           BANGLADESH                     0                        0      319     617
PROVIDE           BANGLADESH                     0                        1        2     617
PROVIDE           BANGLADESH                     1                        0      296     617
PROVIDE           BANGLADESH                     1                        1        0     617
SAS-CompFeed      INDIA                          0                        0      404    1389
SAS-CompFeed      INDIA                          0                        1        0    1389
SAS-CompFeed      INDIA                          1                        0      973    1389
SAS-CompFeed      INDIA                          1                        1       12    1389
SAS-FoodSuppl     INDIA                          0                        0       59     402
SAS-FoodSuppl     INDIA                          0                        1        0     402
SAS-FoodSuppl     INDIA                          1                        0      339     402
SAS-FoodSuppl     INDIA                          1                        1        4     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1312    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      784    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096
VITAMIN-A         INDIA                          0                        0     1494    3614
VITAMIN-A         INDIA                          0                        1        9    3614
VITAMIN-A         INDIA                          1                        0     2089    3614
VITAMIN-A         INDIA                          1                        1       22    3614
ZVITAMBO          ZIMBABWE                       0                        0     6242   11708
ZVITAMBO          ZIMBABWE                       0                        1      128   11708
ZVITAMBO          ZIMBABWE                       1                        0     5060   11708
ZVITAMBO          ZIMBABWE                       1                        1      278   11708


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
![](/tmp/c9500856-81d6-4e71-8a3d-9bb65a65b647/fcacfd8f-b0bf-4eff-89e9-c4181bfb8404/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9500856-81d6-4e71-8a3d-9bb65a65b647/fcacfd8f-b0bf-4eff-89e9-c4181bfb8404/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9500856-81d6-4e71-8a3d-9bb65a65b647/fcacfd8f-b0bf-4eff-89e9-c4181bfb8404/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9500856-81d6-4e71-8a3d-9bb65a65b647/fcacfd8f-b0bf-4eff-89e9-c4181bfb8404/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048606   0.0028382   0.0068830
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0064900   0.0034124   0.0095676
iLiNS-DOSE        MALAWI         0                    NA                0.0676498   0.0512340   0.0840656
iLiNS-DOSE        MALAWI         1                    NA                0.0681151   0.0518124   0.0844179
iLiNS-DYAD-M      MALAWI         0                    NA                0.0150250   0.0052787   0.0247714
iLiNS-DYAD-M      MALAWI         1                    NA                0.0266904   0.0133592   0.0400216
JiVitA-3          BANGLADESH     0                    NA                0.0100778   0.0079293   0.0122264
JiVitA-3          BANGLADESH     1                    NA                0.0161076   0.0133895   0.0188258
JiVitA-4          BANGLADESH     0                    NA                0.0067166   0.0027191   0.0107141
JiVitA-4          BANGLADESH     1                    NA                0.0107142   0.0073473   0.0140812
Keneba            GAMBIA         0                    NA                0.0122976   0.0062237   0.0183714
Keneba            GAMBIA         1                    NA                0.0192008   0.0120902   0.0263115
VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ZVITAMBO          ZIMBABWE       0                    NA                0.0207479   0.0171823   0.0243135
ZVITAMBO          ZIMBABWE       1                    NA                0.0502381   0.0442779   0.0561983


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054454   0.0037409   0.0071499
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0128333   0.0112834   0.0143832
JiVitA-4          BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698
Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.335232   0.7105287   2.509180
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.006878   0.7160690   1.415790
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.776394   0.7834049   4.028026
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.598323   1.2196025   2.094646
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.595190   0.8101252   3.141034
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.561348   0.8420248   2.895173
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.740407   0.8035728   3.769438
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.421356   1.9652273   2.983352


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005848   -0.0007626   0.0019322
iLiNS-DOSE        MALAWI         0                    NA                0.0001196   -0.0118163   0.0120556
iLiNS-DYAD-M      MALAWI         0                    NA                0.0056468   -0.0023541   0.0136477
JiVitA-3          BANGLADESH     0                    NA                0.0027555    0.0009288   0.0045822
JiVitA-4          BANGLADESH     0                    NA                0.0023040   -0.0007813   0.0053893
Keneba            GAMBIA         0                    NA                0.0037141   -0.0012371   0.0086652
VITAMIN-A         INDIA          0                    NA                0.0025897   -0.0008164   0.0059959
ZVITAMBO          ZIMBABWE       0                    NA                0.0139292    0.0106831   0.0171754


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1073981   -0.1746541   0.3217253
iLiNS-DOSE        MALAWI         0                    NA                0.0017652   -0.1908510   0.1632264
iLiNS-DYAD-M      MALAWI         0                    NA                0.2731636   -0.2127436   0.5643835
JiVitA-3          BANGLADESH     0                    NA                0.2147138    0.0620171   0.3425527
JiVitA-4          BANGLADESH     0                    NA                0.2554187   -0.1904333   0.5342861
Keneba            GAMBIA         0                    NA                0.2319594   -0.1387676   0.4819958
VITAMIN-A         INDIA          0                    NA                0.3019123   -0.2081567   0.5966364
ZVITAMBO          ZIMBABWE       0                    NA                0.4016834    0.3098798   0.4812747

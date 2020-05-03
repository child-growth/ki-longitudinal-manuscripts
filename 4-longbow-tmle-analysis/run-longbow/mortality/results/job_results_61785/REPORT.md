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

**Outcome Variable:** dead0plus

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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sunderweight06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                              0      315     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                              1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              0       21     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              1        0     338  dead0plus        
EE                PAKISTAN                       0                              0      218     380  dead0plus        
EE                PAKISTAN                       0                              1        1     380  dead0plus        
EE                PAKISTAN                       1                              0      158     380  dead0plus        
EE                PAKISTAN                       1                              1        3     380  dead0plus        
GMS-Nepal         NEPAL                          0                              0      600     697  dead0plus        
GMS-Nepal         NEPAL                          0                              1        3     697  dead0plus        
GMS-Nepal         NEPAL                          1                              0       90     697  dead0plus        
GMS-Nepal         NEPAL                          1                              1        4     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                              0     1646    1816  dead0plus        
iLiNS-DOSE        MALAWI                         0                              1      106    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                              0       56    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                              1        8    1816  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              0     1080    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              1       30    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              0       78    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              1       14    1202  dead0plus        
JiVitA-3          BANGLADESH                     0                              0    22216   27237  dead0plus        
JiVitA-3          BANGLADESH                     0                              1      436   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                              0     4155   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                              1      430   27237  dead0plus        
JiVitA-4          BANGLADESH                     0                              0     4716    5276  dead0plus        
JiVitA-4          BANGLADESH                     0                              1       32    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                              0      512    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                              1       16    5276  dead0plus        
Keneba            GAMBIA                         0                              0     2379    2632  dead0plus        
Keneba            GAMBIA                         0                              1       71    2632  dead0plus        
Keneba            GAMBIA                         1                              0      158    2632  dead0plus        
Keneba            GAMBIA                         1                              1       24    2632  dead0plus        
MAL-ED            BANGLADESH                     0                              0      243     265  dead0plus        
MAL-ED            BANGLADESH                     0                              1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                              0       19     265  dead0plus        
MAL-ED            BANGLADESH                     1                              1        1     265  dead0plus        
MAL-ED            INDIA                          0                              0      217     251  dead0plus        
MAL-ED            INDIA                          0                              1        1     251  dead0plus        
MAL-ED            INDIA                          1                              0       32     251  dead0plus        
MAL-ED            INDIA                          1                              1        1     251  dead0plus        
MAL-ED            PERU                           0                              0      290     303  dead0plus        
MAL-ED            PERU                           0                              1        2     303  dead0plus        
MAL-ED            PERU                           1                              0       11     303  dead0plus        
MAL-ED            PERU                           1                              1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              0      300     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              0       13     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      251     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0        8     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                              0      647     700  dead0plus        
PROVIDE           BANGLADESH                     0                              1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                              0       48     700  dead0plus        
PROVIDE           BANGLADESH                     1                              1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                              0     1247    1533  dead0plus        
SAS-CompFeed      INDIA                          0                              1       26    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              0      236    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              1       24    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                              0      304     416  dead0plus        
SAS-FoodSuppl     INDIA                          0                              1        2     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                              0      106     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                              1        4     416  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2325    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       70    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                              0     2858    3906  dead0plus        
VITAMIN-A         INDIA                          0                              1       30    3906  dead0plus        
VITAMIN-A         INDIA                          1                              0      970    3906  dead0plus        
VITAMIN-A         INDIA                          1                              1       48    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              0    12411   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              1      816   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              0      556   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              1      302   14085  dead0plus        


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a26bb2b5-2500-41db-928a-f2f7bd9efeb0/fd436660-9052-483a-8f91-f801cb87043e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a26bb2b5-2500-41db-928a-f2f7bd9efeb0/fd436660-9052-483a-8f91-f801cb87043e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a26bb2b5-2500-41db-928a-f2f7bd9efeb0/fd436660-9052-483a-8f91-f801cb87043e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a26bb2b5-2500-41db-928a-f2f7bd9efeb0/fd436660-9052-483a-8f91-f801cb87043e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0270851   0.0175336   0.0366366
iLiNS-DYAD-M   MALAWI       1                    NA                0.1326041   0.0641000   0.2011082
JiVitA-3       BANGLADESH   0                    NA                0.0194692   0.0176634   0.0212749
JiVitA-3       BANGLADESH   1                    NA                0.0897901   0.0799277   0.0996526
JiVitA-4       BANGLADESH   0                    NA                0.0067673   0.0042508   0.0092838
JiVitA-4       BANGLADESH   1                    NA                0.0282807   0.0131350   0.0434263
Keneba         GAMBIA       0                    NA                0.0289965   0.0223525   0.0356405
Keneba         GAMBIA       1                    NA                0.1384746   0.0861548   0.1907944
SAS-CompFeed   INDIA        0                    NA                0.0211192   0.0084969   0.0337415
SAS-CompFeed   INDIA        1                    NA                0.0893510   0.0574175   0.1212846
VITAMIN-A      INDIA        0                    NA                0.0103453   0.0066568   0.0140339
VITAMIN-A      INDIA        1                    NA                0.0463451   0.0334202   0.0592701
ZVITAMBO       ZIMBABWE     0                    NA                0.0621538   0.0580406   0.0662670
ZVITAMBO       ZIMBABWE     1                    NA                0.3353833   0.3018706   0.3688960


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0366057   0.0259850   0.0472263
JiVitA-3       BANGLADESH   NA                   NA                0.0317950   0.0295928   0.0339972
JiVitA-4       BANGLADESH   NA                   NA                0.0090978   0.0063582   0.0118374
Keneba         GAMBIA       NA                   NA                0.0360942   0.0289669   0.0432215
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793752   0.0749108   0.0838397


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847   4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 4.895835   2.620073   9.148293
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.611908   4.009599   5.304695
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 4.179019   2.171498   8.042469
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 4.775566   3.067740   7.434147
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 4.230803   2.234010   8.012361
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 4.479808   2.848535   7.045264
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.396024   4.787814   6.081497


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0095206    0.0035660   0.0154752
JiVitA-3       BANGLADESH   0                    NA                0.0123258    0.0106934   0.0139582
JiVitA-4       BANGLADESH   0                    NA                0.0023305    0.0007363   0.0039248
Keneba         GAMBIA       0                    NA                0.0070977    0.0035140   0.0106815
SAS-CompFeed   INDIA        0                    NA                0.0114966    0.0051202   0.0178731
VITAMIN-A      INDIA        0                    NA                0.0096239    0.0060627   0.0131851
ZVITAMBO       ZIMBABWE     0                    NA                0.0172214    0.0149713   0.0194716


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2600845    0.0996410   0.3919371
JiVitA-3       BANGLADESH   0                    NA                0.3876647    0.3446803   0.4278295
JiVitA-4       BANGLADESH   0                    NA                0.2561612    0.0793526   0.3990141
Keneba         GAMBIA       0                    NA                0.1966448    0.0994194   0.2833739
SAS-CompFeed   INDIA        0                    NA                0.3524864    0.0981394   0.5351013
VITAMIN-A      INDIA        0                    NA                0.4819372    0.3153417   0.6079956
ZVITAMBO       ZIMBABWE     0                    NA                0.2169624    0.1905568   0.2425065

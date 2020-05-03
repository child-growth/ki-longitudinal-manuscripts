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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sstunted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                               0      260     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                               1       16     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                               0       82     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                               1       12     370  pers_wasted624   
CMIN             BANGLADESH                     0                               0      181     252  pers_wasted624   
CMIN             BANGLADESH                     0                               1       12     252  pers_wasted624   
CMIN             BANGLADESH                     1                               0       46     252  pers_wasted624   
CMIN             BANGLADESH                     1                               1       13     252  pers_wasted624   
COHORTS          GUATEMALA                      0                               0      843    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                               1       24    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                               0      139    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                               1       17    1023  pers_wasted624   
COHORTS          INDIA                          0                               0     5774    6893  pers_wasted624   
COHORTS          INDIA                          0                               1      648    6893  pers_wasted624   
COHORTS          INDIA                          1                               0      348    6893  pers_wasted624   
COHORTS          INDIA                          1                               1      123    6893  pers_wasted624   
COHORTS          PHILIPPINES                    0                               0     2411    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                               1      184    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                               0      172    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                               1       42    2809  pers_wasted624   
CONTENT          PERU                           0                               0      207     215  pers_wasted624   
CONTENT          PERU                           0                               1        0     215  pers_wasted624   
CONTENT          PERU                           1                               0        8     215  pers_wasted624   
CONTENT          PERU                           1                               1        0     215  pers_wasted624   
EE               PAKISTAN                       0                               0      188     373  pers_wasted624   
EE               PAKISTAN                       0                               1       24     373  pers_wasted624   
EE               PAKISTAN                       1                               0      136     373  pers_wasted624   
EE               PAKISTAN                       1                               1       25     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                               0      454     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                               1       88     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                               0       27     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                               1       21     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                               0      246     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                               1        2     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                               0       24     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                               1        2     274  pers_wasted624   
IRC              INDIA                          0                               0      310     410  pers_wasted624   
IRC              INDIA                          0                               1       38     410  pers_wasted624   
IRC              INDIA                          1                               0       52     410  pers_wasted624   
IRC              INDIA                          1                               1       10     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                               0    12183   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     0                               1     2582   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                               0     1840   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                               1      660   17265  pers_wasted624   
JiVitA-4         BANGLADESH                     0                               0     4209    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     0                               1      449    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                               0      484    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                               1      115    5257  pers_wasted624   
Keneba           GAMBIA                         0                               0     1862    2299  pers_wasted624   
Keneba           GAMBIA                         0                               1      164    2299  pers_wasted624   
Keneba           GAMBIA                         1                               0      234    2299  pers_wasted624   
Keneba           GAMBIA                         1                               1       39    2299  pers_wasted624   
LCNI-5           MALAWI                         0                               0      720     797  pers_wasted624   
LCNI-5           MALAWI                         0                               1       10     797  pers_wasted624   
LCNI-5           MALAWI                         1                               0       64     797  pers_wasted624   
LCNI-5           MALAWI                         1                               1        3     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                               0      207     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                               1       15     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                               0       16     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                               1        2     240  pers_wasted624   
MAL-ED           BRAZIL                         0                               0      188     207  pers_wasted624   
MAL-ED           BRAZIL                         0                               1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                               0       17     207  pers_wasted624   
MAL-ED           BRAZIL                         1                               1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                               0      193     235  pers_wasted624   
MAL-ED           INDIA                          0                               1       22     235  pers_wasted624   
MAL-ED           INDIA                          1                               0       14     235  pers_wasted624   
MAL-ED           INDIA                          1                               1        6     235  pers_wasted624   
MAL-ED           NEPAL                          0                               0      224     235  pers_wasted624   
MAL-ED           NEPAL                          0                               1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                               0        9     235  pers_wasted624   
MAL-ED           NEPAL                          1                               1        1     235  pers_wasted624   
MAL-ED           PERU                           0                               0      234     270  pers_wasted624   
MAL-ED           PERU                           0                               1        1     270  pers_wasted624   
MAL-ED           PERU                           1                               0       33     270  pers_wasted624   
MAL-ED           PERU                           1                               1        2     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                               0      230     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                               1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                               0       27     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                               1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      208     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       37     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                               0      427     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                               1       48     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                               0       54     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                               1       13     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                               0      641     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                               1       36     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                               0       45     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                               1        8     730  pers_wasted624   
PROBIT           BELARUS                        0                               0    16294   16595  pers_wasted624   
PROBIT           BELARUS                        0                               1       16   16595  pers_wasted624   
PROBIT           BELARUS                        1                               0      283   16595  pers_wasted624   
PROBIT           BELARUS                        1                               1        2   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                               0      549     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                               1       37     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                               0       26     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                               1        3     615  pers_wasted624   
ResPak           PAKISTAN                       0                               0      114     234  pers_wasted624   
ResPak           PAKISTAN                       0                               1       32     234  pers_wasted624   
ResPak           PAKISTAN                       1                               0       73     234  pers_wasted624   
ResPak           PAKISTAN                       1                               1       15     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                               0     1018    1388  pers_wasted624   
SAS-CompFeed     INDIA                          0                               1      163    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                               0      140    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                               1       67    1388  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                               0      283     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                               1       55     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                               0       43     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                               1       21     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                               0     9267   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                               1      375   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                               0     1068   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                               1       92   10802  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/3fbf8c2c-9a51-4857-86fb-ec97a02d24d8/749ad0e2-8a2f-4212-aaba-583ea58f3ecc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fbf8c2c-9a51-4857-86fb-ec97a02d24d8/749ad0e2-8a2f-4212-aaba-583ea58f3ecc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fbf8c2c-9a51-4857-86fb-ec97a02d24d8/749ad0e2-8a2f-4212-aaba-583ea58f3ecc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fbf8c2c-9a51-4857-86fb-ec97a02d24d8/749ad0e2-8a2f-4212-aaba-583ea58f3ecc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0575491   0.0301472   0.0849509
CMC-V-BCS-2002   INDIA                          1                    NA                0.1219907   0.0576063   0.1863751
CMIN             BANGLADESH                     0                    NA                0.0597495   0.0260609   0.0934381
CMIN             BANGLADESH                     1                    NA                0.2889653   0.1693823   0.4085482
COHORTS          GUATEMALA                      0                    NA                0.0277591   0.0167825   0.0387357
COHORTS          GUATEMALA                      1                    NA                0.1153655   0.0617650   0.1689660
COHORTS          INDIA                          0                    NA                0.1022196   0.0948042   0.1096349
COHORTS          INDIA                          1                    NA                0.2194990   0.1815112   0.2574869
COHORTS          PHILIPPINES                    0                    NA                0.0721507   0.0621588   0.0821427
COHORTS          PHILIPPINES                    1                    NA                0.2072389   0.1464450   0.2680328
EE               PAKISTAN                       0                    NA                0.1158406   0.0720722   0.1596091
EE               PAKISTAN                       1                    NA                0.1546176   0.0971137   0.2121215
GMS-Nepal        NEPAL                          0                    NA                0.1616991   0.1306433   0.1927549
GMS-Nepal        NEPAL                          1                    NA                0.4613173   0.3190950   0.6035397
IRC              INDIA                          0                    NA                0.1077393   0.0750887   0.1403898
IRC              INDIA                          1                    NA                0.1704749   0.0753815   0.2655683
JiVitA-3         BANGLADESH                     0                    NA                0.1766133   0.1696012   0.1836254
JiVitA-3         BANGLADESH                     1                    NA                0.2574926   0.2362871   0.2786982
JiVitA-4         BANGLADESH                     0                    NA                0.0971652   0.0861359   0.1081945
JiVitA-4         BANGLADESH                     1                    NA                0.1833789   0.1459866   0.2207711
Keneba           GAMBIA                         0                    NA                0.0811688   0.0693012   0.0930365
Keneba           GAMBIA                         1                    NA                0.1406020   0.0990614   0.1821426
MAL-ED           INDIA                          0                    NA                0.1023256   0.0617274   0.1429237
MAL-ED           INDIA                          1                    NA                0.3000000   0.0987348   0.5012652
NIH-Birth        BANGLADESH                     0                    NA                0.1012008   0.0740433   0.1283583
NIH-Birth        BANGLADESH                     1                    NA                0.1835130   0.0871265   0.2798995
NIH-Crypto       BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
NIH-Crypto       BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ResPak           PAKISTAN                       0                    NA                0.2277563   0.1571956   0.2983170
ResPak           PAKISTAN                       1                    NA                0.1637231   0.0841803   0.2432659
SAS-CompFeed     INDIA                          0                    NA                0.1421906   0.1189852   0.1653961
SAS-CompFeed     INDIA                          1                    NA                0.2949694   0.2121194   0.3778194
SAS-FoodSuppl    INDIA                          0                    NA                0.1629267   0.1235635   0.2022899
SAS-FoodSuppl    INDIA                          1                    NA                0.3264105   0.2071602   0.4456609
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469221   0.0374553   0.0563889
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1260155   0.0623910   0.1896400
ZVITAMBO         ZIMBABWE                       0                    NA                0.0393796   0.0354949   0.0432644
ZVITAMBO         ZIMBABWE                       1                    NA                0.0751854   0.0595606   0.0908101


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 2.1197698   1.0382418   4.327917
CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
CMIN             BANGLADESH                     1                    0                 4.8362818   2.4117743   9.698097
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 4.1559516   2.2619795   7.635760
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.1473286   1.7803837   2.589902
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.8723060   2.0768706   3.972391
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.3347438   0.7839884   2.272407
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 2.8529366   1.9833000   4.103891
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 1.5822915   0.8385522   2.985677
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4579459   1.3314944   1.596406
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 1.8872898   1.4918503   2.387547
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 1.7322168   1.2464998   2.407201
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 2.9318182   1.3447391   6.391989
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 1.8133557   1.0051453   3.271426
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 0.7188521   0.4035845   1.280397
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 2.0744642   1.3865985   3.103567
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 2.0034194   1.2926922   3.104907
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.6856312   1.5588584   4.626857
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 1.9092456   1.5171862   2.402618


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0181266   -0.0007816   0.0370348
CMIN             BANGLADESH                     0                    NA                 0.0394569    0.0124435   0.0664703
COHORTS          GUATEMALA                      0                    NA                 0.0123191    0.0044924   0.0201458
COHORTS          INDIA                          0                    NA                 0.0096330    0.0067405   0.0125255
COHORTS          PHILIPPINES                    0                    NA                 0.0083050    0.0039957   0.0126143
EE               PAKISTAN                       0                    NA                 0.0155267   -0.0158315   0.0468848
GMS-Nepal        NEPAL                          0                    NA                 0.0230466    0.0097652   0.0363281
IRC              INDIA                          0                    NA                 0.0093339   -0.0054717   0.0241396
JiVitA-3         BANGLADESH                     0                    NA                 0.0111654    0.0081150   0.0142159
JiVitA-4         BANGLADESH                     0                    NA                 0.0101203    0.0057031   0.0145376
Keneba           GAMBIA                         0                    NA                 0.0071304    0.0019716   0.0122892
MAL-ED           INDIA                          0                    NA                 0.0168234   -0.0020257   0.0356724
NIH-Birth        BANGLADESH                     0                    NA                 0.0113453   -0.0011220   0.0238127
NIH-Crypto       BANGLADESH                     0                    NA                 0.0070982   -0.0002455   0.0144419
ResPak           PAKISTAN                       0                    NA                -0.0269016   -0.0694279   0.0156246
SAS-CompFeed     INDIA                          0                    NA                 0.0235154    0.0052086   0.0418222
SAS-FoodSuppl    INDIA                          0                    NA                 0.0261280    0.0058896   0.0463664
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036230    0.0003493   0.0068967
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0038531    0.0021144   0.0055918


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.2395304   -0.0372563   0.4424579
CMIN             BANGLADESH                     0                    NA                 0.3977253    0.1040134   0.5951560
COHORTS          GUATEMALA                      0                    NA                 0.3073766    0.1094650   0.4613046
COHORTS          INDIA                          0                    NA                 0.0861226    0.0604438   0.1110995
COHORTS          PHILIPPINES                    0                    NA                 0.1032242    0.0495508   0.1538665
EE               PAKISTAN                       0                    NA                 0.1181927   -0.1539343   0.3261452
GMS-Nepal        NEPAL                          0                    NA                 0.1247479    0.0518249   0.1920625
IRC              INDIA                          0                    NA                 0.0797272   -0.0546049   0.1969486
JiVitA-3         BANGLADESH                     0                    NA                 0.0594607    0.0430907   0.0755506
JiVitA-4         BANGLADESH                     0                    NA                 0.0943308    0.0520490   0.1347267
Keneba           GAMBIA                         0                    NA                 0.0807529    0.0213337   0.1365646
MAL-ED           INDIA                          0                    NA                 0.1411960   -0.0253403   0.2806834
NIH-Birth        BANGLADESH                     0                    NA                 0.1008062   -0.0148034   0.2032451
NIH-Crypto       BANGLADESH                     0                    NA                 0.1177655   -0.0080550   0.2278818
ResPak           PAKISTAN                       0                    NA                -0.1339357   -0.3651123   0.0580920
SAS-CompFeed     INDIA                          0                    NA                 0.1419104    0.0264554   0.2436733
SAS-FoodSuppl    INDIA                          0                    NA                 0.1382034    0.0268180   0.2368403
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0716783    0.0059920   0.1330239
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0891247    0.0488395   0.1277036

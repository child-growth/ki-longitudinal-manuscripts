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

**Intervention Variable:** ever_stunted06

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

studyid          country                        ever_stunted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                              0      167     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                              1       11     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              0      175     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              1       17     370  pers_wasted624   
CMIN             BANGLADESH                     0                              0      107     252  pers_wasted624   
CMIN             BANGLADESH                     0                              1        3     252  pers_wasted624   
CMIN             BANGLADESH                     1                              0      120     252  pers_wasted624   
CMIN             BANGLADESH                     1                              1       22     252  pers_wasted624   
COHORTS          GUATEMALA                      0                              0      555    1023  pers_wasted624   
COHORTS          GUATEMALA                      0                              1       12    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                              0      427    1023  pers_wasted624   
COHORTS          GUATEMALA                      1                              1       29    1023  pers_wasted624   
COHORTS          INDIA                          0                              0     4740    6893  pers_wasted624   
COHORTS          INDIA                          0                              1      420    6893  pers_wasted624   
COHORTS          INDIA                          1                              0     1382    6893  pers_wasted624   
COHORTS          INDIA                          1                              1      351    6893  pers_wasted624   
COHORTS          PHILIPPINES                    0                              0     1889    2809  pers_wasted624   
COHORTS          PHILIPPINES                    0                              1      108    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                              0      694    2809  pers_wasted624   
COHORTS          PHILIPPINES                    1                              1      118    2809  pers_wasted624   
CONTENT          PERU                           0                              0      186     215  pers_wasted624   
CONTENT          PERU                           0                              1        0     215  pers_wasted624   
CONTENT          PERU                           1                              0       29     215  pers_wasted624   
CONTENT          PERU                           1                              1        0     215  pers_wasted624   
EE               PAKISTAN                       0                              0       83     373  pers_wasted624   
EE               PAKISTAN                       0                              1        8     373  pers_wasted624   
EE               PAKISTAN                       1                              0      241     373  pers_wasted624   
EE               PAKISTAN                       1                              1       41     373  pers_wasted624   
GMS-Nepal        NEPAL                          0                              0      339     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                              1       58     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              0      142     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              1       51     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              0      180     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              1        1     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              0       90     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              1        3     274  pers_wasted624   
IRC              INDIA                          0                              0      204     410  pers_wasted624   
IRC              INDIA                          0                              1       28     410  pers_wasted624   
IRC              INDIA                          1                              0      158     410  pers_wasted624   
IRC              INDIA                          1                              1       20     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              0     8305   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              1     1519   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              0     5718   17265  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              1     1723   17265  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              0     2985    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              1      243    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              0     1708    5257  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              1      321    5257  pers_wasted624   
Keneba           GAMBIA                         0                              0     1469    2299  pers_wasted624   
Keneba           GAMBIA                         0                              1       97    2299  pers_wasted624   
Keneba           GAMBIA                         1                              0      627    2299  pers_wasted624   
Keneba           GAMBIA                         1                              1      106    2299  pers_wasted624   
LCNI-5           MALAWI                         0                              0      498     797  pers_wasted624   
LCNI-5           MALAWI                         0                              1        4     797  pers_wasted624   
LCNI-5           MALAWI                         1                              0      286     797  pers_wasted624   
LCNI-5           MALAWI                         1                              1        9     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                              0      145     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                              1       10     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              0       78     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              1        7     240  pers_wasted624   
MAL-ED           BRAZIL                         0                              0      160     207  pers_wasted624   
MAL-ED           BRAZIL                         0                              1        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              0       45     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              1        0     207  pers_wasted624   
MAL-ED           INDIA                          0                              0      135     235  pers_wasted624   
MAL-ED           INDIA                          0                              1       14     235  pers_wasted624   
MAL-ED           INDIA                          1                              0       72     235  pers_wasted624   
MAL-ED           INDIA                          1                              1       14     235  pers_wasted624   
MAL-ED           NEPAL                          0                              0      191     235  pers_wasted624   
MAL-ED           NEPAL                          0                              1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                              0       42     235  pers_wasted624   
MAL-ED           NEPAL                          1                              1        1     235  pers_wasted624   
MAL-ED           PERU                           0                              0      147     270  pers_wasted624   
MAL-ED           PERU                           0                              1        0     270  pers_wasted624   
MAL-ED           PERU                           1                              0      120     270  pers_wasted624   
MAL-ED           PERU                           1                              1        3     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              0      152     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              1        2     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              0      105     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              1        0     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      140     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      105     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              0      295     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              1       23     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              0      186     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              1       38     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              0      460     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              1       19     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              0      226     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              1       25     730  pers_wasted624   
PROBIT           BELARUS                        0                              0    15191   16595  pers_wasted624   
PROBIT           BELARUS                        0                              1       14   16595  pers_wasted624   
PROBIT           BELARUS                        1                              0     1386   16595  pers_wasted624   
PROBIT           BELARUS                        1                              1        4   16595  pers_wasted624   
PROVIDE          BANGLADESH                     0                              0      435     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                              1       20     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              0      140     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              1       20     615  pers_wasted624   
ResPak           PAKISTAN                       0                              0       79     234  pers_wasted624   
ResPak           PAKISTAN                       0                              1       16     234  pers_wasted624   
ResPak           PAKISTAN                       1                              0      108     234  pers_wasted624   
ResPak           PAKISTAN                       1                              1       31     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                              0      698    1388  pers_wasted624   
SAS-CompFeed     INDIA                          0                              1      100    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                              0      460    1388  pers_wasted624   
SAS-CompFeed     INDIA                          1                              1      130    1388  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              0      179     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              1       36     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              0      147     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              1       40     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1514    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       66    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0      402    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       36    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              0     7237   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              1      241   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              0     3098   10802  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              1      226   10802  pers_wasted624   


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

* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS

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
![](/tmp/dca9fd32-e619-4f3b-8a7b-984be3fd5fd1/dc644ade-4cf9-400f-8de4-1a041fe981c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dca9fd32-e619-4f3b-8a7b-984be3fd5fd1/dc644ade-4cf9-400f-8de4-1a041fe981c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dca9fd32-e619-4f3b-8a7b-984be3fd5fd1/dc644ade-4cf9-400f-8de4-1a041fe981c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dca9fd32-e619-4f3b-8a7b-984be3fd5fd1/dc644ade-4cf9-400f-8de4-1a041fe981c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0632480   0.0276944   0.0988017
CMC-V-BCS-2002   INDIA                          1                    NA                0.0872777   0.0473038   0.1272516
COHORTS          GUATEMALA                      0                    NA                0.0250398   0.0093979   0.0406817
COHORTS          GUATEMALA                      1                    NA                0.0672208   0.0418842   0.0925574
COHORTS          INDIA                          0                    NA                0.0843752   0.0767194   0.0920309
COHORTS          INDIA                          1                    NA                0.1848621   0.1660970   0.2036273
COHORTS          PHILIPPINES                    0                    NA                0.0575833   0.0471288   0.0680379
COHORTS          PHILIPPINES                    1                    NA                0.1336313   0.1087095   0.1585531
EE               PAKISTAN                       0                    NA                0.0879121   0.0296544   0.1461697
EE               PAKISTAN                       1                    NA                0.1453901   0.1041938   0.1865863
GMS-Nepal        NEPAL                          0                    NA                0.1484894   0.1137566   0.1832221
GMS-Nepal        NEPAL                          1                    NA                0.2641847   0.2018150   0.3265544
IRC              INDIA                          0                    NA                0.1203703   0.0782832   0.1624574
IRC              INDIA                          1                    NA                0.1132238   0.0659725   0.1604752
JiVitA-3         BANGLADESH                     0                    NA                0.1579293   0.1497892   0.1660694
JiVitA-3         BANGLADESH                     1                    NA                0.2267650   0.2154248   0.2381052
JiVitA-4         BANGLADESH                     0                    NA                0.0765579   0.0650252   0.0880905
JiVitA-4         BANGLADESH                     1                    NA                0.1546629   0.1357014   0.1736244
Keneba           GAMBIA                         0                    NA                0.0647135   0.0524044   0.0770226
Keneba           GAMBIA                         1                    NA                0.1353663   0.1102308   0.1605019
MAL-ED           BANGLADESH                     0                    NA                0.0645161   0.0257599   0.1032723
MAL-ED           BANGLADESH                     1                    NA                0.0823529   0.0237900   0.1409159
MAL-ED           INDIA                          0                    NA                0.0934976   0.0466876   0.1403076
MAL-ED           INDIA                          1                    NA                0.1654507   0.0856506   0.2452507
NIH-Birth        BANGLADESH                     0                    NA                0.0733879   0.0436026   0.1031731
NIH-Birth        BANGLADESH                     1                    NA                0.1710859   0.1208169   0.2213549
NIH-Crypto       BANGLADESH                     0                    NA                0.0408500   0.0233166   0.0583835
NIH-Crypto       BANGLADESH                     1                    NA                0.0957346   0.0588654   0.1326039
PROVIDE          BANGLADESH                     0                    NA                0.0431704   0.0242133   0.0621275
PROVIDE          BANGLADESH                     1                    NA                0.1403448   0.0871099   0.1935796
ResPak           PAKISTAN                       0                    NA                0.1585653   0.0854129   0.2317177
ResPak           PAKISTAN                       1                    NA                0.2180161   0.1493996   0.2866327
SAS-CompFeed     INDIA                          0                    NA                0.1349532   0.1143188   0.1555877
SAS-CompFeed     INDIA                          1                    NA                0.2017862   0.1677513   0.2358211
SAS-FoodSuppl    INDIA                          0                    NA                0.1660044   0.1162316   0.2157772
SAS-FoodSuppl    INDIA                          1                    NA                0.2155355   0.1562944   0.2747765
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0419408   0.0320303   0.0518513
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0820207   0.0557265   0.1083148
ZVITAMBO         ZIMBABWE                       0                    NA                0.0334109   0.0293011   0.0375207
ZVITAMBO         ZIMBABWE                       1                    NA                0.0651950   0.0567144   0.0736756


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
JiVitA-4         BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252
Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
MAL-ED           BANGLADESH                     NA                   NA                0.0708333   0.0383085   0.1033581
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
CMC-V-BCS-2002   INDIA                          1                    0                 1.3799281   0.6674968   2.852750
COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
COHORTS          GUATEMALA                      1                    0                 2.6845562   1.2967281   5.557713
COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
COHORTS          INDIA                          1                    0                 2.1909545   1.9129733   2.509330
COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
COHORTS          PHILIPPINES                    1                    0                 2.3206582   1.7903372   3.008067
EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
EE               PAKISTAN                       1                    0                 1.6538121   0.8044198   3.400084
GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
GMS-Nepal        NEPAL                          1                    0                 1.7791487   1.2771715   2.478422
IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
IRC              INDIA                          1                    0                 0.9406291   0.5452531   1.622702
JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3         BANGLADESH                     1                    0                 1.4358640   1.3397702   1.538850
JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4         BANGLADESH                     1                    0                 2.0202087   1.6780655   2.432112
Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
Keneba           GAMBIA                         1                    0                 2.0917800   1.6037427   2.728333
MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           BANGLADESH                     1                    0                 1.2764706   0.5031874   3.238112
MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
MAL-ED           INDIA                          1                    0                 1.7695704   0.8802384   3.557422
NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Birth        BANGLADESH                     1                    0                 2.3312554   1.4117700   3.849602
NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
NIH-Crypto       BANGLADESH                     1                    0                 2.3435644   1.3172940   4.169376
PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
PROVIDE          BANGLADESH                     1                    0                 3.2509471   1.8176662   5.814410
ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ResPak           PAKISTAN                       1                    0                 1.3749295   0.7834530   2.412948
SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-CompFeed     INDIA                          1                    0                 1.4952304   1.1845318   1.887424
SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
SAS-FoodSuppl    INDIA                          1                    0                 1.2983721   0.8645213   1.949946
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9556286   1.3131220   2.912511
ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO         ZIMBABWE                       1                    0                 1.9513081   1.6320209   2.333061


### Parameter: PAR


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.0124277   -0.0155873   0.0404426
COHORTS          GUATEMALA                      0                    NA                 0.0150384    0.0006547   0.0294221
COHORTS          INDIA                          0                    NA                 0.0274774    0.0221476   0.0328072
COHORTS          PHILIPPINES                    0                    NA                 0.0228723    0.0148820   0.0308627
EE               PAKISTAN                       0                    NA                 0.0434552   -0.0105474   0.0974578
GMS-Nepal        NEPAL                          0                    NA                 0.0362564    0.0125754   0.0599373
IRC              INDIA                          0                    NA                -0.0032971   -0.0307368   0.0241426
JiVitA-3         BANGLADESH                     0                    NA                 0.0298495    0.0239010   0.0357979
JiVitA-4         BANGLADESH                     0                    NA                 0.0307276    0.0222207   0.0392346
Keneba           GAMBIA                         0                    NA                 0.0235858    0.0143144   0.0328572
MAL-ED           BANGLADESH                     0                    NA                 0.0063172   -0.0185779   0.0312123
MAL-ED           INDIA                          0                    NA                 0.0256513   -0.0081119   0.0594145
NIH-Birth        BANGLADESH                     0                    NA                 0.0391582    0.0144472   0.0638693
NIH-Crypto       BANGLADESH                     0                    NA                 0.0194240    0.0052072   0.0336407
PROVIDE          BANGLADESH                     0                    NA                 0.0218702    0.0073358   0.0364047
ResPak           PAKISTAN                       0                    NA                 0.0422894   -0.0184945   0.1030733
SAS-CompFeed     INDIA                          0                    NA                 0.0307528    0.0110892   0.0504164
SAS-FoodSuppl    INDIA                          0                    NA                 0.0230503   -0.0128852   0.0589859
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0086043    0.0025506   0.0146580
ZVITAMBO         ZIMBABWE                       0                    NA                 0.0098218    0.0068389   0.0128047


### Parameter: PAF


studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                 0.1642226   -0.2937015   0.4600579
COHORTS          GUATEMALA                      0                    NA                 0.3752261   -0.0789598   0.6382235
COHORTS          INDIA                          0                    NA                 0.2456576    0.1990708   0.2895345
COHORTS          PHILIPPINES                    0                    NA                 0.2842849    0.1847944   0.3716332
EE               PAKISTAN                       0                    NA                 0.3307917   -0.2234703   0.6339594
GMS-Nepal        NEPAL                          0                    NA                 0.1962502    0.0611101   0.3119387
IRC              INDIA                          0                    NA                -0.0281631   -0.2912985   0.1813517
JiVitA-3         BANGLADESH                     0                    NA                 0.1589608    0.1270530   0.1897022
JiVitA-4         BANGLADESH                     0                    NA                 0.2864100    0.2058676   0.3587836
Keneba           GAMBIA                         0                    NA                 0.2671121    0.1605896   0.3601168
MAL-ED           BANGLADESH                     0                    NA                 0.0891841   -0.3366919   0.3793741
MAL-ED           INDIA                          0                    NA                 0.2152877   -0.1143463   0.4474128
NIH-Birth        BANGLADESH                     0                    NA                 0.3479306    0.1034681   0.5257341
NIH-Crypto       BANGLADESH                     0                    NA                 0.3222611    0.0666790   0.5078542
PROVIDE          BANGLADESH                     0                    NA                 0.3362547    0.0973555   0.5119254
ResPak           PAKISTAN                       0                    NA                 0.2105472   -0.1527695   0.4593578
SAS-CompFeed     INDIA                          0                    NA                 0.1855865    0.0659723   0.2898826
SAS-FoodSuppl    INDIA                          0                    NA                 0.1219242   -0.0891410   0.2920870
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1702297    0.0460395   0.2782523
ZVITAMBO         ZIMBABWE                       0                    NA                 0.2271847    0.1583331   0.2904040

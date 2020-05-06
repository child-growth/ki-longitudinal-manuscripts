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

**Intervention Variable:** ever_wasted06

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

studyid          country                        ever_wasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      175     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                             1        3     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             0      167     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             1       25     370  pers_wasted624   
CMIN             BANGLADESH                     0                             0      196     252  pers_wasted624   
CMIN             BANGLADESH                     0                             1       11     252  pers_wasted624   
CMIN             BANGLADESH                     1                             0       31     252  pers_wasted624   
CMIN             BANGLADESH                     1                             1       14     252  pers_wasted624   
COHORTS          GUATEMALA                      0                             0      786    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                             1       25    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             0      190    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             1       16    1017  pers_wasted624   
COHORTS          INDIA                          0                             0     4756    6892  pers_wasted624   
COHORTS          INDIA                          0                             1      113    6892  pers_wasted624   
COHORTS          INDIA                          1                             0     1366    6892  pers_wasted624   
COHORTS          INDIA                          1                             1      657    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                             0     2013    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                             1       98    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             0      569    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             1      128    2808  pers_wasted624   
CONTENT          PERU                           0                             0      211     215  pers_wasted624   
CONTENT          PERU                           0                             1        0     215  pers_wasted624   
CONTENT          PERU                           1                             0        4     215  pers_wasted624   
CONTENT          PERU                           1                             1        0     215  pers_wasted624   
EE               PAKISTAN                       0                             0      234     374  pers_wasted624   
EE               PAKISTAN                       0                             1       12     374  pers_wasted624   
EE               PAKISTAN                       1                             0       91     374  pers_wasted624   
EE               PAKISTAN                       1                             1       37     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                             0      319     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                             1       34     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             0      162     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             1       75     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             0      263     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             0        7     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
IRC              INDIA                          0                             0      179     410  pers_wasted624   
IRC              INDIA                          0                             1        6     410  pers_wasted624   
IRC              INDIA                          1                             0      183     410  pers_wasted624   
IRC              INDIA                          1                             1       42     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             0    12238   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             1     1503   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             0     1777   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             1     1742   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             0     4245    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             1      304    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             0      432    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             1      258    5239  pers_wasted624   
Keneba           GAMBIA                         0                             0     1576    2298  pers_wasted624   
Keneba           GAMBIA                         0                             1       76    2298  pers_wasted624   
Keneba           GAMBIA                         1                             0      519    2298  pers_wasted624   
Keneba           GAMBIA                         1                             1      127    2298  pers_wasted624   
LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                             0      180     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                             1        4     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             0       43     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             1       13     240  pers_wasted624   
MAL-ED           BRAZIL                         0                             0      191     207  pers_wasted624   
MAL-ED           BRAZIL                         0                             1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             0       14     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                             0      151     235  pers_wasted624   
MAL-ED           INDIA                          0                             1        6     235  pers_wasted624   
MAL-ED           INDIA                          1                             0       56     235  pers_wasted624   
MAL-ED           INDIA                          1                             1       22     235  pers_wasted624   
MAL-ED           NEPAL                          0                             0      188     235  pers_wasted624   
MAL-ED           NEPAL                          0                             1        0     235  pers_wasted624   
MAL-ED           NEPAL                          1                             0       45     235  pers_wasted624   
MAL-ED           NEPAL                          1                             1        2     235  pers_wasted624   
MAL-ED           PERU                           0                             0      258     270  pers_wasted624   
MAL-ED           PERU                           0                             1        2     270  pers_wasted624   
MAL-ED           PERU                           1                             0        9     270  pers_wasted624   
MAL-ED           PERU                           1                             1        1     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             0      230     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             0       27     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      231     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       14     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             0      329     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             1       14     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             0      152     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             1       47     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             0      517     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             1       17     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             0      169     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             1       27     730  pers_wasted624   
PROBIT           BELARUS                        0                             0    12381   16596  pers_wasted624   
PROBIT           BELARUS                        0                             1        3   16596  pers_wasted624   
PROBIT           BELARUS                        1                             0     4197   16596  pers_wasted624   
PROBIT           BELARUS                        1                             1       15   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                             0      438     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                             1       19     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             0      137     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             1       21     615  pers_wasted624   
ResPak           PAKISTAN                       0                             0      126     234  pers_wasted624   
ResPak           PAKISTAN                       0                             1       15     234  pers_wasted624   
ResPak           PAKISTAN                       1                             0       61     234  pers_wasted624   
ResPak           PAKISTAN                       1                             1       32     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                             0      957    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                             1      107    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             0      199    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             1      121    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             0      281     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             1       25     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             0       45     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             1       51     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             0     8482   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             1      217   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             0     1792   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             1      240   10731  pers_wasted624   


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: MAL-ED, country: BANGLADESH
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
![](/tmp/47ea5533-ec95-4449-8a40-fc5de4db6aba/b11d64bf-2e24-442f-b2db-fe3af02617e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/47ea5533-ec95-4449-8a40-fc5de4db6aba/b11d64bf-2e24-442f-b2db-fe3af02617e3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/47ea5533-ec95-4449-8a40-fc5de4db6aba/b11d64bf-2e24-442f-b2db-fe3af02617e3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/47ea5533-ec95-4449-8a40-fc5de4db6aba/b11d64bf-2e24-442f-b2db-fe3af02617e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0507829   0.0207626   0.0808032
CMIN             BANGLADESH                     1                    NA                0.2818424   0.1475227   0.4161621
COHORTS          GUATEMALA                      0                    NA                0.0317043   0.0195963   0.0438122
COHORTS          GUATEMALA                      1                    NA                0.0801320   0.0387573   0.1215066
COHORTS          INDIA                          0                    NA                0.0234792   0.0192417   0.0277168
COHORTS          INDIA                          1                    NA                0.3160146   0.2959720   0.3360572
COHORTS          PHILIPPINES                    0                    NA                0.0458762   0.0369320   0.0548204
COHORTS          PHILIPPINES                    1                    NA                0.1900660   0.1617512   0.2183809
EE               PAKISTAN                       0                    NA                0.0487447   0.0218100   0.0756793
EE               PAKISTAN                       1                    NA                0.2860972   0.2066054   0.3655890
GMS-Nepal        NEPAL                          0                    NA                0.0977417   0.0669087   0.1285748
GMS-Nepal        NEPAL                          1                    NA                0.3185363   0.2595267   0.3775458
IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
JiVitA-3         BANGLADESH                     0                    NA                0.1095857   0.1041142   0.1150572
JiVitA-3         BANGLADESH                     1                    NA                0.4929833   0.4748663   0.5111004
JiVitA-4         BANGLADESH                     0                    NA                0.0670033   0.0577994   0.0762072
JiVitA-4         BANGLADESH                     1                    NA                0.3705522   0.3262664   0.4148380
Keneba           GAMBIA                         0                    NA                0.0457379   0.0356237   0.0558520
Keneba           GAMBIA                         1                    NA                0.1955920   0.1651699   0.2260141
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0382166   0.0081635   0.0682696
MAL-ED           INDIA                          1                    NA                0.2820513   0.1819735   0.3821290
NIH-Birth        BANGLADESH                     0                    NA                0.0402496   0.0192366   0.0612625
NIH-Birth        BANGLADESH                     1                    NA                0.2309749   0.1713199   0.2906299
NIH-Crypto       BANGLADESH                     0                    NA                0.0323455   0.0174111   0.0472799
NIH-Crypto       BANGLADESH                     1                    NA                0.1336399   0.0849107   0.1823692
PROVIDE          BANGLADESH                     0                    NA                0.0414435   0.0231541   0.0597328
PROVIDE          BANGLADESH                     1                    NA                0.1311384   0.0785288   0.1837479
ResPak           PAKISTAN                       0                    NA                0.1073171   0.0558439   0.1587903
ResPak           PAKISTAN                       1                    NA                0.3467754   0.2489217   0.4446292
SAS-CompFeed     INDIA                          0                    NA                0.1031635   0.0852746   0.1210524
SAS-CompFeed     INDIA                          1                    NA                0.3596259   0.3100674   0.4091843
SAS-FoodSuppl    INDIA                          0                    NA                0.0822246   0.0512944   0.1131548
SAS-FoodSuppl    INDIA                          1                    NA                0.5273716   0.4247396   0.6300036
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0177444   0.0114012   0.0240876
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2322558   0.1855831   0.2789286
ZVITAMBO         ZIMBABWE                       0                    NA                0.0251587   0.0218730   0.0284445
ZVITAMBO         ZIMBABWE                       1                    NA                0.1140285   0.1001593   0.1278977


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.549949    2.594001   11.874297
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  2.527482    1.332750    4.793222
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 13.459322   11.121817   16.288107
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  4.143021    3.246370    5.287328
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.869304    3.161964   10.894725
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  3.258959    2.264179    4.690802
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  5.755556    2.499673   13.252299
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.498610    4.239155    4.773945
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  5.530355    4.624653    6.613431
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  4.276369    3.264517    5.601848
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.380342    3.114563   17.488630
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  5.738568    3.204842   10.275440
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.131644    2.297079    7.431387
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  3.164272    1.743292    5.743510
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.231315    1.853156    5.634388
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.485980    2.790147    4.355347
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.413794    4.199840    9.794836
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 13.088953    8.684729   19.726660
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.532360    3.792563    5.416466


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.0484235   0.0205028   0.0763442
COHORTS          GUATEMALA                      0                    NA                0.0086104   0.0006941   0.0165267
COHORTS          INDIA                          0                    NA                0.0882445   0.0813474   0.0951416
COHORTS          PHILIPPINES                    0                    NA                0.0346081   0.0269050   0.0423112
EE               PAKISTAN                       0                    NA                0.0822714   0.0515728   0.1129700
GMS-Nepal        NEPAL                          0                    NA                0.0870040   0.0589570   0.1150511
IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
JiVitA-3         BANGLADESH                     0                    NA                0.0784213   0.0738958   0.0829467
JiVitA-4         BANGLADESH                     0                    NA                0.0402690   0.0335209   0.0470172
Keneba           GAMBIA                         0                    NA                0.0425998   0.0331334   0.0520663
LCNI-5           MALAWI                         0                    NA                0.0061071   0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0809324   0.0432584   0.1186063
NIH-Birth        BANGLADESH                     0                    NA                0.0722966   0.0479003   0.0966928
NIH-Crypto       BANGLADESH                     0                    NA                0.0279285   0.0139760   0.0418810
PROVIDE          BANGLADESH                     0                    NA                0.0235972   0.0088986   0.0382958
ResPak           PAKISTAN                       0                    NA                0.0935376   0.0474195   0.1396557
SAS-CompFeed     INDIA                          0                    NA                0.0615764   0.0481720   0.0749808
SAS-FoodSuppl    INDIA                          0                    NA                0.1068301   0.0756181   0.1380421
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0328007   0.0247616   0.0408397
ZVITAMBO         ZIMBABWE                       0                    NA                0.0174281   0.0146266   0.0202296


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMIN             BANGLADESH                     0                    NA                0.4881085   0.2059038   0.6700237
COHORTS          GUATEMALA                      0                    NA                0.2135797   0.0041693   0.3789538
COHORTS          INDIA                          0                    NA                0.7898456   0.7521613   0.8217999
COHORTS          PHILIPPINES                    0                    NA                0.4299985   0.3419789   0.5062442
EE               PAKISTAN                       0                    NA                0.6279490   0.4027574   0.7682316
GMS-Nepal        NEPAL                          0                    NA                0.4709394   0.3175579   0.5898477
IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
JiVitA-3         BANGLADESH                     0                    NA                0.4171189   0.3968646   0.4366930
JiVitA-4         BANGLADESH                     0                    NA                0.3753907   0.3183993   0.4276167
Keneba           GAMBIA                         0                    NA                0.4822384   0.3848842   0.5641843
LCNI-5           MALAWI                         0                    NA                0.3744113   0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.6792539   0.3611538   0.8389627
NIH-Birth        BANGLADESH                     0                    NA                0.6423727   0.4370164   0.7728223
NIH-Crypto       BANGLADESH                     0                    NA                0.4633593   0.2328564   0.6246033
PROVIDE          BANGLADESH                     0                    NA                0.3628068   0.1263600   0.5352603
ResPak           PAKISTAN                       0                    NA                0.4656978   0.2143675   0.6366254
SAS-CompFeed     INDIA                          0                    NA                0.3737796   0.2971325   0.4420684
SAS-FoodSuppl    INDIA                          0                    NA                0.5650751   0.4136579   0.6773903
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6489389   0.5270261   0.7394277
ZVITAMBO         ZIMBABWE                       0                    NA                0.4092373   0.3513795   0.4619342

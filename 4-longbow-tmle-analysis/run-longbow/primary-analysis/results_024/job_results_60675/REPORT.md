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

**Intervention Variable:** pers_wasted024

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

studyid           country                        pers_wasted024    dead0plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0     6018    7166
Burkina Faso Zn   BURKINA FASO                   0                         1       32    7166
Burkina Faso Zn   BURKINA FASO                   1                         0     1100    7166
Burkina Faso Zn   BURKINA FASO                   1                         1       16    7166
EE                PAKISTAN                       0                         0      342     380
EE                PAKISTAN                       0                         1        4     380
EE                PAKISTAN                       1                         0       34     380
EE                PAKISTAN                       1                         1        0     380
GMS-Nepal         NEPAL                          0                         0      580     686
GMS-Nepal         NEPAL                          0                         1        5     686
GMS-Nepal         NEPAL                          1                         0       99     686
GMS-Nepal         NEPAL                          1                         1        2     686
iLiNS-DOSE        MALAWI                         0                         0     1744    1931
iLiNS-DOSE        MALAWI                         0                         1      120    1931
iLiNS-DOSE        MALAWI                         1                         0       59    1931
iLiNS-DOSE        MALAWI                         1                         1        8    1931
iLiNS-DYAD-M      MALAWI                         0                         0     1137    1201
iLiNS-DYAD-M      MALAWI                         0                         1       37    1201
iLiNS-DYAD-M      MALAWI                         1                         0       22    1201
iLiNS-DYAD-M      MALAWI                         1                         1        5    1201
JiVitA-3          BANGLADESH                     0                         0    24593   26956
JiVitA-3          BANGLADESH                     0                         1      476   26956
JiVitA-3          BANGLADESH                     1                         0     1760   26956
JiVitA-3          BANGLADESH                     1                         1      127   26956
JiVitA-4          BANGLADESH                     0                         0     4954    5443
JiVitA-4          BANGLADESH                     0                         1       40    5443
JiVitA-4          BANGLADESH                     1                         0      439    5443
JiVitA-4          BANGLADESH                     1                         1       10    5443
Keneba            GAMBIA                         0                         0     2634    2920
Keneba            GAMBIA                         0                         1       81    2920
Keneba            GAMBIA                         1                         0      189    2920
Keneba            GAMBIA                         1                         1       16    2920
MAL-ED            BANGLADESH                     0                         0      246     263
MAL-ED            BANGLADESH                     0                         1        2     263
MAL-ED            BANGLADESH                     1                         0       15     263
MAL-ED            BANGLADESH                     1                         1        0     263
MAL-ED            INDIA                          0                         0      226     251
MAL-ED            INDIA                          0                         1        2     251
MAL-ED            INDIA                          1                         0       23     251
MAL-ED            INDIA                          1                         1        0     251
MAL-ED            PERU                           0                         0      299     302
MAL-ED            PERU                           0                         1        2     302
MAL-ED            PERU                           1                         0        1     302
MAL-ED            PERU                           1                         1        0     302
MAL-ED            SOUTH AFRICA                   0                         0      306     312
MAL-ED            SOUTH AFRICA                   0                         1        0     312
MAL-ED            SOUTH AFRICA                   1                         0        6     312
MAL-ED            SOUTH AFRICA                   1                         1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      258     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     261
PROVIDE           BANGLADESH                     0                         0      668     700
PROVIDE           BANGLADESH                     0                         1        5     700
PROVIDE           BANGLADESH                     1                         0       27     700
PROVIDE           BANGLADESH                     1                         1        0     700
SAS-CompFeed      INDIA                          0                         0     1355    1513
SAS-CompFeed      INDIA                          0                         1       22    1513
SAS-CompFeed      INDIA                          1                         0      121    1513
SAS-CompFeed      INDIA                          1                         1       15    1513
SAS-FoodSuppl     INDIA                          0                         0      338     418
SAS-FoodSuppl     INDIA                          0                         1        2     418
SAS-FoodSuppl     INDIA                          1                         0       74     418
SAS-FoodSuppl     INDIA                          1                         1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2324    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       71    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
VITAMIN-A         INDIA                          0                         0     3228    3904
VITAMIN-A         INDIA                          0                         1       36    3904
VITAMIN-A         INDIA                          1                         0      601    3904
VITAMIN-A         INDIA                          1                         1       39    3904
ZVITAMBO          ZIMBABWE                       0                         0    12349   13946
ZVITAMBO          ZIMBABWE                       0                         1      840   13946
ZVITAMBO          ZIMBABWE                       1                         0      535   13946
ZVITAMBO          ZIMBABWE                       1                         1      222   13946


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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6077a4ed-21d4-4439-9143-0ae961e236cc/ed6b2212-13c5-4d79-8e96-0015e494a744/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6077a4ed-21d4-4439-9143-0ae961e236cc/ed6b2212-13c5-4d79-8e96-0015e494a744/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6077a4ed-21d4-4439-9143-0ae961e236cc/ed6b2212-13c5-4d79-8e96-0015e494a744/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6077a4ed-21d4-4439-9143-0ae961e236cc/ed6b2212-13c5-4d79-8e96-0015e494a744/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052839   0.0034581   0.0071097
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0147047   0.0077087   0.0217008
iLiNS-DOSE        MALAWI         0                    NA                0.0643777   0.0532333   0.0755221
iLiNS-DOSE        MALAWI         1                    NA                0.1194030   0.0417391   0.1970669
iLiNS-DYAD-M      MALAWI         0                    NA                0.0315162   0.0214925   0.0415399
iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0533715   0.3169988
JiVitA-3          BANGLADESH     0                    NA                0.0190615   0.0173690   0.0207540
JiVitA-3          BANGLADESH     1                    NA                0.0654071   0.0531753   0.0776389
JiVitA-4          BANGLADESH     0                    NA                0.0080192   0.0054590   0.0105794
JiVitA-4          BANGLADESH     1                    NA                0.0219163   0.0083253   0.0355074
Keneba            GAMBIA         0                    NA                0.0298301   0.0234254   0.0362349
Keneba            GAMBIA         1                    NA                0.0724367   0.0339014   0.1109719
SAS-CompFeed      INDIA          0                    NA                0.0160340   0.0089041   0.0231639
SAS-CompFeed      INDIA          1                    NA                0.1113083   0.0397551   0.1828615
VITAMIN-A         INDIA          0                    NA                0.0111187   0.0075282   0.0147091
VITAMIN-A         INDIA          1                    NA                0.0622462   0.0433784   0.0811141
ZVITAMBO          ZIMBABWE       0                    NA                0.0640265   0.0598372   0.0682158
ZVITAMBO          ZIMBABWE       1                    NA                0.3573076   0.3177257   0.3968894


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
JiVitA-3          BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.782948   1.5458471    5.010066
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.854726   0.9461633    3.635747
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 5.875876   2.6945631   12.813178
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 3.431374   2.7964487    4.210458
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.732978   1.3564874    5.506257
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.428305   1.3682395    4.309673
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed      INDIA          1                    0                 6.942012   4.1967982   11.482927
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.598355   3.5961607    8.715290
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.580617   4.9082075    6.345145


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014144    0.0002897   0.0025392
iLiNS-DOSE        MALAWI         0                    NA                0.0019092   -0.0008499   0.0046683
iLiNS-DYAD-M      MALAWI         0                    NA                0.0034547   -0.0000926   0.0070020
JiVitA-3          BANGLADESH     0                    NA                0.0033083    0.0024676   0.0041490
JiVitA-4          BANGLADESH     0                    NA                0.0011669    0.0000346   0.0022992
Keneba            GAMBIA         0                    NA                0.0033890    0.0007319   0.0060462
SAS-CompFeed      INDIA          0                    NA                0.0084207    0.0017758   0.0150656
VITAMIN-A         INDIA          0                    NA                0.0080924    0.0049451   0.0112397
ZVITAMBO          ZIMBABWE       0                    NA                0.0121243    0.0101803   0.0140683


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2111614    0.0372998   0.3536240
iLiNS-DOSE        MALAWI         0                    NA                0.0288023   -0.0134746   0.0693156
iLiNS-DYAD-M      MALAWI         0                    NA                0.0987872   -0.0042850   0.1912809
JiVitA-3          BANGLADESH     0                    NA                0.1478913    0.1119891   0.1823419
JiVitA-4          BANGLADESH     0                    NA                0.1270289   -0.0012980   0.2389094
Keneba            GAMBIA         0                    NA                0.1020207    0.0209180   0.1764053
SAS-CompFeed      INDIA          0                    NA                0.3443391    0.1415746   0.4992096
VITAMIN-A         INDIA          0                    NA                0.4212363    0.2702630   0.5409752
ZVITAMBO          ZIMBABWE       0                    NA                0.1592147    0.1347319   0.1830047

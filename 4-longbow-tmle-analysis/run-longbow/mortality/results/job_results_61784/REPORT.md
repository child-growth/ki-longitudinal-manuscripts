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

**Intervention Variable:** ever_underweight06

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

studyid           country                        ever_underweight06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                             0      262     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                             1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             0       74     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                             1        0     338  dead0plus        
EE                PAKISTAN                       0                             0      103     380  dead0plus        
EE                PAKISTAN                       0                             1        0     380  dead0plus        
EE                PAKISTAN                       1                             0      273     380  dead0plus        
EE                PAKISTAN                       1                             1        4     380  dead0plus        
GMS-Nepal         NEPAL                          0                             0      388     697  dead0plus        
GMS-Nepal         NEPAL                          0                             1        2     697  dead0plus        
GMS-Nepal         NEPAL                          1                             0      302     697  dead0plus        
GMS-Nepal         NEPAL                          1                             1        5     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                             0     1464    1816  dead0plus        
iLiNS-DOSE        MALAWI                         0                             1       89    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                             0      238    1816  dead0plus        
iLiNS-DOSE        MALAWI                         1                             1       25    1816  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             0      928    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                             1       22    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             0      230    1202  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                             1       22    1202  dead0plus        
JiVitA-3          BANGLADESH                     0                             0    14413   27237  dead0plus        
JiVitA-3          BANGLADESH                     0                             1      251   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                             0    11958   27237  dead0plus        
JiVitA-3          BANGLADESH                     1                             1      615   27237  dead0plus        
JiVitA-4          BANGLADESH                     0                             0     3471    5276  dead0plus        
JiVitA-4          BANGLADESH                     0                             1       17    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                             0     1757    5276  dead0plus        
JiVitA-4          BANGLADESH                     1                             1       31    5276  dead0plus        
Keneba            GAMBIA                         0                             0     2024    2632  dead0plus        
Keneba            GAMBIA                         0                             1       55    2632  dead0plus        
Keneba            GAMBIA                         1                             0      513    2632  dead0plus        
Keneba            GAMBIA                         1                             1       40    2632  dead0plus        
MAL-ED            BANGLADESH                     0                             0      174     265  dead0plus        
MAL-ED            BANGLADESH                     0                             1        1     265  dead0plus        
MAL-ED            BANGLADESH                     1                             0       88     265  dead0plus        
MAL-ED            BANGLADESH                     1                             1        2     265  dead0plus        
MAL-ED            INDIA                          0                             0      144     251  dead0plus        
MAL-ED            INDIA                          0                             1        1     251  dead0plus        
MAL-ED            INDIA                          1                             0      105     251  dead0plus        
MAL-ED            INDIA                          1                             1        1     251  dead0plus        
MAL-ED            PERU                           0                             0      251     303  dead0plus        
MAL-ED            PERU                           0                             1        2     303  dead0plus        
MAL-ED            PERU                           1                             0       50     303  dead0plus        
MAL-ED            PERU                           1                             1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             0      258     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                             1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             0       55     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                             1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      214     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       45     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                             0      470     700  dead0plus        
PROVIDE           BANGLADESH                     0                             1        3     700  dead0plus        
PROVIDE           BANGLADESH                     1                             0      225     700  dead0plus        
PROVIDE           BANGLADESH                     1                             1        2     700  dead0plus        
SAS-CompFeed      INDIA                          0                             0      867    1533  dead0plus        
SAS-CompFeed      INDIA                          0                             1       16    1533  dead0plus        
SAS-CompFeed      INDIA                          1                             0      616    1533  dead0plus        
SAS-CompFeed      INDIA                          1                             1       34    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                             0      194     416  dead0plus        
SAS-FoodSuppl     INDIA                          0                             1        2     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                             0      216     416  dead0plus        
SAS-FoodSuppl     INDIA                          1                             1        4     416  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2110    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      285    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                             0     1692    3906  dead0plus        
VITAMIN-A         INDIA                          0                             1       10    3906  dead0plus        
VITAMIN-A         INDIA                          1                             0     2136    3906  dead0plus        
VITAMIN-A         INDIA                          1                             1       68    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             0    10950   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       0                             1      571   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             0     2017   14085  dead0plus        
ZVITAMBO          ZIMBABWE                       1                             1      547   14085  dead0plus        


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8822da71-e752-468f-a311-c1f935e3ff87/173d0f40-cdb1-42f1-9fbe-4ef75315aabe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8822da71-e752-468f-a311-c1f935e3ff87/173d0f40-cdb1-42f1-9fbe-4ef75315aabe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8822da71-e752-468f-a311-c1f935e3ff87/173d0f40-cdb1-42f1-9fbe-4ef75315aabe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8822da71-e752-468f-a311-c1f935e3ff87/173d0f40-cdb1-42f1-9fbe-4ef75315aabe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0576087   0.0460387   0.0691788
iLiNS-DOSE     MALAWI       1                    NA                0.1007607   0.0658473   0.1356741
iLiNS-DYAD-M   MALAWI       0                    NA                0.0231578   0.0135869   0.0327288
iLiNS-DYAD-M   MALAWI       1                    NA                0.0840098   0.0496147   0.1184050
JiVitA-3       BANGLADESH   0                    NA                0.0177822   0.0154761   0.0200883
JiVitA-3       BANGLADESH   1                    NA                0.0460679   0.0420666   0.0500691
JiVitA-4       BANGLADESH   0                    NA                0.0048612   0.0021391   0.0075832
JiVitA-4       BANGLADESH   1                    NA                0.0170766   0.0110812   0.0230721
Keneba         GAMBIA       0                    NA                0.0269894   0.0199404   0.0340384
Keneba         GAMBIA       1                    NA                0.0719428   0.0495263   0.0943593
SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
VITAMIN-A      INDIA        0                    NA                0.0060077   0.0023092   0.0097062
VITAMIN-A      INDIA        1                    NA                0.0308942   0.0236557   0.0381326
ZVITAMBO       ZIMBABWE     0                    NA                0.0500617   0.0460934   0.0540300
ZVITAMBO       ZIMBABWE     1                    NA                0.2059891   0.1902274   0.2217508


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
iLiNS-DOSE     MALAWI       1                    0                 1.749053   1.172116   2.609970
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.627706   2.025603   6.496956
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.590671   2.220341   3.022768
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.512854   1.817050   6.791308
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.665598   1.774500   4.004177
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 5.142419   2.660939   9.938023
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.114702   3.687673   4.591182


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0051666   -0.0002828   0.0106160
iLiNS-DYAD-M   MALAWI       0                    NA                0.0134478    0.0057064   0.0211892
JiVitA-3       BANGLADESH   0                    NA                0.0140128    0.0117844   0.0162411
JiVitA-4       BANGLADESH   0                    NA                0.0042366    0.0019882   0.0064851
Keneba         GAMBIA       0                    NA                0.0091048    0.0042061   0.0140036
SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
VITAMIN-A      INDIA        0                    NA                0.0139616    0.0093528   0.0185703
ZVITAMBO       ZIMBABWE     0                    NA                0.0293135    0.0261811   0.0324459


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0823029   -0.0073981   0.1640168
iLiNS-DYAD-M   MALAWI       0                    NA                0.3673700    0.1538622   0.5270029
JiVitA-3       BANGLADESH   0                    NA                0.4407226    0.3748030   0.4996918
JiVitA-4       BANGLADESH   0                    NA                0.4656752    0.1820606   0.6509485
Keneba         GAMBIA       0                    NA                0.2522522    0.1142461   0.3687560
SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
VITAMIN-A      INDIA        0                    NA                0.6991521    0.4657224   0.8305947
ZVITAMBO       ZIMBABWE     0                    NA                0.3693028    0.3341779   0.4025748

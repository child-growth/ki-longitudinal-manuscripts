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

**Outcome Variable:** dead

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

studyid           country                        ever_underweight06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      262     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                        0       74     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead             
EE                PAKISTAN                       0                        0      103     380  dead             
EE                PAKISTAN                       0                        1        0     380  dead             
EE                PAKISTAN                       1                        0      273     380  dead             
EE                PAKISTAN                       1                        1        4     380  dead             
GMS-Nepal         NEPAL                          0                        0      388     697  dead             
GMS-Nepal         NEPAL                          0                        1        2     697  dead             
GMS-Nepal         NEPAL                          1                        0      302     697  dead             
GMS-Nepal         NEPAL                          1                        1        5     697  dead             
iLiNS-DOSE        MALAWI                         0                        0     1464    1816  dead             
iLiNS-DOSE        MALAWI                         0                        1       89    1816  dead             
iLiNS-DOSE        MALAWI                         1                        0      238    1816  dead             
iLiNS-DOSE        MALAWI                         1                        1       25    1816  dead             
iLiNS-DYAD-M      MALAWI                         0                        0      930    1202  dead             
iLiNS-DYAD-M      MALAWI                         0                        1       20    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                        0      232    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                        1       20    1202  dead             
JiVitA-3          BANGLADESH                     0                        0    14424   27237  dead             
JiVitA-3          BANGLADESH                     0                        1      240   27237  dead             
JiVitA-3          BANGLADESH                     1                        0    11988   27237  dead             
JiVitA-3          BANGLADESH                     1                        1      585   27237  dead             
JiVitA-4          BANGLADESH                     0                        0     3471    5276  dead             
JiVitA-4          BANGLADESH                     0                        1       17    5276  dead             
JiVitA-4          BANGLADESH                     1                        0     1758    5276  dead             
JiVitA-4          BANGLADESH                     1                        1       30    5276  dead             
Keneba            GAMBIA                         0                        0     2045    2632  dead             
Keneba            GAMBIA                         0                        1       34    2632  dead             
Keneba            GAMBIA                         1                        0      526    2632  dead             
Keneba            GAMBIA                         1                        1       27    2632  dead             
MAL-ED            BANGLADESH                     0                        0      174     265  dead             
MAL-ED            BANGLADESH                     0                        1        1     265  dead             
MAL-ED            BANGLADESH                     1                        0       88     265  dead             
MAL-ED            BANGLADESH                     1                        1        2     265  dead             
MAL-ED            INDIA                          0                        0      144     251  dead             
MAL-ED            INDIA                          0                        1        1     251  dead             
MAL-ED            INDIA                          1                        0      105     251  dead             
MAL-ED            INDIA                          1                        1        1     251  dead             
MAL-ED            PERU                           0                        0      251     303  dead             
MAL-ED            PERU                           0                        1        2     303  dead             
MAL-ED            PERU                           1                        0       50     303  dead             
MAL-ED            PERU                           1                        1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                        0      258     314  dead             
MAL-ED            SOUTH AFRICA                   0                        1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                        0       55     314  dead             
MAL-ED            SOUTH AFRICA                   1                        1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      214     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       45     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        1     262  dead             
PROVIDE           BANGLADESH                     0                        0      470     700  dead             
PROVIDE           BANGLADESH                     0                        1        3     700  dead             
PROVIDE           BANGLADESH                     1                        0      226     700  dead             
PROVIDE           BANGLADESH                     1                        1        1     700  dead             
SAS-CompFeed      INDIA                          0                        0      867    1533  dead             
SAS-CompFeed      INDIA                          0                        1       16    1533  dead             
SAS-CompFeed      INDIA                          1                        0      616    1533  dead             
SAS-CompFeed      INDIA                          1                        1       34    1533  dead             
SAS-FoodSuppl     INDIA                          0                        0      194     416  dead             
SAS-FoodSuppl     INDIA                          0                        1        2     416  dead             
SAS-FoodSuppl     INDIA                          1                        0      216     416  dead             
SAS-FoodSuppl     INDIA                          1                        1        4     416  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead             
VITAMIN-A         INDIA                          0                        0     1692    3906  dead             
VITAMIN-A         INDIA                          0                        1       10    3906  dead             
VITAMIN-A         INDIA                          1                        0     2136    3906  dead             
VITAMIN-A         INDIA                          1                        1       68    3906  dead             
ZVITAMBO          ZIMBABWE                       0                        0    10958   14085  dead             
ZVITAMBO          ZIMBABWE                       0                        1      563   14085  dead             
ZVITAMBO          ZIMBABWE                       1                        0     2019   14085  dead             
ZVITAMBO          ZIMBABWE                       1                        1      545   14085  dead             


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
![](/tmp/7aeb3657-34b7-4e49-a210-ab636d88afd1/b5afdede-1973-4dc1-897d-4602ef5daefe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7aeb3657-34b7-4e49-a210-ab636d88afd1/b5afdede-1973-4dc1-897d-4602ef5daefe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7aeb3657-34b7-4e49-a210-ab636d88afd1/b5afdede-1973-4dc1-897d-4602ef5daefe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7aeb3657-34b7-4e49-a210-ab636d88afd1/b5afdede-1973-4dc1-897d-4602ef5daefe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0574141   0.0458467   0.0689816
iLiNS-DOSE     MALAWI       1                    NA                0.0917285   0.0561285   0.1273285
iLiNS-DYAD-M   MALAWI       0                    NA                0.0209946   0.0118496   0.0301396
iLiNS-DYAD-M   MALAWI       1                    NA                0.0770328   0.0436401   0.1104256
JiVitA-3       BANGLADESH   0                    NA                0.0170648   0.0148047   0.0193250
JiVitA-3       BANGLADESH   1                    NA                0.0438053   0.0399521   0.0476585
JiVitA-4       BANGLADESH   0                    NA                0.0048555   0.0021383   0.0075728
JiVitA-4       BANGLADESH   1                    NA                0.0165087   0.0106709   0.0223465
Keneba         GAMBIA       0                    NA                0.0165475   0.0110173   0.0220777
Keneba         GAMBIA       1                    NA                0.0495487   0.0310267   0.0680708
SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
VITAMIN-A      INDIA        0                    NA                0.0060307   0.0023231   0.0097383
VITAMIN-A      INDIA        1                    NA                0.0310352   0.0237804   0.0382901
ZVITAMBO       ZIMBABWE     0                    NA                0.0494239   0.0454732   0.0533747
ZVITAMBO       ZIMBABWE     1                    NA                0.2062516   0.1905343   0.2219689


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
JiVitA-3       BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
JiVitA-4       BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122
Keneba         GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.597665   1.031689   2.474129
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.669176   1.982154   6.792030
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.566991   2.194855   3.002222
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.399974   1.757601   6.577047
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.994338   1.812844   4.945853
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 5.146225   2.665306   9.936432
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.173112   3.738792   4.657885


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0053612   -0.0000715   0.0107939
iLiNS-DYAD-M   MALAWI       0                    NA                0.0122833    0.0048872   0.0196793
JiVitA-3       BANGLADESH   0                    NA                0.0132248    0.0110551   0.0153946
JiVitA-4       BANGLADESH   0                    NA                0.0040527    0.0018532   0.0062522
Keneba         GAMBIA       0                    NA                0.0066288    0.0026215   0.0106361
SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
VITAMIN-A      INDIA        0                    NA                0.0139386    0.0093250   0.0185522
ZVITAMBO       ZIMBABWE     0                    NA                0.0292413    0.0261098   0.0323728


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0854028   -0.0040367   0.1668751
iLiNS-DYAD-M   MALAWI       0                    NA                0.3691126    0.1428036   0.5356736
JiVitA-3       BANGLADESH   0                    NA                0.4366123    0.3690174   0.4969660
JiVitA-4       BANGLADESH   0                    NA                0.4549403    0.1694294   0.6423061
Keneba         GAMBIA       0                    NA                0.2860171    0.1087770   0.4280089
SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
VITAMIN-A      INDIA        0                    NA                0.6980021    0.4640768   0.8298213
ZVITAMBO       ZIMBABWE     0                    NA                0.3717183    0.3363014   0.4052453

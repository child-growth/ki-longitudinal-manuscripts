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

studyid           country                        ever_underweight06    dead0plus   n_cell       n
----------------  -----------------------------  -------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                             0      262     338
Burkina Faso Zn   BURKINA FASO                   0                             1        2     338
Burkina Faso Zn   BURKINA FASO                   1                             0       74     338
Burkina Faso Zn   BURKINA FASO                   1                             1        0     338
EE                PAKISTAN                       0                             0      103     380
EE                PAKISTAN                       0                             1        0     380
EE                PAKISTAN                       1                             0      273     380
EE                PAKISTAN                       1                             1        4     380
GMS-Nepal         NEPAL                          0                             0      388     697
GMS-Nepal         NEPAL                          0                             1        2     697
GMS-Nepal         NEPAL                          1                             0      302     697
GMS-Nepal         NEPAL                          1                             1        5     697
iLiNS-DOSE        MALAWI                         0                             0     1464    1816
iLiNS-DOSE        MALAWI                         0                             1       89    1816
iLiNS-DOSE        MALAWI                         1                             0      238    1816
iLiNS-DOSE        MALAWI                         1                             1       25    1816
iLiNS-DYAD-M      MALAWI                         0                             0      928    1202
iLiNS-DYAD-M      MALAWI                         0                             1       22    1202
iLiNS-DYAD-M      MALAWI                         1                             0      230    1202
iLiNS-DYAD-M      MALAWI                         1                             1       22    1202
JiVitA-3          BANGLADESH                     0                             0    14413   27237
JiVitA-3          BANGLADESH                     0                             1      251   27237
JiVitA-3          BANGLADESH                     1                             0    11958   27237
JiVitA-3          BANGLADESH                     1                             1      615   27237
JiVitA-4          BANGLADESH                     0                             0     3471    5276
JiVitA-4          BANGLADESH                     0                             1       17    5276
JiVitA-4          BANGLADESH                     1                             0     1757    5276
JiVitA-4          BANGLADESH                     1                             1       31    5276
Keneba            GAMBIA                         0                             0     2024    2632
Keneba            GAMBIA                         0                             1       55    2632
Keneba            GAMBIA                         1                             0      513    2632
Keneba            GAMBIA                         1                             1       40    2632
MAL-ED            BANGLADESH                     0                             0      174     265
MAL-ED            BANGLADESH                     0                             1        1     265
MAL-ED            BANGLADESH                     1                             0       88     265
MAL-ED            BANGLADESH                     1                             1        2     265
MAL-ED            INDIA                          0                             0      144     251
MAL-ED            INDIA                          0                             1        1     251
MAL-ED            INDIA                          1                             0      105     251
MAL-ED            INDIA                          1                             1        1     251
MAL-ED            PERU                           0                             0      251     303
MAL-ED            PERU                           0                             1        2     303
MAL-ED            PERU                           1                             0       50     303
MAL-ED            PERU                           1                             1        0     303
MAL-ED            SOUTH AFRICA                   0                             0      258     314
MAL-ED            SOUTH AFRICA                   0                             1        0     314
MAL-ED            SOUTH AFRICA                   1                             0       55     314
MAL-ED            SOUTH AFRICA                   1                             1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             0      214     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                             1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             0       45     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                             1        1     262
PROVIDE           BANGLADESH                     0                             0      470     700
PROVIDE           BANGLADESH                     0                             1        3     700
PROVIDE           BANGLADESH                     1                             0      225     700
PROVIDE           BANGLADESH                     1                             1        2     700
SAS-CompFeed      INDIA                          0                             0      867    1533
SAS-CompFeed      INDIA                          0                             1       16    1533
SAS-CompFeed      INDIA                          1                             0      616    1533
SAS-CompFeed      INDIA                          1                             1       34    1533
SAS-FoodSuppl     INDIA                          0                             0      194     416
SAS-FoodSuppl     INDIA                          0                             1        2     416
SAS-FoodSuppl     INDIA                          1                             0      216     416
SAS-FoodSuppl     INDIA                          1                             1        4     416
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2110    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      285    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2396
VITAMIN-A         INDIA                          0                             0     1692    3906
VITAMIN-A         INDIA                          0                             1       10    3906
VITAMIN-A         INDIA                          1                             0     2136    3906
VITAMIN-A         INDIA                          1                             1       68    3906
ZVITAMBO          ZIMBABWE                       0                             0    10950   14085
ZVITAMBO          ZIMBABWE                       0                             1      571   14085
ZVITAMBO          ZIMBABWE                       1                             0     2017   14085
ZVITAMBO          ZIMBABWE                       1                             1      547   14085


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
![](/tmp/028a30cb-0c67-4efb-a58e-1c511b7f940a/a994d9c3-c1e1-4db8-9c70-8f616c25f3cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/028a30cb-0c67-4efb-a58e-1c511b7f940a/a994d9c3-c1e1-4db8-9c70-8f616c25f3cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/028a30cb-0c67-4efb-a58e-1c511b7f940a/a994d9c3-c1e1-4db8-9c70-8f616c25f3cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/028a30cb-0c67-4efb-a58e-1c511b7f940a/a994d9c3-c1e1-4db8-9c70-8f616c25f3cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0574682   0.0459045   0.0690319
iLiNS-DOSE     MALAWI       1                    NA                0.0986270   0.0633366   0.1339174
iLiNS-DYAD-M   MALAWI       0                    NA                0.0231502   0.0135637   0.0327367
iLiNS-DYAD-M   MALAWI       1                    NA                0.0843404   0.0499800   0.1187007
JiVitA-3       BANGLADESH   0                    NA                0.0180029   0.0157074   0.0202983
JiVitA-3       BANGLADESH   1                    NA                0.0459627   0.0419930   0.0499324
JiVitA-4       BANGLADESH   0                    NA                0.0049053   0.0021719   0.0076386
JiVitA-4       BANGLADESH   1                    NA                0.0169599   0.0109642   0.0229555
Keneba         GAMBIA       0                    NA                0.0268987   0.0198640   0.0339334
Keneba         GAMBIA       1                    NA                0.0729586   0.0505405   0.0953767
SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
VITAMIN-A      INDIA        0                    NA                0.0060337   0.0023268   0.0097406
VITAMIN-A      INDIA        1                    NA                0.0309694   0.0237183   0.0382205
ZVITAMBO       ZIMBABWE     0                    NA                0.0500215   0.0460569   0.0539860
ZVITAMBO       ZIMBABWE     1                    NA                0.2072842   0.1914800   0.2230884


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
iLiNS-DOSE     MALAWI       1                    0                 1.716200   1.138335   2.587414
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.643185   2.036414   6.517729
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.553074   2.192350   2.973152
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.457488   1.789707   6.679431
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.712346   1.811143   4.061975
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 5.132733   2.659173   9.907197
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.143904   3.714327   4.623165


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0053071   -0.0001305   0.0107447
iLiNS-DYAD-M   MALAWI       0                    NA                0.0134555    0.0057094   0.0212015
JiVitA-3       BANGLADESH   0                    NA                0.0137921    0.0115741   0.0160101
JiVitA-4       BANGLADESH   0                    NA                0.0041925    0.0019396   0.0064455
Keneba         GAMBIA       0                    NA                0.0091955    0.0043046   0.0140865
SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
VITAMIN-A      INDIA        0                    NA                0.0139356    0.0093228   0.0185483
ZVITAMBO       ZIMBABWE     0                    NA                0.0293537    0.0262235   0.0324840


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0845411   -0.0049611   0.1660722
iLiNS-DYAD-M   MALAWI       0                    NA                0.3675792    0.1536387   0.5274405
JiVitA-3       BANGLADESH   0                    NA                0.4337824    0.3683132   0.4924663
JiVitA-4       BANGLADESH   0                    NA                0.4608297    0.1765540   0.6469658
Keneba         GAMBIA       0                    NA                0.2547644    0.1171008   0.3709632
SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
VITAMIN-A      INDIA        0                    NA                0.6978505    0.4640389   0.8296624
ZVITAMBO       ZIMBABWE     0                    NA                0.3698099    0.3347308   0.4030394

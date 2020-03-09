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

studyid           country                        ever_underweight06    dead   n_cell       n
----------------  -----------------------------  -------------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                        0      262     338
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338
Burkina Faso Zn   BURKINA FASO                   1                        0       74     338
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338
EE                PAKISTAN                       0                        0      103     380
EE                PAKISTAN                       0                        1        0     380
EE                PAKISTAN                       1                        0      273     380
EE                PAKISTAN                       1                        1        4     380
GMS-Nepal         NEPAL                          0                        0      388     697
GMS-Nepal         NEPAL                          0                        1        2     697
GMS-Nepal         NEPAL                          1                        0      302     697
GMS-Nepal         NEPAL                          1                        1        5     697
iLiNS-DOSE        MALAWI                         0                        0     1464    1816
iLiNS-DOSE        MALAWI                         0                        1       89    1816
iLiNS-DOSE        MALAWI                         1                        0      238    1816
iLiNS-DOSE        MALAWI                         1                        1       25    1816
iLiNS-DYAD-M      MALAWI                         0                        0      930    1202
iLiNS-DYAD-M      MALAWI                         0                        1       20    1202
iLiNS-DYAD-M      MALAWI                         1                        0      232    1202
iLiNS-DYAD-M      MALAWI                         1                        1       20    1202
JiVitA-3          BANGLADESH                     0                        0    14424   27237
JiVitA-3          BANGLADESH                     0                        1      240   27237
JiVitA-3          BANGLADESH                     1                        0    11988   27237
JiVitA-3          BANGLADESH                     1                        1      585   27237
JiVitA-4          BANGLADESH                     0                        0     3471    5276
JiVitA-4          BANGLADESH                     0                        1       17    5276
JiVitA-4          BANGLADESH                     1                        0     1758    5276
JiVitA-4          BANGLADESH                     1                        1       30    5276
Keneba            GAMBIA                         0                        0     2045    2632
Keneba            GAMBIA                         0                        1       34    2632
Keneba            GAMBIA                         1                        0      526    2632
Keneba            GAMBIA                         1                        1       27    2632
MAL-ED            BANGLADESH                     0                        0      174     265
MAL-ED            BANGLADESH                     0                        1        1     265
MAL-ED            BANGLADESH                     1                        0       88     265
MAL-ED            BANGLADESH                     1                        1        2     265
MAL-ED            INDIA                          0                        0      144     251
MAL-ED            INDIA                          0                        1        1     251
MAL-ED            INDIA                          1                        0      105     251
MAL-ED            INDIA                          1                        1        1     251
MAL-ED            PERU                           0                        0      251     303
MAL-ED            PERU                           0                        1        2     303
MAL-ED            PERU                           1                        0       50     303
MAL-ED            PERU                           1                        1        0     303
MAL-ED            SOUTH AFRICA                   0                        0      258     314
MAL-ED            SOUTH AFRICA                   0                        1        0     314
MAL-ED            SOUTH AFRICA                   1                        0       55     314
MAL-ED            SOUTH AFRICA                   1                        1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      214     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       45     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        1     262
PROVIDE           BANGLADESH                     0                        0      470     700
PROVIDE           BANGLADESH                     0                        1        3     700
PROVIDE           BANGLADESH                     1                        0      226     700
PROVIDE           BANGLADESH                     1                        1        1     700
SAS-CompFeed      INDIA                          0                        0      867    1533
SAS-CompFeed      INDIA                          0                        1       16    1533
SAS-CompFeed      INDIA                          1                        0      616    1533
SAS-CompFeed      INDIA                          1                        1       34    1533
SAS-FoodSuppl     INDIA                          0                        0      194     416
SAS-FoodSuppl     INDIA                          0                        1        2     416
SAS-FoodSuppl     INDIA                          1                        0      216     416
SAS-FoodSuppl     INDIA                          1                        1        4     416
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396
VITAMIN-A         INDIA                          0                        0     1692    3906
VITAMIN-A         INDIA                          0                        1       10    3906
VITAMIN-A         INDIA                          1                        0     2136    3906
VITAMIN-A         INDIA                          1                        1       68    3906
ZVITAMBO          ZIMBABWE                       0                        0    10958   14085
ZVITAMBO          ZIMBABWE                       0                        1      563   14085
ZVITAMBO          ZIMBABWE                       1                        0     2019   14085
ZVITAMBO          ZIMBABWE                       1                        1      545   14085


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
![](/tmp/7b6b3551-02f9-4e8b-af86-d1295b190416/88c23e32-8b12-4841-9f7b-f96dd23bb2d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b6b3551-02f9-4e8b-af86-d1295b190416/88c23e32-8b12-4841-9f7b-f96dd23bb2d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b6b3551-02f9-4e8b-af86-d1295b190416/88c23e32-8b12-4841-9f7b-f96dd23bb2d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b6b3551-02f9-4e8b-af86-d1295b190416/88c23e32-8b12-4841-9f7b-f96dd23bb2d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0575283   0.0459638   0.0690928
iLiNS-DOSE     MALAWI       1                    NA                0.1010380   0.0655655   0.1365105
iLiNS-DYAD-M   MALAWI       0                    NA                0.0207518   0.0116142   0.0298895
iLiNS-DYAD-M   MALAWI       1                    NA                0.0727731   0.0393429   0.1062033
JiVitA-3       BANGLADESH   0                    NA                0.0173976   0.0151292   0.0196660
JiVitA-3       BANGLADESH   1                    NA                0.0435313   0.0397088   0.0473538
JiVitA-4       BANGLADESH   0                    NA                0.0048755   0.0021527   0.0075982
JiVitA-4       BANGLADESH   1                    NA                0.0164388   0.0106126   0.0222650
Keneba         GAMBIA       0                    NA                0.0166224   0.0110716   0.0221733
Keneba         GAMBIA       1                    NA                0.0498764   0.0312186   0.0685342
SAS-CompFeed   INDIA        0                    NA                0.0184914   0.0105741   0.0264088
SAS-CompFeed   INDIA        1                    NA                0.0513869   0.0302198   0.0725540
VITAMIN-A      INDIA        0                    NA                0.0059895   0.0022980   0.0096810
VITAMIN-A      INDIA        1                    NA                0.0309643   0.0237187   0.0382098
ZVITAMBO       ZIMBABWE     0                    NA                0.0493966   0.0454511   0.0533420
ZVITAMBO       ZIMBABWE     1                    NA                0.2041352   0.1884052   0.2198653


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
iLiNS-DOSE     MALAWI       1                    0                 1.756319   1.171828   2.632344
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.506825   1.852101   6.639930
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.502148   2.145050   2.918694
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.371735   1.743823   6.519351
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 3.000546   1.815999   4.957754
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.778957   1.861468   4.148661
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 5.169766   2.673427   9.997088
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.132578   3.700230   4.615443


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0052470   -0.0001907   0.0106847
iLiNS-DYAD-M   MALAWI       0                    NA                0.0125260    0.0051128   0.0199392
JiVitA-3       BANGLADESH   0                    NA                0.0128921    0.0107122   0.0150720
JiVitA-4       BANGLADESH   0                    NA                0.0040328    0.0018310   0.0062346
Keneba         GAMBIA       0                    NA                0.0065538    0.0025373   0.0105704
SAS-CompFeed   INDIA        0                    NA                0.0141244    0.0058293   0.0224194
VITAMIN-A      INDIA        0                    NA                0.0139798    0.0093739   0.0185857
ZVITAMBO       ZIMBABWE     0                    NA                0.0292687    0.0261372   0.0324002


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0835844   -0.0059159   0.1651214
iLiNS-DYAD-M   MALAWI       0                    NA                0.3764071    0.1492657   0.5429030
JiVitA-3       BANGLADESH   0                    NA                0.4256269    0.3576879   0.4863799
JiVitA-4       BANGLADESH   0                    NA                0.4527016    0.1668391   0.6404830
Keneba         GAMBIA       0                    NA                0.2827824    0.1047777   0.4253929
SAS-CompFeed   INDIA        0                    NA                0.4330526    0.2372538   0.5785894
VITAMIN-A      INDIA        0                    NA                0.7000646    0.4669836   0.8312223
ZVITAMBO       ZIMBABWE     0                    NA                0.3720661    0.3366864   0.4055587

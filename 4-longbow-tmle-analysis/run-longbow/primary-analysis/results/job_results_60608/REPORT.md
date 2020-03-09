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

**Intervention Variable:** ever_co06

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

studyid           country                        ever_co06    dead   n_cell       n
----------------  -----------------------------  ----------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0               0      325     338
Burkina Faso Zn   BURKINA FASO                   0               1        2     338
Burkina Faso Zn   BURKINA FASO                   1               0       11     338
Burkina Faso Zn   BURKINA FASO                   1               1        0     338
EE                PAKISTAN                       0               0      314     379
EE                PAKISTAN                       0               1        2     379
EE                PAKISTAN                       1               0       61     379
EE                PAKISTAN                       1               1        2     379
GMS-Nepal         NEPAL                          0               0      645     686
GMS-Nepal         NEPAL                          0               1        5     686
GMS-Nepal         NEPAL                          1               0       34     686
GMS-Nepal         NEPAL                          1               1        2     686
iLiNS-DOSE        MALAWI                         0               0     1686    1813
iLiNS-DOSE        MALAWI                         0               1      111    1813
iLiNS-DOSE        MALAWI                         1               0       13    1813
iLiNS-DOSE        MALAWI                         1               1        3    1813
iLiNS-DYAD-M      MALAWI                         0               0     1131    1182
iLiNS-DYAD-M      MALAWI                         0               1       34    1182
iLiNS-DYAD-M      MALAWI                         1               0       13    1182
iLiNS-DYAD-M      MALAWI                         1               1        4    1182
JiVitA-3          BANGLADESH                     0               0    25085   26883
JiVitA-3          BANGLADESH                     0               1      467   26883
JiVitA-3          BANGLADESH                     1               0     1246   26883
JiVitA-3          BANGLADESH                     1               1       85   26883
JiVitA-4          BANGLADESH                     0               0     5019    5247
JiVitA-4          BANGLADESH                     0               1       42    5247
JiVitA-4          BANGLADESH                     1               0      182    5247
JiVitA-4          BANGLADESH                     1               1        4    5247
Keneba            GAMBIA                         0               0     2359    2476
Keneba            GAMBIA                         0               1       45    2476
Keneba            GAMBIA                         1               0       60    2476
Keneba            GAMBIA                         1               1       12    2476
MAL-ED            BANGLADESH                     0               0      252     263
MAL-ED            BANGLADESH                     0               1        2     263
MAL-ED            BANGLADESH                     1               0        9     263
MAL-ED            BANGLADESH                     1               1        0     263
MAL-ED            INDIA                          0               0      230     251
MAL-ED            INDIA                          0               1        2     251
MAL-ED            INDIA                          1               0       19     251
MAL-ED            INDIA                          1               1        0     251
MAL-ED            PERU                           0               0      298     302
MAL-ED            PERU                           0               1        2     302
MAL-ED            PERU                           1               0        2     302
MAL-ED            PERU                           1               1        0     302
MAL-ED            SOUTH AFRICA                   0               0      306     312
MAL-ED            SOUTH AFRICA                   0               1        0     312
MAL-ED            SOUTH AFRICA                   1               0        6     312
MAL-ED            SOUTH AFRICA                   1               1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0               0      254     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0               1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1               0        4     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1               1        0     261
PROVIDE           BANGLADESH                     0               0      666     700
PROVIDE           BANGLADESH                     0               1        4     700
PROVIDE           BANGLADESH                     1               0       30     700
PROVIDE           BANGLADESH                     1               1        0     700
SAS-CompFeed      INDIA                          0               0     1371    1507
SAS-CompFeed      INDIA                          0               1       26    1507
SAS-CompFeed      INDIA                          1               0      100    1507
SAS-CompFeed      INDIA                          1               1       10    1507
SAS-FoodSuppl     INDIA                          0               0      362     418
SAS-FoodSuppl     INDIA                          0               1        3     418
SAS-FoodSuppl     INDIA                          1               0       50     418
SAS-FoodSuppl     INDIA                          1               1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               0     2373    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               0       22    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               1        0    2396
VITAMIN-A         INDIA                          0               0     3488    3893
VITAMIN-A         INDIA                          0               1       48    3893
VITAMIN-A         INDIA                          1               0      330    3893
VITAMIN-A         INDIA                          1               1       27    3893
ZVITAMBO          ZIMBABWE                       0               0    12682   13857
ZVITAMBO          ZIMBABWE                       0               1      966   13857
ZVITAMBO          ZIMBABWE                       1               0      132   13857
ZVITAMBO          ZIMBABWE                       1               1       77   13857


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
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
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
![](/tmp/4c4190d9-3aac-4351-9201-38ed7cd53882/29c64aef-74c5-4b5b-993d-f661823b8fd2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4c4190d9-3aac-4351-9201-38ed7cd53882/29c64aef-74c5-4b5b-993d-f661823b8fd2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4c4190d9-3aac-4351-9201-38ed7cd53882/29c64aef-74c5-4b5b-993d-f661823b8fd2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4c4190d9-3aac-4351-9201-38ed7cd53882/29c64aef-74c5-4b5b-993d-f661823b8fd2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0183068   0.0166392   0.0199744
JiVitA-3       BANGLADESH   1                    NA                0.0695027   0.0547946   0.0842108
Keneba         GAMBIA       0                    NA                0.0187120   0.0132929   0.0241311
Keneba         GAMBIA       1                    NA                0.1432363   0.0541449   0.2323276
SAS-CompFeed   INDIA        0                    NA                0.0186147   0.0089787   0.0282507
SAS-CompFeed   INDIA        1                    NA                0.0874599   0.0424682   0.1324517
VITAMIN-A      INDIA        0                    NA                0.0135903   0.0097758   0.0174048
VITAMIN-A      INDIA        1                    NA                0.0738178   0.0461152   0.1015204
ZVITAMBO       ZIMBABWE     0                    NA                0.0709271   0.0665807   0.0752735
ZVITAMBO       ZIMBABWE     1                    NA                0.3478289   0.3075123   0.3881456


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0205334   0.0188040   0.0222628
Keneba         GAMBIA       NA                   NA                0.0230210   0.0171127   0.0289293
SAS-CompFeed   INDIA        NA                   NA                0.0238885   0.0131223   0.0346548
VITAMIN-A      INDIA        NA                   NA                0.0192653   0.0149469   0.0235838
ZVITAMBO       ZIMBABWE     NA                   NA                0.0752688   0.0708760   0.0796616


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.796552   3.010835    4.787311
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 7.654773   3.852884   15.208232
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.698434   2.737903    8.062843
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.431654   3.399637    8.678239
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.904035   4.301816    5.590559


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0022266   0.0015255   0.0029278
Keneba         GAMBIA       0                    NA                0.0043090   0.0016106   0.0070074
SAS-CompFeed   INDIA        0                    NA                0.0052738   0.0016807   0.0088670
VITAMIN-A      INDIA        0                    NA                0.0056750   0.0030758   0.0082743
ZVITAMBO       ZIMBABWE     0                    NA                0.0043417   0.0031904   0.0054930


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1084392   0.0751377   0.1405417
Keneba         GAMBIA       0                    NA                0.1871761   0.0724464   0.2877148
SAS-CompFeed   INDIA        0                    NA                0.2207678   0.0716870   0.3459073
VITAMIN-A      INDIA        0                    NA                0.2945729   0.1660110   0.4033166
ZVITAMBO       ZIMBABWE     0                    NA                0.0576830   0.0424726   0.0726517

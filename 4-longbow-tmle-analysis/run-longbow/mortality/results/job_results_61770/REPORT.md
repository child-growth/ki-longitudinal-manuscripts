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

studyid           country                        ever_co06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0               0      325     338  dead             
Burkina Faso Zn   BURKINA FASO                   0               1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1               0       11     338  dead             
Burkina Faso Zn   BURKINA FASO                   1               1        0     338  dead             
EE                PAKISTAN                       0               0      314     379  dead             
EE                PAKISTAN                       0               1        2     379  dead             
EE                PAKISTAN                       1               0       61     379  dead             
EE                PAKISTAN                       1               1        2     379  dead             
GMS-Nepal         NEPAL                          0               0      645     686  dead             
GMS-Nepal         NEPAL                          0               1        5     686  dead             
GMS-Nepal         NEPAL                          1               0       34     686  dead             
GMS-Nepal         NEPAL                          1               1        2     686  dead             
iLiNS-DOSE        MALAWI                         0               0     1686    1813  dead             
iLiNS-DOSE        MALAWI                         0               1      111    1813  dead             
iLiNS-DOSE        MALAWI                         1               0       13    1813  dead             
iLiNS-DOSE        MALAWI                         1               1        3    1813  dead             
iLiNS-DYAD-M      MALAWI                         0               0     1131    1182  dead             
iLiNS-DYAD-M      MALAWI                         0               1       34    1182  dead             
iLiNS-DYAD-M      MALAWI                         1               0       13    1182  dead             
iLiNS-DYAD-M      MALAWI                         1               1        4    1182  dead             
JiVitA-3          BANGLADESH                     0               0    25085   26883  dead             
JiVitA-3          BANGLADESH                     0               1      467   26883  dead             
JiVitA-3          BANGLADESH                     1               0     1246   26883  dead             
JiVitA-3          BANGLADESH                     1               1       85   26883  dead             
JiVitA-4          BANGLADESH                     0               0     5019    5247  dead             
JiVitA-4          BANGLADESH                     0               1       42    5247  dead             
JiVitA-4          BANGLADESH                     1               0      182    5247  dead             
JiVitA-4          BANGLADESH                     1               1        4    5247  dead             
Keneba            GAMBIA                         0               0     2359    2476  dead             
Keneba            GAMBIA                         0               1       45    2476  dead             
Keneba            GAMBIA                         1               0       60    2476  dead             
Keneba            GAMBIA                         1               1       12    2476  dead             
MAL-ED            BANGLADESH                     0               0      252     263  dead             
MAL-ED            BANGLADESH                     0               1        2     263  dead             
MAL-ED            BANGLADESH                     1               0        9     263  dead             
MAL-ED            BANGLADESH                     1               1        0     263  dead             
MAL-ED            INDIA                          0               0      230     251  dead             
MAL-ED            INDIA                          0               1        2     251  dead             
MAL-ED            INDIA                          1               0       19     251  dead             
MAL-ED            INDIA                          1               1        0     251  dead             
MAL-ED            PERU                           0               0      298     302  dead             
MAL-ED            PERU                           0               1        2     302  dead             
MAL-ED            PERU                           1               0        2     302  dead             
MAL-ED            PERU                           1               1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0               0      306     312  dead             
MAL-ED            SOUTH AFRICA                   0               1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1               0        6     312  dead             
MAL-ED            SOUTH AFRICA                   1               1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0               0      254     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0               1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1               0        4     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1               1        0     261  dead             
PROVIDE           BANGLADESH                     0               0      666     700  dead             
PROVIDE           BANGLADESH                     0               1        4     700  dead             
PROVIDE           BANGLADESH                     1               0       30     700  dead             
PROVIDE           BANGLADESH                     1               1        0     700  dead             
SAS-CompFeed      INDIA                          0               0     1371    1507  dead             
SAS-CompFeed      INDIA                          0               1       26    1507  dead             
SAS-CompFeed      INDIA                          1               0      100    1507  dead             
SAS-CompFeed      INDIA                          1               1       10    1507  dead             
SAS-FoodSuppl     INDIA                          0               0      362     418  dead             
SAS-FoodSuppl     INDIA                          0               1        3     418  dead             
SAS-FoodSuppl     INDIA                          1               0       50     418  dead             
SAS-FoodSuppl     INDIA                          1               1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               0     2373    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0               1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               0       22    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1               1        0    2396  dead             
VITAMIN-A         INDIA                          0               0     3488    3893  dead             
VITAMIN-A         INDIA                          0               1       48    3893  dead             
VITAMIN-A         INDIA                          1               0      330    3893  dead             
VITAMIN-A         INDIA                          1               1       27    3893  dead             
ZVITAMBO          ZIMBABWE                       0               0    12682   13857  dead             
ZVITAMBO          ZIMBABWE                       0               1      966   13857  dead             
ZVITAMBO          ZIMBABWE                       1               0      132   13857  dead             
ZVITAMBO          ZIMBABWE                       1               1       77   13857  dead             


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
![](/tmp/c9fb2356-67ba-4560-ab2d-4fb9dfd7feb9/ea6ce322-41c4-470b-b503-47db6ade997f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9fb2356-67ba-4560-ab2d-4fb9dfd7feb9/ea6ce322-41c4-470b-b503-47db6ade997f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9fb2356-67ba-4560-ab2d-4fb9dfd7feb9/ea6ce322-41c4-470b-b503-47db6ade997f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9fb2356-67ba-4560-ab2d-4fb9dfd7feb9/ea6ce322-41c4-470b-b503-47db6ade997f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0183240   0.0166552   0.0199929
JiVitA-3       BANGLADESH   1                    NA                0.0709031   0.0560427   0.0857635
Keneba         GAMBIA       0                    NA                0.0187106   0.0132914   0.0241298
Keneba         GAMBIA       1                    NA                0.1433614   0.0542989   0.2324240
SAS-CompFeed   INDIA        0                    NA                0.0186147   0.0089787   0.0282507
SAS-CompFeed   INDIA        1                    NA                0.0874599   0.0424682   0.1324517
VITAMIN-A      INDIA        0                    NA                0.0135982   0.0097843   0.0174122
VITAMIN-A      INDIA        1                    NA                0.0746904   0.0470340   0.1023468
ZVITAMBO       ZIMBABWE     0                    NA                0.0709325   0.0665869   0.0752780
ZVITAMBO       ZIMBABWE     1                    NA                0.3441979   0.3038553   0.3845405


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
JiVitA-3       BANGLADESH   1                    0                 3.869406   3.075788    4.867792
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 7.662044   3.858893   15.213411
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.698434   2.737903    8.062843
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.492657   3.450833    8.742608
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.852474   4.251894    5.537886


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0022094   0.0015086   0.0029102
Keneba         GAMBIA       0                    NA                0.0043104   0.0016126   0.0070082
SAS-CompFeed   INDIA        0                    NA                0.0052738   0.0016807   0.0088670
VITAMIN-A      INDIA        0                    NA                0.0056671   0.0030644   0.0082698
ZVITAMBO       ZIMBABWE     0                    NA                0.0043363   0.0031879   0.0054848


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1076001   0.0742952   0.1397068
Keneba         GAMBIA       0                    NA                0.1872379   0.0725334   0.2877563
SAS-CompFeed   INDIA        0                    NA                0.2207678   0.0716870   0.3459073
VITAMIN-A      INDIA        0                    NA                0.2941613   0.1654490   0.4030224
ZVITAMBO       ZIMBABWE     0                    NA                0.0576115   0.0424409   0.0725417

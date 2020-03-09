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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_stunted06

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead624   n_cell       n
----------------  -----------------------------  ---------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                       0      295     336
Burkina Faso Zn   BURKINA FASO                   0                       1        2     336
Burkina Faso Zn   BURKINA FASO                   1                       0       39     336
Burkina Faso Zn   BURKINA FASO                   1                       1        0     336
EE                PAKISTAN                       0                       0       91     374
EE                PAKISTAN                       0                       1        0     374
EE                PAKISTAN                       1                       0      279     374
EE                PAKISTAN                       1                       1        4     374
GMS-Nepal         NEPAL                          0                       0      398     592
GMS-Nepal         NEPAL                          0                       1        1     592
GMS-Nepal         NEPAL                          1                       0      192     592
GMS-Nepal         NEPAL                          1                       1        1     592
iLiNS-DOSE        MALAWI                         0                       0     1156    1756
iLiNS-DOSE        MALAWI                         0                       1       73    1756
iLiNS-DOSE        MALAWI                         1                       0      487    1756
iLiNS-DOSE        MALAWI                         1                       1       40    1756
iLiNS-DYAD-M      MALAWI                         0                       0      812    1148
iLiNS-DYAD-M      MALAWI                         0                       1       13    1148
iLiNS-DYAD-M      MALAWI                         1                       0      312    1148
iLiNS-DYAD-M      MALAWI                         1                       1       11    1148
JiVitA-3          BANGLADESH                     0                       0    11910   21009
JiVitA-3          BANGLADESH                     0                       1      106   21009
JiVitA-3          BANGLADESH                     1                       0     8830   21009
JiVitA-3          BANGLADESH                     1                       1      163   21009
JiVitA-4          BANGLADESH                     0                       0     3210    5260
JiVitA-4          BANGLADESH                     0                       1       20    5260
JiVitA-4          BANGLADESH                     1                       0     2003    5260
JiVitA-4          BANGLADESH                     1                       1       27    5260
Keneba            GAMBIA                         0                       0     1557    2312
Keneba            GAMBIA                         0                       1       13    2312
Keneba            GAMBIA                         1                       0      716    2312
Keneba            GAMBIA                         1                       1       26    2312
MAL-ED            BANGLADESH                     0                       0      155     240
MAL-ED            BANGLADESH                     0                       1        0     240
MAL-ED            BANGLADESH                     1                       0       85     240
MAL-ED            BANGLADESH                     1                       1        0     240
MAL-ED            INDIA                          0                       0      149     235
MAL-ED            INDIA                          0                       1        0     235
MAL-ED            INDIA                          1                       0       86     235
MAL-ED            INDIA                          1                       1        0     235
MAL-ED            PERU                           0                       0      149     273
MAL-ED            PERU                           0                       1        0     273
MAL-ED            PERU                           1                       0      123     273
MAL-ED            PERU                           1                       1        1     273
MAL-ED            SOUTH AFRICA                   0                       0      155     261
MAL-ED            SOUTH AFRICA                   0                       1        0     261
MAL-ED            SOUTH AFRICA                   1                       0      106     261
MAL-ED            SOUTH AFRICA                   1                       1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      140     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0      105     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
PROVIDE           BANGLADESH                     0                       0      455     617
PROVIDE           BANGLADESH                     0                       1        2     617
PROVIDE           BANGLADESH                     1                       0      160     617
PROVIDE           BANGLADESH                     1                       1        0     617
SAS-CompFeed      INDIA                          0                       0      796    1388
SAS-CompFeed      INDIA                          0                       1        2    1388
SAS-CompFeed      INDIA                          1                       0      580    1388
SAS-CompFeed      INDIA                          1                       1       10    1388
SAS-FoodSuppl     INDIA                          0                       0      214     402
SAS-FoodSuppl     INDIA                          0                       1        1     402
SAS-FoodSuppl     INDIA                          1                       0      184     402
SAS-FoodSuppl     INDIA                          1                       1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1651    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      445    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096
VITAMIN-A         INDIA                          0                       0     2094    3605
VITAMIN-A         INDIA                          0                       1       11    3605
VITAMIN-A         INDIA                          1                       0     1480    3605
VITAMIN-A         INDIA                          1                       1       20    3605
ZVITAMBO          ZIMBABWE                       0                       0     8028   11694
ZVITAMBO          ZIMBABWE                       0                       1      190   11694
ZVITAMBO          ZIMBABWE                       1                       0     3261   11694
ZVITAMBO          ZIMBABWE                       1                       1      215   11694


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
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1334df64-79b5-4366-8b87-ccb6f558a611/b63469e3-9a17-4e46-a1bc-b2bbfec0b63e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1334df64-79b5-4366-8b87-ccb6f558a611/b63469e3-9a17-4e46-a1bc-b2bbfec0b63e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1334df64-79b5-4366-8b87-ccb6f558a611/b63469e3-9a17-4e46-a1bc-b2bbfec0b63e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1334df64-79b5-4366-8b87-ccb6f558a611/b63469e3-9a17-4e46-a1bc-b2bbfec0b63e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0593494   0.0461030   0.0725958
iLiNS-DOSE     MALAWI       1                    NA                0.0740842   0.0514199   0.0967485
iLiNS-DYAD-M   MALAWI       0                    NA                0.0158675   0.0073103   0.0244247
iLiNS-DYAD-M   MALAWI       1                    NA                0.0336923   0.0135259   0.0538587
JiVitA-3       BANGLADESH   0                    NA                0.0090985   0.0072736   0.0109233
JiVitA-3       BANGLADESH   1                    NA                0.0180562   0.0146919   0.0214205
JiVitA-4       BANGLADESH   0                    NA                0.0062033   0.0030236   0.0093830
JiVitA-4       BANGLADESH   1                    NA                0.0132224   0.0083900   0.0180547
Keneba         GAMBIA       0                    NA                0.0083044   0.0038095   0.0127993
Keneba         GAMBIA       1                    NA                0.0349310   0.0216604   0.0482016
VITAMIN-A      INDIA        0                    NA                0.0052502   0.0021572   0.0083432
VITAMIN-A      INDIA        1                    NA                0.0132863   0.0074931   0.0190796
ZVITAMBO       ZIMBABWE     0                    NA                0.0232881   0.0200204   0.0265558
ZVITAMBO       ZIMBABWE     1                    NA                0.0581598   0.0503122   0.0660075


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0209059   0.0126262   0.0291856
JiVitA-3       BANGLADESH   NA                   NA                0.0128040   0.0112517   0.0143564
JiVitA-4       BANGLADESH   NA                   NA                0.0089354   0.0062246   0.0116461
Keneba         GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0346331   0.0313190   0.0379473


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.248272   0.8546364   1.823213
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.123354   0.9485389   4.753240
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.984528   1.5119271   2.604855
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.131504   1.1376115   3.993727
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 4.206334   2.1706260   8.151220
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.530642   1.2163079   5.265238
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.497406   2.0561584   3.033343


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0050014   -0.0029477   0.0129505
iLiNS-DYAD-M   MALAWI       0                    NA                0.0050384   -0.0010737   0.0111505
JiVitA-3       BANGLADESH   0                    NA                0.0037056    0.0021725   0.0052386
JiVitA-4       BANGLADESH   0                    NA                0.0027321    0.0004878   0.0049764
Keneba         GAMBIA       0                    NA                0.0085641    0.0040435   0.0130848
VITAMIN-A      INDIA        0                    NA                0.0033490    0.0006062   0.0060918
ZVITAMBO       ZIMBABWE     0                    NA                0.0113450    0.0087369   0.0139532


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0777213   -0.0536534   0.1927156
iLiNS-DYAD-M   MALAWI       0                    NA                0.2410050   -0.0928615   0.4728761
JiVitA-3       BANGLADESH   0                    NA                0.2894053    0.1655119   0.3949047
JiVitA-4       BANGLADESH   0                    NA                0.3057585    0.0034418   0.5163642
Keneba         GAMBIA       0                    NA                0.5076993    0.2346307   0.6833425
VITAMIN-A      INDIA        0                    NA                0.3894543    0.0205256   0.6194223
ZVITAMBO       ZIMBABWE     0                    NA                0.3275776    0.2553025   0.3928382

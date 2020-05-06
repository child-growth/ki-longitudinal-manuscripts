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

studyid           country                        ever_stunted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                       0      295     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                       1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       0       39     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       1        0     336  dead624          
EE                PAKISTAN                       0                       0       91     374  dead624          
EE                PAKISTAN                       0                       1        0     374  dead624          
EE                PAKISTAN                       1                       0      279     374  dead624          
EE                PAKISTAN                       1                       1        4     374  dead624          
GMS-Nepal         NEPAL                          0                       0      398     592  dead624          
GMS-Nepal         NEPAL                          0                       1        1     592  dead624          
GMS-Nepal         NEPAL                          1                       0      192     592  dead624          
GMS-Nepal         NEPAL                          1                       1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                       0     1156    1756  dead624          
iLiNS-DOSE        MALAWI                         0                       1       73    1756  dead624          
iLiNS-DOSE        MALAWI                         1                       0      487    1756  dead624          
iLiNS-DOSE        MALAWI                         1                       1       40    1756  dead624          
iLiNS-DYAD-M      MALAWI                         0                       0      812    1148  dead624          
iLiNS-DYAD-M      MALAWI                         0                       1       13    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                       0      312    1148  dead624          
iLiNS-DYAD-M      MALAWI                         1                       1       11    1148  dead624          
JiVitA-3          BANGLADESH                     0                       0    11910   21009  dead624          
JiVitA-3          BANGLADESH                     0                       1      106   21009  dead624          
JiVitA-3          BANGLADESH                     1                       0     8830   21009  dead624          
JiVitA-3          BANGLADESH                     1                       1      163   21009  dead624          
JiVitA-4          BANGLADESH                     0                       0     3210    5260  dead624          
JiVitA-4          BANGLADESH                     0                       1       20    5260  dead624          
JiVitA-4          BANGLADESH                     1                       0     2003    5260  dead624          
JiVitA-4          BANGLADESH                     1                       1       27    5260  dead624          
Keneba            GAMBIA                         0                       0     1557    2312  dead624          
Keneba            GAMBIA                         0                       1       13    2312  dead624          
Keneba            GAMBIA                         1                       0      716    2312  dead624          
Keneba            GAMBIA                         1                       1       26    2312  dead624          
MAL-ED            BANGLADESH                     0                       0      155     240  dead624          
MAL-ED            BANGLADESH                     0                       1        0     240  dead624          
MAL-ED            BANGLADESH                     1                       0       85     240  dead624          
MAL-ED            BANGLADESH                     1                       1        0     240  dead624          
MAL-ED            INDIA                          0                       0      149     235  dead624          
MAL-ED            INDIA                          0                       1        0     235  dead624          
MAL-ED            INDIA                          1                       0       86     235  dead624          
MAL-ED            INDIA                          1                       1        0     235  dead624          
MAL-ED            PERU                           0                       0      149     273  dead624          
MAL-ED            PERU                           0                       1        0     273  dead624          
MAL-ED            PERU                           1                       0      123     273  dead624          
MAL-ED            PERU                           1                       1        1     273  dead624          
MAL-ED            SOUTH AFRICA                   0                       0      155     261  dead624          
MAL-ED            SOUTH AFRICA                   0                       1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       0      106     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      140     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0      105     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
PROVIDE           BANGLADESH                     0                       0      455     617  dead624          
PROVIDE           BANGLADESH                     0                       1        2     617  dead624          
PROVIDE           BANGLADESH                     1                       0      160     617  dead624          
PROVIDE           BANGLADESH                     1                       1        0     617  dead624          
SAS-CompFeed      INDIA                          0                       0      796    1388  dead624          
SAS-CompFeed      INDIA                          0                       1        2    1388  dead624          
SAS-CompFeed      INDIA                          1                       0      580    1388  dead624          
SAS-CompFeed      INDIA                          1                       1       10    1388  dead624          
SAS-FoodSuppl     INDIA                          0                       0      214     402  dead624          
SAS-FoodSuppl     INDIA                          0                       1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                       0      184     402  dead624          
SAS-FoodSuppl     INDIA                          1                       1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1651    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      445    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
VITAMIN-A         INDIA                          0                       0     2094    3605  dead624          
VITAMIN-A         INDIA                          0                       1       11    3605  dead624          
VITAMIN-A         INDIA                          1                       0     1480    3605  dead624          
VITAMIN-A         INDIA                          1                       1       20    3605  dead624          
ZVITAMBO          ZIMBABWE                       0                       0     8028   11694  dead624          
ZVITAMBO          ZIMBABWE                       0                       1      190   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       0     3261   11694  dead624          
ZVITAMBO          ZIMBABWE                       1                       1      215   11694  dead624          


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
![](/tmp/64b70a9d-ae00-4af9-b2ea-cf30078b9d2d/ee777290-66a0-4543-95b8-b037c2c4b983/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/64b70a9d-ae00-4af9-b2ea-cf30078b9d2d/ee777290-66a0-4543-95b8-b037c2c4b983/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/64b70a9d-ae00-4af9-b2ea-cf30078b9d2d/ee777290-66a0-4543-95b8-b037c2c4b983/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/64b70a9d-ae00-4af9-b2ea-cf30078b9d2d/ee777290-66a0-4543-95b8-b037c2c4b983/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0594038   0.0461107   0.0726970
iLiNS-DOSE     MALAWI       1                    NA                0.0739501   0.0514291   0.0964711
iLiNS-DYAD-M   MALAWI       0                    NA                0.0156384   0.0071306   0.0241461
iLiNS-DYAD-M   MALAWI       1                    NA                0.0332852   0.0133833   0.0531871
JiVitA-3       BANGLADESH   0                    NA                0.0090581   0.0072331   0.0108831
JiVitA-3       BANGLADESH   1                    NA                0.0179939   0.0148106   0.0211772
JiVitA-4       BANGLADESH   0                    NA                0.0061990   0.0030012   0.0093968
JiVitA-4       BANGLADESH   1                    NA                0.0131840   0.0083661   0.0180019
Keneba         GAMBIA       0                    NA                0.0083644   0.0038548   0.0128741
Keneba         GAMBIA       1                    NA                0.0348587   0.0215139   0.0482035
VITAMIN-A      INDIA        0                    NA                0.0052394   0.0021473   0.0083314
VITAMIN-A      INDIA        1                    NA                0.0133062   0.0075015   0.0191108
ZVITAMBO       ZIMBABWE     0                    NA                0.0234237   0.0201333   0.0267141
ZVITAMBO       ZIMBABWE     1                    NA                0.0578466   0.0499760   0.0657173


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
iLiNS-DOSE     MALAWI       1                    0                 1.244871   0.8530121   1.816742
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.128431   0.9482798   4.777304
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.986503   1.5190730   2.597765
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.126791   1.1316939   3.996875
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 4.167483   2.1500275   8.077996
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.539646   1.2191572   5.290379
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.469575   2.0314288   3.002223


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0049470   -0.0030540   0.0129479
iLiNS-DYAD-M   MALAWI       0                    NA                0.0052676   -0.0008199   0.0113550
JiVitA-3       BANGLADESH   0                    NA                0.0037460    0.0022114   0.0052805
JiVitA-4       BANGLADESH   0                    NA                0.0027364    0.0004846   0.0049881
Keneba         GAMBIA       0                    NA                0.0085041    0.0039765   0.0130317
VITAMIN-A      INDIA        0                    NA                0.0033598    0.0006166   0.0061030
ZVITAMBO       ZIMBABWE     0                    NA                0.0112094    0.0085898   0.0138291


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0768748   -0.0554526   0.1926117
iLiNS-DYAD-M   MALAWI       0                    NA                0.2519652   -0.0802988   0.4820358
JiVitA-3       BANGLADESH   0                    NA                0.2925606    0.1685157   0.3980999
JiVitA-4       BANGLADESH   0                    NA                0.3062385    0.0017486   0.5178519
Keneba         GAMBIA       0                    NA                0.5041386    0.2303077   0.6805496
VITAMIN-A      INDIA        0                    NA                0.3907117    0.0216264   0.6205619
ZVITAMBO       ZIMBABWE     0                    NA                0.3236620    0.2508158   0.3894251

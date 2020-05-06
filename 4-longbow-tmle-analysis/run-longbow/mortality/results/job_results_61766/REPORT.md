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

studyid           country                        ever_stunted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0      297     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                    0       39     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338  dead             
EE                PAKISTAN                       0                    0       93     379  dead             
EE                PAKISTAN                       0                    1        0     379  dead             
EE                PAKISTAN                       1                    0      282     379  dead             
EE                PAKISTAN                       1                    1        4     379  dead             
GMS-Nepal         NEPAL                          0                    0      473     698  dead             
GMS-Nepal         NEPAL                          0                    1        3     698  dead             
GMS-Nepal         NEPAL                          1                    0      217     698  dead             
GMS-Nepal         NEPAL                          1                    1        5     698  dead             
iLiNS-DOSE        MALAWI                         0                    0     1194    1813  dead             
iLiNS-DOSE        MALAWI                         0                    1       73    1813  dead             
iLiNS-DOSE        MALAWI                         1                    0      505    1813  dead             
iLiNS-DOSE        MALAWI                         1                    1       41    1813  dead             
iLiNS-DYAD-M      MALAWI                         0                    0      835    1191  dead             
iLiNS-DYAD-M      MALAWI                         0                    1       23    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                    0      317    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                    1       16    1191  dead             
JiVitA-3          BANGLADESH                     0                    0    15085   27197  dead             
JiVitA-3          BANGLADESH                     0                    1      262   27197  dead             
JiVitA-3          BANGLADESH                     1                    0    11311   27197  dead             
JiVitA-3          BANGLADESH                     1                    1      539   27197  dead             
JiVitA-4          BANGLADESH                     0                    0     3217    5270  dead             
JiVitA-4          BANGLADESH                     0                    1       20    5270  dead             
JiVitA-4          BANGLADESH                     1                    0     2006    5270  dead             
JiVitA-4          BANGLADESH                     1                    1       27    5270  dead             
Keneba            GAMBIA                         0                    0     1669    2479  dead             
Keneba            GAMBIA                         0                    1       25    2479  dead             
Keneba            GAMBIA                         1                    0      751    2479  dead             
Keneba            GAMBIA                         1                    1       34    2479  dead             
MAL-ED            BANGLADESH                     0                    0      167     265  dead             
MAL-ED            BANGLADESH                     0                    1        0     265  dead             
MAL-ED            BANGLADESH                     1                    0       95     265  dead             
MAL-ED            BANGLADESH                     1                    1        3     265  dead             
MAL-ED            INDIA                          0                    0      158     251  dead             
MAL-ED            INDIA                          0                    1        1     251  dead             
MAL-ED            INDIA                          1                    0       91     251  dead             
MAL-ED            INDIA                          1                    1        1     251  dead             
MAL-ED            PERU                           0                    0      171     303  dead             
MAL-ED            PERU                           0                    1        1     303  dead             
MAL-ED            PERU                           1                    0      130     303  dead             
MAL-ED            PERU                           1                    1        1     303  dead             
MAL-ED            SOUTH AFRICA                   0                    0      194     314  dead             
MAL-ED            SOUTH AFRICA                   0                    1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                    0      119     314  dead             
MAL-ED            SOUTH AFRICA                   1                    1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      148     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        1     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0      111     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        2     262  dead             
PROVIDE           BANGLADESH                     0                    0      527     700  dead             
PROVIDE           BANGLADESH                     0                    1        4     700  dead             
PROVIDE           BANGLADESH                     1                    0      169     700  dead             
PROVIDE           BANGLADESH                     1                    1        0     700  dead             
SAS-CompFeed      INDIA                          0                    0      853    1532  dead             
SAS-CompFeed      INDIA                          0                    1       14    1532  dead             
SAS-CompFeed      INDIA                          1                    0      629    1532  dead             
SAS-CompFeed      INDIA                          1                    1       36    1532  dead             
SAS-FoodSuppl     INDIA                          0                    0      226     418  dead             
SAS-FoodSuppl     INDIA                          0                    1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                    0      186     418  dead             
SAS-FoodSuppl     INDIA                          1                    1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
VITAMIN-A         INDIA                          0                    0     2265    3898  dead             
VITAMIN-A         INDIA                          0                    1       29    3898  dead             
VITAMIN-A         INDIA                          1                    0     1556    3898  dead             
VITAMIN-A         INDIA                          1                    1       48    3898  dead             
ZVITAMBO          ZIMBABWE                       0                    0     9428   14060  dead             
ZVITAMBO          ZIMBABWE                       0                    1      623   14060  dead             
ZVITAMBO          ZIMBABWE                       1                    0     3527   14060  dead             
ZVITAMBO          ZIMBABWE                       1                    1      482   14060  dead             


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
![](/tmp/d2ae2640-a8c1-4a1b-8109-9a6149ff35f8/d7d5ffb0-5ef4-40a7-9147-822aa9b723f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2ae2640-a8c1-4a1b-8109-9a6149ff35f8/d7d5ffb0-5ef4-40a7-9147-822aa9b723f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2ae2640-a8c1-4a1b-8109-9a6149ff35f8/d7d5ffb0-5ef4-40a7-9147-822aa9b723f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2ae2640-a8c1-4a1b-8109-9a6149ff35f8/d7d5ffb0-5ef4-40a7-9147-822aa9b723f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0574598   0.0446081   0.0703115
iLiNS-DOSE     MALAWI       1                    NA                0.0741655   0.0520541   0.0962769
iLiNS-DYAD-M   MALAWI       0                    NA                0.0265330   0.0156969   0.0373691
iLiNS-DYAD-M   MALAWI       1                    NA                0.0450930   0.0219136   0.0682725
JiVitA-3       BANGLADESH   0                    NA                0.0179374   0.0156492   0.0202256
JiVitA-3       BANGLADESH   1                    NA                0.0439914   0.0398760   0.0481068
JiVitA-4       BANGLADESH   0                    NA                0.0062042   0.0030193   0.0093891
JiVitA-4       BANGLADESH   1                    NA                0.0131523   0.0083233   0.0179813
Keneba         GAMBIA       0                    NA                0.0153520   0.0093123   0.0213917
Keneba         GAMBIA       1                    NA                0.0423989   0.0281281   0.0566698
SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
VITAMIN-A      INDIA        0                    NA                0.0125804   0.0080070   0.0171538
VITAMIN-A      INDIA        1                    NA                0.0299471   0.0216009   0.0382933
ZVITAMBO       ZIMBABWE     0                    NA                0.0615509   0.0568425   0.0662594
ZVITAMBO       ZIMBABWE     1                    NA                0.1179313   0.1076622   0.1282005


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0327456   0.0226340   0.0428572
JiVitA-3       BANGLADESH   NA                   NA                0.0294518   0.0273600   0.0315436
JiVitA-4       BANGLADESH   NA                   NA                0.0089184   0.0062077   0.0116291
Keneba         GAMBIA       NA                   NA                0.0237999   0.0177985   0.0298013
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0785917   0.0741435   0.0830400


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.290737   0.8890217   1.873973
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.699508   0.8811481   3.277915
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.452494   2.0930123   2.873717
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.119894   1.1295468   3.978543
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.761783   1.6451874   4.636218
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502249   5.793749
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.380454   1.5055606   3.763757
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.915996   1.7076202   2.149800


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0054194   -0.0023543   0.0131931
iLiNS-DYAD-M   MALAWI       0                    NA                0.0062126   -0.0009259   0.0133511
JiVitA-3       BANGLADESH   0                    NA                0.0115144    0.0094414   0.0135873
JiVitA-4       BANGLADESH   0                    NA                0.0027142    0.0004686   0.0049598
Keneba         GAMBIA       0                    NA                0.0084479    0.0033896   0.0135062
SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
VITAMIN-A      INDIA        0                    NA                0.0071733    0.0032496   0.0110970
ZVITAMBO       ZIMBABWE     0                    NA                0.0170408    0.0138187   0.0202629


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0861878   -0.0452409   0.2010907
iLiNS-DYAD-M   MALAWI       0                    NA                0.1897231   -0.0516157   0.3756762
JiVitA-3       BANGLADESH   0                    NA                0.3909564    0.3227812   0.4522683
JiVitA-4       BANGLADESH   0                    NA                0.3043364    0.0010615   0.5155378
Keneba         GAMBIA       0                    NA                0.3549551    0.1293174   0.5221187
SAS-CompFeed   INDIA        0                    NA                0.4886157    0.1984826   0.6737264
VITAMIN-A      INDIA        0                    NA                0.3631376    0.1519023   0.5217607
ZVITAMBO       ZIMBABWE     0                    NA                0.2168273    0.1764425   0.2552317

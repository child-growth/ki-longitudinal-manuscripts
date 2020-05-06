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

studyid           country                        ever_stunted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      297     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         0       39     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead0plus        
EE                PAKISTAN                       0                         0       93     379  dead0plus        
EE                PAKISTAN                       0                         1        0     379  dead0plus        
EE                PAKISTAN                       1                         0      282     379  dead0plus        
EE                PAKISTAN                       1                         1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                         0      473     698  dead0plus        
GMS-Nepal         NEPAL                          0                         1        3     698  dead0plus        
GMS-Nepal         NEPAL                          1                         0      217     698  dead0plus        
GMS-Nepal         NEPAL                          1                         1        5     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                         0     1194    1813  dead0plus        
iLiNS-DOSE        MALAWI                         0                         1       73    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                         0      505    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                         1       41    1813  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         0      833    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         1       25    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         0      315    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         1       18    1191  dead0plus        
JiVitA-3          BANGLADESH                     0                         0    15070   27197  dead0plus        
JiVitA-3          BANGLADESH                     0                         1      277   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                         0    11285   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                         1      565   27197  dead0plus        
JiVitA-4          BANGLADESH                     0                         0     3217    5270  dead0plus        
JiVitA-4          BANGLADESH                     0                         1       20    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                         0     2005    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                         1       28    5270  dead0plus        
Keneba            GAMBIA                         0                         0     1647    2479  dead0plus        
Keneba            GAMBIA                         0                         1       47    2479  dead0plus        
Keneba            GAMBIA                         1                         0      744    2479  dead0plus        
Keneba            GAMBIA                         1                         1       41    2479  dead0plus        
MAL-ED            BANGLADESH                     0                         0      167     265  dead0plus        
MAL-ED            BANGLADESH                     0                         1        0     265  dead0plus        
MAL-ED            BANGLADESH                     1                         0       95     265  dead0plus        
MAL-ED            BANGLADESH                     1                         1        3     265  dead0plus        
MAL-ED            INDIA                          0                         0      158     251  dead0plus        
MAL-ED            INDIA                          0                         1        1     251  dead0plus        
MAL-ED            INDIA                          1                         0       91     251  dead0plus        
MAL-ED            INDIA                          1                         1        1     251  dead0plus        
MAL-ED            PERU                           0                         0      171     303  dead0plus        
MAL-ED            PERU                           0                         1        1     303  dead0plus        
MAL-ED            PERU                           1                         0      130     303  dead0plus        
MAL-ED            PERU                           1                         1        1     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         0      194     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         0      119     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      148     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        1     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      111     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        2     262  dead0plus        
PROVIDE           BANGLADESH                     0                         0      527     700  dead0plus        
PROVIDE           BANGLADESH                     0                         1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                         0      168     700  dead0plus        
PROVIDE           BANGLADESH                     1                         1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                         0      853    1532  dead0plus        
SAS-CompFeed      INDIA                          0                         1       14    1532  dead0plus        
SAS-CompFeed      INDIA                          1                         0      629    1532  dead0plus        
SAS-CompFeed      INDIA                          1                         1       36    1532  dead0plus        
SAS-FoodSuppl     INDIA                          0                         0      226     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                         1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         0      186     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1905    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      490    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                         0     2265    3898  dead0plus        
VITAMIN-A         INDIA                          0                         1       29    3898  dead0plus        
VITAMIN-A         INDIA                          1                         0     1556    3898  dead0plus        
VITAMIN-A         INDIA                          1                         1       48    3898  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         0     9419   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         1      632   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         0     3526   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         1      483   14060  dead0plus        


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
![](/tmp/9bcc4356-49c5-4e04-8119-3e804dc3b445/3b062d43-ae73-47d2-aeef-c362e43289b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9bcc4356-49c5-4e04-8119-3e804dc3b445/3b062d43-ae73-47d2-aeef-c362e43289b6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9bcc4356-49c5-4e04-8119-3e804dc3b445/3b062d43-ae73-47d2-aeef-c362e43289b6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9bcc4356-49c5-4e04-8119-3e804dc3b445/3b062d43-ae73-47d2-aeef-c362e43289b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0572031   0.0443833   0.0700229
iLiNS-DOSE     MALAWI       1                    NA                0.0717778   0.0500544   0.0935013
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293332   0.0180700   0.0405963
iLiNS-DYAD-M   MALAWI       1                    NA                0.0553227   0.0311975   0.0794479
JiVitA-3       BANGLADESH   0                    NA                0.0188630   0.0165407   0.0211852
JiVitA-3       BANGLADESH   1                    NA                0.0461470   0.0418474   0.0504467
JiVitA-4       BANGLADESH   0                    NA                0.0062209   0.0030250   0.0094168
JiVitA-4       BANGLADESH   1                    NA                0.0135867   0.0086403   0.0185331
Keneba         GAMBIA       0                    NA                0.0271222   0.0194390   0.0348054
Keneba         GAMBIA       1                    NA                0.0500861   0.0346987   0.0654735
SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
VITAMIN-A      INDIA        0                    NA                0.0125778   0.0080046   0.0171509
VITAMIN-A      INDIA        1                    NA                0.0300656   0.0217180   0.0384133
ZVITAMBO       ZIMBABWE     0                    NA                0.0624308   0.0576943   0.0671673
ZVITAMBO       ZIMBABWE     1                    NA                0.1164514   0.1062478   0.1266551


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0361041   0.0255050   0.0467032
JiVitA-3       BANGLADESH   NA                   NA                0.0309593   0.0288157   0.0331029
JiVitA-4       BANGLADESH   NA                   NA                0.0091082   0.0063617   0.0118546
Keneba         GAMBIA       NA                   NA                0.0354982   0.0282128   0.0427836
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793030   0.0748364   0.0837696


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.254790   0.8608407   1.829022
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.886011   1.0549431   3.371783
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.446435   2.0983506   2.852262
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.184034   1.1647821   4.095190
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.846681   1.2154194   2.805805
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502249   5.793749
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.390379   1.5128961   3.776803
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.865287   1.6624046   2.092930


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0056761   -0.0021046   0.0134569
iLiNS-DYAD-M   MALAWI       0                    NA                0.0067710   -0.0007509   0.0142928
JiVitA-3       BANGLADESH   0                    NA                0.0120963    0.0099819   0.0142108
JiVitA-4       BANGLADESH   0                    NA                0.0028872    0.0005880   0.0051864
Keneba         GAMBIA       0                    NA                0.0083760    0.0028519   0.0139001
SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
VITAMIN-A      INDIA        0                    NA                0.0071760    0.0032536   0.0110983
ZVITAMBO       ZIMBABWE     0                    NA                0.0168722    0.0136426   0.0201017


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0902702   -0.0412383   0.2051692
iLiNS-DYAD-M   MALAWI       0                    NA                0.1875399   -0.0404537   0.3655734
JiVitA-3       BANGLADESH   0                    NA                0.3907173    0.3249620   0.4500675
JiVitA-4       BANGLADESH   0                    NA                0.3169947    0.0140551   0.5268536
Keneba         GAMBIA       0                    NA                0.2359550    0.0724086   0.3706660
SAS-CompFeed   INDIA        0                    NA                0.4886157    0.1984826   0.6737264
VITAMIN-A      INDIA        0                    NA                0.3632709    0.1520957   0.5218517
ZVITAMBO       ZIMBABWE     0                    NA                0.2127558    0.1726093   0.2509543

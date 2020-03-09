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

**Outcome Variable:** dead6plus

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

studyid           country                        ever_stunted06    dead6plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0      295     336
Burkina Faso Zn   BURKINA FASO                   0                         1        2     336
Burkina Faso Zn   BURKINA FASO                   1                         0       39     336
Burkina Faso Zn   BURKINA FASO                   1                         1        0     336
EE                PAKISTAN                       0                         0       91     374
EE                PAKISTAN                       0                         1        0     374
EE                PAKISTAN                       1                         0      279     374
EE                PAKISTAN                       1                         1        4     374
GMS-Nepal         NEPAL                          0                         0      398     592
GMS-Nepal         NEPAL                          0                         1        1     592
GMS-Nepal         NEPAL                          1                         0      192     592
GMS-Nepal         NEPAL                          1                         1        1     592
iLiNS-DOSE        MALAWI                         0                         0     1156    1756
iLiNS-DOSE        MALAWI                         0                         1       73    1756
iLiNS-DOSE        MALAWI                         1                         0      487    1756
iLiNS-DOSE        MALAWI                         1                         1       40    1756
iLiNS-DYAD-M      MALAWI                         0                         0      810    1148
iLiNS-DYAD-M      MALAWI                         0                         1       15    1148
iLiNS-DYAD-M      MALAWI                         1                         0      310    1148
iLiNS-DYAD-M      MALAWI                         1                         1       13    1148
JiVitA-3          BANGLADESH                     0                         0    11895   21009
JiVitA-3          BANGLADESH                     0                         1      121   21009
JiVitA-3          BANGLADESH                     1                         0     8804   21009
JiVitA-3          BANGLADESH                     1                         1      189   21009
JiVitA-4          BANGLADESH                     0                         0     3210    5260
JiVitA-4          BANGLADESH                     0                         1       20    5260
JiVitA-4          BANGLADESH                     1                         0     2002    5260
JiVitA-4          BANGLADESH                     1                         1       28    5260
Keneba            GAMBIA                         0                         0     1535    2312
Keneba            GAMBIA                         0                         1       35    2312
Keneba            GAMBIA                         1                         0      709    2312
Keneba            GAMBIA                         1                         1       33    2312
MAL-ED            BANGLADESH                     0                         0      155     240
MAL-ED            BANGLADESH                     0                         1        0     240
MAL-ED            BANGLADESH                     1                         0       85     240
MAL-ED            BANGLADESH                     1                         1        0     240
MAL-ED            INDIA                          0                         0      149     235
MAL-ED            INDIA                          0                         1        0     235
MAL-ED            INDIA                          1                         0       86     235
MAL-ED            INDIA                          1                         1        0     235
MAL-ED            PERU                           0                         0      149     273
MAL-ED            PERU                           0                         1        0     273
MAL-ED            PERU                           1                         0      123     273
MAL-ED            PERU                           1                         1        1     273
MAL-ED            SOUTH AFRICA                   0                         0      155     261
MAL-ED            SOUTH AFRICA                   0                         1        0     261
MAL-ED            SOUTH AFRICA                   1                         0      106     261
MAL-ED            SOUTH AFRICA                   1                         1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      140     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      105     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
PROVIDE           BANGLADESH                     0                         0      455     617
PROVIDE           BANGLADESH                     0                         1        2     617
PROVIDE           BANGLADESH                     1                         0      159     617
PROVIDE           BANGLADESH                     1                         1        1     617
SAS-CompFeed      INDIA                          0                         0      796    1388
SAS-CompFeed      INDIA                          0                         1        2    1388
SAS-CompFeed      INDIA                          1                         0      580    1388
SAS-CompFeed      INDIA                          1                         1       10    1388
SAS-FoodSuppl     INDIA                          0                         0      214     402
SAS-FoodSuppl     INDIA                          0                         1        1     402
SAS-FoodSuppl     INDIA                          1                         0      184     402
SAS-FoodSuppl     INDIA                          1                         1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1651    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      445    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096
VITAMIN-A         INDIA                          0                         0     2094    3605
VITAMIN-A         INDIA                          0                         1       11    3605
VITAMIN-A         INDIA                          1                         0     1480    3605
VITAMIN-A         INDIA                          1                         1       20    3605
ZVITAMBO          ZIMBABWE                       0                         0     8019   11694
ZVITAMBO          ZIMBABWE                       0                         1      199   11694
ZVITAMBO          ZIMBABWE                       1                         0     3260   11694
ZVITAMBO          ZIMBABWE                       1                         1      216   11694


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
![](/tmp/b8b5460f-32e2-4018-b809-50251ac08215/506400ec-633f-45eb-9197-ff3bec92c173/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8b5460f-32e2-4018-b809-50251ac08215/506400ec-633f-45eb-9197-ff3bec92c173/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8b5460f-32e2-4018-b809-50251ac08215/506400ec-633f-45eb-9197-ff3bec92c173/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8b5460f-32e2-4018-b809-50251ac08215/506400ec-633f-45eb-9197-ff3bec92c173/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0589544   0.0457335   0.0721753
iLiNS-DOSE     MALAWI       1                    NA                0.0741610   0.0511913   0.0971307
iLiNS-DYAD-M   MALAWI       0                    NA                0.0183445   0.0092377   0.0274512
iLiNS-DYAD-M   MALAWI       1                    NA                0.0415024   0.0200448   0.0629600
JiVitA-3       BANGLADESH   0                    NA                0.0102525   0.0083395   0.0121655
JiVitA-3       BANGLADESH   1                    NA                0.0203021   0.0169399   0.0236643
JiVitA-4       BANGLADESH   0                    NA                0.0062372   0.0030480   0.0094264
JiVitA-4       BANGLADESH   1                    NA                0.0136696   0.0087093   0.0186298
Keneba         GAMBIA       0                    NA                0.0225552   0.0150898   0.0300205
Keneba         GAMBIA       1                    NA                0.0401838   0.0263081   0.0540595
VITAMIN-A      INDIA        0                    NA                0.0052456   0.0021400   0.0083512
VITAMIN-A      INDIA        1                    NA                0.0132757   0.0074509   0.0191006
ZVITAMBO       ZIMBABWE     0                    NA                0.0243540   0.0210052   0.0277029
ZVITAMBO       ZIMBABWE     1                    NA                0.0587575   0.0508218   0.0666932


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0243902   0.0154631   0.0333174
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.257939   0.8580146   1.844270
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 2.262393   1.1045132   4.634096
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.980208   1.5410434   2.544524
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.191610   1.1718768   4.098684
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.781580   1.1043353   2.874153
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.530833   1.2112380   5.288076
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.412639   1.9900795   2.924921


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0053964   -0.0025853   0.0133782
iLiNS-DYAD-M   MALAWI       0                    NA                0.0060458   -0.0005385   0.0126301
JiVitA-3       BANGLADESH   0                    NA                0.0045031    0.0028940   0.0061121
JiVitA-4       BANGLADESH   0                    NA                0.0028883    0.0005921   0.0051844
Keneba         GAMBIA       0                    NA                0.0068566    0.0013757   0.0123375
VITAMIN-A      INDIA        0                    NA                0.0033536    0.0006037   0.0061034
ZVITAMBO       ZIMBABWE     0                    NA                0.0111342    0.0085096   0.0137589


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0838592   -0.0480594   0.1991733
iLiNS-DYAD-M   MALAWI       0                    NA                0.2478766   -0.0539380   0.4632610
JiVitA-3       BANGLADESH   0                    NA                0.3051773    0.1933578   0.4014961
JiVitA-4       BANGLADESH   0                    NA                0.3165046    0.0151280   0.5256582
Keneba         GAMBIA       0                    NA                0.2331249    0.0322073   0.3923311
VITAMIN-A      INDIA        0                    NA                0.3899876    0.0189466   0.6206984
ZVITAMBO       ZIMBABWE     0                    NA                0.3137444    0.2422535   0.3784903

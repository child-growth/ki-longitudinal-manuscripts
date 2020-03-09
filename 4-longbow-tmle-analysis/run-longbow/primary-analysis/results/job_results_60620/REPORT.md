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

studyid           country                        ever_stunted06    dead0plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0      297     338
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338
Burkina Faso Zn   BURKINA FASO                   1                         0       39     338
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338
EE                PAKISTAN                       0                         0       93     379
EE                PAKISTAN                       0                         1        0     379
EE                PAKISTAN                       1                         0      282     379
EE                PAKISTAN                       1                         1        4     379
GMS-Nepal         NEPAL                          0                         0      473     698
GMS-Nepal         NEPAL                          0                         1        3     698
GMS-Nepal         NEPAL                          1                         0      217     698
GMS-Nepal         NEPAL                          1                         1        5     698
iLiNS-DOSE        MALAWI                         0                         0     1194    1813
iLiNS-DOSE        MALAWI                         0                         1       73    1813
iLiNS-DOSE        MALAWI                         1                         0      505    1813
iLiNS-DOSE        MALAWI                         1                         1       41    1813
iLiNS-DYAD-M      MALAWI                         0                         0      833    1191
iLiNS-DYAD-M      MALAWI                         0                         1       25    1191
iLiNS-DYAD-M      MALAWI                         1                         0      315    1191
iLiNS-DYAD-M      MALAWI                         1                         1       18    1191
JiVitA-3          BANGLADESH                     0                         0    15070   27197
JiVitA-3          BANGLADESH                     0                         1      277   27197
JiVitA-3          BANGLADESH                     1                         0    11285   27197
JiVitA-3          BANGLADESH                     1                         1      565   27197
JiVitA-4          BANGLADESH                     0                         0     3217    5270
JiVitA-4          BANGLADESH                     0                         1       20    5270
JiVitA-4          BANGLADESH                     1                         0     2005    5270
JiVitA-4          BANGLADESH                     1                         1       28    5270
Keneba            GAMBIA                         0                         0     1647    2479
Keneba            GAMBIA                         0                         1       47    2479
Keneba            GAMBIA                         1                         0      744    2479
Keneba            GAMBIA                         1                         1       41    2479
MAL-ED            BANGLADESH                     0                         0      167     265
MAL-ED            BANGLADESH                     0                         1        0     265
MAL-ED            BANGLADESH                     1                         0       95     265
MAL-ED            BANGLADESH                     1                         1        3     265
MAL-ED            INDIA                          0                         0      158     251
MAL-ED            INDIA                          0                         1        1     251
MAL-ED            INDIA                          1                         0       91     251
MAL-ED            INDIA                          1                         1        1     251
MAL-ED            PERU                           0                         0      171     303
MAL-ED            PERU                           0                         1        1     303
MAL-ED            PERU                           1                         0      130     303
MAL-ED            PERU                           1                         1        1     303
MAL-ED            SOUTH AFRICA                   0                         0      194     314
MAL-ED            SOUTH AFRICA                   0                         1        0     314
MAL-ED            SOUTH AFRICA                   1                         0      119     314
MAL-ED            SOUTH AFRICA                   1                         1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      148     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        1     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      111     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        2     262
PROVIDE           BANGLADESH                     0                         0      527     700
PROVIDE           BANGLADESH                     0                         1        4     700
PROVIDE           BANGLADESH                     1                         0      168     700
PROVIDE           BANGLADESH                     1                         1        1     700
SAS-CompFeed      INDIA                          0                         0      853    1532
SAS-CompFeed      INDIA                          0                         1       14    1532
SAS-CompFeed      INDIA                          1                         0      629    1532
SAS-CompFeed      INDIA                          1                         1       36    1532
SAS-FoodSuppl     INDIA                          0                         0      226     418
SAS-FoodSuppl     INDIA                          0                         1        2     418
SAS-FoodSuppl     INDIA                          1                         0      186     418
SAS-FoodSuppl     INDIA                          1                         1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1905    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      490    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
VITAMIN-A         INDIA                          0                         0     2265    3898
VITAMIN-A         INDIA                          0                         1       29    3898
VITAMIN-A         INDIA                          1                         0     1556    3898
VITAMIN-A         INDIA                          1                         1       48    3898
ZVITAMBO          ZIMBABWE                       0                         0     9419   14060
ZVITAMBO          ZIMBABWE                       0                         1      632   14060
ZVITAMBO          ZIMBABWE                       1                         0     3526   14060
ZVITAMBO          ZIMBABWE                       1                         1      483   14060


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
![](/tmp/ace3eb92-2bab-49ef-8fcd-45c7942fb214/e1c7a969-e345-4a6b-b4cf-ec54f587a09b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ace3eb92-2bab-49ef-8fcd-45c7942fb214/e1c7a969-e345-4a6b-b4cf-ec54f587a09b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ace3eb92-2bab-49ef-8fcd-45c7942fb214/e1c7a969-e345-4a6b-b4cf-ec54f587a09b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ace3eb92-2bab-49ef-8fcd-45c7942fb214/e1c7a969-e345-4a6b-b4cf-ec54f587a09b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0570569   0.0442456   0.0698681
iLiNS-DOSE     MALAWI       1                    NA                0.0744480   0.0519831   0.0969129
iLiNS-DYAD-M   MALAWI       0                    NA                0.0293017   0.0180319   0.0405715
iLiNS-DYAD-M   MALAWI       1                    NA                0.0533221   0.0289964   0.0776477
JiVitA-3       BANGLADESH   0                    NA                0.0189677   0.0166389   0.0212965
JiVitA-3       BANGLADESH   1                    NA                0.0457634   0.0415327   0.0499940
JiVitA-4       BANGLADESH   0                    NA                0.0062328   0.0030418   0.0094237
JiVitA-4       BANGLADESH   1                    NA                0.0135717   0.0086339   0.0185095
Keneba         GAMBIA       0                    NA                0.0278279   0.0199023   0.0357536
Keneba         GAMBIA       1                    NA                0.0493609   0.0342361   0.0644856
SAS-CompFeed   INDIA        0                    NA                0.0166901   0.0102506   0.0231296
SAS-CompFeed   INDIA        1                    NA                0.0516072   0.0257083   0.0775060
VITAMIN-A      INDIA        0                    NA                0.0126225   0.0080535   0.0171914
VITAMIN-A      INDIA        1                    NA                0.0300753   0.0217265   0.0384240
ZVITAMBO       ZIMBABWE     0                    NA                0.0626362   0.0578885   0.0673839
ZVITAMBO       ZIMBABWE     1                    NA                0.1186056   0.1082787   0.1289324


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
iLiNS-DOSE     MALAWI       1                    0                 1.304804   0.8955829   1.901011
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.819760   1.0018222   3.305504
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.412696   2.0694531   2.812870
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.177486   1.1629382   4.077125
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.773789   1.1669581   2.696180
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.092085   1.6502249   5.793749
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.382679   1.5098001   3.760207
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.893562   1.6883461   2.123721


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0058223   -0.0019692   0.0136139
iLiNS-DYAD-M   MALAWI       0                    NA                0.0068024   -0.0007155   0.0143203
JiVitA-3       BANGLADESH   0                    NA                0.0119916    0.0098682   0.0141149
JiVitA-4       BANGLADESH   0                    NA                0.0028754    0.0005783   0.0051725
Keneba         GAMBIA       0                    NA                0.0076703    0.0020075   0.0133331
SAS-CompFeed   INDIA        0                    NA                0.0159470    0.0040213   0.0278727
VITAMIN-A      INDIA        0                    NA                0.0071313    0.0032099   0.0110527
ZVITAMBO       ZIMBABWE     0                    NA                0.0166668    0.0134325   0.0199010


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0925957   -0.0390960   0.2075972
iLiNS-DYAD-M   MALAWI       0                    NA                0.1884113   -0.0395662   0.3663931
JiVitA-3       BANGLADESH   0                    NA                0.3873334    0.3212719   0.4469651
JiVitA-4       BANGLADESH   0                    NA                0.3156958    0.0135447   0.5252981
Keneba         GAMBIA       0                    NA                0.2160747    0.0464230   0.3555435
SAS-CompFeed   INDIA        0                    NA                0.4886157    0.1984826   0.6737264
VITAMIN-A      INDIA        0                    NA                0.3610088    0.1501276   0.5195635
ZVITAMBO       ZIMBABWE     0                    NA                0.2101656    0.1699262   0.2484543

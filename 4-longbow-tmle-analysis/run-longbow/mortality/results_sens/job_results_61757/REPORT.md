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

studyid          country                        ever_stunted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                    0       93     379  dead             
EE               PAKISTAN                       0                    1        0     379  dead             
EE               PAKISTAN                       1                    0      282     379  dead             
EE               PAKISTAN                       1                    1        4     379  dead             
GMS-Nepal        NEPAL                          0                    0      472     697  dead             
GMS-Nepal        NEPAL                          0                    1        3     697  dead             
GMS-Nepal        NEPAL                          1                    0      217     697  dead             
GMS-Nepal        NEPAL                          1                    1        5     697  dead             
iLiNS-DYAD-M     MALAWI                         0                    0      753    1063  dead             
iLiNS-DYAD-M     MALAWI                         0                    1       20    1063  dead             
iLiNS-DYAD-M     MALAWI                         1                    0      278    1063  dead             
iLiNS-DYAD-M     MALAWI                         1                    1       12    1063  dead             
JiVitA-3         BANGLADESH                     0                    0    13668   24995  dead             
JiVitA-3         BANGLADESH                     0                    1      247   24995  dead             
JiVitA-3         BANGLADESH                     1                    0    10564   24995  dead             
JiVitA-3         BANGLADESH                     1                    1      516   24995  dead             
JiVitA-4         BANGLADESH                     0                    0     2236    3788  dead             
JiVitA-4         BANGLADESH                     0                    1       14    3788  dead             
JiVitA-4         BANGLADESH                     1                    0     1523    3788  dead             
JiVitA-4         BANGLADESH                     1                    1       15    3788  dead             
Keneba           GAMBIA                         0                    0     1228    1833  dead             
Keneba           GAMBIA                         0                    1       19    1833  dead             
Keneba           GAMBIA                         1                    0      562    1833  dead             
Keneba           GAMBIA                         1                    1       24    1833  dead             
MAL-ED           BANGLADESH                     0                    0      167     265  dead             
MAL-ED           BANGLADESH                     0                    1        0     265  dead             
MAL-ED           BANGLADESH                     1                    0       95     265  dead             
MAL-ED           BANGLADESH                     1                    1        3     265  dead             
MAL-ED           INDIA                          0                    0      158     251  dead             
MAL-ED           INDIA                          0                    1        1     251  dead             
MAL-ED           INDIA                          1                    0       91     251  dead             
MAL-ED           INDIA                          1                    1        1     251  dead             
MAL-ED           PERU                           0                    0      171     303  dead             
MAL-ED           PERU                           0                    1        1     303  dead             
MAL-ED           PERU                           1                    0      130     303  dead             
MAL-ED           PERU                           1                    1        1     303  dead             
MAL-ED           SOUTH AFRICA                   0                    0      194     314  dead             
MAL-ED           SOUTH AFRICA                   0                    1        0     314  dead             
MAL-ED           SOUTH AFRICA                   1                    0      119     314  dead             
MAL-ED           SOUTH AFRICA                   1                    1        1     314  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      148     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        1     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0      111     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     262  dead             
PROVIDE          BANGLADESH                     0                    0      527     700  dead             
PROVIDE          BANGLADESH                     0                    1        4     700  dead             
PROVIDE          BANGLADESH                     1                    0      169     700  dead             
PROVIDE          BANGLADESH                     1                    1        0     700  dead             
SAS-CompFeed     INDIA                          0                    0      823    1474  dead             
SAS-CompFeed     INDIA                          0                    1       14    1474  dead             
SAS-CompFeed     INDIA                          1                    0      602    1474  dead             
SAS-CompFeed     INDIA                          1                    1       35    1474  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        1       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        0       1  dead             
ZVITAMBO         ZIMBABWE                       0                    0     9301   13875  dead             
ZVITAMBO         ZIMBABWE                       0                    1      619   13875  dead             
ZVITAMBO         ZIMBABWE                       1                    0     3477   13875  dead             
ZVITAMBO         ZIMBABWE                       1                    1      478   13875  dead             


The following strata were considered:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
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
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
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
![](/tmp/222f4bec-71cb-4a84-95f1-d5a01c1e1a35/41399989-9774-4ada-9637-1adb105746e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/222f4bec-71cb-4a84-95f1-d5a01c1e1a35/41399989-9774-4ada-9637-1adb105746e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/222f4bec-71cb-4a84-95f1-d5a01c1e1a35/41399989-9774-4ada-9637-1adb105746e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/222f4bec-71cb-4a84-95f1-d5a01c1e1a35/41399989-9774-4ada-9637-1adb105746e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0258655   0.0146592   0.0370718
iLiNS-DYAD-M   MALAWI       1                    NA                0.0411907   0.0181862   0.0641951
JiVitA-3       BANGLADESH   0                    NA                0.0187493   0.0162587   0.0212400
JiVitA-3       BANGLADESH   1                    NA                0.0448702   0.0404897   0.0492506
JiVitA-4       BANGLADESH   0                    NA                0.0062332   0.0026248   0.0098415
JiVitA-4       BANGLADESH   1                    NA                0.0097082   0.0050684   0.0143480
Keneba         GAMBIA       0                    NA                0.0152589   0.0084555   0.0220624
Keneba         GAMBIA       1                    NA                0.0406474   0.0246794   0.0566154
SAS-CompFeed   INDIA        0                    NA                0.0172924   0.0108413   0.0237436
SAS-CompFeed   INDIA        1                    NA                0.0522199   0.0265911   0.0778487
ZVITAMBO       ZIMBABWE     0                    NA                0.0619844   0.0572184   0.0667504
ZVITAMBO       ZIMBABWE     1                    NA                0.1173086   0.1071126   0.1275045


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0301035   0.0198267   0.0403803
JiVitA-3       BANGLADESH   NA                   NA                0.0305261   0.0282868   0.0327654
JiVitA-4       BANGLADESH   NA                   NA                0.0076558   0.0047643   0.0105472
Keneba         GAMBIA       NA                   NA                0.0234588   0.0165280   0.0303896
SAS-CompFeed   INDIA        NA                   NA                0.0332429   0.0211843   0.0453014
ZVITAMBO       ZIMBABWE     NA                   NA                0.0790631   0.0745730   0.0835531


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.592494   0.7852312   3.229671
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.393162   2.0245596   2.828874
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.557511   0.7406201   3.275421
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.663842   1.4702704   4.826359
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.019813   1.6543273   5.512372
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.892550   1.6866208   2.123622


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0042380   -0.0027418   0.0112177
JiVitA-3       BANGLADESH   0                    NA                0.0117768    0.0094725   0.0140811
JiVitA-4       BANGLADESH   0                    NA                0.0014226   -0.0009750   0.0038202
Keneba         GAMBIA       0                    NA                0.0081999    0.0025932   0.0138065
SAS-CompFeed   INDIA        0                    NA                0.0159504    0.0042665   0.0276344
ZVITAMBO       ZIMBABWE     0                    NA                0.0170787    0.0138151   0.0203423


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.1407806   -0.1192396   0.3403932
JiVitA-3       BANGLADESH   0                    NA                0.3857939    0.3125101   0.4512660
JiVitA-4       BANGLADESH   0                    NA                0.1858206   -0.1995682   0.4473944
Keneba         GAMBIA       0                    NA                0.3495434    0.0931878   0.5334273
SAS-CompFeed   INDIA        0                    NA                0.4798155    0.2022181   0.6608197
ZVITAMBO       ZIMBABWE     0                    NA                0.2160131    0.1753105   0.2547068

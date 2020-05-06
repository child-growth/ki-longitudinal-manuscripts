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

studyid          country                        ever_underweight06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  -------------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                        0      103     380  dead             
EE               PAKISTAN                       0                        1        0     380  dead             
EE               PAKISTAN                       1                        0      273     380  dead             
EE               PAKISTAN                       1                        1        4     380  dead             
GMS-Nepal        NEPAL                          0                        0      388     697  dead             
GMS-Nepal        NEPAL                          0                        1        2     697  dead             
GMS-Nepal        NEPAL                          1                        0      302     697  dead             
GMS-Nepal        NEPAL                          1                        1        5     697  dead             
iLiNS-DYAD-M     MALAWI                         0                        0      911    1180  dead             
iLiNS-DYAD-M     MALAWI                         0                        1       20    1180  dead             
iLiNS-DYAD-M     MALAWI                         1                        0      229    1180  dead             
iLiNS-DYAD-M     MALAWI                         1                        1       20    1180  dead             
JiVitA-3         BANGLADESH                     0                        0    13136   25303  dead             
JiVitA-3         BANGLADESH                     0                        1      231   25303  dead             
JiVitA-3         BANGLADESH                     1                        0    11372   25303  dead             
JiVitA-3         BANGLADESH                     1                        1      564   25303  dead             
JiVitA-4         BANGLADESH                     0                        0     2426    3819  dead             
JiVitA-4         BANGLADESH                     0                        1       10    3819  dead             
JiVitA-4         BANGLADESH                     1                        0     1364    3819  dead             
JiVitA-4         BANGLADESH                     1                        1       19    3819  dead             
Keneba           GAMBIA                         0                        0     1728    2242  dead             
Keneba           GAMBIA                         0                        1       29    2242  dead             
Keneba           GAMBIA                         1                        0      464    2242  dead             
Keneba           GAMBIA                         1                        1       21    2242  dead             
MAL-ED           BANGLADESH                     0                        0      174     265  dead             
MAL-ED           BANGLADESH                     0                        1        1     265  dead             
MAL-ED           BANGLADESH                     1                        0       88     265  dead             
MAL-ED           BANGLADESH                     1                        1        2     265  dead             
MAL-ED           INDIA                          0                        0      144     251  dead             
MAL-ED           INDIA                          0                        1        1     251  dead             
MAL-ED           INDIA                          1                        0      105     251  dead             
MAL-ED           INDIA                          1                        1        1     251  dead             
MAL-ED           PERU                           0                        0      251     303  dead             
MAL-ED           PERU                           0                        1        2     303  dead             
MAL-ED           PERU                           1                        0       50     303  dead             
MAL-ED           PERU                           1                        1        0     303  dead             
MAL-ED           SOUTH AFRICA                   0                        0      258     314  dead             
MAL-ED           SOUTH AFRICA                   0                        1        0     314  dead             
MAL-ED           SOUTH AFRICA                   1                        0       55     314  dead             
MAL-ED           SOUTH AFRICA                   1                        1        1     314  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      214     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        2     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       45     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        1     262  dead             
PROVIDE          BANGLADESH                     0                        0      470     700  dead             
PROVIDE          BANGLADESH                     0                        1        3     700  dead             
PROVIDE          BANGLADESH                     1                        0      226     700  dead             
PROVIDE          BANGLADESH                     1                        1        1     700  dead             
SAS-CompFeed     INDIA                          0                        0      837    1478  dead             
SAS-CompFeed     INDIA                          0                        1       16    1478  dead             
SAS-CompFeed     INDIA                          1                        0      592    1478  dead             
SAS-CompFeed     INDIA                          1                        1       33    1478  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                        0     2087    2370  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                        1        1    2370  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                        0      282    2370  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                        1        0    2370  dead             
VITAMIN-A        INDIA                          0                        0     1692    3894  dead             
VITAMIN-A        INDIA                          0                        1       10    3894  dead             
VITAMIN-A        INDIA                          1                        0     2125    3894  dead             
VITAMIN-A        INDIA                          1                        1       67    3894  dead             
ZVITAMBO         ZIMBABWE                       0                        0    10921   14041  dead             
ZVITAMBO         ZIMBABWE                       0                        1      562   14041  dead             
ZVITAMBO         ZIMBABWE                       1                        0     2015   14041  dead             
ZVITAMBO         ZIMBABWE                       1                        1      543   14041  dead             


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
* studyid: VITAMIN-A, country: INDIA
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
![](/tmp/6108f834-8e0e-4e56-a0c3-99f39c5df411/860a3bca-5993-40d2-9005-8b2829c9c5fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6108f834-8e0e-4e56-a0c3-99f39c5df411/860a3bca-5993-40d2-9005-8b2829c9c5fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6108f834-8e0e-4e56-a0c3-99f39c5df411/860a3bca-5993-40d2-9005-8b2829c9c5fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6108f834-8e0e-4e56-a0c3-99f39c5df411/860a3bca-5993-40d2-9005-8b2829c9c5fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0214096   0.0120988   0.0307205
iLiNS-DYAD-M   MALAWI       1                    NA                0.0792216   0.0457930   0.1126502
JiVitA-3       BANGLADESH   0                    NA                0.0184129   0.0159472   0.0208786
JiVitA-3       BANGLADESH   1                    NA                0.0447002   0.0406946   0.0487059
JiVitA-4       BANGLADESH   0                    NA                0.0040702   0.0013153   0.0068250
JiVitA-4       BANGLADESH   1                    NA                0.0136072   0.0074374   0.0197771
Keneba         GAMBIA       0                    NA                0.0167779   0.0107105   0.0228453
Keneba         GAMBIA       1                    NA                0.0454638   0.0259267   0.0650009
SAS-CompFeed   INDIA        0                    NA                0.0191432   0.0111394   0.0271469
SAS-CompFeed   INDIA        1                    NA                0.0518105   0.0300234   0.0735977
VITAMIN-A      INDIA        0                    NA                0.0059468   0.0022703   0.0096232
VITAMIN-A      INDIA        1                    NA                0.0307136   0.0234789   0.0379483
ZVITAMBO       ZIMBABWE     0                    NA                0.0493386   0.0453938   0.0532834
ZVITAMBO       ZIMBABWE     1                    NA                0.2043809   0.1886312   0.2201307


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0338983   0.0235685   0.0442281
JiVitA-3       BANGLADESH   NA                   NA                0.0314192   0.0291311   0.0337073
JiVitA-4       BANGLADESH   NA                   NA                0.0075936   0.0047070   0.0104802
Keneba         GAMBIA       NA                   NA                0.0223015   0.0161879   0.0284151
SAS-CompFeed   INDIA        NA                   NA                0.0331529   0.0210289   0.0452769
VITAMIN-A      INDIA        NA                   NA                0.0197740   0.0154006   0.0241474
ZVITAMBO       ZIMBABWE     NA                   NA                0.0786981   0.0742441   0.0831521


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.700277   2.016099    6.791356
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.427653   2.072378    2.843834
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.343173   1.487908    7.511762
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.709750   1.544461    4.754245
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 2.706478   1.749307    4.187385
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.164760   2.664810   10.009998
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.142417   3.709049    4.626421


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0124887   0.0049455   0.0200318
JiVitA-3       BANGLADESH   0                    NA                0.0130063   0.0106530   0.0153595
JiVitA-4       BANGLADESH   0                    NA                0.0035235   0.0010640   0.0059829
Keneba         GAMBIA       0                    NA                0.0055237   0.0013251   0.0097222
SAS-CompFeed   INDIA        0                    NA                0.0140097   0.0050366   0.0229829
VITAMIN-A      INDIA        0                    NA                0.0138272   0.0092460   0.0184085
ZVITAMBO       ZIMBABWE     0                    NA                0.0293595   0.0262281   0.0324910


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.3684156   0.1419327   0.5351194
JiVitA-3       BANGLADESH   0                    NA                0.4139590   0.3424663   0.4776784
JiVitA-4       BANGLADESH   0                    NA                0.4640023   0.0874098   0.6851888
Keneba         GAMBIA       0                    NA                0.2476809   0.0493228   0.4046517
SAS-CompFeed   INDIA        0                    NA                0.4225798   0.2042389   0.5810123
VITAMIN-A      INDIA        0                    NA                0.6992634   0.4649105   0.8309768
ZVITAMBO       ZIMBABWE     0                    NA                0.3730653   0.3377431   0.4065036

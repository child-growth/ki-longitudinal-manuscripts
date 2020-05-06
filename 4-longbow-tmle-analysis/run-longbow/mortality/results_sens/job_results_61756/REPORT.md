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

**Intervention Variable:** pers_wasted06

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

studyid          country                        pers_wasted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                   0      307     338  dead             
EE               PAKISTAN                       0                   1        4     338  dead             
EE               PAKISTAN                       1                   0       27     338  dead             
EE               PAKISTAN                       1                   1        0     338  dead             
GMS-Nepal        NEPAL                          0                   0      578     667  dead             
GMS-Nepal        NEPAL                          0                   1        5     667  dead             
GMS-Nepal        NEPAL                          1                   0       82     667  dead             
GMS-Nepal        NEPAL                          1                   1        2     667  dead             
iLiNS-DYAD-M     MALAWI                         0                   0      953    1031  dead             
iLiNS-DYAD-M     MALAWI                         0                   1       29    1031  dead             
iLiNS-DYAD-M     MALAWI                         1                   0       47    1031  dead             
iLiNS-DYAD-M     MALAWI                         1                   1        2    1031  dead             
JiVitA-3         BANGLADESH                     0                   0    19810   21579  dead             
JiVitA-3         BANGLADESH                     0                   1      355   21579  dead             
JiVitA-3         BANGLADESH                     1                   0     1338   21579  dead             
JiVitA-3         BANGLADESH                     1                   1       76   21579  dead             
JiVitA-4         BANGLADESH                     0                   0     3087    3313  dead             
JiVitA-4         BANGLADESH                     0                   1       18    3313  dead             
JiVitA-4         BANGLADESH                     1                   0      205    3313  dead             
JiVitA-4         BANGLADESH                     1                   1        3    3313  dead             
Keneba           GAMBIA                         0                   0     1674    1778  dead             
Keneba           GAMBIA                         0                   1       35    1778  dead             
Keneba           GAMBIA                         1                   0       66    1778  dead             
Keneba           GAMBIA                         1                   1        3    1778  dead             
MAL-ED           BANGLADESH                     0                   0      245     257  dead             
MAL-ED           BANGLADESH                     0                   1        2     257  dead             
MAL-ED           BANGLADESH                     1                   0       10     257  dead             
MAL-ED           BANGLADESH                     1                   1        0     257  dead             
MAL-ED           INDIA                          0                   0      229     249  dead             
MAL-ED           INDIA                          0                   1        2     249  dead             
MAL-ED           INDIA                          1                   0       18     249  dead             
MAL-ED           INDIA                          1                   1        0     249  dead             
MAL-ED           PERU                           0                   0      295     297  dead             
MAL-ED           PERU                           0                   1        2     297  dead             
MAL-ED           PERU                           1                   0        0     297  dead             
MAL-ED           PERU                           1                   1        0     297  dead             
MAL-ED           SOUTH AFRICA                   0                   0      303     310  dead             
MAL-ED           SOUTH AFRICA                   0                   1        0     310  dead             
MAL-ED           SOUTH AFRICA                   1                   0        7     310  dead             
MAL-ED           SOUTH AFRICA                   1                   1        0     310  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      258     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        2     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     260  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     260  dead             
PROVIDE          BANGLADESH                     0                   0      661     692  dead             
PROVIDE          BANGLADESH                     0                   1        4     692  dead             
PROVIDE          BANGLADESH                     1                   0       27     692  dead             
PROVIDE          BANGLADESH                     1                   1        0     692  dead             
SAS-CompFeed     INDIA                          0                   0     1180    1313  dead             
SAS-CompFeed     INDIA                          0                   1       20    1313  dead             
SAS-CompFeed     INDIA                          1                   0      103    1313  dead             
SAS-CompFeed     INDIA                          1                   1       10    1313  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        1       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0       1  dead             
ZVITAMBO         ZIMBABWE                       0                   0    11183   12918  dead             
ZVITAMBO         ZIMBABWE                       0                   1      762   12918  dead             
ZVITAMBO         ZIMBABWE                       1                   0      786   12918  dead             
ZVITAMBO         ZIMBABWE                       1                   1      187   12918  dead             


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
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
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
![](/tmp/574677a2-04d7-4af9-811a-33a8d7bd1c15/754b0bc1-4a33-4214-835a-c0444915dbdd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/574677a2-04d7-4af9-811a-33a8d7bd1c15/754b0bc1-4a33-4214-835a-c0444915dbdd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/574677a2-04d7-4af9-811a-33a8d7bd1c15/754b0bc1-4a33-4214-835a-c0444915dbdd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/574677a2-04d7-4af9-811a-33a8d7bd1c15/754b0bc1-4a33-4214-835a-c0444915dbdd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0176137   0.0157834   0.0194439
JiVitA-3       BANGLADESH   1                    NA                0.0535589   0.0410834   0.0660344
SAS-CompFeed   INDIA        0                    NA                0.0165972   0.0096719   0.0235225
SAS-CompFeed   INDIA        1                    NA                0.0974442   0.0342665   0.1606220
ZVITAMBO       ZIMBABWE     0                    NA                0.0640334   0.0596422   0.0684247
ZVITAMBO       ZIMBABWE     1                    NA                0.2110297   0.1809441   0.2411154


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0199731   0.0180226   0.0219237
SAS-CompFeed   INDIA        NA                   NA                0.0228484   0.0119785   0.0337184
ZVITAMBO       ZIMBABWE     NA                   NA                0.0734634   0.0689642   0.0779626


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 3.040762   2.374698    3.893646
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 5.871133   3.412442   10.101330
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 3.295617   2.814796    3.858572


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0023595    0.0015427   0.0031762
SAS-CompFeed   INDIA        0                    NA                0.0062513   -0.0000726   0.0125751
ZVITAMBO       ZIMBABWE     0                    NA                0.0094299    0.0074846   0.0113753


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1181322   0.0789049   0.1556890
SAS-CompFeed   INDIA        0                    NA                0.2735969   0.0574619   0.4401696
ZVITAMBO       ZIMBABWE     0                    NA                0.1283624   0.1024868   0.1534919

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

**Intervention Variable:** ever_sunderweight06

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

studyid          country                        ever_sunderweight06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                         0      218     380  dead             
EE               PAKISTAN                       0                         1        1     380  dead             
EE               PAKISTAN                       1                         0      158     380  dead             
EE               PAKISTAN                       1                         1        3     380  dead             
GMS-Nepal        NEPAL                          0                         0      600     697  dead             
GMS-Nepal        NEPAL                          0                         1        3     697  dead             
GMS-Nepal        NEPAL                          1                         0       90     697  dead             
GMS-Nepal        NEPAL                          1                         1        4     697  dead             
iLiNS-DYAD-M     MALAWI                         0                         0     1065    1180  dead             
iLiNS-DYAD-M     MALAWI                         0                         1       26    1180  dead             
iLiNS-DYAD-M     MALAWI                         1                         0       75    1180  dead             
iLiNS-DYAD-M     MALAWI                         1                         1       14    1180  dead             
JiVitA-3         BANGLADESH                     0                         0    20546   25303  dead             
JiVitA-3         BANGLADESH                     0                         1      402   25303  dead             
JiVitA-3         BANGLADESH                     1                         0     3962   25303  dead             
JiVitA-3         BANGLADESH                     1                         1      393   25303  dead             
JiVitA-4         BANGLADESH                     0                         0     3385    3819  dead             
JiVitA-4         BANGLADESH                     0                         1       18    3819  dead             
JiVitA-4         BANGLADESH                     1                         0      405    3819  dead             
JiVitA-4         BANGLADESH                     1                         1       11    3819  dead             
Keneba           GAMBIA                         0                         0     2050    2242  dead             
Keneba           GAMBIA                         0                         1       37    2242  dead             
Keneba           GAMBIA                         1                         0      142    2242  dead             
Keneba           GAMBIA                         1                         1       13    2242  dead             
MAL-ED           BANGLADESH                     0                         0      243     265  dead             
MAL-ED           BANGLADESH                     0                         1        2     265  dead             
MAL-ED           BANGLADESH                     1                         0       19     265  dead             
MAL-ED           BANGLADESH                     1                         1        1     265  dead             
MAL-ED           INDIA                          0                         0      217     251  dead             
MAL-ED           INDIA                          0                         1        1     251  dead             
MAL-ED           INDIA                          1                         0       32     251  dead             
MAL-ED           INDIA                          1                         1        1     251  dead             
MAL-ED           PERU                           0                         0      290     303  dead             
MAL-ED           PERU                           0                         1        2     303  dead             
MAL-ED           PERU                           1                         0       11     303  dead             
MAL-ED           PERU                           1                         1        0     303  dead             
MAL-ED           SOUTH AFRICA                   0                         0      300     314  dead             
MAL-ED           SOUTH AFRICA                   0                         1        0     314  dead             
MAL-ED           SOUTH AFRICA                   1                         0       13     314  dead             
MAL-ED           SOUTH AFRICA                   1                         1        1     314  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      251     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        2     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        8     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        1     262  dead             
PROVIDE          BANGLADESH                     0                         0      648     700  dead             
PROVIDE          BANGLADESH                     0                         1        4     700  dead             
PROVIDE          BANGLADESH                     1                         0       48     700  dead             
PROVIDE          BANGLADESH                     1                         1        0     700  dead             
SAS-CompFeed     INDIA                          0                         0     1205    1478  dead             
SAS-CompFeed     INDIA                          0                         1       25    1478  dead             
SAS-CompFeed     INDIA                          1                         0      224    1478  dead             
SAS-CompFeed     INDIA                          1                         1       24    1478  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     2301    2370  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1        1    2370  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0       68    2370  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1        0    2370  dead             
VITAMIN-A        INDIA                          0                         0     2857    3894  dead             
VITAMIN-A        INDIA                          0                         1       30    3894  dead             
VITAMIN-A        INDIA                          1                         0      960    3894  dead             
VITAMIN-A        INDIA                          1                         1       47    3894  dead             
ZVITAMBO         ZIMBABWE                       0                         0    12381   14041  dead             
ZVITAMBO         ZIMBABWE                       0                         1      805   14041  dead             
ZVITAMBO         ZIMBABWE                       1                         0      555   14041  dead             
ZVITAMBO         ZIMBABWE                       1                         1      300   14041  dead             


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
![](/tmp/2a259b5a-0ad5-4446-9300-0b0dab499ba9/14311437-5362-4b7f-8e43-5cac883cd8a3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a259b5a-0ad5-4446-9300-0b0dab499ba9/14311437-5362-4b7f-8e43-5cac883cd8a3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2a259b5a-0ad5-4446-9300-0b0dab499ba9/14311437-5362-4b7f-8e43-5cac883cd8a3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a259b5a-0ad5-4446-9300-0b0dab499ba9/14311437-5362-4b7f-8e43-5cac883cd8a3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0238430   0.0147894   0.0328966
iLiNS-DYAD-M   MALAWI       1                    NA                0.1306675   0.0613727   0.1999623
JiVitA-3       BANGLADESH   0                    NA                0.0194728   0.0176256   0.0213200
JiVitA-3       BANGLADESH   1                    NA                0.0865519   0.0763551   0.0967488
JiVitA-4       BANGLADESH   0                    NA                0.0053082   0.0027244   0.0078921
JiVitA-4       BANGLADESH   1                    NA                0.0246066   0.0092034   0.0400098
Keneba         GAMBIA       0                    NA                0.0177124   0.0120531   0.0233718
Keneba         GAMBIA       1                    NA                0.0792454   0.0372874   0.1212034
SAS-CompFeed   INDIA        0                    NA                0.0207867   0.0091184   0.0324550
SAS-CompFeed   INDIA        1                    NA                0.0916691   0.0590972   0.1242409
VITAMIN-A      INDIA        0                    NA                0.0103620   0.0066715   0.0140526
VITAMIN-A      INDIA        1                    NA                0.0459096   0.0329541   0.0588650
ZVITAMBO       ZIMBABWE     0                    NA                0.0615907   0.0574854   0.0656960
ZVITAMBO       ZIMBABWE     1                    NA                0.3325190   0.2997045   0.3653336


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
iLiNS-DYAD-M   MALAWI       1                    0                 5.480323   2.854907   10.520110
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 4.444757   3.832906    5.154278
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.635563   2.103725   10.214476
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 4.473995   2.410220    8.304896
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.409984   2.471394    7.869227
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.430567   2.812429    6.979704
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.398851   4.794397    6.079511


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0100553   0.0039716   0.0161390
JiVitA-3       BANGLADESH   0                    NA                0.0119464   0.0102636   0.0136292
JiVitA-4       BANGLADESH   0                    NA                0.0022854   0.0005407   0.0040300
Keneba         GAMBIA       0                    NA                0.0045891   0.0014672   0.0077109
SAS-CompFeed   INDIA        0                    NA                0.0123662   0.0060033   0.0187291
VITAMIN-A      INDIA        0                    NA                0.0094120   0.0058798   0.0129442
ZVITAMBO       ZIMBABWE     0                    NA                0.0171074   0.0148580   0.0193567


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.2966308   0.1215621   0.4368090
JiVitA-3       BANGLADESH   0                    NA                0.3802255   0.3357822   0.4216950
JiVitA-4       BANGLADESH   0                    NA                0.3009607   0.0649684   0.4773910
Keneba         GAMBIA       0                    NA                0.2057738   0.0662002   0.3244856
SAS-CompFeed   INDIA        0                    NA                0.3730048   0.1442851   0.5405912
VITAMIN-A      INDIA        0                    NA                0.4759784   0.3085913   0.6028417
ZVITAMBO       ZIMBABWE     0                    NA                0.2173799   0.1907462   0.2431371

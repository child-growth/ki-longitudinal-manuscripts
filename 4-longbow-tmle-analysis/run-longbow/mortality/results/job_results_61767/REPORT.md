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

**Intervention Variable:** ever_sstunted06

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

studyid           country                        ever_sstunted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0      325     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0       11     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1        0     338  dead             
EE                PAKISTAN                       0                     0      213     379  dead             
EE                PAKISTAN                       0                     1        3     379  dead             
EE                PAKISTAN                       1                     0      162     379  dead             
EE                PAKISTAN                       1                     1        1     379  dead             
GMS-Nepal         NEPAL                          0                     0      634     698  dead             
GMS-Nepal         NEPAL                          0                     1        4     698  dead             
GMS-Nepal         NEPAL                          1                     0       56     698  dead             
GMS-Nepal         NEPAL                          1                     1        4     698  dead             
iLiNS-DOSE        MALAWI                         0                     0     1588    1813  dead             
iLiNS-DOSE        MALAWI                         0                     1      101    1813  dead             
iLiNS-DOSE        MALAWI                         1                     0      111    1813  dead             
iLiNS-DOSE        MALAWI                         1                     1       13    1813  dead             
iLiNS-DYAD-M      MALAWI                         0                     0     1066    1191  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       34    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                     0       86    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                     1        5    1191  dead             
JiVitA-3          BANGLADESH                     0                     0    22511   27197  dead             
JiVitA-3          BANGLADESH                     0                     1      435   27197  dead             
JiVitA-3          BANGLADESH                     1                     0     3885   27197  dead             
JiVitA-3          BANGLADESH                     1                     1      366   27197  dead             
JiVitA-4          BANGLADESH                     0                     0     4639    5270  dead             
JiVitA-4          BANGLADESH                     0                     1       31    5270  dead             
JiVitA-4          BANGLADESH                     1                     0      584    5270  dead             
JiVitA-4          BANGLADESH                     1                     1       16    5270  dead             
Keneba            GAMBIA                         0                     0     2142    2479  dead             
Keneba            GAMBIA                         0                     1       43    2479  dead             
Keneba            GAMBIA                         1                     0      278    2479  dead             
Keneba            GAMBIA                         1                     1       16    2479  dead             
MAL-ED            BANGLADESH                     0                     0      240     265  dead             
MAL-ED            BANGLADESH                     0                     1        2     265  dead             
MAL-ED            BANGLADESH                     1                     0       22     265  dead             
MAL-ED            BANGLADESH                     1                     1        1     265  dead             
MAL-ED            INDIA                          0                     0      228     251  dead             
MAL-ED            INDIA                          0                     1        2     251  dead             
MAL-ED            INDIA                          1                     0       21     251  dead             
MAL-ED            INDIA                          1                     1        0     251  dead             
MAL-ED            PERU                           0                     0      260     303  dead             
MAL-ED            PERU                           0                     1        2     303  dead             
MAL-ED            PERU                           1                     0       41     303  dead             
MAL-ED            PERU                           1                     1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                     0      283     314  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                     0       30     314  dead             
MAL-ED            SOUTH AFRICA                   1                     1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      219     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       40     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        1     262  dead             
PROVIDE           BANGLADESH                     0                     0      665     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0       31     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0     1266    1532  dead             
SAS-CompFeed      INDIA                          0                     1       29    1532  dead             
SAS-CompFeed      INDIA                          1                     0      216    1532  dead             
SAS-CompFeed      INDIA                          1                     1       21    1532  dead             
SAS-FoodSuppl     INDIA                          0                     0      351     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                     0       61     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     3274    3898  dead             
VITAMIN-A         INDIA                          0                     1       50    3898  dead             
VITAMIN-A         INDIA                          1                     0      547    3898  dead             
VITAMIN-A         INDIA                          1                     1       27    3898  dead             
ZVITAMBO          ZIMBABWE                       0                     0    11756   14060  dead             
ZVITAMBO          ZIMBABWE                       0                     1      871   14060  dead             
ZVITAMBO          ZIMBABWE                       1                     0     1199   14060  dead             
ZVITAMBO          ZIMBABWE                       1                     1      234   14060  dead             


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/560df062-177c-49aa-8cdc-9cbe18760516/7252f8d0-3e29-4fa9-9341-ae57bd68f773/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/560df062-177c-49aa-8cdc-9cbe18760516/7252f8d0-3e29-4fa9-9341-ae57bd68f773/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/560df062-177c-49aa-8cdc-9cbe18760516/7252f8d0-3e29-4fa9-9341-ae57bd68f773/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/560df062-177c-49aa-8cdc-9cbe18760516/7252f8d0-3e29-4fa9-9341-ae57bd68f773/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0598433   0.0485319   0.0711547
iLiNS-DOSE     MALAWI       1                    NA                0.1053899   0.0502749   0.1605049
iLiNS-DYAD-M   MALAWI       0                    NA                0.0309091   0.0206771   0.0411411
iLiNS-DYAD-M   MALAWI       1                    NA                0.0549451   0.0081066   0.1017835
JiVitA-3       BANGLADESH   0                    NA                0.0192887   0.0174621   0.0211153
JiVitA-3       BANGLADESH   1                    NA                0.0865163   0.0756125   0.0974202
JiVitA-4       BANGLADESH   0                    NA                0.0066464   0.0040591   0.0092337
JiVitA-4       BANGLADESH   1                    NA                0.0260512   0.0137047   0.0383977
Keneba         GAMBIA       0                    NA                0.0196954   0.0138626   0.0255282
Keneba         GAMBIA       1                    NA                0.0543366   0.0280854   0.0805878
SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
VITAMIN-A      INDIA        0                    NA                0.0150114   0.0108749   0.0191478
VITAMIN-A      INDIA        1                    NA                0.0487764   0.0309343   0.0666185
ZVITAMBO       ZIMBABWE     0                    NA                0.0692906   0.0648632   0.0737180
ZVITAMBO       ZIMBABWE     1                    NA                0.1589649   0.1397077   0.1782222


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


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.761098   1.010228   3.070067
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.777634   0.712343   4.436041
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.485332   3.825663   5.258748
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.919589   2.127445   7.221423
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.758852   1.565329   4.862404
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.895547   2.327615   6.519670
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.249301   2.055394   5.136706
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.294177   2.001443   2.629728


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0030359   -0.0007552   0.0068271
iLiNS-DYAD-M   MALAWI       0                    NA                0.0018365   -0.0018446   0.0055176
JiVitA-3       BANGLADESH   0                    NA                0.0101631    0.0086583   0.0116678
JiVitA-4       BANGLADESH   0                    NA                0.0022720    0.0008215   0.0037225
Keneba         GAMBIA       0                    NA                0.0041045    0.0009186   0.0072905
SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
VITAMIN-A      INDIA        0                    NA                0.0047424    0.0020947   0.0073900
ZVITAMBO       ZIMBABWE     0                    NA                0.0093012    0.0072533   0.0113491


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0482819   -0.0133852   0.1061965
iLiNS-DYAD-M   MALAWI       0                    NA                0.0560839   -0.0618845   0.1609468
JiVitA-3       BANGLADESH   0                    NA                0.3450744    0.3000395   0.3872117
JiVitA-4       BANGLADESH   0                    NA                0.2547538    0.0840881   0.3936187
Keneba         GAMBIA       0                    NA                0.1724604    0.0352732   0.2901391
SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
VITAMIN-A      INDIA        0                    NA                0.2400744    0.1059602   0.3540702
ZVITAMBO       ZIMBABWE     0                    NA                0.1183478    0.0926838   0.1432859

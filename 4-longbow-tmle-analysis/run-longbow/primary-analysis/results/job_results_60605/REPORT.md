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

studyid           country                        ever_sstunted06    dead   n_cell       n
----------------  -----------------------------  ----------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                     0      325     338
Burkina Faso Zn   BURKINA FASO                   0                     1        2     338
Burkina Faso Zn   BURKINA FASO                   1                     0       11     338
Burkina Faso Zn   BURKINA FASO                   1                     1        0     338
EE                PAKISTAN                       0                     0      213     379
EE                PAKISTAN                       0                     1        3     379
EE                PAKISTAN                       1                     0      162     379
EE                PAKISTAN                       1                     1        1     379
GMS-Nepal         NEPAL                          0                     0      634     698
GMS-Nepal         NEPAL                          0                     1        4     698
GMS-Nepal         NEPAL                          1                     0       56     698
GMS-Nepal         NEPAL                          1                     1        4     698
iLiNS-DOSE        MALAWI                         0                     0     1588    1813
iLiNS-DOSE        MALAWI                         0                     1      101    1813
iLiNS-DOSE        MALAWI                         1                     0      111    1813
iLiNS-DOSE        MALAWI                         1                     1       13    1813
iLiNS-DYAD-M      MALAWI                         0                     0     1066    1191
iLiNS-DYAD-M      MALAWI                         0                     1       34    1191
iLiNS-DYAD-M      MALAWI                         1                     0       86    1191
iLiNS-DYAD-M      MALAWI                         1                     1        5    1191
JiVitA-3          BANGLADESH                     0                     0    22511   27197
JiVitA-3          BANGLADESH                     0                     1      435   27197
JiVitA-3          BANGLADESH                     1                     0     3885   27197
JiVitA-3          BANGLADESH                     1                     1      366   27197
JiVitA-4          BANGLADESH                     0                     0     4639    5270
JiVitA-4          BANGLADESH                     0                     1       31    5270
JiVitA-4          BANGLADESH                     1                     0      584    5270
JiVitA-4          BANGLADESH                     1                     1       16    5270
Keneba            GAMBIA                         0                     0     2142    2479
Keneba            GAMBIA                         0                     1       43    2479
Keneba            GAMBIA                         1                     0      278    2479
Keneba            GAMBIA                         1                     1       16    2479
MAL-ED            BANGLADESH                     0                     0      240     265
MAL-ED            BANGLADESH                     0                     1        2     265
MAL-ED            BANGLADESH                     1                     0       22     265
MAL-ED            BANGLADESH                     1                     1        1     265
MAL-ED            INDIA                          0                     0      228     251
MAL-ED            INDIA                          0                     1        2     251
MAL-ED            INDIA                          1                     0       21     251
MAL-ED            INDIA                          1                     1        0     251
MAL-ED            PERU                           0                     0      260     303
MAL-ED            PERU                           0                     1        2     303
MAL-ED            PERU                           1                     0       41     303
MAL-ED            PERU                           1                     1        0     303
MAL-ED            SOUTH AFRICA                   0                     0      283     314
MAL-ED            SOUTH AFRICA                   0                     1        0     314
MAL-ED            SOUTH AFRICA                   1                     0       30     314
MAL-ED            SOUTH AFRICA                   1                     1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0      219     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0       40     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        1     262
PROVIDE           BANGLADESH                     0                     0      665     700
PROVIDE           BANGLADESH                     0                     1        4     700
PROVIDE           BANGLADESH                     1                     0       31     700
PROVIDE           BANGLADESH                     1                     1        0     700
SAS-CompFeed      INDIA                          0                     0     1266    1532
SAS-CompFeed      INDIA                          0                     1       29    1532
SAS-CompFeed      INDIA                          1                     0      216    1532
SAS-CompFeed      INDIA                          1                     1       21    1532
SAS-FoodSuppl     INDIA                          0                     0      351     418
SAS-FoodSuppl     INDIA                          0                     1        3     418
SAS-FoodSuppl     INDIA                          1                     0       61     418
SAS-FoodSuppl     INDIA                          1                     1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2284    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      111    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
VITAMIN-A         INDIA                          0                     0     3274    3898
VITAMIN-A         INDIA                          0                     1       50    3898
VITAMIN-A         INDIA                          1                     0      547    3898
VITAMIN-A         INDIA                          1                     1       27    3898
ZVITAMBO          ZIMBABWE                       0                     0    11756   14060
ZVITAMBO          ZIMBABWE                       0                     1      871   14060
ZVITAMBO          ZIMBABWE                       1                     0     1199   14060
ZVITAMBO          ZIMBABWE                       1                     1      234   14060


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
![](/tmp/3b5b8059-23e9-4bf4-9bbb-5fdbff8b64c6/c0158c1a-b46e-42b5-8df6-65d8eb224916/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b5b8059-23e9-4bf4-9bbb-5fdbff8b64c6/c0158c1a-b46e-42b5-8df6-65d8eb224916/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b5b8059-23e9-4bf4-9bbb-5fdbff8b64c6/c0158c1a-b46e-42b5-8df6-65d8eb224916/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b5b8059-23e9-4bf4-9bbb-5fdbff8b64c6/c0158c1a-b46e-42b5-8df6-65d8eb224916/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0598256   0.0485166   0.0711346
iLiNS-DOSE     MALAWI       1                    NA                0.1131529   0.0590954   0.1672104
iLiNS-DYAD-M   MALAWI       0                    NA                0.0309091   0.0206771   0.0411411
iLiNS-DYAD-M   MALAWI       1                    NA                0.0549451   0.0081066   0.1017835
JiVitA-3       BANGLADESH   0                    NA                0.0191888   0.0173745   0.0210031
JiVitA-3       BANGLADESH   1                    NA                0.0868943   0.0756497   0.0981389
JiVitA-4       BANGLADESH   0                    NA                0.0066537   0.0040659   0.0092414
JiVitA-4       BANGLADESH   1                    NA                0.0260609   0.0138377   0.0382842
Keneba         GAMBIA       0                    NA                0.0197188   0.0138834   0.0255541
Keneba         GAMBIA       1                    NA                0.0539953   0.0274344   0.0805563
SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
VITAMIN-A      INDIA        0                    NA                0.0150104   0.0108770   0.0191437
VITAMIN-A      INDIA        1                    NA                0.0475260   0.0299419   0.0651102
ZVITAMBO       ZIMBABWE     0                    NA                0.0692660   0.0648394   0.0736927
ZVITAMBO       ZIMBABWE     1                    NA                0.1553153   0.1361648   0.1744658


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
iLiNS-DOSE     MALAWI       1                    0                 1.891380   1.131844   3.160609
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.777634   0.712343   4.436041
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.528384   3.850879   5.325087
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.916773   2.135814   7.182791
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.738270   1.541529   4.864082
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.895547   2.327615   6.519670
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.166217   1.996395   5.021518
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.242301   1.952445   2.575189


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0030536   -0.0007361   0.0068433
iLiNS-DYAD-M   MALAWI       0                    NA                0.0018365   -0.0018446   0.0055176
JiVitA-3       BANGLADESH   0                    NA                0.0102630    0.0087652   0.0117607
JiVitA-4       BANGLADESH   0                    NA                0.0022647    0.0008149   0.0037145
Keneba         GAMBIA       0                    NA                0.0040812    0.0008885   0.0072738
SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
VITAMIN-A      INDIA        0                    NA                0.0047434    0.0020974   0.0073893
ZVITAMBO       ZIMBABWE     0                    NA                0.0093257    0.0072790   0.0113724


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0485634   -0.0130756   0.1064520
iLiNS-DYAD-M   MALAWI       0                    NA                0.0560839   -0.0618845   0.1609468
JiVitA-3       BANGLADESH   0                    NA                0.3484671    0.3038547   0.3902205
JiVitA-4       BANGLADESH   0                    NA                0.2539387    0.0833846   0.3927579
Keneba         GAMBIA       0                    NA                0.1714775    0.0339773   0.2894064
SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
VITAMIN-A      INDIA        0                    NA                0.2401253    0.1061691   0.3540059
ZVITAMBO       ZIMBABWE     0                    NA                0.1186603    0.0930131   0.1435822

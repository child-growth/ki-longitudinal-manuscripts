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

studyid           country                        ever_sstunted06    dead0plus   n_cell       n
----------------  -----------------------------  ----------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                          0      325     338
Burkina Faso Zn   BURKINA FASO                   0                          1        2     338
Burkina Faso Zn   BURKINA FASO                   1                          0       11     338
Burkina Faso Zn   BURKINA FASO                   1                          1        0     338
EE                PAKISTAN                       0                          0      213     379
EE                PAKISTAN                       0                          1        3     379
EE                PAKISTAN                       1                          0      162     379
EE                PAKISTAN                       1                          1        1     379
GMS-Nepal         NEPAL                          0                          0      634     698
GMS-Nepal         NEPAL                          0                          1        4     698
GMS-Nepal         NEPAL                          1                          0       56     698
GMS-Nepal         NEPAL                          1                          1        4     698
iLiNS-DOSE        MALAWI                         0                          0     1588    1813
iLiNS-DOSE        MALAWI                         0                          1      101    1813
iLiNS-DOSE        MALAWI                         1                          0      111    1813
iLiNS-DOSE        MALAWI                         1                          1       13    1813
iLiNS-DYAD-M      MALAWI                         0                          0     1063    1191
iLiNS-DYAD-M      MALAWI                         0                          1       37    1191
iLiNS-DYAD-M      MALAWI                         1                          0       85    1191
iLiNS-DYAD-M      MALAWI                         1                          1        6    1191
JiVitA-3          BANGLADESH                     0                          0    22481   27197
JiVitA-3          BANGLADESH                     0                          1      465   27197
JiVitA-3          BANGLADESH                     1                          0     3874   27197
JiVitA-3          BANGLADESH                     1                          1      377   27197
JiVitA-4          BANGLADESH                     0                          0     4639    5270
JiVitA-4          BANGLADESH                     0                          1       31    5270
JiVitA-4          BANGLADESH                     1                          0      583    5270
JiVitA-4          BANGLADESH                     1                          1       17    5270
Keneba            GAMBIA                         0                          0     2115    2479
Keneba            GAMBIA                         0                          1       70    2479
Keneba            GAMBIA                         1                          0      276    2479
Keneba            GAMBIA                         1                          1       18    2479
MAL-ED            BANGLADESH                     0                          0      240     265
MAL-ED            BANGLADESH                     0                          1        2     265
MAL-ED            BANGLADESH                     1                          0       22     265
MAL-ED            BANGLADESH                     1                          1        1     265
MAL-ED            INDIA                          0                          0      228     251
MAL-ED            INDIA                          0                          1        2     251
MAL-ED            INDIA                          1                          0       21     251
MAL-ED            INDIA                          1                          1        0     251
MAL-ED            PERU                           0                          0      260     303
MAL-ED            PERU                           0                          1        2     303
MAL-ED            PERU                           1                          0       41     303
MAL-ED            PERU                           1                          1        0     303
MAL-ED            SOUTH AFRICA                   0                          0      283     314
MAL-ED            SOUTH AFRICA                   0                          1        0     314
MAL-ED            SOUTH AFRICA                   1                          0       30     314
MAL-ED            SOUTH AFRICA                   1                          1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      219     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       40     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        1     262
PROVIDE           BANGLADESH                     0                          0      664     700
PROVIDE           BANGLADESH                     0                          1        5     700
PROVIDE           BANGLADESH                     1                          0       31     700
PROVIDE           BANGLADESH                     1                          1        0     700
SAS-CompFeed      INDIA                          0                          0     1266    1532
SAS-CompFeed      INDIA                          0                          1       29    1532
SAS-CompFeed      INDIA                          1                          0      216    1532
SAS-CompFeed      INDIA                          1                          1       21    1532
SAS-FoodSuppl     INDIA                          0                          0      351     418
SAS-FoodSuppl     INDIA                          0                          1        3     418
SAS-FoodSuppl     INDIA                          1                          0       61     418
SAS-FoodSuppl     INDIA                          1                          1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2284    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      111    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396
VITAMIN-A         INDIA                          0                          0     3274    3898
VITAMIN-A         INDIA                          0                          1       50    3898
VITAMIN-A         INDIA                          1                          0      547    3898
VITAMIN-A         INDIA                          1                          1       27    3898
ZVITAMBO          ZIMBABWE                       0                          0    11746   14060
ZVITAMBO          ZIMBABWE                       0                          1      881   14060
ZVITAMBO          ZIMBABWE                       1                          0     1199   14060
ZVITAMBO          ZIMBABWE                       1                          1      234   14060


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
![](/tmp/1d519a2d-185a-438c-8c8f-b4955826be02/9aee997e-7f46-4c5c-8e71-e10aa2ebbb07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d519a2d-185a-438c-8c8f-b4955826be02/9aee997e-7f46-4c5c-8e71-e10aa2ebbb07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d519a2d-185a-438c-8c8f-b4955826be02/9aee997e-7f46-4c5c-8e71-e10aa2ebbb07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d519a2d-185a-438c-8c8f-b4955826be02/9aee997e-7f46-4c5c-8e71-e10aa2ebbb07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0597562   0.0484484   0.0710640
iLiNS-DOSE     MALAWI       1                    NA                0.1058876   0.0509412   0.1608341
iLiNS-DYAD-M   MALAWI       0                    NA                0.0336364   0.0229775   0.0442952
iLiNS-DYAD-M   MALAWI       1                    NA                0.0659341   0.0149243   0.1169439
JiVitA-3       BANGLADESH   0                    NA                0.0206256   0.0187645   0.0224866
JiVitA-3       BANGLADESH   1                    NA                0.0881390   0.0768216   0.0994565
JiVitA-4       BANGLADESH   0                    NA                0.0066521   0.0040655   0.0092387
JiVitA-4       BANGLADESH   1                    NA                0.0275318   0.0147390   0.0403246
Keneba         GAMBIA       0                    NA                0.0321035   0.0246977   0.0395094
Keneba         GAMBIA       1                    NA                0.0603846   0.0323298   0.0884394
SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
VITAMIN-A      INDIA        0                    NA                0.0149870   0.0108588   0.0191152
VITAMIN-A      INDIA        1                    NA                0.0485004   0.0307129   0.0662880
ZVITAMBO       ZIMBABWE     0                    NA                0.0699588   0.0655100   0.0744076
ZVITAMBO       ZIMBABWE     1                    NA                0.1546387   0.1355474   0.1737300


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
iLiNS-DOSE     MALAWI       1                    0                 1.771993   1.0202715   3.077574
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.960202   0.8496056   4.522559
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.273292   3.6507880   5.001940
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 4.138805   2.2629728   7.569559
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.880935   1.1194853   3.160305
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.895547   2.3276153   6.519670
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.236160   2.0459501   5.118762
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.210425   1.9245655   2.538745


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0031230   -0.0006734   0.0069194
iLiNS-DYAD-M   MALAWI       0                    NA                0.0024678   -0.0015436   0.0064791
JiVitA-3       BANGLADESH   0                    NA                0.0103337    0.0087945   0.0118730
JiVitA-4       BANGLADESH   0                    NA                0.0024560    0.0009339   0.0039781
Keneba         GAMBIA       0                    NA                0.0033947   -0.0000004   0.0067897
SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
VITAMIN-A      INDIA        0                    NA                0.0047667    0.0021229   0.0074105
ZVITAMBO       ZIMBABWE     0                    NA                0.0093442    0.0072893   0.0113991


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0496663   -0.0120829   0.1076481
iLiNS-DYAD-M   MALAWI       0                    NA                0.0683510   -0.0477396   0.1715786
JiVitA-3       BANGLADESH   0                    NA                0.3337848    0.2901435   0.3747432
JiVitA-4       BANGLADESH   0                    NA                0.2696530    0.0961349   0.4098602
Keneba         GAMBIA       0                    NA                0.0956293   -0.0031687   0.1846971
SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
VITAMIN-A      INDIA        0                    NA                0.2413056    0.1075621   0.3550059
ZVITAMBO       ZIMBABWE     0                    NA                0.1178290    0.0922998   0.1426402

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

studyid           country                        ever_sunderweight06    dead   n_cell       n
----------------  -----------------------------  --------------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0      315     338
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338
Burkina Faso Zn   BURKINA FASO                   1                         0       21     338
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338
EE                PAKISTAN                       0                         0      218     380
EE                PAKISTAN                       0                         1        1     380
EE                PAKISTAN                       1                         0      158     380
EE                PAKISTAN                       1                         1        3     380
GMS-Nepal         NEPAL                          0                         0      600     697
GMS-Nepal         NEPAL                          0                         1        3     697
GMS-Nepal         NEPAL                          1                         0       90     697
GMS-Nepal         NEPAL                          1                         1        4     697
iLiNS-DOSE        MALAWI                         0                         0     1646    1816
iLiNS-DOSE        MALAWI                         0                         1      106    1816
iLiNS-DOSE        MALAWI                         1                         0       56    1816
iLiNS-DOSE        MALAWI                         1                         1        8    1816
iLiNS-DYAD-M      MALAWI                         0                         0     1084    1202
iLiNS-DYAD-M      MALAWI                         0                         1       26    1202
iLiNS-DYAD-M      MALAWI                         1                         0       78    1202
iLiNS-DYAD-M      MALAWI                         1                         1       14    1202
JiVitA-3          BANGLADESH                     0                         0    22238   27237
JiVitA-3          BANGLADESH                     0                         1      414   27237
JiVitA-3          BANGLADESH                     1                         0     4174   27237
JiVitA-3          BANGLADESH                     1                         1      411   27237
JiVitA-4          BANGLADESH                     0                         0     4717    5276
JiVitA-4          BANGLADESH                     0                         1       31    5276
JiVitA-4          BANGLADESH                     1                         0      512    5276
JiVitA-4          BANGLADESH                     1                         1       16    5276
Keneba            GAMBIA                         0                         0     2407    2632
Keneba            GAMBIA                         0                         1       43    2632
Keneba            GAMBIA                         1                         0      164    2632
Keneba            GAMBIA                         1                         1       18    2632
MAL-ED            BANGLADESH                     0                         0      243     265
MAL-ED            BANGLADESH                     0                         1        2     265
MAL-ED            BANGLADESH                     1                         0       19     265
MAL-ED            BANGLADESH                     1                         1        1     265
MAL-ED            INDIA                          0                         0      217     251
MAL-ED            INDIA                          0                         1        1     251
MAL-ED            INDIA                          1                         0       32     251
MAL-ED            INDIA                          1                         1        1     251
MAL-ED            PERU                           0                         0      290     303
MAL-ED            PERU                           0                         1        2     303
MAL-ED            PERU                           1                         0       11     303
MAL-ED            PERU                           1                         1        0     303
MAL-ED            SOUTH AFRICA                   0                         0      300     314
MAL-ED            SOUTH AFRICA                   0                         1        0     314
MAL-ED            SOUTH AFRICA                   1                         0       13     314
MAL-ED            SOUTH AFRICA                   1                         1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      251     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        8     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        1     262
PROVIDE           BANGLADESH                     0                         0      648     700
PROVIDE           BANGLADESH                     0                         1        4     700
PROVIDE           BANGLADESH                     1                         0       48     700
PROVIDE           BANGLADESH                     1                         1        0     700
SAS-CompFeed      INDIA                          0                         0     1247    1533
SAS-CompFeed      INDIA                          0                         1       26    1533
SAS-CompFeed      INDIA                          1                         0      236    1533
SAS-CompFeed      INDIA                          1                         1       24    1533
SAS-FoodSuppl     INDIA                          0                         0      304     416
SAS-FoodSuppl     INDIA                          0                         1        2     416
SAS-FoodSuppl     INDIA                          1                         0      106     416
SAS-FoodSuppl     INDIA                          1                         1        4     416
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2325    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       70    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
VITAMIN-A         INDIA                          0                         0     2858    3906
VITAMIN-A         INDIA                          0                         1       30    3906
VITAMIN-A         INDIA                          1                         0      970    3906
VITAMIN-A         INDIA                          1                         1       48    3906
ZVITAMBO          ZIMBABWE                       0                         0    12420   14085
ZVITAMBO          ZIMBABWE                       0                         1      807   14085
ZVITAMBO          ZIMBABWE                       1                         0      557   14085
ZVITAMBO          ZIMBABWE                       1                         1      301   14085


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
![](/tmp/d1f521d2-4bc5-49ae-9a54-34634eb0e3a9/6c798ab7-b2ec-4ac6-9613-223d440ee1f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1f521d2-4bc5-49ae-9a54-34634eb0e3a9/6c798ab7-b2ec-4ac6-9613-223d440ee1f6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1f521d2-4bc5-49ae-9a54-34634eb0e3a9/6c798ab7-b2ec-4ac6-9613-223d440ee1f6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1f521d2-4bc5-49ae-9a54-34634eb0e3a9/6c798ab7-b2ec-4ac6-9613-223d440ee1f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0234459   0.0145439   0.0323478
iLiNS-DYAD-M   MALAWI       1                    NA                0.1299304   0.0609064   0.1989544
JiVitA-3       BANGLADESH   0                    NA                0.0186741   0.0169172   0.0204309
JiVitA-3       BANGLADESH   1                    NA                0.0853411   0.0757785   0.0949037
JiVitA-4       BANGLADESH   0                    NA                0.0065493   0.0040855   0.0090132
JiVitA-4       BANGLADESH   1                    NA                0.0283947   0.0131969   0.0435925
Keneba         GAMBIA       0                    NA                0.0175473   0.0123449   0.0227496
Keneba         GAMBIA       1                    NA                0.1024651   0.0576541   0.1472760
SAS-CompFeed   INDIA        0                    NA                0.0211192   0.0084969   0.0337415
SAS-CompFeed   INDIA        1                    NA                0.0893510   0.0574175   0.1212846
VITAMIN-A      INDIA        0                    NA                0.0103830   0.0066798   0.0140862
VITAMIN-A      INDIA        1                    NA                0.0465893   0.0335616   0.0596170
ZVITAMBO       ZIMBABWE     0                    NA                0.0614771   0.0573851   0.0655691
ZVITAMBO       ZIMBABWE     1                    NA                0.3368028   0.3038685   0.3697372


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
JiVitA-3       BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
JiVitA-4       BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122
Keneba         GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847    4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 5.541721   2.884556   10.646585
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 4.570034   3.960603    5.273240
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.335502   2.246049    8.368729
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.839373   3.441024    9.909340
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.230803   2.234010    8.012361
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.487066   2.851708    7.060246
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.478505   4.868675    6.164721


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0098320    0.0038566   0.0158074
JiVitA-3       BANGLADESH   0                    NA                0.0116156    0.0100261   0.0132051
JiVitA-4       BANGLADESH   0                    NA                0.0023589    0.0007660   0.0039519
Keneba         GAMBIA       0                    NA                0.0056290    0.0025015   0.0087565
SAS-CompFeed   INDIA        0                    NA                0.0114966    0.0051202   0.0178731
VITAMIN-A      INDIA        0                    NA                0.0095863    0.0060214   0.0131511
ZVITAMBO       ZIMBABWE     0                    NA                0.0171881    0.0149415   0.0194347


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2954521    0.1201138   0.4358500
JiVitA-3       BANGLADESH   0                    NA                0.3834844    0.3396939   0.4243707
JiVitA-4       BANGLADESH   0                    NA                0.2648019    0.0851719   0.4091609
Keneba         GAMBIA       0                    NA                0.2428784    0.1113470   0.3549416
SAS-CompFeed   INDIA        0                    NA                0.3524864    0.0981394   0.5351013
VITAMIN-A      INDIA        0                    NA                0.4800504    0.3127974   0.6065969
ZVITAMBO       ZIMBABWE     0                    NA                0.2184968    0.1919182   0.2442012

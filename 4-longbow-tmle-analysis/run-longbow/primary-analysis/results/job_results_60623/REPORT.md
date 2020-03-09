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

studyid           country                        ever_sunderweight06    dead0plus   n_cell       n
----------------  -----------------------------  --------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                              0      315     338
Burkina Faso Zn   BURKINA FASO                   0                              1        2     338
Burkina Faso Zn   BURKINA FASO                   1                              0       21     338
Burkina Faso Zn   BURKINA FASO                   1                              1        0     338
EE                PAKISTAN                       0                              0      218     380
EE                PAKISTAN                       0                              1        1     380
EE                PAKISTAN                       1                              0      158     380
EE                PAKISTAN                       1                              1        3     380
GMS-Nepal         NEPAL                          0                              0      600     697
GMS-Nepal         NEPAL                          0                              1        3     697
GMS-Nepal         NEPAL                          1                              0       90     697
GMS-Nepal         NEPAL                          1                              1        4     697
iLiNS-DOSE        MALAWI                         0                              0     1646    1816
iLiNS-DOSE        MALAWI                         0                              1      106    1816
iLiNS-DOSE        MALAWI                         1                              0       56    1816
iLiNS-DOSE        MALAWI                         1                              1        8    1816
iLiNS-DYAD-M      MALAWI                         0                              0     1080    1202
iLiNS-DYAD-M      MALAWI                         0                              1       30    1202
iLiNS-DYAD-M      MALAWI                         1                              0       78    1202
iLiNS-DYAD-M      MALAWI                         1                              1       14    1202
JiVitA-3          BANGLADESH                     0                              0    22216   27237
JiVitA-3          BANGLADESH                     0                              1      436   27237
JiVitA-3          BANGLADESH                     1                              0     4155   27237
JiVitA-3          BANGLADESH                     1                              1      430   27237
JiVitA-4          BANGLADESH                     0                              0     4716    5276
JiVitA-4          BANGLADESH                     0                              1       32    5276
JiVitA-4          BANGLADESH                     1                              0      512    5276
JiVitA-4          BANGLADESH                     1                              1       16    5276
Keneba            GAMBIA                         0                              0     2379    2632
Keneba            GAMBIA                         0                              1       71    2632
Keneba            GAMBIA                         1                              0      158    2632
Keneba            GAMBIA                         1                              1       24    2632
MAL-ED            BANGLADESH                     0                              0      243     265
MAL-ED            BANGLADESH                     0                              1        2     265
MAL-ED            BANGLADESH                     1                              0       19     265
MAL-ED            BANGLADESH                     1                              1        1     265
MAL-ED            INDIA                          0                              0      217     251
MAL-ED            INDIA                          0                              1        1     251
MAL-ED            INDIA                          1                              0       32     251
MAL-ED            INDIA                          1                              1        1     251
MAL-ED            PERU                           0                              0      290     303
MAL-ED            PERU                           0                              1        2     303
MAL-ED            PERU                           1                              0       11     303
MAL-ED            PERU                           1                              1        0     303
MAL-ED            SOUTH AFRICA                   0                              0      300     314
MAL-ED            SOUTH AFRICA                   0                              1        0     314
MAL-ED            SOUTH AFRICA                   1                              0       13     314
MAL-ED            SOUTH AFRICA                   1                              1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      251     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0        8     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        1     262
PROVIDE           BANGLADESH                     0                              0      647     700
PROVIDE           BANGLADESH                     0                              1        5     700
PROVIDE           BANGLADESH                     1                              0       48     700
PROVIDE           BANGLADESH                     1                              1        0     700
SAS-CompFeed      INDIA                          0                              0     1247    1533
SAS-CompFeed      INDIA                          0                              1       26    1533
SAS-CompFeed      INDIA                          1                              0      236    1533
SAS-CompFeed      INDIA                          1                              1       24    1533
SAS-FoodSuppl     INDIA                          0                              0      304     416
SAS-FoodSuppl     INDIA                          0                              1        2     416
SAS-FoodSuppl     INDIA                          1                              0      106     416
SAS-FoodSuppl     INDIA                          1                              1        4     416
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     2325    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0       70    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396
VITAMIN-A         INDIA                          0                              0     2858    3906
VITAMIN-A         INDIA                          0                              1       30    3906
VITAMIN-A         INDIA                          1                              0      970    3906
VITAMIN-A         INDIA                          1                              1       48    3906
ZVITAMBO          ZIMBABWE                       0                              0    12411   14085
ZVITAMBO          ZIMBABWE                       0                              1      816   14085
ZVITAMBO          ZIMBABWE                       1                              0      556   14085
ZVITAMBO          ZIMBABWE                       1                              1      302   14085


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
![](/tmp/1669e969-7966-4e33-8fe9-594e9088b0fd/dadae41a-4307-4bca-8dc7-2a01a1c135f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1669e969-7966-4e33-8fe9-594e9088b0fd/dadae41a-4307-4bca-8dc7-2a01a1c135f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1669e969-7966-4e33-8fe9-594e9088b0fd/dadae41a-4307-4bca-8dc7-2a01a1c135f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1669e969-7966-4e33-8fe9-594e9088b0fd/dadae41a-4307-4bca-8dc7-2a01a1c135f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0270825   0.0175303   0.0366347
iLiNS-DYAD-M   MALAWI       1                    NA                0.1329420   0.0638891   0.2019950
JiVitA-3       BANGLADESH   0                    NA                0.0195398   0.0177251   0.0213545
JiVitA-3       BANGLADESH   1                    NA                0.0894257   0.0794451   0.0994063
JiVitA-4       BANGLADESH   0                    NA                0.0067622   0.0042465   0.0092779
JiVitA-4       BANGLADESH   1                    NA                0.0283926   0.0132290   0.0435562
Keneba         GAMBIA       0                    NA                0.0289379   0.0222943   0.0355815
Keneba         GAMBIA       1                    NA                0.1323713   0.0792309   0.1855117
SAS-CompFeed   INDIA        0                    NA                0.0211192   0.0084969   0.0337415
SAS-CompFeed   INDIA        1                    NA                0.0893510   0.0574175   0.1212846
VITAMIN-A      INDIA        0                    NA                0.0103163   0.0066341   0.0139984
VITAMIN-A      INDIA        1                    NA                0.0463104   0.0333402   0.0592805
ZVITAMBO       ZIMBABWE     0                    NA                0.0620909   0.0579804   0.0662014
ZVITAMBO       ZIMBABWE     1                    NA                0.3336869   0.3006155   0.3667583


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0366057   0.0259850   0.0472263
JiVitA-3       BANGLADESH   NA                   NA                0.0317950   0.0295928   0.0339972
JiVitA-4       BANGLADESH   NA                   NA                0.0090978   0.0063582   0.0118374
Keneba         GAMBIA       NA                   NA                0.0360942   0.0289669   0.0432215
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793752   0.0749108   0.0838397


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847   4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 4.908775   2.620358   9.195719
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.576583   3.971197   5.274257
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 4.198719   2.183261   8.074730
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 4.574318   2.879246   7.267315
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 4.230803   2.234010   8.012361
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000   1.000000
VITAMIN-A      INDIA        1                    0                 4.489061   2.851422   7.067234
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.374170   4.771726   6.052674


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0095231    0.0035653   0.0154809
JiVitA-3       BANGLADESH   0                    NA                0.0122551    0.0106217   0.0138886
JiVitA-4       BANGLADESH   0                    NA                0.0023356    0.0007417   0.0039295
Keneba         GAMBIA       0                    NA                0.0071563    0.0035731   0.0107395
SAS-CompFeed   INDIA        0                    NA                0.0114966    0.0051202   0.0178731
VITAMIN-A      INDIA        0                    NA                0.0096530    0.0060945   0.0132115
ZVITAMBO       ZIMBABWE     0                    NA                0.0172843    0.0150351   0.0195336


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2601547    0.0996103   0.3920732
JiVitA-3       BANGLADESH   0                    NA                0.3854428    0.3422638   0.4257872
JiVitA-4       BANGLADESH   0                    NA                0.2567203    0.0799766   0.3995102
Keneba         GAMBIA       0                    NA                0.1982671    0.1010461   0.2849737
SAS-CompFeed   INDIA        0                    NA                0.3524864    0.0981394   0.5351013
VITAMIN-A      INDIA        0                    NA                0.4833930    0.3171028   0.6091904
ZVITAMBO       ZIMBABWE     0                    NA                0.2177549    0.1913729   0.2432762

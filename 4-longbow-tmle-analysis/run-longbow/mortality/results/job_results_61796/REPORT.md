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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_swasted06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  ---------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                            0      287    366  co_occurence     
CMC-V-BCS-2002   INDIA                          0                            1       11    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                            0       57    366  co_occurence     
CMC-V-BCS-2002   INDIA                          1                            1       11    366  co_occurence     
CMIN             BANGLADESH                     0                            0      203    237  co_occurence     
CMIN             BANGLADESH                     0                            1       24    237  co_occurence     
CMIN             BANGLADESH                     1                            0        8    237  co_occurence     
CMIN             BANGLADESH                     1                            1        2    237  co_occurence     
COHORTS          GUATEMALA                      0                            0      691    774  co_occurence     
COHORTS          GUATEMALA                      0                            1       35    774  co_occurence     
COHORTS          GUATEMALA                      1                            0       45    774  co_occurence     
COHORTS          GUATEMALA                      1                            1        3    774  co_occurence     
COHORTS          PHILIPPINES                    0                            0     2163   2487  co_occurence     
COHORTS          PHILIPPINES                    0                            1      163   2487  co_occurence     
COHORTS          PHILIPPINES                    1                            0      137   2487  co_occurence     
COHORTS          PHILIPPINES                    1                            1       24   2487  co_occurence     
CONTENT          PERU                           0                            0      199    200  co_occurence     
CONTENT          PERU                           0                            1        0    200  co_occurence     
CONTENT          PERU                           1                            0        1    200  co_occurence     
CONTENT          PERU                           1                            1        0    200  co_occurence     
EE               PAKISTAN                       0                            0      246    346  co_occurence     
EE               PAKISTAN                       0                            1       64    346  co_occurence     
EE               PAKISTAN                       1                            0       26    346  co_occurence     
EE               PAKISTAN                       1                            1       10    346  co_occurence     
GMS-Nepal        NEPAL                          0                            0      429    550  co_occurence     
GMS-Nepal        NEPAL                          0                            1       50    550  co_occurence     
GMS-Nepal        NEPAL                          1                            0       61    550  co_occurence     
GMS-Nepal        NEPAL                          1                            1       10    550  co_occurence     
IRC              INDIA                          0                            0      268    405  co_occurence     
IRC              INDIA                          0                            1       15    405  co_occurence     
IRC              INDIA                          1                            0      112    405  co_occurence     
IRC              INDIA                          1                            1       10    405  co_occurence     
JiVitA-4         BANGLADESH                     0                            0     4011   4527  co_occurence     
JiVitA-4         BANGLADESH                     0                            1      406   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                            0       83   4527  co_occurence     
JiVitA-4         BANGLADESH                     1                            1       27   4527  co_occurence     
Keneba           GAMBIA                         0                            0     1535   1775  co_occurence     
Keneba           GAMBIA                         0                            1       73   1775  co_occurence     
Keneba           GAMBIA                         1                            0      140   1775  co_occurence     
Keneba           GAMBIA                         1                            1       27   1775  co_occurence     
LCNI-5           MALAWI                         0                            0      675    693  co_occurence     
LCNI-5           MALAWI                         0                            1       18    693  co_occurence     
LCNI-5           MALAWI                         1                            0        0    693  co_occurence     
LCNI-5           MALAWI                         1                            1        0    693  co_occurence     
MAL-ED           BANGLADESH                     0                            0      194    221  co_occurence     
MAL-ED           BANGLADESH                     0                            1       12    221  co_occurence     
MAL-ED           BANGLADESH                     1                            0       13    221  co_occurence     
MAL-ED           BANGLADESH                     1                            1        2    221  co_occurence     
MAL-ED           BRAZIL                         0                            0      177    180  co_occurence     
MAL-ED           BRAZIL                         0                            1        1    180  co_occurence     
MAL-ED           BRAZIL                         1                            0        2    180  co_occurence     
MAL-ED           BRAZIL                         1                            1        0    180  co_occurence     
MAL-ED           INDIA                          0                            0      195    228  co_occurence     
MAL-ED           INDIA                          0                            1       12    228  co_occurence     
MAL-ED           INDIA                          1                            0       16    228  co_occurence     
MAL-ED           INDIA                          1                            1        5    228  co_occurence     
MAL-ED           NEPAL                          0                            0      218    229  co_occurence     
MAL-ED           NEPAL                          0                            1        4    229  co_occurence     
MAL-ED           NEPAL                          1                            0        7    229  co_occurence     
MAL-ED           NEPAL                          1                            1        0    229  co_occurence     
MAL-ED           PERU                           0                            0      215    222  co_occurence     
MAL-ED           PERU                           0                            1        6    222  co_occurence     
MAL-ED           PERU                           1                            0        1    222  co_occurence     
MAL-ED           PERU                           1                            1        0    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                            0      231    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                            1        3    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                            0        6    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                            1        1    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      220    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        1    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0        4    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0    225  co_occurence     
NIH-Birth        BANGLADESH                     0                            0      375    462  co_occurence     
NIH-Birth        BANGLADESH                     0                            1       39    462  co_occurence     
NIH-Birth        BANGLADESH                     1                            0       36    462  co_occurence     
NIH-Birth        BANGLADESH                     1                            1       12    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                            0      560    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                            1       26    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                            0       45    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                            1        3    634  co_occurence     
PROBIT           BELARUS                        0                            0     2011   2146  co_occurence     
PROBIT           BELARUS                        0                            1        1   2146  co_occurence     
PROBIT           BELARUS                        1                            0      134   2146  co_occurence     
PROBIT           BELARUS                        1                            1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                            0      504    563  co_occurence     
PROVIDE          BANGLADESH                     0                            1       35    563  co_occurence     
PROVIDE          BANGLADESH                     1                            0       22    563  co_occurence     
PROVIDE          BANGLADESH                     1                            1        2    563  co_occurence     
ResPak           PAKISTAN                       0                            0        6      9  co_occurence     
ResPak           PAKISTAN                       0                            1        0      9  co_occurence     
ResPak           PAKISTAN                       1                            0        2      9  co_occurence     
ResPak           PAKISTAN                       1                            1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                            0     1064   1256  co_occurence     
SAS-CompFeed     INDIA                          0                            1      107   1256  co_occurence     
SAS-CompFeed     INDIA                          1                            0       64   1256  co_occurence     
SAS-CompFeed     INDIA                          1                            1       21   1256  co_occurence     
SAS-FoodSuppl    INDIA                          0                            0      250    323  co_occurence     
SAS-FoodSuppl    INDIA                          0                            1       51    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                            0       13    323  co_occurence     
SAS-FoodSuppl    INDIA                          1                            1        9    323  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      932    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1       20    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0       27    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1        1    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                            0     1489   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       0                            1       78   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                            0      103   1680  co_occurence     
ZVITAMBO         ZIMBABWE                       1                            1       10   1680  co_occurence     


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: IRC, country: INDIA
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Birth, country: BANGLADESH
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: NIH-Crypto, country: BANGLADESH
* studyid: PROBIT, country: BELARUS
* studyid: PROVIDE, country: BANGLADESH
* studyid: ResPak, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/f224c26b-fa79-4f6e-a2e3-5c1850cccee9/6a276620-f7c4-4495-85cc-3036e6920051/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f224c26b-fa79-4f6e-a2e3-5c1850cccee9/6a276620-f7c4-4495-85cc-3036e6920051/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f224c26b-fa79-4f6e-a2e3-5c1850cccee9/6a276620-f7c4-4495-85cc-3036e6920051/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f224c26b-fa79-4f6e-a2e3-5c1850cccee9/6a276620-f7c4-4495-85cc-3036e6920051/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0367908   0.0152644   0.0583172
CMC-V-BCS-2002   INDIA         1                    NA                0.1642664   0.0724870   0.2560458
COHORTS          PHILIPPINES   0                    NA                0.0696907   0.0593186   0.0800627
COHORTS          PHILIPPINES   1                    NA                0.1582870   0.1034747   0.2130993
EE               PAKISTAN      0                    NA                0.2094003   0.1638919   0.2549086
EE               PAKISTAN      1                    NA                0.2527288   0.0968899   0.4085678
GMS-Nepal        NEPAL         0                    NA                0.1047472   0.0772679   0.1322266
GMS-Nepal        NEPAL         1                    NA                0.1381775   0.0600924   0.2162626
IRC              INDIA         0                    NA                0.0524796   0.0262296   0.0787295
IRC              INDIA         1                    NA                0.0783680   0.0285813   0.1281548
JiVitA-4         BANGLADESH    0                    NA                0.0920482   0.0826534   0.1014429
JiVitA-4         BANGLADESH    1                    NA                0.2363223   0.0986590   0.3739857
Keneba           GAMBIA        0                    NA                0.0456948   0.0355232   0.0558664
Keneba           GAMBIA        1                    NA                0.1569482   0.1019415   0.2119548
MAL-ED           INDIA         0                    NA                0.0579710   0.0260663   0.0898757
MAL-ED           INDIA         1                    NA                0.2380952   0.0555298   0.4206607
NIH-Birth        BANGLADESH    0                    NA                0.0937183   0.0655921   0.1218444
NIH-Birth        BANGLADESH    1                    NA                0.2560032   0.1268470   0.3851593
SAS-CompFeed     INDIA         0                    NA                0.0914625   0.0800777   0.1028473
SAS-CompFeed     INDIA         1                    NA                0.2565795   0.1460560   0.3671030
SAS-FoodSuppl    INDIA         0                    NA                0.1694352   0.1269902   0.2118802
SAS-FoodSuppl    INDIA         1                    NA                0.4090909   0.2033217   0.6148601
ZVITAMBO         ZIMBABWE      0                    NA                0.0497184   0.0389549   0.0604820
ZVITAMBO         ZIMBABWE      1                    NA                0.0880914   0.0339443   0.1422385


### Parameter: E(Y)


studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
JiVitA-4         BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063
Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
MAL-ED           INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
SAS-CompFeed     INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
SAS-FoodSuppl    INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377


### Parameter: RR


studyid          country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ---------  ----------  ----------
CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
CMC-V-BCS-2002   INDIA         1                    0                 4.464878   1.9848716   10.043539
COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
COHORTS          PHILIPPINES   1                    0                 2.271281   1.5591917    3.308583
EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
EE               PAKISTAN      1                    0                 1.206917   0.6254795    2.328853
GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
GMS-Nepal        NEPAL         1                    0                 1.319152   0.7075725    2.459339
IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
IRC              INDIA         1                    0                 1.493306   0.6643187    3.356765
JiVitA-4         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
JiVitA-4         BANGLADESH    1                    0                 2.567377   1.4292189    4.611907
Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
Keneba           GAMBIA        1                    0                 3.434705   2.2708598    5.195035
MAL-ED           INDIA         0                    0                 1.000000   1.0000000    1.000000
MAL-ED           INDIA         1                    0                 4.107143   1.5982135   10.554674
NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
NIH-Birth        BANGLADESH    1                    0                 2.731625   1.5181113    4.915171
SAS-CompFeed     INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed     INDIA         1                    0                 2.805296   1.7174861    4.582097
SAS-FoodSuppl    INDIA         0                    0                 1.000000   1.0000000    1.000000
SAS-FoodSuppl    INDIA         1                    0                 2.414439   1.3765027    4.235018
ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO         ZIMBABWE      1                    0                 1.771806   0.9232381    3.400309


### Parameter: PAR


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.0233185    0.0057279   0.0409091
COHORTS          PHILIPPINES   0                    NA                0.0055003    0.0018279   0.0091728
EE               PAKISTAN      0                    NA                0.0044726   -0.0123222   0.0212674
GMS-Nepal        NEPAL         0                    NA                0.0043437   -0.0067939   0.0154812
IRC              INDIA         0                    NA                0.0092488   -0.0076133   0.0261110
JiVitA-4         BANGLADESH    0                    NA                0.0036002   -0.0001699   0.0073702
Keneba           GAMBIA        0                    NA                0.0106432    0.0051564   0.0161301
MAL-ED           INDIA         0                    NA                0.0165904   -0.0017754   0.0349561
NIH-Birth        BANGLADESH    0                    NA                0.0166713    0.0028810   0.0304616
SAS-CompFeed     INDIA         0                    NA                0.0104483    0.0029538   0.0179428
SAS-FoodSuppl    INDIA         0                    NA                0.0163233    0.0005665   0.0320801
ZVITAMBO         ZIMBABWE      0                    NA                0.0026625   -0.0009706   0.0062957


### Parameter: PAF


studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA         0                    NA                0.3879350    0.0773649   0.5939635
COHORTS          PHILIPPINES   0                    NA                0.0731515    0.0237737   0.1200318
EE               PAKISTAN      0                    NA                0.0209123   -0.0607108   0.0962544
GMS-Nepal        NEPAL         0                    NA                0.0398169   -0.0675024   0.1363471
IRC              INDIA         0                    NA                0.1498309   -0.1659890   0.3801078
JiVitA-4         BANGLADESH    0                    NA                0.0376396   -0.0013076   0.0750720
Keneba           GAMBIA        0                    NA                0.1889172    0.0925383   0.2750600
MAL-ED           INDIA         0                    NA                0.2225064   -0.0412448   0.4194484
NIH-Birth        BANGLADESH    0                    NA                0.1510227    0.0219208   0.2630838
SAS-CompFeed     INDIA         0                    NA                0.1025241    0.0295775   0.1699872
SAS-FoodSuppl    INDIA         0                    NA                0.0878738    0.0005171   0.1675953
ZVITAMBO         ZIMBABWE      0                    NA                0.0508303   -0.0203853   0.1170756

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

**Intervention Variable:** ever_underweight06

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

studyid          country                        ever_underweight06    co_occurence   n_cell      n
---------------  -----------------------------  -------------------  -------------  -------  -----
CMC-V-BCS-2002   INDIA                          0                                0      188    369
CMC-V-BCS-2002   INDIA                          0                                1        1    369
CMC-V-BCS-2002   INDIA                          1                                0      159    369
CMC-V-BCS-2002   INDIA                          1                                1       21    369
CMIN             BANGLADESH                     0                                0      109    237
CMIN             BANGLADESH                     0                                1        2    237
CMIN             BANGLADESH                     1                                0      102    237
CMIN             BANGLADESH                     1                                1       24    237
COHORTS          GUATEMALA                      0                                0      554    779
COHORTS          GUATEMALA                      0                                1       11    779
COHORTS          GUATEMALA                      1                                0      187    779
COHORTS          GUATEMALA                      1                                1       27    779
COHORTS          PHILIPPINES                    0                                0     1871   2487
COHORTS          PHILIPPINES                    0                                1       77   2487
COHORTS          PHILIPPINES                    1                                0      429   2487
COHORTS          PHILIPPINES                    1                                1      110   2487
CONTENT          PERU                           0                                0      192    200
CONTENT          PERU                           0                                1        0    200
CONTENT          PERU                           1                                0        8    200
CONTENT          PERU                           1                                1        0    200
EE               PAKISTAN                       0                                0       94    346
EE               PAKISTAN                       0                                1        4    346
EE               PAKISTAN                       1                                0      178    346
EE               PAKISTAN                       1                                1       70    346
GMS-Nepal        NEPAL                          0                                0      283    550
GMS-Nepal        NEPAL                          0                                1       12    550
GMS-Nepal        NEPAL                          1                                0      207    550
GMS-Nepal        NEPAL                          1                                1       48    550
IRC              INDIA                          0                                0      209    405
IRC              INDIA                          0                                1        2    405
IRC              INDIA                          1                                0      171    405
IRC              INDIA                          1                                1       23    405
JiVitA-4         BANGLADESH                     0                                0     2944   4547
JiVitA-4         BANGLADESH                     0                                1       70   4547
JiVitA-4         BANGLADESH                     1                                0     1166   4547
JiVitA-4         BANGLADESH                     1                                1      367   4547
Keneba           GAMBIA                         0                                0     1427   1863
Keneba           GAMBIA                         0                                1       39   1863
Keneba           GAMBIA                         1                                0      327   1863
Keneba           GAMBIA                         1                                1       70   1863
LCNI-5           MALAWI                         0                                0      606    692
LCNI-5           MALAWI                         0                                1        5    692
LCNI-5           MALAWI                         1                                0       68    692
LCNI-5           MALAWI                         1                                1       13    692
MAL-ED           BANGLADESH                     0                                0      147    221
MAL-ED           BANGLADESH                     0                                1        3    221
MAL-ED           BANGLADESH                     1                                0       60    221
MAL-ED           BANGLADESH                     1                                1       11    221
MAL-ED           BRAZIL                         0                                0      168    180
MAL-ED           BRAZIL                         0                                1        0    180
MAL-ED           BRAZIL                         1                                0       11    180
MAL-ED           BRAZIL                         1                                1        1    180
MAL-ED           INDIA                          0                                0      130    228
MAL-ED           INDIA                          0                                1        0    228
MAL-ED           INDIA                          1                                0       81    228
MAL-ED           INDIA                          1                                1       17    228
MAL-ED           NEPAL                          0                                0      190    229
MAL-ED           NEPAL                          0                                1        0    229
MAL-ED           NEPAL                          1                                0       35    229
MAL-ED           NEPAL                          1                                1        4    229
MAL-ED           PERU                           0                                0      180    222
MAL-ED           PERU                           0                                1        1    222
MAL-ED           PERU                           1                                0       36    222
MAL-ED           PERU                           1                                1        5    222
MAL-ED           SOUTH AFRICA                   0                                0      199    241
MAL-ED           SOUTH AFRICA                   0                                1        2    241
MAL-ED           SOUTH AFRICA                   1                                0       38    241
MAL-ED           SOUTH AFRICA                   1                                1        2    241
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                0      187    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                1        0    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                0       37    225
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                1        1    225
NIH-Birth        BANGLADESH                     0                                0      248    462
NIH-Birth        BANGLADESH                     0                                1        6    462
NIH-Birth        BANGLADESH                     1                                0      163    462
NIH-Birth        BANGLADESH                     1                                1       45    462
NIH-Crypto       BANGLADESH                     0                                0      419    634
NIH-Crypto       BANGLADESH                     0                                1        5    634
NIH-Crypto       BANGLADESH                     1                                0      186    634
NIH-Crypto       BANGLADESH                     1                                1       24    634
PROBIT           BELARUS                        0                                0     2061   2146
PROBIT           BELARUS                        0                                1        1   2146
PROBIT           BELARUS                        1                                0       84   2146
PROBIT           BELARUS                        1                                1        0   2146
PROVIDE          BANGLADESH                     0                                0      369    563
PROVIDE          BANGLADESH                     0                                1       12    563
PROVIDE          BANGLADESH                     1                                0      157    563
PROVIDE          BANGLADESH                     1                                1       25    563
ResPak           PAKISTAN                       0                                0        3      9
ResPak           PAKISTAN                       0                                1        0      9
ResPak           PAKISTAN                       1                                0        5      9
ResPak           PAKISTAN                       1                                1        1      9
SAS-CompFeed     INDIA                          0                                0      716   1260
SAS-CompFeed     INDIA                          0                                1       18   1260
SAS-CompFeed     INDIA                          1                                0      416   1260
SAS-CompFeed     INDIA                          1                                1      110   1260
SAS-FoodSuppl    INDIA                          0                                0      144    321
SAS-FoodSuppl    INDIA                          0                                1       10    321
SAS-FoodSuppl    INDIA                          1                                0      117    321
SAS-FoodSuppl    INDIA                          1                                1       50    321
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980
ZVITAMBO         ZIMBABWE                       0                                0     1258   1692
ZVITAMBO         ZIMBABWE                       0                                1       37   1692
ZVITAMBO         ZIMBABWE                       1                                0      343   1692
ZVITAMBO         ZIMBABWE                       1                                1       54   1692


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

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: IRC, country: INDIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROBIT, country: BELARUS
* studyid: ResPak, country: PAKISTAN

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
![](/tmp/a0bc3f1d-3727-4870-98c0-152af571db86/0f9b0ccd-042b-431a-99e9-9c25a7564b70/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a0bc3f1d-3727-4870-98c0-152af571db86/0f9b0ccd-042b-431a-99e9-9c25a7564b70/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a0bc3f1d-3727-4870-98c0-152af571db86/0f9b0ccd-042b-431a-99e9-9c25a7564b70/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a0bc3f1d-3727-4870-98c0-152af571db86/0f9b0ccd-042b-431a-99e9-9c25a7564b70/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0195624   0.0080666   0.0310582
COHORTS          GUATEMALA                      1                    NA                0.1309943   0.0839853   0.1780034
COHORTS          PHILIPPINES                    0                    NA                0.0413993   0.0325609   0.0502377
COHORTS          PHILIPPINES                    1                    NA                0.1784981   0.1452148   0.2117815
GMS-Nepal        NEPAL                          0                    NA                0.0411646   0.0181657   0.0641635
GMS-Nepal        NEPAL                          1                    NA                0.1842203   0.1357937   0.2326468
JiVitA-4         BANGLADESH                     0                    NA                0.0237232   0.0169244   0.0305219
JiVitA-4         BANGLADESH                     1                    NA                0.2318300   0.2069507   0.2567093
Keneba           GAMBIA                         0                    NA                0.0268364   0.0186062   0.0350666
Keneba           GAMBIA                         1                    NA                0.1734412   0.1362493   0.2106332
LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
LCNI-5           MALAWI                         1                    NA                0.1604938   0.0804992   0.2404884
NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
NIH-Crypto       BANGLADESH                     0                    NA                0.0117925   0.0015091   0.0220758
NIH-Crypto       BANGLADESH                     1                    NA                0.1142857   0.0712208   0.1573507
PROVIDE          BANGLADESH                     0                    NA                0.0318269   0.0141914   0.0494624
PROVIDE          BANGLADESH                     1                    NA                0.1502680   0.0998266   0.2007094
SAS-CompFeed     INDIA                          0                    NA                0.0246193   0.0163121   0.0329265
SAS-CompFeed     INDIA                          1                    NA                0.2089937   0.1776198   0.2403676
SAS-FoodSuppl    INDIA                          0                    NA                0.0714184   0.0325853   0.1102516
SAS-FoodSuppl    INDIA                          1                    NA                0.2803600   0.2113183   0.3494018
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ZVITAMBO         ZIMBABWE                       0                    NA                0.0284083   0.0193269   0.0374897
ZVITAMBO         ZIMBABWE                       1                    NA                0.1369874   0.1028766   0.1710982


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
JiVitA-4         BANGLADESH                     NA                   NA                0.0961073   0.0860713   0.1061434
Keneba           GAMBIA                         NA                   NA                0.0585078   0.0478474   0.0691682
LCNI-5           MALAWI                         NA                   NA                0.0260116   0.0141438   0.0378793
NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
NIH-Crypto       BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
PROVIDE          BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
SAS-CompFeed     INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
SAS-FoodSuppl    INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0537825   0.0430304   0.0645346


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  6.696220   3.358709   13.350176
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  4.311620   3.248990    5.721800
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.475208   2.414169    8.295813
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  9.772302   7.191892   13.278547
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.462906   4.451024    9.384168
LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 19.612346   7.173595   53.619435
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  9.691429   3.748225   25.058208
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  4.721416   2.473616    9.011815
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  8.489023   5.423345   13.287649
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.925597   2.174275    7.087561
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.822091   3.214215    7.234288


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0292181   0.0161151   0.0423210
COHORTS          PHILIPPINES                    0                    NA                0.0337917   0.0257248   0.0418585
GMS-Nepal        NEPAL                          0                    NA                0.0679263   0.0423845   0.0934680
JiVitA-4         BANGLADESH                     0                    NA                0.0723841   0.0630905   0.0816778
Keneba           GAMBIA                         0                    NA                0.0316714   0.0231087   0.0402341
LCNI-5           MALAWI                         0                    NA                0.0178283   0.0077434   0.0279131
NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
NIH-Crypto       BANGLADESH                     0                    NA                0.0339489   0.0188096   0.0490881
PROVIDE          BANGLADESH                     0                    NA                0.0338925   0.0162834   0.0515016
SAS-CompFeed     INDIA                          0                    NA                0.0769680   0.0608435   0.0930925
SAS-FoodSuppl    INDIA                          0                    NA                0.1154974   0.0728673   0.1581275
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ZVITAMBO         ZIMBABWE                       0                    NA                0.0253742   0.0168807   0.0338677


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.5989702   0.3434918   0.7550298
COHORTS          PHILIPPINES                    0                    NA                0.4494112   0.3533231   0.5312218
GMS-Nepal        NEPAL                          0                    NA                0.6226576   0.3807710   0.7700572
JiVitA-4         BANGLADESH                     0                    NA                0.7531595   0.6805632   0.8092574
Keneba           GAMBIA                         0                    NA                0.5413189   0.4158978   0.6398090
LCNI-5           MALAWI                         0                    NA                0.6853973   0.3407366   0.8498706
NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
NIH-Crypto       BANGLADESH                     0                    NA                0.7421926   0.4316899   0.8830486
PROVIDE          BANGLADESH                     0                    NA                0.5157152   0.2399751   0.6914156
SAS-CompFeed     INDIA                          0                    NA                0.7576538   0.6425351   0.8356995
SAS-FoodSuppl    INDIA                          0                    NA                0.6179113   0.3799648   0.7645428
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ZVITAMBO         ZIMBABWE                       0                    NA                0.4717929   0.3255574   0.5863210

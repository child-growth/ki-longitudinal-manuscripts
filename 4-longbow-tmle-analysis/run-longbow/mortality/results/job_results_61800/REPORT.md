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

studyid          country                        ever_underweight06    co_occurence   n_cell      n  outcome_variable 
---------------  -----------------------------  -------------------  -------------  -------  -----  -----------------
CMC-V-BCS-2002   INDIA                          0                                0      188    369  co_occurence     
CMC-V-BCS-2002   INDIA                          0                                1        1    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                0      159    369  co_occurence     
CMC-V-BCS-2002   INDIA                          1                                1       21    369  co_occurence     
CMIN             BANGLADESH                     0                                0      109    237  co_occurence     
CMIN             BANGLADESH                     0                                1        2    237  co_occurence     
CMIN             BANGLADESH                     1                                0      102    237  co_occurence     
CMIN             BANGLADESH                     1                                1       24    237  co_occurence     
COHORTS          GUATEMALA                      0                                0      554    779  co_occurence     
COHORTS          GUATEMALA                      0                                1       11    779  co_occurence     
COHORTS          GUATEMALA                      1                                0      187    779  co_occurence     
COHORTS          GUATEMALA                      1                                1       27    779  co_occurence     
COHORTS          PHILIPPINES                    0                                0     1871   2487  co_occurence     
COHORTS          PHILIPPINES                    0                                1       77   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                0      429   2487  co_occurence     
COHORTS          PHILIPPINES                    1                                1      110   2487  co_occurence     
CONTENT          PERU                           0                                0      192    200  co_occurence     
CONTENT          PERU                           0                                1        0    200  co_occurence     
CONTENT          PERU                           1                                0        8    200  co_occurence     
CONTENT          PERU                           1                                1        0    200  co_occurence     
EE               PAKISTAN                       0                                0       94    346  co_occurence     
EE               PAKISTAN                       0                                1        4    346  co_occurence     
EE               PAKISTAN                       1                                0      178    346  co_occurence     
EE               PAKISTAN                       1                                1       70    346  co_occurence     
GMS-Nepal        NEPAL                          0                                0      283    550  co_occurence     
GMS-Nepal        NEPAL                          0                                1       12    550  co_occurence     
GMS-Nepal        NEPAL                          1                                0      207    550  co_occurence     
GMS-Nepal        NEPAL                          1                                1       48    550  co_occurence     
IRC              INDIA                          0                                0      209    405  co_occurence     
IRC              INDIA                          0                                1        2    405  co_occurence     
IRC              INDIA                          1                                0      171    405  co_occurence     
IRC              INDIA                          1                                1       23    405  co_occurence     
JiVitA-4         BANGLADESH                     0                                0     2944   4547  co_occurence     
JiVitA-4         BANGLADESH                     0                                1       70   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                0     1166   4547  co_occurence     
JiVitA-4         BANGLADESH                     1                                1      367   4547  co_occurence     
Keneba           GAMBIA                         0                                0     1427   1863  co_occurence     
Keneba           GAMBIA                         0                                1       39   1863  co_occurence     
Keneba           GAMBIA                         1                                0      327   1863  co_occurence     
Keneba           GAMBIA                         1                                1       70   1863  co_occurence     
LCNI-5           MALAWI                         0                                0      606    692  co_occurence     
LCNI-5           MALAWI                         0                                1        5    692  co_occurence     
LCNI-5           MALAWI                         1                                0       68    692  co_occurence     
LCNI-5           MALAWI                         1                                1       13    692  co_occurence     
MAL-ED           BANGLADESH                     0                                0      147    221  co_occurence     
MAL-ED           BANGLADESH                     0                                1        3    221  co_occurence     
MAL-ED           BANGLADESH                     1                                0       60    221  co_occurence     
MAL-ED           BANGLADESH                     1                                1       11    221  co_occurence     
MAL-ED           BRAZIL                         0                                0      168    180  co_occurence     
MAL-ED           BRAZIL                         0                                1        0    180  co_occurence     
MAL-ED           BRAZIL                         1                                0       11    180  co_occurence     
MAL-ED           BRAZIL                         1                                1        1    180  co_occurence     
MAL-ED           INDIA                          0                                0      130    228  co_occurence     
MAL-ED           INDIA                          0                                1        0    228  co_occurence     
MAL-ED           INDIA                          1                                0       81    228  co_occurence     
MAL-ED           INDIA                          1                                1       17    228  co_occurence     
MAL-ED           NEPAL                          0                                0      190    229  co_occurence     
MAL-ED           NEPAL                          0                                1        0    229  co_occurence     
MAL-ED           NEPAL                          1                                0       35    229  co_occurence     
MAL-ED           NEPAL                          1                                1        4    229  co_occurence     
MAL-ED           PERU                           0                                0      180    222  co_occurence     
MAL-ED           PERU                           0                                1        1    222  co_occurence     
MAL-ED           PERU                           1                                0       36    222  co_occurence     
MAL-ED           PERU                           1                                1        5    222  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                0      199    241  co_occurence     
MAL-ED           SOUTH AFRICA                   0                                1        2    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                0       38    241  co_occurence     
MAL-ED           SOUTH AFRICA                   1                                1        2    241  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                0      187    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                                1        0    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                0       37    225  co_occurence     
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                                1        1    225  co_occurence     
NIH-Birth        BANGLADESH                     0                                0      248    462  co_occurence     
NIH-Birth        BANGLADESH                     0                                1        6    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                0      163    462  co_occurence     
NIH-Birth        BANGLADESH                     1                                1       45    462  co_occurence     
NIH-Crypto       BANGLADESH                     0                                0      419    634  co_occurence     
NIH-Crypto       BANGLADESH                     0                                1        5    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                0      186    634  co_occurence     
NIH-Crypto       BANGLADESH                     1                                1       24    634  co_occurence     
PROBIT           BELARUS                        0                                0     2061   2146  co_occurence     
PROBIT           BELARUS                        0                                1        1   2146  co_occurence     
PROBIT           BELARUS                        1                                0       84   2146  co_occurence     
PROBIT           BELARUS                        1                                1        0   2146  co_occurence     
PROVIDE          BANGLADESH                     0                                0      369    563  co_occurence     
PROVIDE          BANGLADESH                     0                                1       12    563  co_occurence     
PROVIDE          BANGLADESH                     1                                0      157    563  co_occurence     
PROVIDE          BANGLADESH                     1                                1       25    563  co_occurence     
ResPak           PAKISTAN                       0                                0        3      9  co_occurence     
ResPak           PAKISTAN                       0                                1        0      9  co_occurence     
ResPak           PAKISTAN                       1                                0        5      9  co_occurence     
ResPak           PAKISTAN                       1                                1        1      9  co_occurence     
SAS-CompFeed     INDIA                          0                                0      716   1260  co_occurence     
SAS-CompFeed     INDIA                          0                                1       18   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                0      416   1260  co_occurence     
SAS-CompFeed     INDIA                          1                                1      110   1260  co_occurence     
SAS-FoodSuppl    INDIA                          0                                0      144    321  co_occurence     
SAS-FoodSuppl    INDIA                          0                                1       10    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                0      117    321  co_occurence     
SAS-FoodSuppl    INDIA                          1                                1       50    321  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980  co_occurence     
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                0     1258   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       0                                1       37   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                0      343   1692  co_occurence     
ZVITAMBO         ZIMBABWE                       1                                1       54   1692  co_occurence     


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
![](/tmp/aba00d05-3d60-47d6-8339-90fdb7188d2d/bece53c8-b6e7-4633-8e28-78b441545f07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aba00d05-3d60-47d6-8339-90fdb7188d2d/bece53c8-b6e7-4633-8e28-78b441545f07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aba00d05-3d60-47d6-8339-90fdb7188d2d/bece53c8-b6e7-4633-8e28-78b441545f07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aba00d05-3d60-47d6-8339-90fdb7188d2d/bece53c8-b6e7-4633-8e28-78b441545f07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0198531   0.0082637   0.0314424
COHORTS          GUATEMALA                      1                    NA                0.1317174   0.0849141   0.1785207
COHORTS          PHILIPPINES                    0                    NA                0.0414652   0.0326300   0.0503005
COHORTS          PHILIPPINES                    1                    NA                0.1797668   0.1464590   0.2130746
GMS-Nepal        NEPAL                          0                    NA                0.0432308   0.0207713   0.0656902
GMS-Nepal        NEPAL                          1                    NA                0.1960934   0.1481183   0.2440685
JiVitA-4         BANGLADESH                     0                    NA                0.0236916   0.0168820   0.0305013
JiVitA-4         BANGLADESH                     1                    NA                0.2323301   0.2075029   0.2571574
Keneba           GAMBIA                         0                    NA                0.0269029   0.0186825   0.0351233
Keneba           GAMBIA                         1                    NA                0.1692607   0.1322900   0.2062314
LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
LCNI-5           MALAWI                         1                    NA                0.1604938   0.0804992   0.2404884
NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
NIH-Crypto       BANGLADESH                     0                    NA                0.0117925   0.0015091   0.0220758
NIH-Crypto       BANGLADESH                     1                    NA                0.1142857   0.0712208   0.1573507
PROVIDE          BANGLADESH                     0                    NA                0.0315163   0.0138715   0.0491611
PROVIDE          BANGLADESH                     1                    NA                0.1407554   0.0901820   0.1913287
SAS-CompFeed     INDIA                          0                    NA                0.0246193   0.0163121   0.0329265
SAS-CompFeed     INDIA                          1                    NA                0.2089937   0.1776198   0.2403676
SAS-FoodSuppl    INDIA                          0                    NA                0.0685702   0.0296081   0.1075324
SAS-FoodSuppl    INDIA                          1                    NA                0.2832114   0.2140239   0.3523989
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ZVITAMBO         ZIMBABWE                       0                    NA                0.0283683   0.0192845   0.0374522
ZVITAMBO         ZIMBABWE                       1                    NA                0.1351024   0.1008760   0.1693287


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
COHORTS          GUATEMALA                      1                    0                  6.634610   3.345500   13.157389
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  4.335362   3.270473    5.746986
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.535968   2.550143    8.068179
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  9.806416   7.214224   13.330026
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.291541   4.325142    9.151951
LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 19.612346   7.173595   53.619435
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  9.691429   3.748225   25.058208
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  4.466117   2.296215    8.686557
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  8.489023   5.423345   13.287649
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  4.130239   2.238153    7.621852
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  4.762437   3.164349    7.167606


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.0289274   0.0157967   0.0420581
COHORTS          PHILIPPINES                    0                    NA                0.0337258   0.0256611   0.0417904
GMS-Nepal        NEPAL                          0                    NA                0.0658601   0.0404880   0.0912323
JiVitA-4         BANGLADESH                     0                    NA                0.0724157   0.0631095   0.0817219
Keneba           GAMBIA                         0                    NA                0.0316049   0.0230394   0.0401704
LCNI-5           MALAWI                         0                    NA                0.0178283   0.0077434   0.0279131
NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
NIH-Crypto       BANGLADESH                     0                    NA                0.0339489   0.0188096   0.0490881
PROVIDE          BANGLADESH                     0                    NA                0.0342031   0.0165750   0.0518312
SAS-CompFeed     INDIA                          0                    NA                0.0769680   0.0608435   0.0930925
SAS-FoodSuppl    INDIA                          0                    NA                0.1183457   0.0755840   0.1611073
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ZVITAMBO         ZIMBABWE                       0                    NA                0.0254142   0.0169151   0.0339132


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
COHORTS          GUATEMALA                      0                    NA                0.5930119   0.3358540   0.7505981
COHORTS          PHILIPPINES                    0                    NA                0.4485346   0.3525134   0.5303159
GMS-Nepal        NEPAL                          0                    NA                0.6037180   0.3717206   0.7500485
JiVitA-4         BANGLADESH                     0                    NA                0.7534876   0.6806886   0.8096893
Keneba           GAMBIA                         0                    NA                0.5401827   0.4149163   0.6386295
LCNI-5           MALAWI                         0                    NA                0.6853973   0.3407366   0.8498706
NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
NIH-Crypto       BANGLADESH                     0                    NA                0.7421926   0.4316899   0.8830486
PROVIDE          BANGLADESH                     0                    NA                0.5204416   0.2435675   0.6959725
SAS-CompFeed     INDIA                          0                    NA                0.7576538   0.6425351   0.8356995
SAS-FoodSuppl    INDIA                          0                    NA                0.6331493   0.3909699   0.7790266
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ZVITAMBO         ZIMBABWE                       0                    NA                0.4725361   0.3261482   0.5871227

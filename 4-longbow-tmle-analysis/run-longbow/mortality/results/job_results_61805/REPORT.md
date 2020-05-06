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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_swasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  ---------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                              0      287     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                              1       14     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              0       55     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                              1       14     370  pers_wasted624   
CMIN             BANGLADESH                     0                              0      221     252  pers_wasted624   
CMIN             BANGLADESH                     0                              1       20     252  pers_wasted624   
CMIN             BANGLADESH                     1                              0        6     252  pers_wasted624   
CMIN             BANGLADESH                     1                              1        5     252  pers_wasted624   
COHORTS          GUATEMALA                      0                              0      914    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                              1       37    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                              0       62    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                              1        4    1017  pers_wasted624   
COHORTS          INDIA                          0                              0     5796    6892  pers_wasted624   
COHORTS          INDIA                          0                              1      488    6892  pers_wasted624   
COHORTS          INDIA                          1                              0      326    6892  pers_wasted624   
COHORTS          INDIA                          1                              1      282    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                              0     2431    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                              1      175    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                              0      151    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                              1       51    2808  pers_wasted624   
CONTENT          PERU                           0                              0      214     215  pers_wasted624   
CONTENT          PERU                           0                              1        0     215  pers_wasted624   
CONTENT          PERU                           1                              0        1     215  pers_wasted624   
CONTENT          PERU                           1                              1        0     215  pers_wasted624   
EE               PAKISTAN                       0                              0      298     374  pers_wasted624   
EE               PAKISTAN                       0                              1       37     374  pers_wasted624   
EE               PAKISTAN                       1                              0       27     374  pers_wasted624   
EE               PAKISTAN                       1                              1       12     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                              0      433     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                              1       83     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              0       48     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                              1       26     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              0      270     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                              1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              0        0     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                              1        1     274  pers_wasted624   
IRC              INDIA                          0                              0      265     410  pers_wasted624   
IRC              INDIA                          0                              1       19     410  pers_wasted624   
IRC              INDIA                          1                              0       97     410  pers_wasted624   
IRC              INDIA                          1                              1       29     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              0    13643   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                              1     2864   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              0      372   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                              1      381   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              0     4586    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                              1      519    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              0       91    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                              1       43    5239  pers_wasted624   
Keneba           GAMBIA                         0                              0     1935    2298  pers_wasted624   
Keneba           GAMBIA                         0                              1      144    2298  pers_wasted624   
Keneba           GAMBIA                         1                              0      160    2298  pers_wasted624   
Keneba           GAMBIA                         1                              1       59    2298  pers_wasted624   
LCNI-5           MALAWI                         0                              0      784     797  pers_wasted624   
LCNI-5           MALAWI                         0                              1       13     797  pers_wasted624   
LCNI-5           MALAWI                         1                              0        0     797  pers_wasted624   
LCNI-5           MALAWI                         1                              1        0     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                              0      211     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                              1       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              0       12     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                              1        4     240  pers_wasted624   
MAL-ED           BRAZIL                         0                              0      203     207  pers_wasted624   
MAL-ED           BRAZIL                         0                              1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              0        2     207  pers_wasted624   
MAL-ED           BRAZIL                         1                              1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                              0      198     235  pers_wasted624   
MAL-ED           INDIA                          0                              1       16     235  pers_wasted624   
MAL-ED           INDIA                          1                              0        9     235  pers_wasted624   
MAL-ED           INDIA                          1                              1       12     235  pers_wasted624   
MAL-ED           NEPAL                          0                              0      227     235  pers_wasted624   
MAL-ED           NEPAL                          0                              1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                              0        6     235  pers_wasted624   
MAL-ED           NEPAL                          1                              1        1     235  pers_wasted624   
MAL-ED           PERU                           0                              0      266     270  pers_wasted624   
MAL-ED           PERU                           0                              1        3     270  pers_wasted624   
MAL-ED           PERU                           1                              0        1     270  pers_wasted624   
MAL-ED           PERU                           1                              1        0     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              0      251     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                              1        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              0        6     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                              1        1     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      240     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0        5     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              0      445     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                              1       45     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              0       36     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                              1       16     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              0      645     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                              1       37     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              0       41     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                              1        7     730  pers_wasted624   
PROBIT           BELARUS                        0                              0    15281   16596  pers_wasted624   
PROBIT           BELARUS                        0                              1       13   16596  pers_wasted624   
PROBIT           BELARUS                        1                              0     1297   16596  pers_wasted624   
PROBIT           BELARUS                        1                              1        5   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                              0      557     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                              1       33     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              0       18     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                              1        7     615  pers_wasted624   
ResPak           PAKISTAN                       0                              0      168     234  pers_wasted624   
ResPak           PAKISTAN                       0                              1       28     234  pers_wasted624   
ResPak           PAKISTAN                       1                              0       19     234  pers_wasted624   
ResPak           PAKISTAN                       1                              1       19     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                              0     1109    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                              1      182    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                              0       47    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                              1       46    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              0      315     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                              1       59     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              0       11     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                              1       17     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              0     1871    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                              1       72    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              0       45    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                              1       30    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              0     9623   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                              1      359   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              0      651   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                              1       98   10731  pers_wasted624   


The following strata were considered:

* studyid: CMC-V-BCS-2002, country: INDIA
* studyid: CMIN, country: BANGLADESH
* studyid: COHORTS, country: GUATEMALA
* studyid: COHORTS, country: INDIA
* studyid: COHORTS, country: PHILIPPINES
* studyid: CONTENT, country: PERU
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: IRC, country: INDIA
* studyid: JiVitA-3, country: BANGLADESH
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

* studyid: COHORTS, country: GUATEMALA
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
* studyid: LCNI-5, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: BRAZIL
* studyid: MAL-ED, country: NEPAL
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/c7bdda16-76e8-4e84-b49e-b5807f7d5c8f/d710c639-6360-4aa4-b396-a03dbf7aa18d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c7bdda16-76e8-4e84-b49e-b5807f7d5c8f/d710c639-6360-4aa4-b396-a03dbf7aa18d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c7bdda16-76e8-4e84-b49e-b5807f7d5c8f/d710c639-6360-4aa4-b396-a03dbf7aa18d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c7bdda16-76e8-4e84-b49e-b5807f7d5c8f/d710c639-6360-4aa4-b396-a03dbf7aa18d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0463051   0.0223740   0.0702363
CMC-V-BCS-2002   INDIA                          1                    NA                0.1941167   0.0957365   0.2924969
CMIN             BANGLADESH                     0                    NA                0.0829876   0.0480898   0.1178853
CMIN             BANGLADESH                     1                    NA                0.4545455   0.1597077   0.7493832
COHORTS          INDIA                          0                    NA                0.0781258   0.0714970   0.0847546
COHORTS          INDIA                          1                    NA                0.4513089   0.4119213   0.4906964
COHORTS          PHILIPPINES                    0                    NA                0.0669271   0.0573211   0.0765331
COHORTS          PHILIPPINES                    1                    NA                0.2611346   0.2017167   0.3205524
EE               PAKISTAN                       0                    NA                0.1126222   0.0785746   0.1466697
EE               PAKISTAN                       1                    NA                0.2788536   0.1231714   0.4345358
GMS-Nepal        NEPAL                          0                    NA                0.1605022   0.1287683   0.1922360
GMS-Nepal        NEPAL                          1                    NA                0.3250148   0.2125107   0.4375190
IRC              INDIA                          0                    NA                0.0678801   0.0384799   0.0972803
IRC              INDIA                          1                    NA                0.2206912   0.1480185   0.2933639
JiVitA-3         BANGLADESH                     0                    NA                0.1735995   0.1673171   0.1798818
JiVitA-3         BANGLADESH                     1                    NA                0.5004047   0.4601179   0.5406914
JiVitA-4         BANGLADESH                     0                    NA                0.1017360   0.0913741   0.1120979
JiVitA-4         BANGLADESH                     1                    NA                0.3143167   0.2177888   0.4108445
Keneba           GAMBIA                         0                    NA                0.0696491   0.0587172   0.0805809
Keneba           GAMBIA                         1                    NA                0.2525368   0.1939766   0.3110969
MAL-ED           INDIA                          0                    NA                0.0747664   0.0394524   0.1100803
MAL-ED           INDIA                          1                    NA                0.5714286   0.3593206   0.7835366
NIH-Birth        BANGLADESH                     0                    NA                0.0918372   0.0662488   0.1174256
NIH-Birth        BANGLADESH                     1                    NA                0.3327015   0.2011759   0.4642271
NIH-Crypto       BANGLADESH                     0                    NA                0.0542522   0.0372404   0.0712640
NIH-Crypto       BANGLADESH                     1                    NA                0.1458333   0.0459197   0.2457470
PROBIT           BELARUS                        0                    NA                0.0008500   0.0002192   0.0014809
PROBIT           BELARUS                        1                    NA                0.0038402   0.0006414   0.0070391
PROVIDE          BANGLADESH                     0                    NA                0.0559322   0.0373752   0.0744892
PROVIDE          BANGLADESH                     1                    NA                0.2800000   0.1038524   0.4561476
ResPak           PAKISTAN                       0                    NA                0.1421584   0.0929182   0.1913985
ResPak           PAKISTAN                       1                    NA                0.5435374   0.3818805   0.7051943
SAS-CompFeed     INDIA                          0                    NA                0.1420298   0.1233682   0.1606914
SAS-CompFeed     INDIA                          1                    NA                0.4663436   0.4117601   0.5209271
SAS-FoodSuppl    INDIA                          0                    NA                0.1589836   0.1218392   0.1961280
SAS-FoodSuppl    INDIA                          1                    NA                0.5863598   0.3851090   0.7876106
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0371049   0.0287025   0.0455072
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3881546   0.2766214   0.4996878
ZVITAMBO         ZIMBABWE                       0                    NA                0.0360498   0.0323975   0.0397020
ZVITAMBO         ZIMBABWE                       1                    NA                0.1270952   0.1031616   0.1510288


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
MAL-ED           INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
NIH-Crypto       BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
PROBIT           BELARUS                        NA                   NA                0.0010846   0.0004977   0.0016715
PROVIDE          BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
SAS-CompFeed     INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
SAS-FoodSuppl    INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075


### Parameter: RR


studyid          country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  4.192121   2.031070    8.652521
CMIN             BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
CMIN             BANGLADESH                     1                    0                  5.477273   2.528380   11.865507
COHORTS          INDIA                          0                    0                  1.000000   1.000000    1.000000
COHORTS          INDIA                          1                    0                  5.776696   5.116629    6.521915
COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  3.901774   2.984804    5.100449
EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
EE               PAKISTAN                       1                    0                  2.476010   1.307773    4.687836
GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  2.024987   1.359229    3.016837
IRC              INDIA                          0                    0                  1.000000   1.000000    1.000000
IRC              INDIA                          1                    0                  3.251190   1.887704    5.599520
JiVitA-3         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  2.882524   2.643105    3.143631
JiVitA-4         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  3.089531   2.238987    4.263179
Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
Keneba           GAMBIA                         1                    0                  3.625846   2.741661    4.795180
MAL-ED           INDIA                          0                    0                  1.000000   1.000000    1.000000
MAL-ED           INDIA                          1                    0                  7.642857   4.191447   13.936300
NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  3.622731   2.232372    5.879027
NIH-Crypto       BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  2.688063   1.265352    5.710413
PROBIT           BELARUS                        0                    0                  1.000000   1.000000    1.000000
PROBIT           BELARUS                        1                    0                  4.517901   1.371594   14.881545
PROVIDE          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  5.006061   2.458188   10.194764
ResPak           PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  3.823463   2.419318    6.042560
SAS-CompFeed     INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.283421   2.819055    3.824279
SAS-FoodSuppl    INDIA                          0                    0                  1.000000   1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  3.688177   2.432750    5.591473
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.461013   7.253760   15.086355
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  3.525550   2.847741    4.364689


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0293705    0.0099187   0.0488224
CMIN             BANGLADESH                     0                    NA                0.0162188    0.0002139   0.0322237
COHORTS          INDIA                          0                    NA                0.0335980    0.0292460   0.0379499
COHORTS          PHILIPPINES                    0                    NA                0.0135572    0.0089088   0.0182056
EE               PAKISTAN                       0                    NA                0.0183939    0.0013728   0.0354149
GMS-Nepal        NEPAL                          0                    NA                0.0242436    0.0090933   0.0393939
IRC              INDIA                          0                    NA                0.0491930    0.0236683   0.0747178
JiVitA-3         BANGLADESH                     0                    NA                0.0144075    0.0122153   0.0165996
JiVitA-4         BANGLADESH                     0                    NA                0.0055363    0.0026972   0.0083755
Keneba           GAMBIA                         0                    NA                0.0186886    0.0125705   0.0248067
MAL-ED           INDIA                          0                    NA                0.0443826    0.0179485   0.0708166
NIH-Birth        BANGLADESH                     0                    NA                0.0207089    0.0072778   0.0341400
NIH-Crypto       BANGLADESH                     0                    NA                0.0060218   -0.0008431   0.0128867
PROBIT           BELARUS                        0                    NA                0.0002346    0.0000115   0.0004577
PROVIDE          BANGLADESH                     0                    NA                0.0091084    0.0011028   0.0171141
ResPak           PAKISTAN                       0                    NA                0.0586963    0.0262043   0.0911883
SAS-CompFeed     INDIA                          0                    NA                0.0227101    0.0157049   0.0297153
SAS-FoodSuppl    INDIA                          0                    NA                0.0300711    0.0130791   0.0470631
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134402    0.0083476   0.0185329
ZVITAMBO         ZIMBABWE                       0                    NA                0.0065371    0.0047849   0.0082894


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.3881108    0.1212735   0.5739193
CMIN             BANGLADESH                     0                    NA                0.1634855   -0.0027793   0.3021829
COHORTS          INDIA                          0                    NA                0.3007236    0.2653985   0.3343500
COHORTS          PHILIPPINES                    0                    NA                0.1684452    0.1119921   0.2213095
EE               PAKISTAN                       0                    NA                0.1403940    0.0052889   0.2571486
GMS-Nepal        NEPAL                          0                    NA                0.1312268    0.0472003   0.2078430
IRC              INDIA                          0                    NA                0.4201905    0.1928031   0.5835229
JiVitA-3         BANGLADESH                     0                    NA                0.0766327    0.0653679   0.0877618
JiVitA-4         BANGLADESH                     0                    NA                0.0516102    0.0252910   0.0772187
Keneba           GAMBIA                         0                    NA                0.2115588    0.1444934   0.2733668
MAL-ED           INDIA                          0                    NA                0.3724967    0.1536730   0.5347420
NIH-Birth        BANGLADESH                     0                    NA                0.1840037    0.0630238   0.2893629
NIH-Crypto       BANGLADESH                     0                    NA                0.0999067   -0.0178485   0.2040388
PROBIT           BELARUS                        0                    NA                0.2162940   -0.0619533   0.4216364
PROVIDE          BANGLADESH                     0                    NA                0.1400424    0.0151570   0.2490913
ResPak           PAKISTAN                       0                    NA                0.2922327    0.1250817   0.4274499
SAS-CompFeed     INDIA                          0                    NA                0.1378542    0.0963970   0.1774094
SAS-FoodSuppl    INDIA                          0                    NA                0.1590603    0.0682460   0.2410233
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2659055    0.1719486   0.3492014
ZVITAMBO         ZIMBABWE                       0                    NA                0.1535014    0.1136541   0.1915572

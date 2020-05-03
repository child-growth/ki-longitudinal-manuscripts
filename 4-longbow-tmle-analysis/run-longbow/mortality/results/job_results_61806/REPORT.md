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

**Intervention Variable:** pers_wasted06

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

studyid          country                        pers_wasted06    pers_wasted624   n_cell       n  outcome_variable 
---------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
CMC-V-BCS-2002   INDIA                          0                             0      307     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          0                             1       11     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             0       35     370  pers_wasted624   
CMC-V-BCS-2002   INDIA                          1                             1       17     370  pers_wasted624   
CMIN             BANGLADESH                     0                             0      223     252  pers_wasted624   
CMIN             BANGLADESH                     0                             1       19     252  pers_wasted624   
CMIN             BANGLADESH                     1                             0        4     252  pers_wasted624   
CMIN             BANGLADESH                     1                             1        6     252  pers_wasted624   
COHORTS          GUATEMALA                      0                             0      934    1017  pers_wasted624   
COHORTS          GUATEMALA                      0                             1       31    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             0       42    1017  pers_wasted624   
COHORTS          GUATEMALA                      1                             1       10    1017  pers_wasted624   
COHORTS          INDIA                          0                             0     5684    6892  pers_wasted624   
COHORTS          INDIA                          0                             1      277    6892  pers_wasted624   
COHORTS          INDIA                          1                             0      438    6892  pers_wasted624   
COHORTS          INDIA                          1                             1      493    6892  pers_wasted624   
COHORTS          PHILIPPINES                    0                             0     2467    2808  pers_wasted624   
COHORTS          PHILIPPINES                    0                             1      161    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             0      115    2808  pers_wasted624   
COHORTS          PHILIPPINES                    1                             1       65    2808  pers_wasted624   
CONTENT          PERU                           0                             0      215     215  pers_wasted624   
CONTENT          PERU                           0                             1        0     215  pers_wasted624   
CONTENT          PERU                           1                             0        0     215  pers_wasted624   
CONTENT          PERU                           1                             1        0     215  pers_wasted624   
EE               PAKISTAN                       0                             0      313     374  pers_wasted624   
EE               PAKISTAN                       0                             1       35     374  pers_wasted624   
EE               PAKISTAN                       1                             0       12     374  pers_wasted624   
EE               PAKISTAN                       1                             1       14     374  pers_wasted624   
GMS-Nepal        NEPAL                          0                             0      452     590  pers_wasted624   
GMS-Nepal        NEPAL                          0                             1       70     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             0       29     590  pers_wasted624   
GMS-Nepal        NEPAL                          1                             1       39     590  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             0      264     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             0        6     274  pers_wasted624   
Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
IRC              INDIA                          0                             0      323     410  pers_wasted624   
IRC              INDIA                          0                             1       26     410  pers_wasted624   
IRC              INDIA                          1                             0       39     410  pers_wasted624   
IRC              INDIA                          1                             1       22     410  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             0    13683   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     0                             1     2538   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             0      332   17260  pers_wasted624   
JiVitA-3         BANGLADESH                     1                             1      707   17260  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             0     4506    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     0                             1      393    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             0      171    5239  pers_wasted624   
JiVitA-4         BANGLADESH                     1                             1      169    5239  pers_wasted624   
Keneba           GAMBIA                         0                             0     2056    2298  pers_wasted624   
Keneba           GAMBIA                         0                             1      161    2298  pers_wasted624   
Keneba           GAMBIA                         1                             0       39    2298  pers_wasted624   
Keneba           GAMBIA                         1                             1       42    2298  pers_wasted624   
LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
MAL-ED           BANGLADESH                     0                             0      219     240  pers_wasted624   
MAL-ED           BANGLADESH                     0                             1       13     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             0        4     240  pers_wasted624   
MAL-ED           BANGLADESH                     1                             1        4     240  pers_wasted624   
MAL-ED           BRAZIL                         0                             0      205     207  pers_wasted624   
MAL-ED           BRAZIL                         0                             1        1     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             0        0     207  pers_wasted624   
MAL-ED           BRAZIL                         1                             1        1     207  pers_wasted624   
MAL-ED           INDIA                          0                             0      202     235  pers_wasted624   
MAL-ED           INDIA                          0                             1       18     235  pers_wasted624   
MAL-ED           INDIA                          1                             0        5     235  pers_wasted624   
MAL-ED           INDIA                          1                             1       10     235  pers_wasted624   
MAL-ED           NEPAL                          0                             0      231     235  pers_wasted624   
MAL-ED           NEPAL                          0                             1        1     235  pers_wasted624   
MAL-ED           NEPAL                          1                             0        2     235  pers_wasted624   
MAL-ED           NEPAL                          1                             1        1     235  pers_wasted624   
MAL-ED           PERU                           0                             0      267     270  pers_wasted624   
MAL-ED           PERU                           0                             1        3     270  pers_wasted624   
MAL-ED           PERU                           1                             0        0     270  pers_wasted624   
MAL-ED           PERU                           1                             1        0     270  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             0      256     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             0        1     259  pers_wasted624   
MAL-ED           SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      245     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0        0     245  pers_wasted624   
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             0      456     542  pers_wasted624   
NIH-Birth        BANGLADESH                     0                             1       36     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             0       25     542  pers_wasted624   
NIH-Birth        BANGLADESH                     1                             1       25     542  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             0      671     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     0                             1       39     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             0       15     730  pers_wasted624   
NIH-Crypto       BANGLADESH                     1                             1        5     730  pers_wasted624   
PROBIT           BELARUS                        0                             0    15915   16596  pers_wasted624   
PROBIT           BELARUS                        0                             1        9   16596  pers_wasted624   
PROBIT           BELARUS                        1                             0      663   16596  pers_wasted624   
PROBIT           BELARUS                        1                             1        9   16596  pers_wasted624   
PROVIDE          BANGLADESH                     0                             0      568     615  pers_wasted624   
PROVIDE          BANGLADESH                     0                             1       33     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             0        7     615  pers_wasted624   
PROVIDE          BANGLADESH                     1                             1        7     615  pers_wasted624   
ResPak           PAKISTAN                       0                             0      178     234  pers_wasted624   
ResPak           PAKISTAN                       0                             1       32     234  pers_wasted624   
ResPak           PAKISTAN                       1                             0        9     234  pers_wasted624   
ResPak           PAKISTAN                       1                             1       15     234  pers_wasted624   
SAS-CompFeed     INDIA                          0                             0     1095    1384  pers_wasted624   
SAS-CompFeed     INDIA                          0                             1      162    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             0       61    1384  pers_wasted624   
SAS-CompFeed     INDIA                          1                             1       66    1384  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             0      281     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          0                             1       25     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             0       45     402  pers_wasted624   
SAS-FoodSuppl    INDIA                          1                             1       51     402  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       72    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0       22    2018  pers_wasted624   
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       30    2018  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             0     9865   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       0                             1      346   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             0      409   10731  pers_wasted624   
ZVITAMBO         ZIMBABWE                       1                             1      111   10731  pers_wasted624   


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

* studyid: CMIN, country: BANGLADESH
* studyid: CONTENT, country: PERU
* studyid: Guatemala BSC, country: GUATEMALA
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
![](/tmp/deba32a0-93b7-42ed-98ca-4bc5d97deade/e5e9dfc0-e2b0-46b3-9aa2-0f925d513785/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/deba32a0-93b7-42ed-98ca-4bc5d97deade/e5e9dfc0-e2b0-46b3-9aa2-0f925d513785/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/deba32a0-93b7-42ed-98ca-4bc5d97deade/e5e9dfc0-e2b0-46b3-9aa2-0f925d513785/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/deba32a0-93b7-42ed-98ca-4bc5d97deade/e5e9dfc0-e2b0-46b3-9aa2-0f925d513785/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0337979   0.0137265   0.0538694
CMC-V-BCS-2002   INDIA                          1                    NA                0.3125798   0.1809753   0.4441844
COHORTS          GUATEMALA                      0                    NA                0.0319748   0.0208483   0.0431014
COHORTS          GUATEMALA                      1                    NA                0.1865176   0.0566120   0.3164231
COHORTS          INDIA                          0                    NA                0.0469835   0.0416306   0.0523365
COHORTS          INDIA                          1                    NA                0.5118359   0.4799301   0.5437416
COHORTS          PHILIPPINES                    0                    NA                0.0614574   0.0522911   0.0706238
COHORTS          PHILIPPINES                    1                    NA                0.3537053   0.2853084   0.4221021
EE               PAKISTAN                       0                    NA                0.1004950   0.0688590   0.1321311
EE               PAKISTAN                       1                    NA                0.5343401   0.3234325   0.7452477
GMS-Nepal        NEPAL                          0                    NA                0.1350834   0.1058238   0.1643430
GMS-Nepal        NEPAL                          1                    NA                0.5669285   0.4449675   0.6888894
IRC              INDIA                          0                    NA                0.0741132   0.0465063   0.1017200
IRC              INDIA                          1                    NA                0.3753147   0.2499069   0.5007225
JiVitA-3         BANGLADESH                     0                    NA                0.1565181   0.1503512   0.1626851
JiVitA-3         BANGLADESH                     1                    NA                0.6796681   0.6482827   0.7110535
JiVitA-4         BANGLADESH                     0                    NA                0.0805551   0.0712112   0.0898991
JiVitA-4         BANGLADESH                     1                    NA                0.4883357   0.4220032   0.5546683
Keneba           GAMBIA                         0                    NA                0.0730058   0.0621835   0.0838281
Keneba           GAMBIA                         1                    NA                0.4873907   0.3719792   0.6028022
LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
MAL-ED           INDIA                          0                    NA                0.0818182   0.0455227   0.1181136
MAL-ED           INDIA                          1                    NA                0.6666667   0.4275982   0.9057351
NIH-Birth        BANGLADESH                     0                    NA                0.0732797   0.0502455   0.0963139
NIH-Birth        BANGLADESH                     1                    NA                0.4972542   0.3530236   0.6414847
NIH-Crypto       BANGLADESH                     0                    NA                0.0549296   0.0381589   0.0717003
NIH-Crypto       BANGLADESH                     1                    NA                0.2500000   0.0600972   0.4399028
PROBIT           BELARUS                        0                    NA                0.0005652   0.0000742   0.0010561
PROBIT           BELARUS                        1                    NA                0.0133929   0.0041540   0.0226317
PROVIDE          BANGLADESH                     0                    NA                0.0549085   0.0366394   0.0731775
PROVIDE          BANGLADESH                     1                    NA                0.5000000   0.2613176   0.7386824
ResPak           PAKISTAN                       0                    NA                0.1523810   0.1036692   0.2010927
ResPak           PAKISTAN                       1                    NA                0.6250000   0.4308989   0.8191011
SAS-CompFeed     INDIA                          0                    NA                0.1301061   0.1156442   0.1445679
SAS-CompFeed     INDIA                          1                    NA                0.4958557   0.4245532   0.5671581
SAS-FoodSuppl    INDIA                          0                    NA                0.0828019   0.0518662   0.1137377
SAS-FoodSuppl    INDIA                          1                    NA                0.5240242   0.4214129   0.6266354
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0366503   0.0283279   0.0449727
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6003652   0.4704610   0.7302694
ZVITAMBO         ZIMBABWE                       0                    NA                0.0341059   0.0305842   0.0376275
ZVITAMBO         ZIMBABWE                       1                    NA                0.2272366   0.1856762   0.2687971


### Parameter: E(Y)


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
JiVitA-3         BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
JiVitA-4         BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055
Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
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


studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
CMC-V-BCS-2002   INDIA                          1                    0                  9.248499    4.461106   19.173437
COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
COHORTS          GUATEMALA                      1                    0                  5.833261    2.685438   12.670905
COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
COHORTS          INDIA                          1                    0                 10.893942    9.571278   12.399386
COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
COHORTS          PHILIPPINES                    1                    0                  5.755289    4.512623    7.340155
EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
EE               PAKISTAN                       1                    0                  5.317080    3.202830    8.826987
GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
GMS-Nepal        NEPAL                          1                    0                  4.196878    3.089149    5.701824
IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
IRC              INDIA                          1                    0                  5.064074    3.067561    8.360014
JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-3         BANGLADESH                     1                    0                  4.342424    4.097128    4.602408
JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
JiVitA-4         BANGLADESH                     1                    0                  6.062130    5.075634    7.240359
Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Keneba           GAMBIA                         1                    0                  6.676055    5.048560    8.828202
LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
MAL-ED           INDIA                          1                    0                  8.148148    4.606020   14.414249
NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Birth        BANGLADESH                     1                    0                  6.785705    4.419454   10.418885
NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
NIH-Crypto       BANGLADESH                     1                    0                  4.551282    2.007191   10.319981
PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
PROBIT           BELARUS                        1                    0                 23.696429    8.189156   68.568818
PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
PROVIDE          BANGLADESH                     1                    0                  9.106061    5.088919   16.294295
ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ResPak           PAKISTAN                       1                    0                  4.101562    2.626572    6.404857
SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-CompFeed     INDIA                          1                    0                  3.811165    3.318358    4.377158
SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.000000    1.000000
SAS-FoodSuppl    INDIA                          1                    0                  6.328647    4.149343    9.652558
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.380916   11.966814   22.423211
ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ZVITAMBO         ZIMBABWE                       1                    0                  6.662685    5.401462    8.218398


### Parameter: PAR


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.0418778    0.0207805   0.0629751
COHORTS          GUATEMALA                      0                    NA                0.0083398    0.0024676   0.0142121
COHORTS          INDIA                          0                    NA                0.0647402    0.0589053   0.0705752
COHORTS          PHILIPPINES                    0                    NA                0.0190269    0.0138116   0.0242422
EE               PAKISTAN                       0                    NA                0.0305210    0.0127321   0.0483100
GMS-Nepal        NEPAL                          0                    NA                0.0496624    0.0316286   0.0676961
IRC              INDIA                          0                    NA                0.0429600    0.0221885   0.0637314
JiVitA-3         BANGLADESH                     0                    NA                0.0314888    0.0286485   0.0343291
JiVitA-4         BANGLADESH                     0                    NA                0.0267172    0.0209132   0.0325213
Keneba           GAMBIA                         0                    NA                0.0153319    0.0102624   0.0204014
LCNI-5           MALAWI                         0                    NA                0.0061071    0.0006741   0.0115401
MAL-ED           INDIA                          0                    NA                0.0373308    0.0133773   0.0612842
NIH-Birth        BANGLADESH                     0                    NA                0.0392665    0.0226024   0.0559305
NIH-Crypto       BANGLADESH                     0                    NA                0.0053444   -0.0003673   0.0110561
PROBIT           BELARUS                        0                    NA                0.0005194    0.0002130   0.0008258
PROVIDE          BANGLADESH                     0                    NA                0.0101322    0.0021706   0.0180938
ResPak           PAKISTAN                       0                    NA                0.0484737    0.0209011   0.0760464
SAS-CompFeed     INDIA                          0                    NA                0.0346338    0.0249775   0.0442901
SAS-FoodSuppl    INDIA                          0                    NA                0.1062528    0.0750468   0.1374587
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0138948    0.0087933   0.0189963
ZVITAMBO         ZIMBABWE                       0                    NA                0.0084810    0.0066323   0.0103298


### Parameter: PAF


studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
CMC-V-BCS-2002   INDIA                          0                    NA                0.5533849    0.2925017   0.7180699
COHORTS          GUATEMALA                      0                    NA                0.2068681    0.0614944   0.3297235
COHORTS          INDIA                          0                    NA                0.5794669    0.5403758   0.6152333
COHORTS          PHILIPPINES                    0                    NA                0.2364050    0.1753477   0.2929417
EE               PAKISTAN                       0                    NA                0.2329562    0.0977007   0.3479369
GMS-Nepal        NEPAL                          0                    NA                0.2688146    0.1733371   0.3532648
IRC              INDIA                          0                    NA                0.3669498    0.1919338   0.5040597
JiVitA-3         BANGLADESH                     0                    NA                0.1674876    0.1531790   0.1815545
JiVitA-4         BANGLADESH                     0                    NA                0.2490598    0.1997066   0.2953695
Keneba           GAMBIA                         0                    NA                0.1735600    0.1184021   0.2252669
LCNI-5           MALAWI                         0                    NA                0.3744113    0.0387300   0.5928707
MAL-ED           INDIA                          0                    NA                0.3133117    0.1136573   0.4679927
NIH-Birth        BANGLADESH                     0                    NA                0.3488921    0.2084677   0.4644041
NIH-Crypto       BANGLADESH                     0                    NA                0.0886684   -0.0078075   0.1759087
PROBIT           BELARUS                        0                    NA                0.4788998    0.1448179   0.6824706
PROVIDE          BANGLADESH                     0                    NA                0.1557820    0.0331417   0.2628662
ResPak           PAKISTAN                       0                    NA                0.2413374    0.1014563   0.3594424
SAS-CompFeed     INDIA                          0                    NA                0.2102333    0.1645188   0.2534465
SAS-FoodSuppl    INDIA                          0                    NA                0.5620214    0.4108402   0.6744088
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2748993    0.1815672   0.3575880
ZVITAMBO         ZIMBABWE                       0                    NA                0.1991464    0.1582963   0.2380140

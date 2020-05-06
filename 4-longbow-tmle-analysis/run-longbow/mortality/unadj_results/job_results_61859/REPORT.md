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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0      297     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                    1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                    0       39     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                    1        0     338  dead             
EE                PAKISTAN                       0                    0       93     379  dead             
EE                PAKISTAN                       0                    1        0     379  dead             
EE                PAKISTAN                       1                    0      282     379  dead             
EE                PAKISTAN                       1                    1        4     379  dead             
GMS-Nepal         NEPAL                          0                    0      473     698  dead             
GMS-Nepal         NEPAL                          0                    1        3     698  dead             
GMS-Nepal         NEPAL                          1                    0      217     698  dead             
GMS-Nepal         NEPAL                          1                    1        5     698  dead             
iLiNS-DOSE        MALAWI                         0                    0     1194    1813  dead             
iLiNS-DOSE        MALAWI                         0                    1       73    1813  dead             
iLiNS-DOSE        MALAWI                         1                    0      505    1813  dead             
iLiNS-DOSE        MALAWI                         1                    1       41    1813  dead             
iLiNS-DYAD-M      MALAWI                         0                    0      835    1191  dead             
iLiNS-DYAD-M      MALAWI                         0                    1       23    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                    0      317    1191  dead             
iLiNS-DYAD-M      MALAWI                         1                    1       16    1191  dead             
JiVitA-3          BANGLADESH                     0                    0    15085   27197  dead             
JiVitA-3          BANGLADESH                     0                    1      262   27197  dead             
JiVitA-3          BANGLADESH                     1                    0    11311   27197  dead             
JiVitA-3          BANGLADESH                     1                    1      539   27197  dead             
JiVitA-4          BANGLADESH                     0                    0     3217    5270  dead             
JiVitA-4          BANGLADESH                     0                    1       20    5270  dead             
JiVitA-4          BANGLADESH                     1                    0     2006    5270  dead             
JiVitA-4          BANGLADESH                     1                    1       27    5270  dead             
Keneba            GAMBIA                         0                    0     1669    2479  dead             
Keneba            GAMBIA                         0                    1       25    2479  dead             
Keneba            GAMBIA                         1                    0      751    2479  dead             
Keneba            GAMBIA                         1                    1       34    2479  dead             
MAL-ED            BANGLADESH                     0                    0      167     265  dead             
MAL-ED            BANGLADESH                     0                    1        0     265  dead             
MAL-ED            BANGLADESH                     1                    0       95     265  dead             
MAL-ED            BANGLADESH                     1                    1        3     265  dead             
MAL-ED            INDIA                          0                    0      158     251  dead             
MAL-ED            INDIA                          0                    1        1     251  dead             
MAL-ED            INDIA                          1                    0       91     251  dead             
MAL-ED            INDIA                          1                    1        1     251  dead             
MAL-ED            PERU                           0                    0      171     303  dead             
MAL-ED            PERU                           0                    1        1     303  dead             
MAL-ED            PERU                           1                    0      130     303  dead             
MAL-ED            PERU                           1                    1        1     303  dead             
MAL-ED            SOUTH AFRICA                   0                    0      194     314  dead             
MAL-ED            SOUTH AFRICA                   0                    1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                    0      119     314  dead             
MAL-ED            SOUTH AFRICA                   1                    1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      148     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        1     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0      111     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        2     262  dead             
PROVIDE           BANGLADESH                     0                    0      527     700  dead             
PROVIDE           BANGLADESH                     0                    1        4     700  dead             
PROVIDE           BANGLADESH                     1                    0      169     700  dead             
PROVIDE           BANGLADESH                     1                    1        0     700  dead             
SAS-CompFeed      INDIA                          0                    0      853    1532  dead             
SAS-CompFeed      INDIA                          0                    1       14    1532  dead             
SAS-CompFeed      INDIA                          1                    0      629    1532  dead             
SAS-CompFeed      INDIA                          1                    1       36    1532  dead             
SAS-FoodSuppl     INDIA                          0                    0      226     418  dead             
SAS-FoodSuppl     INDIA                          0                    1        2     418  dead             
SAS-FoodSuppl     INDIA                          1                    0      186     418  dead             
SAS-FoodSuppl     INDIA                          1                    1        4     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1905    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      490    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
VITAMIN-A         INDIA                          0                    0     2265    3898  dead             
VITAMIN-A         INDIA                          0                    1       29    3898  dead             
VITAMIN-A         INDIA                          1                    0     1556    3898  dead             
VITAMIN-A         INDIA                          1                    1       48    3898  dead             
ZVITAMBO          ZIMBABWE                       0                    0     9428   14060  dead             
ZVITAMBO          ZIMBABWE                       0                    1      623   14060  dead             
ZVITAMBO          ZIMBABWE                       1                    0     3527   14060  dead             
ZVITAMBO          ZIMBABWE                       1                    1      482   14060  dead             


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




# Results Detail

## Results Plots
![](/tmp/5254f90c-53df-4a08-a068-4af8a6de3aa2/9a287a8b-1d79-41d4-87ff-662df5d1a33c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5254f90c-53df-4a08-a068-4af8a6de3aa2/9a287a8b-1d79-41d4-87ff-662df5d1a33c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5254f90c-53df-4a08-a068-4af8a6de3aa2/9a287a8b-1d79-41d4-87ff-662df5d1a33c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5254f90c-53df-4a08-a068-4af8a6de3aa2/9a287a8b-1d79-41d4-87ff-662df5d1a33c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0576164   0.0447823   0.0704506
iLiNS-DOSE     MALAWI       1                    NA                0.0750916   0.0529802   0.0972030
iLiNS-DYAD-M   MALAWI       0                    NA                0.0268065   0.0159945   0.0376185
iLiNS-DYAD-M   MALAWI       1                    NA                0.0480480   0.0250679   0.0710282
JiVitA-3       BANGLADESH   0                    NA                0.0170717   0.0149129   0.0192306
JiVitA-3       BANGLADESH   1                    NA                0.0454852   0.0416321   0.0493383
JiVitA-4       BANGLADESH   0                    NA                0.0061786   0.0030109   0.0093462
JiVitA-4       BANGLADESH   1                    NA                0.0132809   0.0084382   0.0181236
Keneba         GAMBIA       0                    NA                0.0147580   0.0090146   0.0205013
Keneba         GAMBIA       1                    NA                0.0433121   0.0290695   0.0575547
SAS-CompFeed   INDIA        0                    NA                0.0161476   0.0094501   0.0228452
SAS-CompFeed   INDIA        1                    NA                0.0541353   0.0283755   0.0798952
VITAMIN-A      INDIA        0                    NA                0.0126417   0.0080692   0.0172141
VITAMIN-A      INDIA        1                    NA                0.0299252   0.0215860   0.0382644
ZVITAMBO       ZIMBABWE     0                    NA                0.0619839   0.0572697   0.0666980
ZVITAMBO       ZIMBABWE     1                    NA                0.1202295   0.1101617   0.1302973


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


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.303302   0.9009364   1.885366
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.792401   0.9587884   3.350793
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.664358   2.2874140   3.103419
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.149508   1.1476063   4.026106
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 2.934828   1.7632402   4.884879
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.352524   1.8229978   6.165349
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.367186   1.4994633   3.737049
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.939690   1.7322250   2.172001


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0052628   -0.0024455   0.0129711
iLiNS-DYAD-M   MALAWI       0                    NA                0.0059391   -0.0011824   0.0130605
JiVitA-3       BANGLADESH   0                    NA                0.0123800    0.0104352   0.0143249
JiVitA-4       BANGLADESH   0                    NA                0.0027398    0.0005043   0.0049754
Keneba         GAMBIA       0                    NA                0.0090420    0.0041509   0.0139330
SAS-CompFeed   INDIA        0                    NA                0.0164894    0.0048572   0.0281217
VITAMIN-A      INDIA        0                    NA                0.0071120    0.0031895   0.0110346
ZVITAMBO       ZIMBABWE     0                    NA                0.0166079    0.0134084   0.0198073


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0836968   -0.0465634   0.1977443
iLiNS-DYAD-M   MALAWI       0                    NA                0.1813699   -0.0587434   0.3670277
JiVitA-3       BANGLADESH   0                    NA                0.4203494    0.3575311   0.4770256
JiVitA-4       BANGLADESH   0                    NA                0.3072125    0.0057944   0.5172482
Keneba         GAMBIA       0                    NA                0.3799152    0.1676233   0.5380635
SAS-CompFeed   INDIA        0                    NA                0.5052364    0.2238700   0.6846005
VITAMIN-A      INDIA        0                    NA                0.3600358    0.1490415   0.5187143
ZVITAMBO       ZIMBABWE     0                    NA                0.2113182    0.1711698   0.2495218

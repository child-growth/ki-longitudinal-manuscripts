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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_co06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                  0      323     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                  1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                  0       11     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                  1        0     336  dead624          
EE                PAKISTAN                       0                  0      310     374  dead624          
EE                PAKISTAN                       0                  1        2     374  dead624          
EE                PAKISTAN                       1                  0       60     374  dead624          
EE                PAKISTAN                       1                  1        2     374  dead624          
GMS-Nepal         NEPAL                          0                  0      557     592  dead624          
GMS-Nepal         NEPAL                          0                  1        1     592  dead624          
GMS-Nepal         NEPAL                          1                  0       33     592  dead624          
GMS-Nepal         NEPAL                          1                  1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                  0     1631    1756  dead624          
iLiNS-DOSE        MALAWI                         0                  1      110    1756  dead624          
iLiNS-DOSE        MALAWI                         1                  0       12    1756  dead624          
iLiNS-DOSE        MALAWI                         1                  1        3    1756  dead624          
iLiNS-DYAD-M      MALAWI                         0                  0     1105    1142  dead624          
iLiNS-DYAD-M      MALAWI                         0                  1       22    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                  0       13    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                  1        2    1142  dead624          
JiVitA-3          BANGLADESH                     0                  0    19725   20966  dead624          
JiVitA-3          BANGLADESH                     0                  1      218   20966  dead624          
JiVitA-3          BANGLADESH                     1                  0      982   20966  dead624          
JiVitA-3          BANGLADESH                     1                  1       41   20966  dead624          
JiVitA-4          BANGLADESH                     0                  0     5009    5237  dead624          
JiVitA-4          BANGLADESH                     0                  1       42    5237  dead624          
JiVitA-4          BANGLADESH                     1                  0      182    5237  dead624          
JiVitA-4          BANGLADESH                     1                  1        4    5237  dead624          
Keneba            GAMBIA                         0                  0     2216    2311  dead624          
Keneba            GAMBIA                         0                  1       30    2311  dead624          
Keneba            GAMBIA                         1                  0       56    2311  dead624          
Keneba            GAMBIA                         1                  1        9    2311  dead624          
MAL-ED            BANGLADESH                     0                  0      231     240  dead624          
MAL-ED            BANGLADESH                     0                  1        0     240  dead624          
MAL-ED            BANGLADESH                     1                  0        9     240  dead624          
MAL-ED            BANGLADESH                     1                  1        0     240  dead624          
MAL-ED            INDIA                          0                  0      217     235  dead624          
MAL-ED            INDIA                          0                  1        0     235  dead624          
MAL-ED            INDIA                          1                  0       18     235  dead624          
MAL-ED            INDIA                          1                  1        0     235  dead624          
MAL-ED            PERU                           0                  0      271     273  dead624          
MAL-ED            PERU                           0                  1        1     273  dead624          
MAL-ED            PERU                           1                  0        1     273  dead624          
MAL-ED            PERU                           1                  1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                  0      256     261  dead624          
MAL-ED            SOUTH AFRICA                   0                  1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                  0        5     261  dead624          
MAL-ED            SOUTH AFRICA                   1                  1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                  0      241     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                  1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                  0        4     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                  1        0     245  dead624          
PROVIDE           BANGLADESH                     0                  0      587     617  dead624          
PROVIDE           BANGLADESH                     0                  1        2     617  dead624          
PROVIDE           BANGLADESH                     1                  0       28     617  dead624          
PROVIDE           BANGLADESH                     1                  1        0     617  dead624          
SAS-CompFeed      INDIA                          0                  0     1278    1383  dead624          
SAS-CompFeed      INDIA                          0                  1        6    1383  dead624          
SAS-CompFeed      INDIA                          1                  0       94    1383  dead624          
SAS-CompFeed      INDIA                          1                  1        5    1383  dead624          
SAS-FoodSuppl     INDIA                          0                  0      348     402  dead624          
SAS-FoodSuppl     INDIA                          0                  1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                  0       50     402  dead624          
SAS-FoodSuppl     INDIA                          1                  1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                  0     2076    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                  1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                  0       20    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                  1        0    2096  dead624          
VITAMIN-A         INDIA                          0                  0     3262    3604  dead624          
VITAMIN-A         INDIA                          0                  1       17    3604  dead624          
VITAMIN-A         INDIA                          1                  0      311    3604  dead624          
VITAMIN-A         INDIA                          1                  1       14    3604  dead624          
ZVITAMBO          ZIMBABWE                       0                  0    11092   11607  dead624          
ZVITAMBO          ZIMBABWE                       0                  1      363   11607  dead624          
ZVITAMBO          ZIMBABWE                       1                  0      120   11607  dead624          
ZVITAMBO          ZIMBABWE                       1                  1       32   11607  dead624          


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
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-4, country: BANGLADESH
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
![](/tmp/ff15debb-f66f-45c0-8730-41d279fbac42/f9ddc797-8b80-416f-ab3d-eb616a1802b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ff15debb-f66f-45c0-8730-41d279fbac42/f9ddc797-8b80-416f-ab3d-eb616a1802b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ff15debb-f66f-45c0-8730-41d279fbac42/f9ddc797-8b80-416f-ab3d-eb616a1802b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ff15debb-f66f-45c0-8730-41d279fbac42/f9ddc797-8b80-416f-ab3d-eb616a1802b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0109312   0.0094480   0.0124143
JiVitA-3       BANGLADESH   1                    NA                0.0400782   0.0275365   0.0526199
Keneba         GAMBIA       0                    NA                0.0133571   0.0086084   0.0181058
Keneba         GAMBIA       1                    NA                0.1384615   0.0544793   0.2224438
SAS-CompFeed   INDIA        0                    NA                0.0046729   0.0007523   0.0085935
SAS-CompFeed   INDIA        1                    NA                0.0505051   0.0166392   0.0843709
VITAMIN-A      INDIA        0                    NA                0.0051845   0.0027261   0.0076430
VITAMIN-A      INDIA        1                    NA                0.0430769   0.0210006   0.0651533
ZVITAMBO       ZIMBABWE     0                    NA                0.0316892   0.0284421   0.0349364
ZVITAMBO       ZIMBABWE     1                    NA                0.2105263   0.1765755   0.2444772


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0123533   0.0108147   0.0138920
Keneba         GAMBIA       NA                   NA                0.0168758   0.0116232   0.0221285
SAS-CompFeed   INDIA        NA                   NA                0.0079537   0.0042751   0.0116324
VITAMIN-A      INDIA        NA                   NA                0.0086016   0.0055863   0.0116168
ZVITAMBO       ZIMBABWE     NA                   NA                0.0340312   0.0307326   0.0373298


### Parameter: RR


studyid        country      intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                  1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                  3.666420   2.601920    5.166430
Keneba         GAMBIA       0                    0                  1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 10.366154   5.131995   20.938669
SAS-CompFeed   INDIA        0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 10.808081   3.075062   37.987725
VITAMIN-A      INDIA        0                    0                  1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                  8.308778   4.133395   16.701958
ZVITAMBO       ZIMBABWE     0                    0                  1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                  6.643468   5.488016    8.042191


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0014222   0.0007957   0.0020487
Keneba         GAMBIA       0                    NA                0.0035187   0.0010070   0.0060305
SAS-CompFeed   INDIA        0                    NA                0.0032808   0.0004450   0.0061167
VITAMIN-A      INDIA        0                    NA                0.0034170   0.0013828   0.0054513
ZVITAMBO       ZIMBABWE     0                    NA                0.0023420   0.0014126   0.0032714


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1151252    0.0652426   0.1623459
Keneba         GAMBIA       0                    NA                0.2085074    0.0620585   0.3320900
SAS-CompFeed   INDIA        0                    NA                0.4124894   -0.0674433   0.6766397
VITAMIN-A      INDIA        0                    NA                0.3972592    0.1716052   0.5614453
ZVITAMBO       ZIMBABWE     0                    NA                0.0688183    0.0416136   0.0952508

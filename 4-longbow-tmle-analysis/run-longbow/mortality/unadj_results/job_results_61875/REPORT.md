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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_stunted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      297     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         0       39     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead0plus        
EE                PAKISTAN                       0                         0       93     379  dead0plus        
EE                PAKISTAN                       0                         1        0     379  dead0plus        
EE                PAKISTAN                       1                         0      282     379  dead0plus        
EE                PAKISTAN                       1                         1        4     379  dead0plus        
GMS-Nepal         NEPAL                          0                         0      473     698  dead0plus        
GMS-Nepal         NEPAL                          0                         1        3     698  dead0plus        
GMS-Nepal         NEPAL                          1                         0      217     698  dead0plus        
GMS-Nepal         NEPAL                          1                         1        5     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                         0     1194    1813  dead0plus        
iLiNS-DOSE        MALAWI                         0                         1       73    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                         0      505    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                         1       41    1813  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         0      833    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         1       25    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         0      315    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         1       18    1191  dead0plus        
JiVitA-3          BANGLADESH                     0                         0    15070   27197  dead0plus        
JiVitA-3          BANGLADESH                     0                         1      277   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                         0    11285   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                         1      565   27197  dead0plus        
JiVitA-4          BANGLADESH                     0                         0     3217    5270  dead0plus        
JiVitA-4          BANGLADESH                     0                         1       20    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                         0     2005    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                         1       28    5270  dead0plus        
Keneba            GAMBIA                         0                         0     1647    2479  dead0plus        
Keneba            GAMBIA                         0                         1       47    2479  dead0plus        
Keneba            GAMBIA                         1                         0      744    2479  dead0plus        
Keneba            GAMBIA                         1                         1       41    2479  dead0plus        
MAL-ED            BANGLADESH                     0                         0      167     265  dead0plus        
MAL-ED            BANGLADESH                     0                         1        0     265  dead0plus        
MAL-ED            BANGLADESH                     1                         0       95     265  dead0plus        
MAL-ED            BANGLADESH                     1                         1        3     265  dead0plus        
MAL-ED            INDIA                          0                         0      158     251  dead0plus        
MAL-ED            INDIA                          0                         1        1     251  dead0plus        
MAL-ED            INDIA                          1                         0       91     251  dead0plus        
MAL-ED            INDIA                          1                         1        1     251  dead0plus        
MAL-ED            PERU                           0                         0      171     303  dead0plus        
MAL-ED            PERU                           0                         1        1     303  dead0plus        
MAL-ED            PERU                           1                         0      130     303  dead0plus        
MAL-ED            PERU                           1                         1        1     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         0      194     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         0      119     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      148     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        1     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      111     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        2     262  dead0plus        
PROVIDE           BANGLADESH                     0                         0      527     700  dead0plus        
PROVIDE           BANGLADESH                     0                         1        4     700  dead0plus        
PROVIDE           BANGLADESH                     1                         0      168     700  dead0plus        
PROVIDE           BANGLADESH                     1                         1        1     700  dead0plus        
SAS-CompFeed      INDIA                          0                         0      853    1532  dead0plus        
SAS-CompFeed      INDIA                          0                         1       14    1532  dead0plus        
SAS-CompFeed      INDIA                          1                         0      629    1532  dead0plus        
SAS-CompFeed      INDIA                          1                         1       36    1532  dead0plus        
SAS-FoodSuppl     INDIA                          0                         0      226     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                         1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         0      186     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1905    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      490    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                         0     2265    3898  dead0plus        
VITAMIN-A         INDIA                          0                         1       29    3898  dead0plus        
VITAMIN-A         INDIA                          1                         0     1556    3898  dead0plus        
VITAMIN-A         INDIA                          1                         1       48    3898  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         0     9419   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         1      632   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         0     3526   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         1      483   14060  dead0plus        


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
![](/tmp/e40f40bd-aa1f-4be9-a583-4ffe53fcad54/5eff4e2b-40da-4790-a003-58418c54bfff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e40f40bd-aa1f-4be9-a583-4ffe53fcad54/5eff4e2b-40da-4790-a003-58418c54bfff/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e40f40bd-aa1f-4be9-a583-4ffe53fcad54/5eff4e2b-40da-4790-a003-58418c54bfff/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e40f40bd-aa1f-4be9-a583-4ffe53fcad54/5eff4e2b-40da-4790-a003-58418c54bfff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0576164   0.0447823   0.0704506
iLiNS-DOSE     MALAWI       1                    NA                0.0750916   0.0529802   0.0972030
iLiNS-DYAD-M   MALAWI       0                    NA                0.0291375   0.0178787   0.0403963
iLiNS-DYAD-M   MALAWI       1                    NA                0.0540541   0.0297569   0.0783512
JiVitA-3       BANGLADESH   0                    NA                0.0180491   0.0158513   0.0202470
JiVitA-3       BANGLADESH   1                    NA                0.0476793   0.0437383   0.0516204
JiVitA-4       BANGLADESH   0                    NA                0.0061786   0.0030109   0.0093462
JiVitA-4       BANGLADESH   1                    NA                0.0137727   0.0087870   0.0187585
Keneba         GAMBIA       0                    NA                0.0277450   0.0199222   0.0355678
Keneba         GAMBIA       1                    NA                0.0522293   0.0366621   0.0677965
SAS-CompFeed   INDIA        0                    NA                0.0161476   0.0094501   0.0228452
SAS-CompFeed   INDIA        1                    NA                0.0541353   0.0283755   0.0798952
VITAMIN-A      INDIA        0                    NA                0.0126417   0.0080692   0.0172141
VITAMIN-A      INDIA        1                    NA                0.0299252   0.0215860   0.0382644
ZVITAMBO       ZIMBABWE     0                    NA                0.0628793   0.0581335   0.0676251
ZVITAMBO       ZIMBABWE     1                    NA                0.1204789   0.1104021   0.1305558


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
iLiNS-DOSE     MALAWI       1                    0                 1.303302   0.9009364   1.885366
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.855135   1.0255262   3.355864
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 2.641641   2.2804085   3.060096
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 2.229119   1.1912172   4.171342
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.882477   1.2489503   2.837359
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.352524   1.8229978   6.165349
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 2.367186   1.4994633   3.737049
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.916034   1.7118906   2.144522


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0052628   -0.0024455   0.0129711
iLiNS-DYAD-M   MALAWI       0                    NA                0.0069666   -0.0005476   0.0144808
JiVitA-3       BANGLADESH   0                    NA                0.0129102    0.0109257   0.0148946
JiVitA-4       BANGLADESH   0                    NA                0.0029296    0.0006459   0.0052133
Keneba         GAMBIA       0                    NA                0.0077532    0.0022181   0.0132883
SAS-CompFeed   INDIA        0                    NA                0.0164894    0.0048572   0.0281217
VITAMIN-A      INDIA        0                    NA                0.0071120    0.0031895   0.0110346
ZVITAMBO       ZIMBABWE     0                    NA                0.0164237    0.0132187   0.0196286


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0836968   -0.0465634   0.1977443
iLiNS-DYAD-M   MALAWI       0                    NA                0.1929582   -0.0349696   0.3706903
JiVitA-3       BANGLADESH   0                    NA                0.4170045    0.3563323   0.4719578
JiVitA-4       BANGLADESH   0                    NA                0.3216456    0.0216472   0.5296535
Keneba         GAMBIA       0                    NA                0.2184112    0.0533767   0.3546736
SAS-CompFeed   INDIA        0                    NA                0.5052364    0.2238700   0.6846005
VITAMIN-A      INDIA        0                    NA                0.3600358    0.1490415   0.5187143
ZVITAMBO       ZIMBABWE     0                    NA                0.2071003    0.1671955   0.2450930

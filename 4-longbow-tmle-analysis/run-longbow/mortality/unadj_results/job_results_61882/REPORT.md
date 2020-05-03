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

**Outcome Variable:** dead6plus

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        pers_wasted06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      294     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                        1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                        0       40     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                        1        0     336  dead6plus        
EE                PAKISTAN                       0                        0      345     375  dead6plus        
EE                PAKISTAN                       0                        1        4     375  dead6plus        
EE                PAKISTAN                       1                        0       26     375  dead6plus        
EE                PAKISTAN                       1                        1        0     375  dead6plus        
GMS-Nepal         NEPAL                          0                        0      523     592  dead6plus        
GMS-Nepal         NEPAL                          0                        1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                        0       67     592  dead6plus        
GMS-Nepal         NEPAL                          1                        1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                        0     1621    1757  dead6plus        
iLiNS-DOSE        MALAWI                         0                        1      109    1757  dead6plus        
iLiNS-DOSE        MALAWI                         1                        0       23    1757  dead6plus        
iLiNS-DOSE        MALAWI                         1                        1        4    1757  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                        0     1062    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                        1       24    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                        0       52    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                        1        4    1142  dead6plus        
JiVitA-3          BANGLADESH                     0                        0    19385   20985  dead6plus        
JiVitA-3          BANGLADESH                     0                        1      255   20985  dead6plus        
JiVitA-3          BANGLADESH                     1                        0     1297   20985  dead6plus        
JiVitA-3          BANGLADESH                     1                        1       48   20985  dead6plus        
JiVitA-4          BANGLADESH                     0                        0     4858    5242  dead6plus        
JiVitA-4          BANGLADESH                     0                        1       43    5242  dead6plus        
JiVitA-4          BANGLADESH                     1                        0      336    5242  dead6plus        
JiVitA-4          BANGLADESH                     1                        1        5    5242  dead6plus        
Keneba            GAMBIA                         0                        0     2166    2312  dead6plus        
Keneba            GAMBIA                         0                        1       62    2312  dead6plus        
Keneba            GAMBIA                         1                        0       78    2312  dead6plus        
Keneba            GAMBIA                         1                        1        6    2312  dead6plus        
MAL-ED            BANGLADESH                     0                        0      232     240  dead6plus        
MAL-ED            BANGLADESH                     0                        1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                        0        8     240  dead6plus        
MAL-ED            BANGLADESH                     1                        1        0     240  dead6plus        
MAL-ED            INDIA                          0                        0      220     235  dead6plus        
MAL-ED            INDIA                          0                        1        0     235  dead6plus        
MAL-ED            INDIA                          1                        0       15     235  dead6plus        
MAL-ED            INDIA                          1                        1        0     235  dead6plus        
MAL-ED            PERU                           0                        0      272     273  dead6plus        
MAL-ED            PERU                           0                        1        1     273  dead6plus        
MAL-ED            PERU                           1                        0        0     273  dead6plus        
MAL-ED            PERU                           1                        1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                        0      258     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                        1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                        0        3     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                        1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      245     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                        0      600     617  dead6plus        
PROVIDE           BANGLADESH                     0                        1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                        0       14     617  dead6plus        
PROVIDE           BANGLADESH                     1                        1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                        0     1251    1384  dead6plus        
SAS-CompFeed      INDIA                          0                        1        6    1384  dead6plus        
SAS-CompFeed      INDIA                          1                        0      122    1384  dead6plus        
SAS-CompFeed      INDIA                          1                        1        5    1384  dead6plus        
SAS-FoodSuppl     INDIA                          0                        0      305     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                        1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                        0       93     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                        1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2041    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0       55    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                        0     2768    3606  dead6plus        
VITAMIN-A         INDIA                          0                        1       13    3606  dead6plus        
VITAMIN-A         INDIA                          1                        0      807    3606  dead6plus        
VITAMIN-A         INDIA                          1                        1       18    3606  dead6plus        
ZVITAMBO          ZIMBABWE                       0                        0    10652   11610  dead6plus        
ZVITAMBO          ZIMBABWE                       0                        1      364   11610  dead6plus        
ZVITAMBO          ZIMBABWE                       1                        0      552   11610  dead6plus        
ZVITAMBO          ZIMBABWE                       1                        1       42   11610  dead6plus        


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
![](/tmp/f059c254-bd9d-4f60-87fe-6f6a8b957c5d/cbf409e9-37d2-4599-9805-de7bed560754/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f059c254-bd9d-4f60-87fe-6f6a8b957c5d/cbf409e9-37d2-4599-9805-de7bed560754/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f059c254-bd9d-4f60-87fe-6f6a8b957c5d/cbf409e9-37d2-4599-9805-de7bed560754/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f059c254-bd9d-4f60-87fe-6f6a8b957c5d/cbf409e9-37d2-4599-9805-de7bed560754/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0129837   0.0113831   0.0145844
JiVitA-3       BANGLADESH   1                    NA                0.0356877   0.0248575   0.0465180
JiVitA-4       BANGLADESH   0                    NA                0.0087737   0.0059546   0.0115929
JiVitA-4       BANGLADESH   1                    NA                0.0146628   0.0032430   0.0260825
Keneba         GAMBIA       0                    NA                0.0278276   0.0209965   0.0346588
Keneba         GAMBIA       1                    NA                0.0714286   0.0163420   0.1265152
SAS-CompFeed   INDIA        0                    NA                0.0047733   0.0007354   0.0088112
SAS-CompFeed   INDIA        1                    NA                0.0393701   0.0160610   0.0626792
VITAMIN-A      INDIA        0                    NA                0.0046746   0.0021391   0.0072101
VITAMIN-A      INDIA        1                    NA                0.0218182   0.0118481   0.0317883
ZVITAMBO       ZIMBABWE     0                    NA                0.0330428   0.0297048   0.0363809
ZVITAMBO       ZIMBABWE     1                    NA                0.0707071   0.0500922   0.0913220


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0144389   0.0128023   0.0160755
JiVitA-4       BANGLADESH   NA                   NA                0.0091568   0.0064104   0.0119032
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
SAS-CompFeed   INDIA        NA                   NA                0.0079480   0.0042682   0.0116277
VITAMIN-A      INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ZVITAMBO       ZIMBABWE     NA                   NA                0.0349699   0.0316281   0.0383116


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.748655   1.9747182    3.825916
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 1.671213   0.7230077    3.862966
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.566820   1.1426257    5.766163
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 8.248031   2.4645491   27.603436
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.667413   2.2964644    9.486209
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.139860   1.5717359    2.913340


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0014552    0.0007492   0.0021612
JiVitA-4       BANGLADESH   0                    NA                0.0003831   -0.0003788   0.0011450
Keneba         GAMBIA       0                    NA                0.0015841   -0.0004599   0.0036281
SAS-CompFeed   INDIA        0                    NA                0.0031747    0.0008267   0.0055227
VITAMIN-A      INDIA        0                    NA                0.0039222    0.0015569   0.0062875
ZVITAMBO       ZIMBABWE     0                    NA                0.0019270    0.0008479   0.0030061


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1007819    0.0523621   0.1467276
JiVitA-4       BANGLADESH   0                    NA                0.0418367   -0.0455449   0.1219154
Keneba         GAMBIA       0                    NA                0.0538600   -0.0170818   0.1198535
SAS-CompFeed   INDIA        0                    NA                0.3994359   -0.0277059   0.6490462
VITAMIN-A      INDIA        0                    NA                0.4562411    0.1784226   0.6401145
ZVITAMBO       ZIMBABWE     0                    NA                0.0551048    0.0241737   0.0850554

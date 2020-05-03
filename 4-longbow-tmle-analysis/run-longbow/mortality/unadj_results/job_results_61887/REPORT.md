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

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_co06    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                    0      323     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                    1        2     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                    0       11     336  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                    1        0     336  dead6plus        
EE                PAKISTAN                       0                    0      310     374  dead6plus        
EE                PAKISTAN                       0                    1        2     374  dead6plus        
EE                PAKISTAN                       1                    0       60     374  dead6plus        
EE                PAKISTAN                       1                    1        2     374  dead6plus        
GMS-Nepal         NEPAL                          0                    0      557     592  dead6plus        
GMS-Nepal         NEPAL                          0                    1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                    0       33     592  dead6plus        
GMS-Nepal         NEPAL                          1                    1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                    0     1631    1756  dead6plus        
iLiNS-DOSE        MALAWI                         0                    1      110    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                    0       12    1756  dead6plus        
iLiNS-DOSE        MALAWI                         1                    1        3    1756  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                    0     1102    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                    1       25    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                    0       12    1142  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                    1        3    1142  dead6plus        
JiVitA-3          BANGLADESH                     0                    0    19694   20966  dead6plus        
JiVitA-3          BANGLADESH                     0                    1      249   20966  dead6plus        
JiVitA-3          BANGLADESH                     1                    0      973   20966  dead6plus        
JiVitA-3          BANGLADESH                     1                    1       50   20966  dead6plus        
JiVitA-4          BANGLADESH                     0                    0     5008    5237  dead6plus        
JiVitA-4          BANGLADESH                     0                    1       43    5237  dead6plus        
JiVitA-4          BANGLADESH                     1                    0      182    5237  dead6plus        
JiVitA-4          BANGLADESH                     1                    1        4    5237  dead6plus        
Keneba            GAMBIA                         0                    0     2188    2311  dead6plus        
Keneba            GAMBIA                         0                    1       58    2311  dead6plus        
Keneba            GAMBIA                         1                    0       55    2311  dead6plus        
Keneba            GAMBIA                         1                    1       10    2311  dead6plus        
MAL-ED            BANGLADESH                     0                    0      231     240  dead6plus        
MAL-ED            BANGLADESH                     0                    1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                    0        9     240  dead6plus        
MAL-ED            BANGLADESH                     1                    1        0     240  dead6plus        
MAL-ED            INDIA                          0                    0      217     235  dead6plus        
MAL-ED            INDIA                          0                    1        0     235  dead6plus        
MAL-ED            INDIA                          1                    0       18     235  dead6plus        
MAL-ED            INDIA                          1                    1        0     235  dead6plus        
MAL-ED            PERU                           0                    0      271     273  dead6plus        
MAL-ED            PERU                           0                    1        1     273  dead6plus        
MAL-ED            PERU                           1                    0        1     273  dead6plus        
MAL-ED            PERU                           1                    1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                    0      256     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                    1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                    0        5     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                    1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      241     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0        4     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                    0      586     617  dead6plus        
PROVIDE           BANGLADESH                     0                    1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                    0       28     617  dead6plus        
PROVIDE           BANGLADESH                     1                    1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                    0     1278    1383  dead6plus        
SAS-CompFeed      INDIA                          0                    1        6    1383  dead6plus        
SAS-CompFeed      INDIA                          1                    0       94    1383  dead6plus        
SAS-CompFeed      INDIA                          1                    1        5    1383  dead6plus        
SAS-FoodSuppl     INDIA                          0                    0      348     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                    1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                    0       50     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                    1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2076    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       20    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                    0     3262    3604  dead6plus        
VITAMIN-A         INDIA                          0                    1       17    3604  dead6plus        
VITAMIN-A         INDIA                          1                    0      311    3604  dead6plus        
VITAMIN-A         INDIA                          1                    1       14    3604  dead6plus        
ZVITAMBO          ZIMBABWE                       0                    0    11083   11607  dead6plus        
ZVITAMBO          ZIMBABWE                       0                    1      372   11607  dead6plus        
ZVITAMBO          ZIMBABWE                       1                    0      120   11607  dead6plus        
ZVITAMBO          ZIMBABWE                       1                    1       32   11607  dead6plus        


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
![](/tmp/08ea992b-2c2e-436e-91c3-4a9572c320dc/92959c48-4ef1-49d0-b278-0bc8f938482e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/08ea992b-2c2e-436e-91c3-4a9572c320dc/92959c48-4ef1-49d0-b278-0bc8f938482e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/08ea992b-2c2e-436e-91c3-4a9572c320dc/92959c48-4ef1-49d0-b278-0bc8f938482e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/08ea992b-2c2e-436e-91c3-4a9572c320dc/92959c48-4ef1-49d0-b278-0bc8f938482e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0124856   0.0109061   0.0140650
JiVitA-3       BANGLADESH   1                    NA                0.0488759   0.0351743   0.0625774
Keneba         GAMBIA       0                    NA                0.0258237   0.0192628   0.0323846
Keneba         GAMBIA       1                    NA                0.1538462   0.0661151   0.2415772
SAS-CompFeed   INDIA        0                    NA                0.0046729   0.0007523   0.0085935
SAS-CompFeed   INDIA        1                    NA                0.0505051   0.0166392   0.0843709
VITAMIN-A      INDIA        0                    NA                0.0051845   0.0027261   0.0076430
VITAMIN-A      INDIA        1                    NA                0.0430769   0.0210006   0.0651533
ZVITAMBO       ZIMBABWE     0                    NA                0.0324749   0.0291891   0.0357607
ZVITAMBO       ZIMBABWE     1                    NA                0.2105263   0.1765755   0.2444772


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0142612   0.0126245   0.0158978
Keneba         GAMBIA       NA                   NA                0.0294245   0.0225330   0.0363160
SAS-CompFeed   INDIA        NA                   NA                0.0079537   0.0042751   0.0116324
VITAMIN-A      INDIA        NA                   NA                0.0086016   0.0055863   0.0116168
ZVITAMBO       ZIMBABWE     NA                   NA                0.0348066   0.0314720   0.0381412


### Parameter: RR


studyid        country      intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ---------  ----------
JiVitA-3       BANGLADESH   0                    0                  1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                  3.914583   2.868288    5.342545
Keneba         GAMBIA       0                    0                  1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                  5.957560   3.191120   11.122277
SAS-CompFeed   INDIA        0                    0                  1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 10.808081   3.075062   37.987725
VITAMIN-A      INDIA        0                    0                  1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                  8.308778   4.133395   16.701958
ZVITAMBO       ZIMBABWE     0                    0                  1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                  6.482739   5.358926    7.842226


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0017756   0.0010870   0.0024642
Keneba         GAMBIA       0                    NA                0.0036008   0.0009801   0.0062215
SAS-CompFeed   INDIA        0                    NA                0.0032808   0.0004450   0.0061167
VITAMIN-A      INDIA        0                    NA                0.0034170   0.0013828   0.0054513
ZVITAMBO       ZIMBABWE     0                    NA                0.0023317   0.0014028   0.0032605


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.1245058    0.0770864   0.1694889
Keneba         GAMBIA       0                    NA                0.1223744    0.0335786   0.2030116
SAS-CompFeed   INDIA        0                    NA                0.4124894   -0.0674433   0.6766397
VITAMIN-A      INDIA        0                    NA                0.3972592    0.1716052   0.5614453
ZVITAMBO       ZIMBABWE     0                    NA                0.0669896    0.0403920   0.0928500

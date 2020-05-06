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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sunderweight06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0      315     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                         0       21     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead             
EE                PAKISTAN                       0                         0      218     380  dead             
EE                PAKISTAN                       0                         1        1     380  dead             
EE                PAKISTAN                       1                         0      158     380  dead             
EE                PAKISTAN                       1                         1        3     380  dead             
GMS-Nepal         NEPAL                          0                         0      600     697  dead             
GMS-Nepal         NEPAL                          0                         1        3     697  dead             
GMS-Nepal         NEPAL                          1                         0       90     697  dead             
GMS-Nepal         NEPAL                          1                         1        4     697  dead             
iLiNS-DOSE        MALAWI                         0                         0     1646    1816  dead             
iLiNS-DOSE        MALAWI                         0                         1      106    1816  dead             
iLiNS-DOSE        MALAWI                         1                         0       56    1816  dead             
iLiNS-DOSE        MALAWI                         1                         1        8    1816  dead             
iLiNS-DYAD-M      MALAWI                         0                         0     1084    1202  dead             
iLiNS-DYAD-M      MALAWI                         0                         1       26    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                         0       78    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                         1       14    1202  dead             
JiVitA-3          BANGLADESH                     0                         0    22238   27237  dead             
JiVitA-3          BANGLADESH                     0                         1      414   27237  dead             
JiVitA-3          BANGLADESH                     1                         0     4174   27237  dead             
JiVitA-3          BANGLADESH                     1                         1      411   27237  dead             
JiVitA-4          BANGLADESH                     0                         0     4717    5276  dead             
JiVitA-4          BANGLADESH                     0                         1       31    5276  dead             
JiVitA-4          BANGLADESH                     1                         0      512    5276  dead             
JiVitA-4          BANGLADESH                     1                         1       16    5276  dead             
Keneba            GAMBIA                         0                         0     2407    2632  dead             
Keneba            GAMBIA                         0                         1       43    2632  dead             
Keneba            GAMBIA                         1                         0      164    2632  dead             
Keneba            GAMBIA                         1                         1       18    2632  dead             
MAL-ED            BANGLADESH                     0                         0      243     265  dead             
MAL-ED            BANGLADESH                     0                         1        2     265  dead             
MAL-ED            BANGLADESH                     1                         0       19     265  dead             
MAL-ED            BANGLADESH                     1                         1        1     265  dead             
MAL-ED            INDIA                          0                         0      217     251  dead             
MAL-ED            INDIA                          0                         1        1     251  dead             
MAL-ED            INDIA                          1                         0       32     251  dead             
MAL-ED            INDIA                          1                         1        1     251  dead             
MAL-ED            PERU                           0                         0      290     303  dead             
MAL-ED            PERU                           0                         1        2     303  dead             
MAL-ED            PERU                           1                         0       11     303  dead             
MAL-ED            PERU                           1                         1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                         0      300     314  dead             
MAL-ED            SOUTH AFRICA                   0                         1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                         0       13     314  dead             
MAL-ED            SOUTH AFRICA                   1                         1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      251     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        8     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        1     262  dead             
PROVIDE           BANGLADESH                     0                         0      648     700  dead             
PROVIDE           BANGLADESH                     0                         1        4     700  dead             
PROVIDE           BANGLADESH                     1                         0       48     700  dead             
PROVIDE           BANGLADESH                     1                         1        0     700  dead             
SAS-CompFeed      INDIA                          0                         0     1247    1533  dead             
SAS-CompFeed      INDIA                          0                         1       26    1533  dead             
SAS-CompFeed      INDIA                          1                         0      236    1533  dead             
SAS-CompFeed      INDIA                          1                         1       24    1533  dead             
SAS-FoodSuppl     INDIA                          0                         0      304     416  dead             
SAS-FoodSuppl     INDIA                          0                         1        2     416  dead             
SAS-FoodSuppl     INDIA                          1                         0      106     416  dead             
SAS-FoodSuppl     INDIA                          1                         1        4     416  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2325    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       70    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead             
VITAMIN-A         INDIA                          0                         0     2858    3906  dead             
VITAMIN-A         INDIA                          0                         1       30    3906  dead             
VITAMIN-A         INDIA                          1                         0      970    3906  dead             
VITAMIN-A         INDIA                          1                         1       48    3906  dead             
ZVITAMBO          ZIMBABWE                       0                         0    12420   14085  dead             
ZVITAMBO          ZIMBABWE                       0                         1      807   14085  dead             
ZVITAMBO          ZIMBABWE                       1                         0      557   14085  dead             
ZVITAMBO          ZIMBABWE                       1                         1      301   14085  dead             


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
![](/tmp/a687af1e-5a98-43ae-8338-22f153a153db/64021a2c-c1f1-4722-92d8-86e3fc60917e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a687af1e-5a98-43ae-8338-22f153a153db/64021a2c-c1f1-4722-92d8-86e3fc60917e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a687af1e-5a98-43ae-8338-22f153a153db/64021a2c-c1f1-4722-92d8-86e3fc60917e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a687af1e-5a98-43ae-8338-22f153a153db/64021a2c-c1f1-4722-92d8-86e3fc60917e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0605023   0.0493353   0.0716692
iLiNS-DOSE     MALAWI       1                    NA                0.1250000   0.0439530   0.2060470
iLiNS-DYAD-M   MALAWI       0                    NA                0.0234234   0.0145223   0.0323246
iLiNS-DYAD-M   MALAWI       1                    NA                0.1521739   0.0787465   0.2256014
JiVitA-3       BANGLADESH   0                    NA                0.0182765   0.0165576   0.0199954
JiVitA-3       BANGLADESH   1                    NA                0.0896401   0.0807656   0.0985147
JiVitA-4       BANGLADESH   0                    NA                0.0065291   0.0040740   0.0089842
JiVitA-4       BANGLADESH   1                    NA                0.0303030   0.0146059   0.0460001
Keneba         GAMBIA       0                    NA                0.0175510   0.0123504   0.0227516
Keneba         GAMBIA       1                    NA                0.0989011   0.0555219   0.1422803
SAS-CompFeed   INDIA        0                    NA                0.0204242   0.0079449   0.0329035
SAS-CompFeed   INDIA        1                    NA                0.0923077   0.0593946   0.1252208
VITAMIN-A      INDIA        0                    NA                0.0103878   0.0066895   0.0140861
VITAMIN-A      INDIA        1                    NA                0.0471513   0.0341290   0.0601736
ZVITAMBO       ZIMBABWE     0                    NA                0.0610116   0.0569324   0.0650907
ZVITAMBO       ZIMBABWE     1                    NA                0.3508159   0.3188826   0.3827491


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0627753   0.0516163   0.0739344
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0332779   0.0231340   0.0434218
JiVitA-3       BANGLADESH   NA                   NA                0.0302897   0.0281334   0.0324460
JiVitA-4       BANGLADESH   NA                   NA                0.0089083   0.0062043   0.0116122
Keneba         GAMBIA       NA                   NA                0.0231763   0.0174270   0.0289256
SAS-CompFeed   INDIA        NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A      INDIA        NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO       ZIMBABWE     NA                   NA                0.0786652   0.0742191   0.0831114


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 2.066038   1.052847    4.054256
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 6.496656   3.515184   12.006921
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 4.904658   4.289154    5.608488
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.641251   2.440815    8.825417
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 5.635063   3.319074    9.567105
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 4.519527   2.433539    8.393587
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 4.539096   2.892561    7.122889
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 5.749989   5.135908    6.437494


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0022730   -0.0006617   0.0052078
iLiNS-DYAD-M   MALAWI       0                    NA                0.0098544    0.0038714   0.0158375
JiVitA-3       BANGLADESH   0                    NA                0.0120131    0.0104564   0.0135699
JiVitA-4       BANGLADESH   0                    NA                0.0023792    0.0007882   0.0039702
Keneba         GAMBIA       0                    NA                0.0056253    0.0025029   0.0087476
SAS-CompFeed   INDIA        0                    NA                0.0121916    0.0058295   0.0185537
VITAMIN-A      INDIA        0                    NA                0.0095815    0.0060172   0.0131457
ZVITAMBO       ZIMBABWE     0                    NA                0.0176537    0.0153830   0.0199244


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0362092   -0.0112860   0.0814739
iLiNS-DYAD-M   MALAWI       0                    NA                0.2961261    0.1205473   0.4366514
JiVitA-3       BANGLADESH   0                    NA                0.3966086    0.3544812   0.4359867
JiVitA-4       BANGLADESH   0                    NA                0.2670777    0.0881543   0.4108926
Keneba         GAMBIA       0                    NA                0.2427166    0.1114467   0.3545935
SAS-CompFeed   INDIA        0                    NA                0.3737942    0.1172654   0.5557739
VITAMIN-A      INDIA        0                    NA                0.4798104    0.3127948   0.6062351
ZVITAMBO       ZIMBABWE     0                    NA                0.2244152    0.1976258   0.2503102

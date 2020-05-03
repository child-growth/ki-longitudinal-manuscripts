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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_underweight06    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -------------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      262     338  dead             
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                        0       74     338  dead             
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead             
EE                PAKISTAN                       0                        0      103     380  dead             
EE                PAKISTAN                       0                        1        0     380  dead             
EE                PAKISTAN                       1                        0      273     380  dead             
EE                PAKISTAN                       1                        1        4     380  dead             
GMS-Nepal         NEPAL                          0                        0      388     697  dead             
GMS-Nepal         NEPAL                          0                        1        2     697  dead             
GMS-Nepal         NEPAL                          1                        0      302     697  dead             
GMS-Nepal         NEPAL                          1                        1        5     697  dead             
iLiNS-DOSE        MALAWI                         0                        0     1464    1816  dead             
iLiNS-DOSE        MALAWI                         0                        1       89    1816  dead             
iLiNS-DOSE        MALAWI                         1                        0      238    1816  dead             
iLiNS-DOSE        MALAWI                         1                        1       25    1816  dead             
iLiNS-DYAD-M      MALAWI                         0                        0      930    1202  dead             
iLiNS-DYAD-M      MALAWI                         0                        1       20    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                        0      232    1202  dead             
iLiNS-DYAD-M      MALAWI                         1                        1       20    1202  dead             
JiVitA-3          BANGLADESH                     0                        0    14424   27237  dead             
JiVitA-3          BANGLADESH                     0                        1      240   27237  dead             
JiVitA-3          BANGLADESH                     1                        0    11988   27237  dead             
JiVitA-3          BANGLADESH                     1                        1      585   27237  dead             
JiVitA-4          BANGLADESH                     0                        0     3471    5276  dead             
JiVitA-4          BANGLADESH                     0                        1       17    5276  dead             
JiVitA-4          BANGLADESH                     1                        0     1758    5276  dead             
JiVitA-4          BANGLADESH                     1                        1       30    5276  dead             
Keneba            GAMBIA                         0                        0     2045    2632  dead             
Keneba            GAMBIA                         0                        1       34    2632  dead             
Keneba            GAMBIA                         1                        0      526    2632  dead             
Keneba            GAMBIA                         1                        1       27    2632  dead             
MAL-ED            BANGLADESH                     0                        0      174     265  dead             
MAL-ED            BANGLADESH                     0                        1        1     265  dead             
MAL-ED            BANGLADESH                     1                        0       88     265  dead             
MAL-ED            BANGLADESH                     1                        1        2     265  dead             
MAL-ED            INDIA                          0                        0      144     251  dead             
MAL-ED            INDIA                          0                        1        1     251  dead             
MAL-ED            INDIA                          1                        0      105     251  dead             
MAL-ED            INDIA                          1                        1        1     251  dead             
MAL-ED            PERU                           0                        0      251     303  dead             
MAL-ED            PERU                           0                        1        2     303  dead             
MAL-ED            PERU                           1                        0       50     303  dead             
MAL-ED            PERU                           1                        1        0     303  dead             
MAL-ED            SOUTH AFRICA                   0                        0      258     314  dead             
MAL-ED            SOUTH AFRICA                   0                        1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                        0       55     314  dead             
MAL-ED            SOUTH AFRICA                   1                        1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      214     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        2     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       45     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        1     262  dead             
PROVIDE           BANGLADESH                     0                        0      470     700  dead             
PROVIDE           BANGLADESH                     0                        1        3     700  dead             
PROVIDE           BANGLADESH                     1                        0      226     700  dead             
PROVIDE           BANGLADESH                     1                        1        1     700  dead             
SAS-CompFeed      INDIA                          0                        0      867    1533  dead             
SAS-CompFeed      INDIA                          0                        1       16    1533  dead             
SAS-CompFeed      INDIA                          1                        0      616    1533  dead             
SAS-CompFeed      INDIA                          1                        1       34    1533  dead             
SAS-FoodSuppl     INDIA                          0                        0      194     416  dead             
SAS-FoodSuppl     INDIA                          0                        1        2     416  dead             
SAS-FoodSuppl     INDIA                          1                        0      216     416  dead             
SAS-FoodSuppl     INDIA                          1                        1        4     416  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2110    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      285    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead             
VITAMIN-A         INDIA                          0                        0     1692    3906  dead             
VITAMIN-A         INDIA                          0                        1       10    3906  dead             
VITAMIN-A         INDIA                          1                        0     2136    3906  dead             
VITAMIN-A         INDIA                          1                        1       68    3906  dead             
ZVITAMBO          ZIMBABWE                       0                        0    10958   14085  dead             
ZVITAMBO          ZIMBABWE                       0                        1      563   14085  dead             
ZVITAMBO          ZIMBABWE                       1                        0     2019   14085  dead             
ZVITAMBO          ZIMBABWE                       1                        1      545   14085  dead             


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
![](/tmp/0b9640a3-aac0-4508-8695-2d72431ab356/7233302c-49ed-4500-9c6c-de499aa952a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b9640a3-aac0-4508-8695-2d72431ab356/7233302c-49ed-4500-9c6c-de499aa952a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b9640a3-aac0-4508-8695-2d72431ab356/7233302c-49ed-4500-9c6c-de499aa952a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b9640a3-aac0-4508-8695-2d72431ab356/7233302c-49ed-4500-9c6c-de499aa952a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0573084   0.0457453   0.0688716
iLiNS-DOSE     MALAWI       1                    NA                0.0950570   0.0596008   0.1305133
iLiNS-DYAD-M   MALAWI       0                    NA                0.0210526   0.0119199   0.0301853
iLiNS-DYAD-M   MALAWI       1                    NA                0.0793651   0.0459773   0.1127528
JiVitA-3       BANGLADESH   0                    NA                0.0163666   0.0142650   0.0184683
JiVitA-3       BANGLADESH   1                    NA                0.0465283   0.0426922   0.0503643
JiVitA-4       BANGLADESH   0                    NA                0.0048739   0.0021726   0.0075751
JiVitA-4       BANGLADESH   1                    NA                0.0167785   0.0109081   0.0226490
Keneba         GAMBIA       0                    NA                0.0163540   0.0109010   0.0218070
Keneba         GAMBIA       1                    NA                0.0488246   0.0308600   0.0667892
SAS-CompFeed   INDIA        0                    NA                0.0181200   0.0101243   0.0261158
SAS-CompFeed   INDIA        1                    NA                0.0523077   0.0316785   0.0729369
VITAMIN-A      INDIA        0                    NA                0.0058754   0.0022441   0.0095068
VITAMIN-A      INDIA        1                    NA                0.0308530   0.0236329   0.0380731
ZVITAMBO       ZIMBABWE     0                    NA                0.0488673   0.0449304   0.0528041
ZVITAMBO       ZIMBABWE     1                    NA                0.2125585   0.1967222   0.2283948


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
iLiNS-DOSE     MALAWI       1                    0                 1.658692   1.085406    2.534775
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.769841   2.060083    6.898606
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.842878   2.445450    3.304895
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 3.442558   1.793036    6.609574
Keneba         GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba         GAMBIA       1                    0                 2.985480   1.817047    4.905261
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed   INDIA        1                    0                 2.886731   1.935349    4.305795
VITAMIN-A      INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A      INDIA        1                    0                 5.251180   2.711718   10.168790
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 4.349710   3.897666    4.854181


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0054669   0.0000314   0.0109024
iLiNS-DYAD-M   MALAWI       0                    NA                0.0122252   0.0048452   0.0196053
JiVitA-3       BANGLADESH   0                    NA                0.0139231   0.0119149   0.0159313
JiVitA-4       BANGLADESH   0                    NA                0.0040344   0.0018452   0.0062236
Keneba         GAMBIA       0                    NA                0.0068223   0.0028455   0.0107991
SAS-CompFeed   INDIA        0                    NA                0.0144957   0.0063071   0.0226844
VITAMIN-A      INDIA        0                    NA                0.0140938   0.0095171   0.0186706
ZVITAMBO       ZIMBABWE     0                    NA                0.0297980   0.0266496   0.0329463


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0870867   -0.0023957   0.1685811
iLiNS-DYAD-M   MALAWI       0                    NA                0.3673684    0.1419069   0.5335906
JiVitA-3       BANGLADESH   0                    NA                0.4596637    0.3987699   0.5143901
JiVitA-4       BANGLADESH   0                    NA                0.4528840    0.1704552   0.6391565
Keneba         GAMBIA       0                    NA                0.2943644    0.1199649   0.4342026
SAS-CompFeed   INDIA        0                    NA                0.4444394    0.2506527   0.5881115
VITAMIN-A      INDIA        0                    NA                0.7057760    0.4763554   0.8346822
ZVITAMBO       ZIMBABWE     0                    NA                0.3787945    0.3432907   0.4123788

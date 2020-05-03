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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_nchldlt5
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_impfloor
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid          country                        ever_sstunted06    dead   n_cell       n  outcome_variable 
---------------  -----------------------------  ----------------  -----  -------  ------  -----------------
EE               PAKISTAN                       0                     0      213     379  dead             
EE               PAKISTAN                       0                     1        3     379  dead             
EE               PAKISTAN                       1                     0      162     379  dead             
EE               PAKISTAN                       1                     1        1     379  dead             
GMS-Nepal        NEPAL                          0                     0      633     697  dead             
GMS-Nepal        NEPAL                          0                     1        4     697  dead             
GMS-Nepal        NEPAL                          1                     0       56     697  dead             
GMS-Nepal        NEPAL                          1                     1        4     697  dead             
iLiNS-DYAD-M     MALAWI                         0                     0      962    1063  dead             
iLiNS-DYAD-M     MALAWI                         0                     1       30    1063  dead             
iLiNS-DYAD-M     MALAWI                         1                     0       69    1063  dead             
iLiNS-DYAD-M     MALAWI                         1                     1        2    1063  dead             
JiVitA-3         BANGLADESH                     0                     0    20622   24995  dead             
JiVitA-3         BANGLADESH                     0                     1      415   24995  dead             
JiVitA-3         BANGLADESH                     1                     0     3610   24995  dead             
JiVitA-3         BANGLADESH                     1                     1      348   24995  dead             
JiVitA-4         BANGLADESH                     0                     0     3321    3788  dead             
JiVitA-4         BANGLADESH                     0                     1       20    3788  dead             
JiVitA-4         BANGLADESH                     1                     0      438    3788  dead             
JiVitA-4         BANGLADESH                     1                     1        9    3788  dead             
Keneba           GAMBIA                         0                     0     1588    1833  dead             
Keneba           GAMBIA                         0                     1       33    1833  dead             
Keneba           GAMBIA                         1                     0      202    1833  dead             
Keneba           GAMBIA                         1                     1       10    1833  dead             
MAL-ED           BANGLADESH                     0                     0      240     265  dead             
MAL-ED           BANGLADESH                     0                     1        2     265  dead             
MAL-ED           BANGLADESH                     1                     0       22     265  dead             
MAL-ED           BANGLADESH                     1                     1        1     265  dead             
MAL-ED           INDIA                          0                     0      228     251  dead             
MAL-ED           INDIA                          0                     1        2     251  dead             
MAL-ED           INDIA                          1                     0       21     251  dead             
MAL-ED           INDIA                          1                     1        0     251  dead             
MAL-ED           PERU                           0                     0      260     303  dead             
MAL-ED           PERU                           0                     1        2     303  dead             
MAL-ED           PERU                           1                     0       41     303  dead             
MAL-ED           PERU                           1                     1        0     303  dead             
MAL-ED           SOUTH AFRICA                   0                     0      283     314  dead             
MAL-ED           SOUTH AFRICA                   0                     1        0     314  dead             
MAL-ED           SOUTH AFRICA                   1                     0       30     314  dead             
MAL-ED           SOUTH AFRICA                   1                     1        1     314  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      219     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        2     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       40     262  dead             
MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262  dead             
PROVIDE          BANGLADESH                     0                     0      665     700  dead             
PROVIDE          BANGLADESH                     0                     1        4     700  dead             
PROVIDE          BANGLADESH                     1                     0       31     700  dead             
PROVIDE          BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed     INDIA                          0                     0     1224    1474  dead             
SAS-CompFeed     INDIA                          0                     1       28    1474  dead             
SAS-CompFeed     INDIA                          1                     0      201    1474  dead             
SAS-CompFeed     INDIA                          1                     1       21    1474  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0        1       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0        0       1  dead             
TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        0       1  dead             
ZVITAMBO         ZIMBABWE                       0                     0    11593   13875  dead             
ZVITAMBO         ZIMBABWE                       0                     1      864   13875  dead             
ZVITAMBO         ZIMBABWE                       1                     0     1185   13875  dead             
ZVITAMBO         ZIMBABWE                       1                     1      233   13875  dead             


The following strata were considered:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
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
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c710e244-0086-4e75-9a4a-8d5f312ecdc1/f169e896-2dd2-4a32-b5d1-6e734b1ee48e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c710e244-0086-4e75-9a4a-8d5f312ecdc1/f169e896-2dd2-4a32-b5d1-6e734b1ee48e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c710e244-0086-4e75-9a4a-8d5f312ecdc1/f169e896-2dd2-4a32-b5d1-6e734b1ee48e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c710e244-0086-4e75-9a4a-8d5f312ecdc1/f169e896-2dd2-4a32-b5d1-6e734b1ee48e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0201181   0.0181799   0.0220564
JiVitA-3       BANGLADESH   1                    NA                0.0880356   0.0758102   0.1002609
JiVitA-4       BANGLADESH   0                    NA                0.0059862   0.0032095   0.0087630
JiVitA-4       BANGLADESH   1                    NA                0.0201342   0.0074885   0.0327800
Keneba         GAMBIA       0                    NA                0.0204159   0.0135250   0.0273067
Keneba         GAMBIA       1                    NA                0.0468042   0.0190641   0.0745442
SAS-CompFeed   INDIA        0                    NA                0.0227219   0.0106980   0.0347458
SAS-CompFeed   INDIA        1                    NA                0.0938388   0.0672715   0.1204062
ZVITAMBO       ZIMBABWE     0                    NA                0.0695090   0.0650465   0.0739714
ZVITAMBO       ZIMBABWE     1                    NA                0.1583307   0.1389458   0.1777155


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3       BANGLADESH   NA                   NA                0.0305261   0.0282868   0.0327654
JiVitA-4       BANGLADESH   NA                   NA                0.0076558   0.0047643   0.0105472
Keneba         GAMBIA       NA                   NA                0.0234588   0.0165280   0.0303896
SAS-CompFeed   INDIA        NA                   NA                0.0332429   0.0211843   0.0453014
ZVITAMBO       ZIMBABWE     NA                   NA                0.0790631   0.0745730   0.0835531


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ---------  ---------
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.375934   3.689567   5.189986
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 3.363423   1.549644   7.300137
Keneba         GAMBIA       0                    0                 1.000000   1.000000   1.000000
Keneba         GAMBIA       1                    0                 2.292541   1.158910   4.535076
SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
SAS-CompFeed   INDIA        1                    0                 4.129876   2.441562   6.985641
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.277845   1.984686   2.614307


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.0104080    0.0088002   0.0120158
JiVitA-4       BANGLADESH   0                    NA                0.0016695    0.0001486   0.0031905
Keneba         GAMBIA       0                    NA                0.0030430   -0.0003844   0.0064703
SAS-CompFeed   INDIA        0                    NA                0.0105209    0.0059718   0.0150701
ZVITAMBO       ZIMBABWE     0                    NA                0.0095541    0.0074844   0.0116238


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3       BANGLADESH   0                    NA                0.3409537    0.2947562   0.3841249
JiVitA-4       BANGLADESH   0                    NA                0.2180743    0.0059393   0.3849391
Keneba         GAMBIA       0                    NA                0.1297150   -0.0234926   0.2599888
SAS-CompFeed   INDIA        0                    NA                0.3164867    0.1356540   0.4594868
ZVITAMBO       ZIMBABWE     0                    NA                0.1208416    0.0950783   0.1458714

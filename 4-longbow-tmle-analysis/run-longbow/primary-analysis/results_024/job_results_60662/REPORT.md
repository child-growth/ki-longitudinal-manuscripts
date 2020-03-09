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

**Intervention Variable:** ever_co024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_co024    dead   n_cell       n
----------------  -----------------------------  -----------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                0     6318    7163
Burkina Faso Zn   BURKINA FASO                   0                1       32    7163
Burkina Faso Zn   BURKINA FASO                   1                0      806    7163
Burkina Faso Zn   BURKINA FASO                   1                1        7    7163
EE                PAKISTAN                       0                0      208     379
EE                PAKISTAN                       0                1        1     379
EE                PAKISTAN                       1                0      167     379
EE                PAKISTAN                       1                1        3     379
GMS-Nepal         NEPAL                          0                0      479     686
GMS-Nepal         NEPAL                          0                1        5     686
GMS-Nepal         NEPAL                          1                0      200     686
GMS-Nepal         NEPAL                          1                1        2     686
iLiNS-DOSE        MALAWI                         0                0     1709    1931
iLiNS-DOSE        MALAWI                         0                1      115    1931
iLiNS-DOSE        MALAWI                         1                0       94    1931
iLiNS-DOSE        MALAWI                         1                1       13    1931
iLiNS-DYAD-M      MALAWI                         0                0     1113    1201
iLiNS-DYAD-M      MALAWI                         0                1       33    1201
iLiNS-DYAD-M      MALAWI                         1                0       50    1201
iLiNS-DYAD-M      MALAWI                         1                1        5    1201
JiVitA-3          BANGLADESH                     0                0    24068   26923
JiVitA-3          BANGLADESH                     0                1      463   26923
JiVitA-3          BANGLADESH                     1                0     2301   26923
JiVitA-3          BANGLADESH                     1                1       91   26923
JiVitA-4          BANGLADESH                     0                0     4527    5442
JiVitA-4          BANGLADESH                     0                1       37    5442
JiVitA-4          BANGLADESH                     1                0      866    5442
JiVitA-4          BANGLADESH                     1                1       12    5442
Keneba            GAMBIA                         0                0     2435    2913
Keneba            GAMBIA                         0                1       46    2913
Keneba            GAMBIA                         1                0      416    2913
Keneba            GAMBIA                         1                1       16    2913
MAL-ED            BANGLADESH                     0                0      222     263
MAL-ED            BANGLADESH                     0                1        2     263
MAL-ED            BANGLADESH                     1                0       39     263
MAL-ED            BANGLADESH                     1                1        0     263
MAL-ED            INDIA                          0                0      195     251
MAL-ED            INDIA                          0                1        2     251
MAL-ED            INDIA                          1                0       54     251
MAL-ED            INDIA                          1                1        0     251
MAL-ED            PERU                           0                0      288     302
MAL-ED            PERU                           0                1        2     302
MAL-ED            PERU                           1                0       12     302
MAL-ED            PERU                           1                1        0     302
MAL-ED            SOUTH AFRICA                   0                0      289     312
MAL-ED            SOUTH AFRICA                   0                1        0     312
MAL-ED            SOUTH AFRICA                   1                0       23     312
MAL-ED            SOUTH AFRICA                   1                1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                0      235     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                0       23     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                1        0     261
PROVIDE           BANGLADESH                     0                0      606     700
PROVIDE           BANGLADESH                     0                1        4     700
PROVIDE           BANGLADESH                     1                0       90     700
PROVIDE           BANGLADESH                     1                1        0     700
SAS-CompFeed      INDIA                          0                0     1140    1513
SAS-CompFeed      INDIA                          0                1       22    1513
SAS-CompFeed      INDIA                          1                0      336    1513
SAS-CompFeed      INDIA                          1                1       15    1513
SAS-FoodSuppl     INDIA                          0                0      260     418
SAS-FoodSuppl     INDIA                          0                1        3     418
SAS-FoodSuppl     INDIA                          1                0      152     418
SAS-FoodSuppl     INDIA                          1                1        3     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                0     2276    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                0      119    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                1        0    2396
VITAMIN-A         INDIA                          0                0     3145    3903
VITAMIN-A         INDIA                          0                1       48    3903
VITAMIN-A         INDIA                          1                0      683    3903
VITAMIN-A         INDIA                          1                1       27    3903
ZVITAMBO          ZIMBABWE                       0                0    12438   13942
ZVITAMBO          ZIMBABWE                       0                1      913   13942
ZVITAMBO          ZIMBABWE                       1                0      455   13942
ZVITAMBO          ZIMBABWE                       1                1      136   13942


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/51636a9e-d40c-46a5-83f9-e7da6a29e59d/8917cdb6-127e-4e40-8616-b36ea7bd9dd7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/51636a9e-d40c-46a5-83f9-e7da6a29e59d/8917cdb6-127e-4e40-8616-b36ea7bd9dd7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/51636a9e-d40c-46a5-83f9-e7da6a29e59d/8917cdb6-127e-4e40-8616-b36ea7bd9dd7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/51636a9e-d40c-46a5-83f9-e7da6a29e59d/8917cdb6-127e-4e40-8616-b36ea7bd9dd7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050394   0.0032976   0.0067811
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086101   0.0022588   0.0149613
iLiNS-DOSE        MALAWI         0                    NA                0.0630226   0.0518671   0.0741782
iLiNS-DOSE        MALAWI         1                    NA                0.1207782   0.0600160   0.1815404
iLiNS-DYAD-M      MALAWI         0                    NA                0.0287958   0.0191095   0.0384821
iLiNS-DYAD-M      MALAWI         1                    NA                0.0909091   0.0149019   0.1669163
JiVitA-3          BANGLADESH     0                    NA                0.0189685   0.0172382   0.0206988
JiVitA-3          BANGLADESH     1                    NA                0.0403641   0.0318896   0.0488386
JiVitA-4          BANGLADESH     0                    NA                0.0081365   0.0054348   0.0108382
JiVitA-4          BANGLADESH     1                    NA                0.0136679   0.0064358   0.0209000
Keneba            GAMBIA         0                    NA                0.0185584   0.0132416   0.0238752
Keneba            GAMBIA         1                    NA                0.0369591   0.0188163   0.0551019
SAS-CompFeed      INDIA          0                    NA                0.0191664   0.0093860   0.0289468
SAS-CompFeed      INDIA          1                    NA                0.0420340   0.0228648   0.0612032
VITAMIN-A         INDIA          0                    NA                0.0150128   0.0107947   0.0192310
VITAMIN-A         INDIA          1                    NA                0.0383599   0.0242597   0.0524600
ZVITAMBO          ZIMBABWE       0                    NA                0.0689389   0.0646399   0.0732379
ZVITAMBO          ZIMBABWE       1                    NA                0.2284916   0.1921367   0.2648466


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
JiVitA-3          BANGLADESH     NA                   NA                0.0205772   0.0188498   0.0223046
JiVitA-4          BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532
Keneba            GAMBIA         NA                   NA                0.0212839   0.0160418   0.0265260
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192160   0.0149085   0.0235235
ZVITAMBO          ZIMBABWE       NA                   NA                0.0752403   0.0708616   0.0796189


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.708564   0.7565733   3.858438
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.916427   1.1243838   3.266405
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.157025   1.2819986   7.774428
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.127953   1.6924579   2.675508
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.679826   0.9000774   3.135081
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.991505   1.1279859   3.516083
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 2.193109   1.6518022   2.911804
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.555138   1.6088786   4.057940
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.314406   2.7941750   3.931496


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004053   -0.0003427   0.0011532
iLiNS-DOSE        MALAWI         0                    NA                0.0032643   -0.0002590   0.0067876
iLiNS-DYAD-M      MALAWI         0                    NA                0.0028445   -0.0007405   0.0064295
JiVitA-3          BANGLADESH     0                    NA                0.0016087    0.0008717   0.0023456
JiVitA-4          BANGLADESH     0                    NA                0.0008676   -0.0003776   0.0021127
Keneba            GAMBIA         0                    NA                0.0027255   -0.0000456   0.0054966
SAS-CompFeed      INDIA          0                    NA                0.0052883    0.0022546   0.0083221
VITAMIN-A         INDIA          0                    NA                0.0042031    0.0015183   0.0068880
ZVITAMBO          ZIMBABWE       0                    NA                0.0063013    0.0047566   0.0078461


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0744357   -0.0713715   0.2003994
iLiNS-DOSE        MALAWI         0                    NA                0.0492449   -0.0048506   0.1004282
iLiNS-DYAD-M      MALAWI         0                    NA                0.0899008   -0.0269881   0.1934857
JiVitA-3          BANGLADESH     0                    NA                0.0781784    0.0424719   0.1125534
JiVitA-4          BANGLADESH     0                    NA                0.0963515   -0.0524562   0.2241191
Keneba            GAMBIA         0                    NA                0.1280550   -0.0080623   0.2457926
SAS-CompFeed      INDIA          0                    NA                0.2162498    0.0998998   0.3175601
VITAMIN-A         INDIA          0                    NA                0.2187316    0.0759140   0.3394768
ZVITAMBO          ZIMBABWE       0                    NA                0.0837496    0.0635364   0.1035265

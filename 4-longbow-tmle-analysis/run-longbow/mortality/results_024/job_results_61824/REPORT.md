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

studyid           country                        ever_co024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                0     6318    7163  dead             
Burkina Faso Zn   BURKINA FASO                   0                1       32    7163  dead             
Burkina Faso Zn   BURKINA FASO                   1                0      806    7163  dead             
Burkina Faso Zn   BURKINA FASO                   1                1        7    7163  dead             
EE                PAKISTAN                       0                0      208     379  dead             
EE                PAKISTAN                       0                1        1     379  dead             
EE                PAKISTAN                       1                0      167     379  dead             
EE                PAKISTAN                       1                1        3     379  dead             
GMS-Nepal         NEPAL                          0                0      479     686  dead             
GMS-Nepal         NEPAL                          0                1        5     686  dead             
GMS-Nepal         NEPAL                          1                0      200     686  dead             
GMS-Nepal         NEPAL                          1                1        2     686  dead             
iLiNS-DOSE        MALAWI                         0                0     1709    1931  dead             
iLiNS-DOSE        MALAWI                         0                1      115    1931  dead             
iLiNS-DOSE        MALAWI                         1                0       94    1931  dead             
iLiNS-DOSE        MALAWI                         1                1       13    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                0     1113    1201  dead             
iLiNS-DYAD-M      MALAWI                         0                1       33    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                0       50    1201  dead             
iLiNS-DYAD-M      MALAWI                         1                1        5    1201  dead             
JiVitA-3          BANGLADESH                     0                0    24068   26923  dead             
JiVitA-3          BANGLADESH                     0                1      463   26923  dead             
JiVitA-3          BANGLADESH                     1                0     2301   26923  dead             
JiVitA-3          BANGLADESH                     1                1       91   26923  dead             
JiVitA-4          BANGLADESH                     0                0     4527    5442  dead             
JiVitA-4          BANGLADESH                     0                1       37    5442  dead             
JiVitA-4          BANGLADESH                     1                0      866    5442  dead             
JiVitA-4          BANGLADESH                     1                1       12    5442  dead             
Keneba            GAMBIA                         0                0     2435    2913  dead             
Keneba            GAMBIA                         0                1       46    2913  dead             
Keneba            GAMBIA                         1                0      416    2913  dead             
Keneba            GAMBIA                         1                1       16    2913  dead             
MAL-ED            BANGLADESH                     0                0      222     263  dead             
MAL-ED            BANGLADESH                     0                1        2     263  dead             
MAL-ED            BANGLADESH                     1                0       39     263  dead             
MAL-ED            BANGLADESH                     1                1        0     263  dead             
MAL-ED            INDIA                          0                0      195     251  dead             
MAL-ED            INDIA                          0                1        2     251  dead             
MAL-ED            INDIA                          1                0       54     251  dead             
MAL-ED            INDIA                          1                1        0     251  dead             
MAL-ED            PERU                           0                0      288     302  dead             
MAL-ED            PERU                           0                1        2     302  dead             
MAL-ED            PERU                           1                0       12     302  dead             
MAL-ED            PERU                           1                1        0     302  dead             
MAL-ED            SOUTH AFRICA                   0                0      289     312  dead             
MAL-ED            SOUTH AFRICA                   0                1        0     312  dead             
MAL-ED            SOUTH AFRICA                   1                0       23     312  dead             
MAL-ED            SOUTH AFRICA                   1                1        0     312  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                0      235     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                1        3     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                0       23     261  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                1        0     261  dead             
PROVIDE           BANGLADESH                     0                0      606     700  dead             
PROVIDE           BANGLADESH                     0                1        4     700  dead             
PROVIDE           BANGLADESH                     1                0       90     700  dead             
PROVIDE           BANGLADESH                     1                1        0     700  dead             
SAS-CompFeed      INDIA                          0                0     1140    1513  dead             
SAS-CompFeed      INDIA                          0                1       22    1513  dead             
SAS-CompFeed      INDIA                          1                0      336    1513  dead             
SAS-CompFeed      INDIA                          1                1       15    1513  dead             
SAS-FoodSuppl     INDIA                          0                0      260     418  dead             
SAS-FoodSuppl     INDIA                          0                1        3     418  dead             
SAS-FoodSuppl     INDIA                          1                0      152     418  dead             
SAS-FoodSuppl     INDIA                          1                1        3     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                0     2276    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                0      119    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                1        0    2396  dead             
VITAMIN-A         INDIA                          0                0     3145    3903  dead             
VITAMIN-A         INDIA                          0                1       48    3903  dead             
VITAMIN-A         INDIA                          1                0      683    3903  dead             
VITAMIN-A         INDIA                          1                1       27    3903  dead             
ZVITAMBO          ZIMBABWE                       0                0    12438   13942  dead             
ZVITAMBO          ZIMBABWE                       0                1      913   13942  dead             
ZVITAMBO          ZIMBABWE                       1                0      455   13942  dead             
ZVITAMBO          ZIMBABWE                       1                1      136   13942  dead             


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
![](/tmp/b93aff5d-8a44-4b9c-ada2-4c91ccddb77a/8a3a3873-0046-4322-b17e-afe7c60fc865/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b93aff5d-8a44-4b9c-ada2-4c91ccddb77a/8a3a3873-0046-4322-b17e-afe7c60fc865/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b93aff5d-8a44-4b9c-ada2-4c91ccddb77a/8a3a3873-0046-4322-b17e-afe7c60fc865/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b93aff5d-8a44-4b9c-ada2-4c91ccddb77a/8a3a3873-0046-4322-b17e-afe7c60fc865/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050394   0.0032976   0.0067811
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086101   0.0022588   0.0149613
iLiNS-DOSE        MALAWI         0                    NA                0.0630428   0.0518851   0.0742005
iLiNS-DOSE        MALAWI         1                    NA                0.1210249   0.0623828   0.1796671
iLiNS-DYAD-M      MALAWI         0                    NA                0.0287958   0.0191095   0.0384821
iLiNS-DYAD-M      MALAWI         1                    NA                0.0909091   0.0149019   0.1669163
JiVitA-3          BANGLADESH     0                    NA                0.0189305   0.0172050   0.0206560
JiVitA-3          BANGLADESH     1                    NA                0.0400168   0.0309687   0.0490649
JiVitA-4          BANGLADESH     0                    NA                0.0081315   0.0054314   0.0108315
JiVitA-4          BANGLADESH     1                    NA                0.0138882   0.0065842   0.0211921
Keneba            GAMBIA         0                    NA                0.0185372   0.0132267   0.0238476
Keneba            GAMBIA         1                    NA                0.0370787   0.0191145   0.0550429
SAS-CompFeed      INDIA          0                    NA                0.0191664   0.0093860   0.0289468
SAS-CompFeed      INDIA          1                    NA                0.0420340   0.0228648   0.0612032
VITAMIN-A         INDIA          0                    NA                0.0150084   0.0107869   0.0192299
VITAMIN-A         INDIA          1                    NA                0.0379889   0.0238731   0.0521046
ZVITAMBO          ZIMBABWE       0                    NA                0.0689850   0.0646820   0.0732880
ZVITAMBO          ZIMBABWE       1                    NA                0.2230061   0.1878404   0.2581719


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
iLiNS-DOSE        MALAWI         1                    0                 1.919726   1.1465842   3.214199
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.157025   1.2819986   7.774428
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.113877   1.6572251   2.696360
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.707955   0.9176915   3.178749
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.000231   1.1392906   3.511768
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 2.193109   1.6518022   2.911804
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.531179   1.5882585   4.033893
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.232674   2.7288969   3.829452


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004053   -0.0003427   0.0011532
iLiNS-DOSE        MALAWI         0                    NA                0.0032441   -0.0002582   0.0067464
iLiNS-DYAD-M      MALAWI         0                    NA                0.0028445   -0.0007405   0.0064295
JiVitA-3          BANGLADESH     0                    NA                0.0016467    0.0009099   0.0023834
JiVitA-4          BANGLADESH     0                    NA                0.0008726   -0.0003718   0.0021169
Keneba            GAMBIA         0                    NA                0.0027467   -0.0000215   0.0055149
SAS-CompFeed      INDIA          0                    NA                0.0052883    0.0022546   0.0083221
VITAMIN-A         INDIA          0                    NA                0.0042076    0.0015208   0.0068944
ZVITAMBO          ZIMBABWE       0                    NA                0.0062552    0.0047080   0.0078025


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0744357   -0.0713715   0.2003994
iLiNS-DOSE        MALAWI         0                    NA                0.0489401   -0.0048383   0.0998404
iLiNS-DYAD-M      MALAWI         0                    NA                0.0899008   -0.0269881   0.1934857
JiVitA-3          BANGLADESH     0                    NA                0.0800243    0.0443760   0.1143428
JiVitA-4          BANGLADESH     0                    NA                0.0969097   -0.0517867   0.2245841
Keneba            GAMBIA         0                    NA                0.1290511   -0.0068529   0.2466110
SAS-CompFeed      INDIA          0                    NA                0.2162498    0.0998998   0.3175601
VITAMIN-A         INDIA          0                    NA                0.2189642    0.0759662   0.3398327
ZVITAMBO          ZIMBABWE       0                    NA                0.0831369    0.0628791   0.1029567

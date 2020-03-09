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

**Intervention Variable:** pers_wasted024

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

studyid           country                        pers_wasted024    dead   n_cell       n
----------------  -----------------------------  ---------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                    0     6025    7166
Burkina Faso Zn   BURKINA FASO                   0                    1       25    7166
Burkina Faso Zn   BURKINA FASO                   1                    0     1102    7166
Burkina Faso Zn   BURKINA FASO                   1                    1       14    7166
EE                PAKISTAN                       0                    0      342     380
EE                PAKISTAN                       0                    1        4     380
EE                PAKISTAN                       1                    0       34     380
EE                PAKISTAN                       1                    1        0     380
GMS-Nepal         NEPAL                          0                    0      580     686
GMS-Nepal         NEPAL                          0                    1        5     686
GMS-Nepal         NEPAL                          1                    0       99     686
GMS-Nepal         NEPAL                          1                    1        2     686
iLiNS-DOSE        MALAWI                         0                    0     1744    1931
iLiNS-DOSE        MALAWI                         0                    1      120    1931
iLiNS-DOSE        MALAWI                         1                    0       59    1931
iLiNS-DOSE        MALAWI                         1                    1        8    1931
iLiNS-DYAD-M      MALAWI                         0                    0     1141    1201
iLiNS-DYAD-M      MALAWI                         0                    1       33    1201
iLiNS-DYAD-M      MALAWI                         1                    0       22    1201
iLiNS-DYAD-M      MALAWI                         1                    1        5    1201
JiVitA-3          BANGLADESH                     0                    0    24625   26956
JiVitA-3          BANGLADESH                     0                    1      444   26956
JiVitA-3          BANGLADESH                     1                    0     1768   26956
JiVitA-3          BANGLADESH                     1                    1      119   26956
JiVitA-4          BANGLADESH                     0                    0     4955    5443
JiVitA-4          BANGLADESH                     0                    1       39    5443
JiVitA-4          BANGLADESH                     1                    0      439    5443
JiVitA-4          BANGLADESH                     1                    1       10    5443
Keneba            GAMBIA                         0                    0     2662    2920
Keneba            GAMBIA                         0                    1       53    2920
Keneba            GAMBIA                         1                    0      196    2920
Keneba            GAMBIA                         1                    1        9    2920
MAL-ED            BANGLADESH                     0                    0      246     263
MAL-ED            BANGLADESH                     0                    1        2     263
MAL-ED            BANGLADESH                     1                    0       15     263
MAL-ED            BANGLADESH                     1                    1        0     263
MAL-ED            INDIA                          0                    0      226     251
MAL-ED            INDIA                          0                    1        2     251
MAL-ED            INDIA                          1                    0       23     251
MAL-ED            INDIA                          1                    1        0     251
MAL-ED            PERU                           0                    0      299     302
MAL-ED            PERU                           0                    1        2     302
MAL-ED            PERU                           1                    0        1     302
MAL-ED            PERU                           1                    1        0     302
MAL-ED            SOUTH AFRICA                   0                    0      306     312
MAL-ED            SOUTH AFRICA                   0                    1        0     312
MAL-ED            SOUTH AFRICA                   1                    0        6     312
MAL-ED            SOUTH AFRICA                   1                    1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      258     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
PROVIDE           BANGLADESH                     0                    0      669     700
PROVIDE           BANGLADESH                     0                    1        4     700
PROVIDE           BANGLADESH                     1                    0       27     700
PROVIDE           BANGLADESH                     1                    1        0     700
SAS-CompFeed      INDIA                          0                    0     1355    1513
SAS-CompFeed      INDIA                          0                    1       22    1513
SAS-CompFeed      INDIA                          1                    0      121    1513
SAS-CompFeed      INDIA                          1                    1       15    1513
SAS-FoodSuppl     INDIA                          0                    0      338     418
SAS-FoodSuppl     INDIA                          0                    1        2     418
SAS-FoodSuppl     INDIA                          1                    0       74     418
SAS-FoodSuppl     INDIA                          1                    1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2324    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       71    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
VITAMIN-A         INDIA                          0                    0     3228    3904
VITAMIN-A         INDIA                          0                    1       36    3904
VITAMIN-A         INDIA                          1                    0      601    3904
VITAMIN-A         INDIA                          1                    1       39    3904
ZVITAMBO          ZIMBABWE                       0                    0    12358   13946
ZVITAMBO          ZIMBABWE                       0                    1      831   13946
ZVITAMBO          ZIMBABWE                       1                    0      535   13946
ZVITAMBO          ZIMBABWE                       1                    1      222   13946


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
![](/tmp/67a3217c-e9fc-4580-99a1-77d04162a52a/e3d8752f-d884-4304-95bd-ed26b2377bcb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67a3217c-e9fc-4580-99a1-77d04162a52a/e3d8752f-d884-4304-95bd-ed26b2377bcb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67a3217c-e9fc-4580-99a1-77d04162a52a/e3d8752f-d884-4304-95bd-ed26b2377bcb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67a3217c-e9fc-4580-99a1-77d04162a52a/e3d8752f-d884-4304-95bd-ed26b2377bcb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041179   0.0025033   0.0057325
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0122600   0.0056503   0.0188698
iLiNS-DOSE        MALAWI         0                    NA                0.0643777   0.0532333   0.0755221
iLiNS-DOSE        MALAWI         1                    NA                0.1194030   0.0417391   0.1970669
iLiNS-DYAD-M      MALAWI         0                    NA                0.0281090   0.0186260   0.0375921
iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0533715   0.3169988
JiVitA-3          BANGLADESH     0                    NA                0.0177598   0.0161497   0.0193699
JiVitA-3          BANGLADESH     1                    NA                0.0622007   0.0502617   0.0741398
JiVitA-4          BANGLADESH     0                    NA                0.0078198   0.0053072   0.0103324
JiVitA-4          BANGLADESH     1                    NA                0.0221135   0.0085843   0.0356427
Keneba            GAMBIA         0                    NA                0.0195212   0.0143163   0.0247260
Keneba            GAMBIA         1                    NA                0.0439024   0.0158519   0.0719530
SAS-CompFeed      INDIA          0                    NA                0.0160340   0.0089041   0.0231639
SAS-CompFeed      INDIA          1                    NA                0.1113083   0.0397551   0.1828615
VITAMIN-A         INDIA          0                    NA                0.0110603   0.0074726   0.0146479
VITAMIN-A         INDIA          1                    NA                0.0612558   0.0426070   0.0799046
ZVITAMBO          ZIMBABWE       0                    NA                0.0634853   0.0593149   0.0676557
ZVITAMBO          ZIMBABWE       1                    NA                0.3522676   0.3129148   0.3916203


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054424   0.0037388   0.0071459
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
JiVitA-3          BANGLADESH     NA                   NA                0.0208859   0.0191395   0.0226323
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0212329   0.0160032   0.0264626
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0755055   0.0711204   0.0798906


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.977283   1.5288482    5.797969
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.854726   0.9461633    3.635747
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 6.588103   2.9968710   14.482807
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 3.502328   2.8483252    4.306496
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.827882   1.4135069    5.657502
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.248965   1.1254026    4.494251
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed      INDIA          1                    0                 6.942012   4.1967982   11.482927
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.538369   3.5494223    8.641838
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.548808   4.8761652    6.314239


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013245    0.0002747   0.0023744
iLiNS-DOSE        MALAWI         0                    NA                0.0019092   -0.0008499   0.0046683
iLiNS-DYAD-M      MALAWI         0                    NA                0.0035313   -0.0000256   0.0070881
JiVitA-3          BANGLADESH     0                    NA                0.0031261    0.0023112   0.0039409
JiVitA-4          BANGLADESH     0                    NA                0.0011826    0.0000516   0.0023136
Keneba            GAMBIA         0                    NA                0.0017117   -0.0003039   0.0037273
SAS-CompFeed      INDIA          0                    NA                0.0084207    0.0017758   0.0150656
VITAMIN-A         INDIA          0                    NA                0.0081508    0.0050016   0.0113000
ZVITAMBO          ZIMBABWE       0                    NA                0.0120203    0.0100789   0.0139617


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2433688    0.0432203   0.4016484
iLiNS-DOSE        MALAWI         0                    NA                0.0288023   -0.0134746   0.0693156
iLiNS-DYAD-M      MALAWI         0                    NA                0.1116067   -0.0025722   0.2127823
JiVitA-3          BANGLADESH     0                    NA                0.1496736    0.1129305   0.1848948
JiVitA-4          BANGLADESH     0                    NA                0.1313619    0.0008022   0.2448621
Keneba            GAMBIA         0                    NA                0.0806155   -0.0171560   0.1689889
SAS-CompFeed      INDIA          0                    NA                0.3443391    0.1415746   0.4992096
VITAMIN-A         INDIA          0                    NA                0.4242768    0.2732209   0.5439368
ZVITAMBO          ZIMBABWE       0                    NA                0.1591970    0.1345518   0.1831404

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

**Intervention Variable:** ever_wasted024

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

studyid           country                        ever_wasted024    dead0plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0     5730    7166
Burkina Faso Zn   BURKINA FASO                   0                         1       30    7166
Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7166
Burkina Faso Zn   BURKINA FASO                   1                         1       18    7166
EE                PAKISTAN                       0                         0      153     380
EE                PAKISTAN                       0                         1        1     380
EE                PAKISTAN                       1                         0      223     380
EE                PAKISTAN                       1                         1        3     380
GMS-Nepal         NEPAL                          0                         0      276     686
GMS-Nepal         NEPAL                          0                         1        5     686
GMS-Nepal         NEPAL                          1                         0      403     686
GMS-Nepal         NEPAL                          1                         1        2     686
iLiNS-DOSE        MALAWI                         0                         0     1660    1931
iLiNS-DOSE        MALAWI                         0                         1      113    1931
iLiNS-DOSE        MALAWI                         1                         0      143    1931
iLiNS-DOSE        MALAWI                         1                         1       15    1931
iLiNS-DYAD-M      MALAWI                         0                         0     1058    1201
iLiNS-DYAD-M      MALAWI                         0                         1       33    1201
iLiNS-DYAD-M      MALAWI                         1                         0      101    1201
iLiNS-DYAD-M      MALAWI                         1                         1        9    1201
JiVitA-3          BANGLADESH                     0                         0    19587   26956
JiVitA-3          BANGLADESH                     0                         1      414   26956
JiVitA-3          BANGLADESH                     1                         0     6766   26956
JiVitA-3          BANGLADESH                     1                         1      189   26956
JiVitA-4          BANGLADESH                     0                         0     3723    5443
JiVitA-4          BANGLADESH                     0                         1       31    5443
JiVitA-4          BANGLADESH                     1                         0     1670    5443
JiVitA-4          BANGLADESH                     1                         1       19    5443
Keneba            GAMBIA                         0                         0     1591    2920
Keneba            GAMBIA                         0                         1       51    2920
Keneba            GAMBIA                         1                         0     1232    2920
Keneba            GAMBIA                         1                         1       46    2920
MAL-ED            BANGLADESH                     0                         0      174     263
MAL-ED            BANGLADESH                     0                         1        2     263
MAL-ED            BANGLADESH                     1                         0       87     263
MAL-ED            BANGLADESH                     1                         1        0     263
MAL-ED            INDIA                          0                         0      130     251
MAL-ED            INDIA                          0                         1        1     251
MAL-ED            INDIA                          1                         0      119     251
MAL-ED            INDIA                          1                         1        1     251
MAL-ED            PERU                           0                         0      273     302
MAL-ED            PERU                           0                         1        2     302
MAL-ED            PERU                           1                         0       27     302
MAL-ED            PERU                           1                         1        0     302
MAL-ED            SOUTH AFRICA                   0                         0      248     312
MAL-ED            SOUTH AFRICA                   0                         1        0     312
MAL-ED            SOUTH AFRICA                   1                         0       64     312
MAL-ED            SOUTH AFRICA                   1                         1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      222     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0       36     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     261
PROVIDE           BANGLADESH                     0                         0      449     700
PROVIDE           BANGLADESH                     0                         1        5     700
PROVIDE           BANGLADESH                     1                         0      246     700
PROVIDE           BANGLADESH                     1                         1        0     700
SAS-CompFeed      INDIA                          0                         0      866    1513
SAS-CompFeed      INDIA                          0                         1       19    1513
SAS-CompFeed      INDIA                          1                         0      610    1513
SAS-CompFeed      INDIA                          1                         1       18    1513
SAS-FoodSuppl     INDIA                          0                         0      219     418
SAS-FoodSuppl     INDIA                          0                         1        2     418
SAS-FoodSuppl     INDIA                          1                         0      193     418
SAS-FoodSuppl     INDIA                          1                         1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1829    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      566    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
VITAMIN-A         INDIA                          0                         0     2556    3904
VITAMIN-A         INDIA                          0                         1       35    3904
VITAMIN-A         INDIA                          1                         0     1273    3904
VITAMIN-A         INDIA                          1                         1       40    3904
ZVITAMBO          ZIMBABWE                       0                         0     9957   13946
ZVITAMBO          ZIMBABWE                       0                         1      688   13946
ZVITAMBO          ZIMBABWE                       1                         0     2927   13946
ZVITAMBO          ZIMBABWE                       1                         1      374   13946


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4e7bd739-e8f8-485e-8962-bdbb8ade44e1/f4f62a00-b11b-43dc-8acc-759f70c1a594/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e7bd739-e8f8-485e-8962-bdbb8ade44e1/f4f62a00-b11b-43dc-8acc-759f70c1a594/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e7bd739-e8f8-485e-8962-bdbb8ade44e1/f4f62a00-b11b-43dc-8acc-759f70c1a594/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e7bd739-e8f8-485e-8962-bdbb8ade44e1/f4f62a00-b11b-43dc-8acc-759f70c1a594/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052324   0.0033659   0.0070990
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0124877   0.0067123   0.0182630
iLiNS-DOSE        MALAWI         0                    NA                0.0637479   0.0523759   0.0751200
iLiNS-DOSE        MALAWI         1                    NA                0.0959478   0.0516034   0.1402922
iLiNS-DYAD-M      MALAWI         0                    NA                0.0302475   0.0200805   0.0404145
iLiNS-DYAD-M      MALAWI         1                    NA                0.0818182   0.0305767   0.1330597
JiVitA-3          BANGLADESH     0                    NA                0.0208090   0.0188440   0.0227740
JiVitA-3          BANGLADESH     1                    NA                0.0268704   0.0230895   0.0306514
JiVitA-4          BANGLADESH     0                    NA                0.0082565   0.0053412   0.0111719
JiVitA-4          BANGLADESH     1                    NA                0.0110612   0.0057753   0.0163471
Keneba            GAMBIA         0                    NA                0.0319304   0.0232325   0.0406283
Keneba            GAMBIA         1                    NA                0.0365210   0.0260210   0.0470211
SAS-CompFeed      INDIA          0                    NA                0.0213481   0.0109504   0.0317458
SAS-CompFeed      INDIA          1                    NA                0.0286293   0.0133724   0.0438861
VITAMIN-A         INDIA          0                    NA                0.0136465   0.0091718   0.0181212
VITAMIN-A         INDIA          1                    NA                0.0301138   0.0208034   0.0394241
ZVITAMBO          ZIMBABWE       0                    NA                0.0654954   0.0608022   0.0701887
ZVITAMBO          ZIMBABWE       1                    NA                0.1107786   0.0999706   0.1215865


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
JiVitA-3          BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.386583   1.3309081   4.279620
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.505113   0.9169084   2.470655
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.704959   1.3288351   5.506177
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.291288   1.0953378   1.522293
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.339699   0.7386367   2.429875
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.143771   0.7695603   1.699949
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.341069   0.8497612   2.116436
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.206706   1.4060972   3.463169
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.691394   1.4996955   1.907596


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014659    0.0002522   0.0026795
iLiNS-DOSE        MALAWI         0                    NA                0.0025390   -0.0013360   0.0064139
iLiNS-DYAD-M      MALAWI         0                    NA                0.0047234   -0.0001348   0.0095816
JiVitA-3          BANGLADESH     0                    NA                0.0015608    0.0004877   0.0026339
JiVitA-4          BANGLADESH     0                    NA                0.0009296   -0.0009492   0.0028084
Keneba            GAMBIA         0                    NA                0.0012888   -0.0047344   0.0073121
SAS-CompFeed      INDIA          0                    NA                0.0031066   -0.0020442   0.0082575
VITAMIN-A         INDIA          0                    NA                0.0055646    0.0020742   0.0090550
ZVITAMBO          ZIMBABWE       0                    NA                0.0106554    0.0078599   0.0134510


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2188402    0.0283895   0.3719595
iLiNS-DOSE        MALAWI         0                    NA                0.0383026   -0.0216377   0.0947262
iLiNS-DYAD-M      MALAWI         0                    NA                0.1350661   -0.0091398   0.2586651
JiVitA-3          BANGLADESH     0                    NA                0.0697718    0.0209947   0.1161187
JiVitA-4          BANGLADESH     0                    NA                0.1011972   -0.1246010   0.2816595
Keneba            GAMBIA         0                    NA                0.0387970   -0.1606047   0.2039399
SAS-CompFeed      INDIA          0                    NA                0.1270358   -0.0941567   0.3035124
VITAMIN-A         INDIA          0                    NA                0.2896555    0.0978691   0.4406696
ZVITAMBO          ZIMBABWE       0                    NA                0.1399254    0.1032716   0.1750809

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

**Intervention Variable:** ever_underweight024

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

studyid           country                        ever_underweight024    dead0plus   n_cell       n
----------------  -----------------------------  --------------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                              0     4725    7165
Burkina Faso Zn   BURKINA FASO                   0                              1       22    7165
Burkina Faso Zn   BURKINA FASO                   1                              0     2392    7165
Burkina Faso Zn   BURKINA FASO                   1                              1       26    7165
EE                PAKISTAN                       0                              0       53     380
EE                PAKISTAN                       0                              1        0     380
EE                PAKISTAN                       1                              0      323     380
EE                PAKISTAN                       1                              1        4     380
GMS-Nepal         NEPAL                          0                              0      220     697
GMS-Nepal         NEPAL                          0                              1        2     697
GMS-Nepal         NEPAL                          1                              0      470     697
GMS-Nepal         NEPAL                          1                              1        5     697
iLiNS-DOSE        MALAWI                         0                              0     1164    1931
iLiNS-DOSE        MALAWI                         0                              1       63    1931
iLiNS-DOSE        MALAWI                         1                              0      639    1931
iLiNS-DOSE        MALAWI                         1                              1       65    1931
iLiNS-DYAD-M      MALAWI                         0                              0      775    1205
iLiNS-DYAD-M      MALAWI                         0                              1       18    1205
iLiNS-DYAD-M      MALAWI                         1                              0      386    1205
iLiNS-DYAD-M      MALAWI                         1                              1       26    1205
JiVitA-3          BANGLADESH                     0                              0    12880   27260
JiVitA-3          BANGLADESH                     0                              1      245   27260
JiVitA-3          BANGLADESH                     1                              0    13513   27260
JiVitA-3          BANGLADESH                     1                              1      622   27260
JiVitA-4          BANGLADESH                     0                              0     2570    5443
JiVitA-4          BANGLADESH                     0                              1       13    5443
JiVitA-4          BANGLADESH                     1                              0     2823    5443
JiVitA-4          BANGLADESH                     1                              1       37    5443
Keneba            GAMBIA                         0                              0     1596    2929
Keneba            GAMBIA                         0                              1       42    2929
Keneba            GAMBIA                         1                              0     1234    2929
Keneba            GAMBIA                         1                              1       57    2929
MAL-ED            BANGLADESH                     0                              0      122     265
MAL-ED            BANGLADESH                     0                              1        1     265
MAL-ED            BANGLADESH                     1                              0      140     265
MAL-ED            BANGLADESH                     1                              1        2     265
MAL-ED            INDIA                          0                              0       97     251
MAL-ED            INDIA                          0                              1        1     251
MAL-ED            INDIA                          1                              0      152     251
MAL-ED            INDIA                          1                              1        1     251
MAL-ED            PERU                           0                              0      230     303
MAL-ED            PERU                           0                              1        2     303
MAL-ED            PERU                           1                              0       71     303
MAL-ED            PERU                           1                              1        0     303
MAL-ED            SOUTH AFRICA                   0                              0      218     314
MAL-ED            SOUTH AFRICA                   0                              1        0     314
MAL-ED            SOUTH AFRICA                   1                              0       95     314
MAL-ED            SOUTH AFRICA                   1                              1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      146     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0      113     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        1     262
PROVIDE           BANGLADESH                     0                              0      350     700
PROVIDE           BANGLADESH                     0                              1        3     700
PROVIDE           BANGLADESH                     1                              0      345     700
PROVIDE           BANGLADESH                     1                              1        2     700
SAS-CompFeed      INDIA                          0                              0      601    1533
SAS-CompFeed      INDIA                          0                              1       15    1533
SAS-CompFeed      INDIA                          1                              0      882    1533
SAS-CompFeed      INDIA                          1                              1       35    1533
SAS-FoodSuppl     INDIA                          0                              0       74     418
SAS-FoodSuppl     INDIA                          0                              1        2     418
SAS-FoodSuppl     INDIA                          1                              0      338     418
SAS-FoodSuppl     INDIA                          1                              1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1856    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      539    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396
VITAMIN-A         INDIA                          0                              0     1355    3906
VITAMIN-A         INDIA                          0                              1        7    3906
VITAMIN-A         INDIA                          1                              0     2473    3906
VITAMIN-A         INDIA                          1                              1       71    3906
ZVITAMBO          ZIMBABWE                       0                              0    10036   14086
ZVITAMBO          ZIMBABWE                       0                              1      494   14086
ZVITAMBO          ZIMBABWE                       1                              0     2932   14086
ZVITAMBO          ZIMBABWE                       1                              1      624   14086


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




# Results Detail

## Results Plots
![](/tmp/b16788f7-a628-4b87-8548-e38793d28863/0fccbd04-11ae-4752-9af1-23f7af0d02ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b16788f7-a628-4b87-8548-e38793d28863/0fccbd04-11ae-4752-9af1-23f7af0d02ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b16788f7-a628-4b87-8548-e38793d28863/0fccbd04-11ae-4752-9af1-23f7af0d02ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b16788f7-a628-4b87-8548-e38793d28863/0fccbd04-11ae-4752-9af1-23f7af0d02ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0047110   0.0027501   0.0066718
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0104903   0.0064355   0.0145451
iLiNS-DOSE        MALAWI         0                    NA                0.0518293   0.0393640   0.0642945
iLiNS-DOSE        MALAWI         1                    NA                0.0924544   0.0703225   0.1145862
iLiNS-DYAD-M      MALAWI         0                    NA                0.0226424   0.0122878   0.0329971
iLiNS-DYAD-M      MALAWI         1                    NA                0.0625143   0.0393399   0.0856887
JiVitA-3          BANGLADESH     0                    NA                0.0194563   0.0168857   0.0220268
JiVitA-3          BANGLADESH     1                    NA                0.0410590   0.0375591   0.0445589
JiVitA-4          BANGLADESH     0                    NA                0.0051087   0.0022021   0.0080153
JiVitA-4          BANGLADESH     1                    NA                0.0128174   0.0087218   0.0169130
Keneba            GAMBIA         0                    NA                0.0265684   0.0185818   0.0345549
Keneba            GAMBIA         1                    NA                0.0423819   0.0312588   0.0535050
SAS-CompFeed      INDIA          0                    NA                0.0244482   0.0152421   0.0336543
SAS-CompFeed      INDIA          1                    NA                0.0382645   0.0216596   0.0548695
VITAMIN-A         INDIA          0                    NA                0.0051395   0.0013415   0.0089375
VITAMIN-A         INDIA          1                    NA                0.0279088   0.0215075   0.0343101
ZVITAMBO          ZIMBABWE       0                    NA                0.0474738   0.0434109   0.0515367
ZVITAMBO          ZIMBABWE       1                    NA                0.1719649   0.1593691   0.1845607


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066992   0.0048103   0.0085882
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0365145   0.0259198   0.0471093
JiVitA-3          BANGLADESH     NA                   NA                0.0318048   0.0296069   0.0340028
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0337999   0.0272543   0.0403456
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0793696   0.0749054   0.0838337


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.226791   1.261800    3.929782
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.783825   1.269840    2.505852
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.760935   1.531809    4.976316
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.110321   1.805968    2.465966
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.508937   1.312420    4.796305
Keneba            GAMBIA         0                    0                 1.000000   1.000000    1.000000
Keneba            GAMBIA         1                    0                 1.595201   1.070221    2.377701
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed      INDIA          1                    0                 1.565125   1.040312    2.354696
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.430256   2.504838   11.772289
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.622311   3.238486    4.051626


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0019883    0.0004406   0.0035360
iLiNS-DOSE        MALAWI         0                    NA                0.0144576    0.0052541   0.0236611
iLiNS-DYAD-M      MALAWI         0                    NA                0.0138721    0.0050081   0.0227361
JiVitA-3          BANGLADESH     0                    NA                0.0123486    0.0099184   0.0147788
JiVitA-4          BANGLADESH     0                    NA                0.0040774    0.0014397   0.0067151
Keneba            GAMBIA         0                    NA                0.0072316    0.0009576   0.0135055
SAS-CompFeed      INDIA          0                    NA                0.0081676   -0.0005441   0.0168793
VITAMIN-A         INDIA          0                    NA                0.0148298    0.0099700   0.0196895
ZVITAMBO          ZIMBABWE       0                    NA                0.0318958    0.0284480   0.0353435


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2967907    0.0448579   0.4822725
iLiNS-DOSE        MALAWI         0                    NA                0.2181065    0.0717237   0.3414058
iLiNS-DYAD-M      MALAWI         0                    NA                0.3799061    0.1195361   0.5632797
JiVitA-3          BANGLADESH     0                    NA                0.3882610    0.3135129   0.4548703
JiVitA-4          BANGLADESH     0                    NA                0.4438676    0.1029028   0.6552400
Keneba            GAMBIA         0                    NA                0.2139518    0.0105555   0.3755367
SAS-CompFeed      INDIA          0                    NA                0.2504179   -0.0025483   0.4395548
VITAMIN-A         INDIA          0                    NA                0.7426296    0.4793676   0.8727711
ZVITAMBO          ZIMBABWE       0                    NA                0.4018640    0.3629508   0.4384004

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

studyid           country                        ever_wasted024    dead   n_cell       n
----------------  -----------------------------  ---------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                    0     5737    7166
Burkina Faso Zn   BURKINA FASO                   0                    1       23    7166
Burkina Faso Zn   BURKINA FASO                   1                    0     1390    7166
Burkina Faso Zn   BURKINA FASO                   1                    1       16    7166
EE                PAKISTAN                       0                    0      153     380
EE                PAKISTAN                       0                    1        1     380
EE                PAKISTAN                       1                    0      223     380
EE                PAKISTAN                       1                    1        3     380
GMS-Nepal         NEPAL                          0                    0      276     686
GMS-Nepal         NEPAL                          0                    1        5     686
GMS-Nepal         NEPAL                          1                    0      403     686
GMS-Nepal         NEPAL                          1                    1        2     686
iLiNS-DOSE        MALAWI                         0                    0     1660    1931
iLiNS-DOSE        MALAWI                         0                    1      113    1931
iLiNS-DOSE        MALAWI                         1                    0      143    1931
iLiNS-DOSE        MALAWI                         1                    1       15    1931
iLiNS-DYAD-M      MALAWI                         0                    0     1060    1201
iLiNS-DYAD-M      MALAWI                         0                    1       31    1201
iLiNS-DYAD-M      MALAWI                         1                    0      103    1201
iLiNS-DYAD-M      MALAWI                         1                    1        7    1201
JiVitA-3          BANGLADESH                     0                    0    19607   26956
JiVitA-3          BANGLADESH                     0                    1      394   26956
JiVitA-3          BANGLADESH                     1                    0     6786   26956
JiVitA-3          BANGLADESH                     1                    1      169   26956
JiVitA-4          BANGLADESH                     0                    0     3724    5443
JiVitA-4          BANGLADESH                     0                    1       30    5443
JiVitA-4          BANGLADESH                     1                    0     1670    5443
JiVitA-4          BANGLADESH                     1                    1       19    5443
Keneba            GAMBIA                         0                    0     1609    2920
Keneba            GAMBIA                         0                    1       33    2920
Keneba            GAMBIA                         1                    0     1249    2920
Keneba            GAMBIA                         1                    1       29    2920
MAL-ED            BANGLADESH                     0                    0      174     263
MAL-ED            BANGLADESH                     0                    1        2     263
MAL-ED            BANGLADESH                     1                    0       87     263
MAL-ED            BANGLADESH                     1                    1        0     263
MAL-ED            INDIA                          0                    0      130     251
MAL-ED            INDIA                          0                    1        1     251
MAL-ED            INDIA                          1                    0      119     251
MAL-ED            INDIA                          1                    1        1     251
MAL-ED            PERU                           0                    0      273     302
MAL-ED            PERU                           0                    1        2     302
MAL-ED            PERU                           1                    0       27     302
MAL-ED            PERU                           1                    1        0     302
MAL-ED            SOUTH AFRICA                   0                    0      248     312
MAL-ED            SOUTH AFRICA                   0                    1        0     312
MAL-ED            SOUTH AFRICA                   1                    0       64     312
MAL-ED            SOUTH AFRICA                   1                    1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    0      222     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    0       36     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
PROVIDE           BANGLADESH                     0                    0      450     700
PROVIDE           BANGLADESH                     0                    1        4     700
PROVIDE           BANGLADESH                     1                    0      246     700
PROVIDE           BANGLADESH                     1                    1        0     700
SAS-CompFeed      INDIA                          0                    0      866    1513
SAS-CompFeed      INDIA                          0                    1       19    1513
SAS-CompFeed      INDIA                          1                    0      610    1513
SAS-CompFeed      INDIA                          1                    1       18    1513
SAS-FoodSuppl     INDIA                          0                    0      219     418
SAS-FoodSuppl     INDIA                          0                    1        2     418
SAS-FoodSuppl     INDIA                          1                    0      193     418
SAS-FoodSuppl     INDIA                          1                    1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1829    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      566    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
VITAMIN-A         INDIA                          0                    0     2556    3904
VITAMIN-A         INDIA                          0                    1       35    3904
VITAMIN-A         INDIA                          1                    0     1273    3904
VITAMIN-A         INDIA                          1                    1       40    3904
ZVITAMBO          ZIMBABWE                       0                    0     9963   13946
ZVITAMBO          ZIMBABWE                       0                    1      682   13946
ZVITAMBO          ZIMBABWE                       1                    0     2930   13946
ZVITAMBO          ZIMBABWE                       1                    1      371   13946


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
![](/tmp/094f59bf-be04-402f-9dc6-5e9b73497444/8efc20e0-fffc-4bbb-a990-5d65dc6efc28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/094f59bf-be04-402f-9dc6-5e9b73497444/8efc20e0-fffc-4bbb-a990-5d65dc6efc28/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/094f59bf-be04-402f-9dc6-5e9b73497444/8efc20e0-fffc-4bbb-a990-5d65dc6efc28/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/094f59bf-be04-402f-9dc6-5e9b73497444/8efc20e0-fffc-4bbb-a990-5d65dc6efc28/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0040144   0.0023781   0.0056508
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0110943   0.0056723   0.0165163
iLiNS-DOSE        MALAWI         0                    NA                0.0637357   0.0523627   0.0751086
iLiNS-DOSE        MALAWI         1                    NA                0.0901988   0.0458792   0.1345184
iLiNS-DYAD-M      MALAWI         0                    NA                0.0284143   0.0185509   0.0382777
iLiNS-DYAD-M      MALAWI         1                    NA                0.0636364   0.0180004   0.1092724
JiVitA-3          BANGLADESH     0                    NA                0.0197506   0.0178532   0.0216479
JiVitA-3          BANGLADESH     1                    NA                0.0240045   0.0203092   0.0276997
JiVitA-4          BANGLADESH     0                    NA                0.0080004   0.0051616   0.0108391
JiVitA-4          BANGLADESH     1                    NA                0.0111353   0.0058483   0.0164223
Keneba            GAMBIA         0                    NA                0.0206350   0.0136537   0.0276163
Keneba            GAMBIA         1                    NA                0.0224405   0.0143054   0.0305756
SAS-CompFeed      INDIA          0                    NA                0.0213481   0.0109504   0.0317458
SAS-CompFeed      INDIA          1                    NA                0.0286293   0.0133724   0.0438861
VITAMIN-A         INDIA          0                    NA                0.0136120   0.0091429   0.0180811
VITAMIN-A         INDIA          1                    NA                0.0300948   0.0208162   0.0393733
ZVITAMBO          ZIMBABWE       0                    NA                0.0648692   0.0602035   0.0695349
ZVITAMBO          ZIMBABWE       1                    NA                0.1090338   0.0982981   0.1197695


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


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.763599   1.4626290   5.221747
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.415201   0.8390981   2.386841
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.239589   1.0096057   4.968039
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.215380   1.0196809   1.448639
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.391848   0.7687914   2.519851
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.087495   0.6622465   1.785809
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.341069   0.8497612   2.116436
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 2.210900   1.4094508   3.468072
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.680825   1.4889766   1.897393


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014279    0.0002896   0.0025662
iLiNS-DOSE        MALAWI         0                    NA                0.0025512   -0.0013086   0.0064111
iLiNS-DYAD-M      MALAWI         0                    NA                0.0032260   -0.0010888   0.0075408
JiVitA-3          BANGLADESH     0                    NA                0.0011353    0.0001003   0.0021703
JiVitA-4          BANGLADESH     0                    NA                0.0010020   -0.0008632   0.0028672
Keneba            GAMBIA         0                    NA                0.0005979   -0.0041915   0.0053872
SAS-CompFeed      INDIA          0                    NA                0.0031066   -0.0020442   0.0082575
VITAMIN-A         INDIA          0                    NA                0.0055991    0.0021145   0.0090837
ZVITAMBO          ZIMBABWE       0                    NA                0.0106363    0.0078525   0.0134201


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2623734    0.0425208   0.4317443
iLiNS-DOSE        MALAWI         0                    NA                0.0384875   -0.0212208   0.0947048
iLiNS-DYAD-M      MALAWI         0                    NA                0.1019586   -0.0411726   0.2254134
JiVitA-3          BANGLADESH     0                    NA                0.0543580    0.0039537   0.1022116
JiVitA-4          BANGLADESH     0                    NA                0.1113049   -0.1169936   0.2929423
Keneba            GAMBIA         0                    NA                0.0281570   -0.2255929   0.2293698
SAS-CompFeed      INDIA          0                    NA                0.1270358   -0.0941567   0.3035124
VITAMIN-A         INDIA          0                    NA                0.2914503    0.1000441   0.4421475
ZVITAMBO          ZIMBABWE       0                    NA                0.1408680    0.1040815   0.1761440

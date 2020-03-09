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

studyid           country                        ever_underweight024    dead   n_cell       n
----------------  -----------------------------  --------------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0     4729    7165
Burkina Faso Zn   BURKINA FASO                   0                         1       18    7165
Burkina Faso Zn   BURKINA FASO                   1                         0     2397    7165
Burkina Faso Zn   BURKINA FASO                   1                         1       21    7165
EE                PAKISTAN                       0                         0       53     380
EE                PAKISTAN                       0                         1        0     380
EE                PAKISTAN                       1                         0      323     380
EE                PAKISTAN                       1                         1        4     380
GMS-Nepal         NEPAL                          0                         0      220     697
GMS-Nepal         NEPAL                          0                         1        2     697
GMS-Nepal         NEPAL                          1                         0      470     697
GMS-Nepal         NEPAL                          1                         1        5     697
iLiNS-DOSE        MALAWI                         0                         0     1164    1931
iLiNS-DOSE        MALAWI                         0                         1       63    1931
iLiNS-DOSE        MALAWI                         1                         0      639    1931
iLiNS-DOSE        MALAWI                         1                         1       65    1931
iLiNS-DYAD-M      MALAWI                         0                         0      777    1205
iLiNS-DYAD-M      MALAWI                         0                         1       16    1205
iLiNS-DYAD-M      MALAWI                         1                         0      388    1205
iLiNS-DYAD-M      MALAWI                         1                         1       24    1205
JiVitA-3          BANGLADESH                     0                         0    12890   27260
JiVitA-3          BANGLADESH                     0                         1      235   27260
JiVitA-3          BANGLADESH                     1                         0    13544   27260
JiVitA-3          BANGLADESH                     1                         1      591   27260
JiVitA-4          BANGLADESH                     0                         0     2570    5443
JiVitA-4          BANGLADESH                     0                         1       13    5443
JiVitA-4          BANGLADESH                     1                         0     2824    5443
JiVitA-4          BANGLADESH                     1                         1       36    5443
Keneba            GAMBIA                         0                         0     1610    2929
Keneba            GAMBIA                         0                         1       28    2929
Keneba            GAMBIA                         1                         0     1255    2929
Keneba            GAMBIA                         1                         1       36    2929
MAL-ED            BANGLADESH                     0                         0      122     265
MAL-ED            BANGLADESH                     0                         1        1     265
MAL-ED            BANGLADESH                     1                         0      140     265
MAL-ED            BANGLADESH                     1                         1        2     265
MAL-ED            INDIA                          0                         0       97     251
MAL-ED            INDIA                          0                         1        1     251
MAL-ED            INDIA                          1                         0      152     251
MAL-ED            INDIA                          1                         1        1     251
MAL-ED            PERU                           0                         0      230     303
MAL-ED            PERU                           0                         1        2     303
MAL-ED            PERU                           1                         0       71     303
MAL-ED            PERU                           1                         1        0     303
MAL-ED            SOUTH AFRICA                   0                         0      218     314
MAL-ED            SOUTH AFRICA                   0                         1        0     314
MAL-ED            SOUTH AFRICA                   1                         0       95     314
MAL-ED            SOUTH AFRICA                   1                         1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      146     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0      113     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        1     262
PROVIDE           BANGLADESH                     0                         0      350     700
PROVIDE           BANGLADESH                     0                         1        3     700
PROVIDE           BANGLADESH                     1                         0      346     700
PROVIDE           BANGLADESH                     1                         1        1     700
SAS-CompFeed      INDIA                          0                         0      601    1533
SAS-CompFeed      INDIA                          0                         1       15    1533
SAS-CompFeed      INDIA                          1                         0      882    1533
SAS-CompFeed      INDIA                          1                         1       35    1533
SAS-FoodSuppl     INDIA                          0                         0       74     418
SAS-FoodSuppl     INDIA                          0                         1        2     418
SAS-FoodSuppl     INDIA                          1                         0      338     418
SAS-FoodSuppl     INDIA                          1                         1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1856    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      539    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396
VITAMIN-A         INDIA                          0                         0     1355    3906
VITAMIN-A         INDIA                          0                         1        7    3906
VITAMIN-A         INDIA                          1                         0     2473    3906
VITAMIN-A         INDIA                          1                         1       71    3906
ZVITAMBO          ZIMBABWE                       0                         0    10043   14086
ZVITAMBO          ZIMBABWE                       0                         1      487   14086
ZVITAMBO          ZIMBABWE                       1                         0     2935   14086
ZVITAMBO          ZIMBABWE                       1                         1      621   14086


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
![](/tmp/4c25e07b-b0d6-4bda-bba8-4b0309189f5c/6f8e664d-1f6a-49c7-a9d0-3bdbbc9a5afc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4c25e07b-b0d6-4bda-bba8-4b0309189f5c/6f8e664d-1f6a-49c7-a9d0-3bdbbc9a5afc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4c25e07b-b0d6-4bda-bba8-4b0309189f5c/6f8e664d-1f6a-49c7-a9d0-3bdbbc9a5afc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4c25e07b-b0d6-4bda-bba8-4b0309189f5c/6f8e664d-1f6a-49c7-a9d0-3bdbbc9a5afc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038268   0.0020612   0.0055923
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0084359   0.0048116   0.0120603
iLiNS-DOSE        MALAWI         0                    NA                0.0520413   0.0394937   0.0645888
iLiNS-DOSE        MALAWI         1                    NA                0.0912553   0.0696244   0.1128861
iLiNS-DYAD-M      MALAWI         0                    NA                0.0199970   0.0102675   0.0297266
iLiNS-DYAD-M      MALAWI         1                    NA                0.0581841   0.0358229   0.0805452
JiVitA-3          BANGLADESH     0                    NA                0.0191367   0.0165715   0.0217019
JiVitA-3          BANGLADESH     1                    NA                0.0391575   0.0357789   0.0425361
JiVitA-4          BANGLADESH     0                    NA                0.0051038   0.0021918   0.0080157
JiVitA-4          BANGLADESH     1                    NA                0.0125168   0.0085050   0.0165286
Keneba            GAMBIA         0                    NA                0.0178788   0.0112168   0.0245408
Keneba            GAMBIA         1                    NA                0.0274676   0.0184214   0.0365137
SAS-CompFeed      INDIA          0                    NA                0.0244482   0.0152421   0.0336543
SAS-CompFeed      INDIA          1                    NA                0.0382645   0.0216596   0.0548695
VITAMIN-A         INDIA          0                    NA                0.0051395   0.0013415   0.0089375
VITAMIN-A         INDIA          1                    NA                0.0279088   0.0215075   0.0343101
ZVITAMBO          ZIMBABWE       0                    NA                0.0467295   0.0426800   0.0507790
ZVITAMBO          ZIMBABWE       1                    NA                0.1721363   0.1594387   0.1848339


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054431   0.0037394   0.0071469
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0331950   0.0230759   0.0433141
JiVitA-3          BANGLADESH     NA                   NA                0.0303008   0.0281489   0.0324527
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0218505   0.0165551   0.0271458
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0786597   0.0742138   0.0831055


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.204441   1.1736343    4.140610
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.753517   1.2502859    2.459295
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.909635   1.5633913    5.415136
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.046200   1.7503114    2.392109
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.452461   1.2810578    4.695000
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 1.536323   0.9342178    2.526485
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed      INDIA          1                    0                 1.565125   1.0403117    2.354696
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.430256   2.5048385   11.772289
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.683678   3.2893558    4.125270


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016163    0.0002272   0.0030055
iLiNS-DOSE        MALAWI         0                    NA                0.0142456    0.0050245   0.0234667
iLiNS-DYAD-M      MALAWI         0                    NA                0.0131980    0.0047088   0.0216872
JiVitA-3          BANGLADESH     0                    NA                0.0111641    0.0088199   0.0135083
JiVitA-4          BANGLADESH     0                    NA                0.0038986    0.0012974   0.0064999
Keneba            GAMBIA         0                    NA                0.0039717   -0.0011616   0.0091050
SAS-CompFeed      INDIA          0                    NA                0.0081676   -0.0005441   0.0168793
VITAMIN-A         INDIA          0                    NA                0.0148298    0.0099700   0.0196895
ZVITAMBO          ZIMBABWE       0                    NA                0.0319302    0.0284801   0.0353803


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2969515    0.0138947   0.4987582
iLiNS-DOSE        MALAWI         0                    NA                0.2149084    0.0678812   0.3387444
iLiNS-DYAD-M      MALAWI         0                    NA                0.3975893    0.1226435   0.5863727
JiVitA-3          BANGLADESH     0                    NA                0.3684429    0.2916896   0.4368792
JiVitA-4          BANGLADESH     0                    NA                0.4330657    0.0870513   0.6479381
Keneba            GAMBIA         0                    NA                0.1817669   -0.0850231   0.3829575
SAS-CompFeed      INDIA          0                    NA                0.2504179   -0.0025483   0.4395548
VITAMIN-A         INDIA          0                    NA                0.7426296    0.4793676   0.8727711
ZVITAMBO          ZIMBABWE       0                    NA                0.4059285    0.3666258   0.4427925

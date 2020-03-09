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

**Intervention Variable:** ever_wasted06

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

studyid           country                        ever_wasted06    dead0plus   n_cell       n
----------------  -----------------------------  --------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                        0      296     338
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338
Burkina Faso Zn   BURKINA FASO                   1                        0       40     338
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338
EE                PAKISTAN                       0                        0      248     380
EE                PAKISTAN                       0                        1        2     380
EE                PAKISTAN                       1                        0      128     380
EE                PAKISTAN                       1                        1        2     380
GMS-Nepal         NEPAL                          0                        0      422     686
GMS-Nepal         NEPAL                          0                        1        5     686
GMS-Nepal         NEPAL                          1                        0      257     686
GMS-Nepal         NEPAL                          1                        1        2     686
iLiNS-DOSE        MALAWI                         0                        0     1675    1814
iLiNS-DOSE        MALAWI                         0                        1      110    1814
iLiNS-DOSE        MALAWI                         1                        0       25    1814
iLiNS-DOSE        MALAWI                         1                        1        4    1814
iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182
iLiNS-DYAD-M      MALAWI                         0                        1       36    1182
iLiNS-DYAD-M      MALAWI                         1                        0       52    1182
iLiNS-DYAD-M      MALAWI                         1                        1        6    1182
JiVitA-3          BANGLADESH                     0                        0    21053   26918
JiVitA-3          BANGLADESH                     0                        1      421   26918
JiVitA-3          BANGLADESH                     1                        0     5264   26918
JiVitA-3          BANGLADESH                     1                        1      180   26918
JiVitA-4          BANGLADESH                     0                        0     4520    5252
JiVitA-4          BANGLADESH                     0                        1       38    5252
JiVitA-4          BANGLADESH                     1                        0      684    5252
JiVitA-4          BANGLADESH                     1                        1       10    5252
Keneba            GAMBIA                         0                        0     1745    2480
Keneba            GAMBIA                         0                        1       51    2480
Keneba            GAMBIA                         1                        0      649    2480
Keneba            GAMBIA                         1                        1       35    2480
MAL-ED            BANGLADESH                     0                        0      201     263
MAL-ED            BANGLADESH                     0                        1        2     263
MAL-ED            BANGLADESH                     1                        0       60     263
MAL-ED            BANGLADESH                     1                        1        0     263
MAL-ED            INDIA                          0                        0      166     251
MAL-ED            INDIA                          0                        1        1     251
MAL-ED            INDIA                          1                        0       83     251
MAL-ED            INDIA                          1                        1        1     251
MAL-ED            PERU                           0                        0      289     302
MAL-ED            PERU                           0                        1        2     302
MAL-ED            PERU                           1                        0       11     302
MAL-ED            PERU                           1                        1        0     302
MAL-ED            SOUTH AFRICA                   0                        0      276     312
MAL-ED            SOUTH AFRICA                   0                        1        0     312
MAL-ED            SOUTH AFRICA                   1                        0       36     312
MAL-ED            SOUTH AFRICA                   1                        1        0     312
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      244     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        3     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       14     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     261
PROVIDE           BANGLADESH                     0                        0      514     700
PROVIDE           BANGLADESH                     0                        1        5     700
PROVIDE           BANGLADESH                     1                        0      181     700
PROVIDE           BANGLADESH                     1                        1        0     700
SAS-CompFeed      INDIA                          0                        0     1142    1508
SAS-CompFeed      INDIA                          0                        1       22    1508
SAS-CompFeed      INDIA                          1                        0      330    1508
SAS-CompFeed      INDIA                          1                        1       14    1508
SAS-FoodSuppl     INDIA                          0                        0      316     418
SAS-FoodSuppl     INDIA                          0                        1        2     418
SAS-FoodSuppl     INDIA                          1                        0       96     418
SAS-FoodSuppl     INDIA                          1                        1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2038    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      357    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396
VITAMIN-A         INDIA                          0                        0     2967    3895
VITAMIN-A         INDIA                          0                        1       36    3895
VITAMIN-A         INDIA                          1                        0      853    3895
VITAMIN-A         INDIA                          1                        1       39    3895
ZVITAMBO          ZIMBABWE                       0                        0    10491   13862
ZVITAMBO          ZIMBABWE                       0                        1      736   13862
ZVITAMBO          ZIMBABWE                       1                        0     2315   13862
ZVITAMBO          ZIMBABWE                       1                        1      320   13862


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
* studyid: iLiNS-DOSE, country: MALAWI
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
![](/tmp/8ae687d9-557a-4521-9b3f-c0b0b5ba341f/26e6e643-649e-446d-95a2-01ff0efb6661/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ae687d9-557a-4521-9b3f-c0b0b5ba341f/26e6e643-649e-446d-95a2-01ff0efb6661/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ae687d9-557a-4521-9b3f-c0b0b5ba341f/26e6e643-649e-446d-95a2-01ff0efb6661/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ae687d9-557a-4521-9b3f-c0b0b5ba341f/26e6e643-649e-446d-95a2-01ff0efb6661/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0320285   0.0217306   0.0423264
iLiNS-DYAD-M   MALAWI       1                    NA                0.1034483   0.0250390   0.1818575
JiVitA-3       BANGLADESH   0                    NA                0.0196348   0.0177892   0.0214804
JiVitA-3       BANGLADESH   1                    NA                0.0327547   0.0280293   0.0374801
JiVitA-4       BANGLADESH   0                    NA                0.0083191   0.0055475   0.0110906
JiVitA-4       BANGLADESH   1                    NA                0.0140229   0.0042312   0.0238146
Keneba         GAMBIA       0                    NA                0.0284311   0.0207239   0.0361384
Keneba         GAMBIA       1                    NA                0.0525675   0.0354737   0.0696612
SAS-CompFeed   INDIA        0                    NA                0.0187983   0.0093151   0.0282815
SAS-CompFeed   INDIA        1                    NA                0.0415199   0.0177784   0.0652614
VITAMIN-A      INDIA        0                    NA                0.0120508   0.0081560   0.0159456
VITAMIN-A      INDIA        1                    NA                0.0428006   0.0293712   0.0562301
ZVITAMBO       ZIMBABWE     0                    NA                0.0659356   0.0613546   0.0705166
ZVITAMBO       ZIMBABWE     1                    NA                0.1190427   0.1064449   0.1316406


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
JiVitA-3       BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
JiVitA-4       BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858
Keneba         GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
VITAMIN-A      INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ZVITAMBO       ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 3.229885   1.4178129   7.357923
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 1.668196   1.4104211   1.973083
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.685629   0.7767613   3.657939
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.848941   1.2103947   2.824354
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.208708   1.1698388   4.170140
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.551680   2.2636296   5.572658
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.805440   1.5918047   2.047746


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0035045   -0.0004745   0.0074836
JiVitA-3       BANGLADESH   0                    NA                0.0026922    0.0016797   0.0037048
JiVitA-4       BANGLADESH   0                    NA                0.0008203   -0.0005696   0.0022102
Keneba         GAMBIA       0                    NA                0.0062463    0.0011753   0.0113173
SAS-CompFeed   INDIA        0                    NA                0.0050744   -0.0003482   0.0104970
VITAMIN-A      INDIA        0                    NA                0.0072046    0.0039782   0.0104311
ZVITAMBO       ZIMBABWE     0                    NA                0.0102439    0.0077182   0.0127696


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0986274   -0.0164951   0.2007117
JiVitA-3       BANGLADESH   0                    NA                0.1205821    0.0753686   0.1635847
JiVitA-4       BANGLADESH   0                    NA                0.0897536   -0.0710536   0.2264173
Keneba         GAMBIA       0                    NA                0.1801259    0.0255244   0.3101997
SAS-CompFeed   INDIA        0                    NA                0.2125608   -0.0155611   0.3894406
VITAMIN-A      INDIA        0                    NA                0.3741611    0.2106019   0.5038317
ZVITAMBO       ZIMBABWE     0                    NA                0.1344704    0.1015083   0.1662233

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

studyid           country                        ever_wasted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                        0      296     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        0       40     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead0plus        
EE                PAKISTAN                       0                        0      248     380  dead0plus        
EE                PAKISTAN                       0                        1        2     380  dead0plus        
EE                PAKISTAN                       1                        0      128     380  dead0plus        
EE                PAKISTAN                       1                        1        2     380  dead0plus        
GMS-Nepal         NEPAL                          0                        0      422     686  dead0plus        
GMS-Nepal         NEPAL                          0                        1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                        0      257     686  dead0plus        
GMS-Nepal         NEPAL                          1                        1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                        0     1675    1814  dead0plus        
iLiNS-DOSE        MALAWI                         0                        1      110    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        0       25    1814  dead0plus        
iLiNS-DOSE        MALAWI                         1                        1        4    1814  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                        1       36    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        0       52    1182  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                        1        6    1182  dead0plus        
JiVitA-3          BANGLADESH                     0                        0    21053   26918  dead0plus        
JiVitA-3          BANGLADESH                     0                        1      421   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        0     5264   26918  dead0plus        
JiVitA-3          BANGLADESH                     1                        1      180   26918  dead0plus        
JiVitA-4          BANGLADESH                     0                        0     4520    5252  dead0plus        
JiVitA-4          BANGLADESH                     0                        1       38    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        0      684    5252  dead0plus        
JiVitA-4          BANGLADESH                     1                        1       10    5252  dead0plus        
Keneba            GAMBIA                         0                        0     1745    2480  dead0plus        
Keneba            GAMBIA                         0                        1       51    2480  dead0plus        
Keneba            GAMBIA                         1                        0      649    2480  dead0plus        
Keneba            GAMBIA                         1                        1       35    2480  dead0plus        
MAL-ED            BANGLADESH                     0                        0      201     263  dead0plus        
MAL-ED            BANGLADESH                     0                        1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                        0       60     263  dead0plus        
MAL-ED            BANGLADESH                     1                        1        0     263  dead0plus        
MAL-ED            INDIA                          0                        0      166     251  dead0plus        
MAL-ED            INDIA                          0                        1        1     251  dead0plus        
MAL-ED            INDIA                          1                        0       83     251  dead0plus        
MAL-ED            INDIA                          1                        1        1     251  dead0plus        
MAL-ED            PERU                           0                        0      289     302  dead0plus        
MAL-ED            PERU                           0                        1        2     302  dead0plus        
MAL-ED            PERU                           1                        0       11     302  dead0plus        
MAL-ED            PERU                           1                        1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        0      276     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                        1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        0       36     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                        1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        0      244     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        0       14     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                        0      514     700  dead0plus        
PROVIDE           BANGLADESH                     0                        1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                        0      181     700  dead0plus        
PROVIDE           BANGLADESH                     1                        1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                        0     1142    1508  dead0plus        
SAS-CompFeed      INDIA                          0                        1       22    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        0      330    1508  dead0plus        
SAS-CompFeed      INDIA                          1                        1       14    1508  dead0plus        
SAS-FoodSuppl     INDIA                          0                        0      316     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                        1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        0       96     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                        1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2038    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      357    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                        0     2967    3895  dead0plus        
VITAMIN-A         INDIA                          0                        1       36    3895  dead0plus        
VITAMIN-A         INDIA                          1                        0      853    3895  dead0plus        
VITAMIN-A         INDIA                          1                        1       39    3895  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        0    10491   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       0                        1      736   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        0     2315   13862  dead0plus        
ZVITAMBO          ZIMBABWE                       1                        1      320   13862  dead0plus        


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
![](/tmp/93b1ba3c-57c9-4e64-9d1b-bc9f368c8136/adb1386d-bf0b-43cb-be07-0e4210709255/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93b1ba3c-57c9-4e64-9d1b-bc9f368c8136/adb1386d-bf0b-43cb-be07-0e4210709255/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93b1ba3c-57c9-4e64-9d1b-bc9f368c8136/adb1386d-bf0b-43cb-be07-0e4210709255/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93b1ba3c-57c9-4e64-9d1b-bc9f368c8136/adb1386d-bf0b-43cb-be07-0e4210709255/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0320285   0.0217306   0.0423264
iLiNS-DYAD-M   MALAWI       1                    NA                0.1034483   0.0250390   0.1818575
JiVitA-3       BANGLADESH   0                    NA                0.0196302   0.0177824   0.0214781
JiVitA-3       BANGLADESH   1                    NA                0.0328250   0.0280942   0.0375557
JiVitA-4       BANGLADESH   0                    NA                0.0083222   0.0055513   0.0110930
JiVitA-4       BANGLADESH   1                    NA                0.0140872   0.0042230   0.0239515
Keneba         GAMBIA       0                    NA                0.0284493   0.0206995   0.0361991
Keneba         GAMBIA       1                    NA                0.0512675   0.0344516   0.0680835
SAS-CompFeed   INDIA        0                    NA                0.0187983   0.0093151   0.0282815
SAS-CompFeed   INDIA        1                    NA                0.0415199   0.0177784   0.0652614
VITAMIN-A      INDIA        0                    NA                0.0120371   0.0081412   0.0159329
VITAMIN-A      INDIA        1                    NA                0.0430093   0.0295600   0.0564585
ZVITAMBO       ZIMBABWE     0                    NA                0.0658439   0.0612721   0.0704157
ZVITAMBO       ZIMBABWE     1                    NA                0.1187466   0.1064387   0.1310544


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
JiVitA-3       BANGLADESH   1                    0                 1.672164   1.4138416   1.977685
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 1.692739   0.7787166   3.679598
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.802069   1.1763387   2.760645
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 2.208708   1.1698388   4.170140
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.573069   2.2782211   5.603857
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 1.803456   1.5929228   2.041814


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0035045   -0.0004745   0.0074836
JiVitA-3       BANGLADESH   0                    NA                0.0026968    0.0016843   0.0037093
JiVitA-4       BANGLADESH   0                    NA                0.0008172   -0.0005720   0.0022064
Keneba         GAMBIA       0                    NA                0.0062282    0.0011164   0.0113399
SAS-CompFeed   INDIA        0                    NA                0.0050744   -0.0003482   0.0104970
VITAMIN-A      INDIA        0                    NA                0.0072184    0.0039913   0.0104455
ZVITAMBO       ZIMBABWE     0                    NA                0.0103356    0.0078150   0.0128562


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DYAD-M   MALAWI       0                    NA                0.0986274   -0.0164951   0.2007117
JiVitA-3       BANGLADESH   0                    NA                0.1207873    0.0755510   0.1638100
JiVitA-4       BANGLADESH   0                    NA                0.0894178   -0.0712903   0.2260174
Keneba         GAMBIA       0                    NA                0.1796026    0.0234180   0.3108086
SAS-CompFeed   INDIA        0                    NA                0.2125608   -0.0155611   0.3894406
VITAMIN-A      INDIA        0                    NA                0.3748752    0.2112283   0.5045702
ZVITAMBO       ZIMBABWE     0                    NA                0.1356741    0.1028028   0.1673410

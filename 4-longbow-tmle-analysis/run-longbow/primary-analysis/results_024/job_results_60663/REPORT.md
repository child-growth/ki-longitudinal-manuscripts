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

**Outcome Variable:** dead624

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

studyid           country                        ever_wasted024    dead624   n_cell       n
----------------  -----------------------------  ---------------  --------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                       0     5735    7164
Burkina Faso Zn   BURKINA FASO                   0                       1       23    7164
Burkina Faso Zn   BURKINA FASO                   1                       0     1390    7164
Burkina Faso Zn   BURKINA FASO                   1                       1       16    7164
EE                PAKISTAN                       0                       0      149     375
EE                PAKISTAN                       0                       1        1     375
EE                PAKISTAN                       1                       0      222     375
EE                PAKISTAN                       1                       1        3     375
GMS-Nepal         NEPAL                          0                       0      208     592
GMS-Nepal         NEPAL                          0                       1        1     592
GMS-Nepal         NEPAL                          1                       0      382     592
GMS-Nepal         NEPAL                          1                       1        1     592
iLiNS-DOSE        MALAWI                         0                       0     1606    1874
iLiNS-DOSE        MALAWI                         0                       1      112    1874
iLiNS-DOSE        MALAWI                         1                       0      141    1874
iLiNS-DOSE        MALAWI                         1                       1       15    1874
iLiNS-DYAD-M      MALAWI                         0                       0     1034    1161
iLiNS-DYAD-M      MALAWI                         0                       1       19    1161
iLiNS-DYAD-M      MALAWI                         1                       0      103    1161
iLiNS-DYAD-M      MALAWI                         1                       1        5    1161
JiVitA-3          BANGLADESH                     0                       0    15084   21023
JiVitA-3          BANGLADESH                     0                       1      181   21023
JiVitA-3          BANGLADESH                     1                       0     5674   21023
JiVitA-3          BANGLADESH                     1                       1       84   21023
JiVitA-4          BANGLADESH                     0                       0     3717    5433
JiVitA-4          BANGLADESH                     0                       1       30    5433
JiVitA-4          BANGLADESH                     1                       0     1667    5433
JiVitA-4          BANGLADESH                     1                       1       19    5433
Keneba            GAMBIA                         0                       0     1485    2752
Keneba            GAMBIA                         0                       1       21    2752
Keneba            GAMBIA                         1                       0     1223    2752
Keneba            GAMBIA                         1                       1       23    2752
MAL-ED            BANGLADESH                     0                       0      157     240
MAL-ED            BANGLADESH                     0                       1        0     240
MAL-ED            BANGLADESH                     1                       0       83     240
MAL-ED            BANGLADESH                     1                       1        0     240
MAL-ED            INDIA                          0                       0      121     235
MAL-ED            INDIA                          0                       1        0     235
MAL-ED            INDIA                          1                       0      114     235
MAL-ED            INDIA                          1                       1        0     235
MAL-ED            PERU                           0                       0      246     273
MAL-ED            PERU                           0                       1        1     273
MAL-ED            PERU                           1                       0       26     273
MAL-ED            PERU                           1                       1        0     273
MAL-ED            SOUTH AFRICA                   0                       0      204     261
MAL-ED            SOUTH AFRICA                   0                       1        0     261
MAL-ED            SOUTH AFRICA                   1                       0       57     261
MAL-ED            SOUTH AFRICA                   1                       1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      209     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0       36     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245
PROVIDE           BANGLADESH                     0                       0      392     617
PROVIDE           BANGLADESH                     0                       1        2     617
PROVIDE           BANGLADESH                     1                       0      223     617
PROVIDE           BANGLADESH                     1                       1        0     617
SAS-CompFeed      INDIA                          0                       0      783    1389
SAS-CompFeed      INDIA                          0                       1        2    1389
SAS-CompFeed      INDIA                          1                       0      594    1389
SAS-CompFeed      INDIA                          1                       1       10    1389
SAS-FoodSuppl     INDIA                          0                       0      208     402
SAS-FoodSuppl     INDIA                          0                       1        1     402
SAS-FoodSuppl     INDIA                          1                       0      190     402
SAS-FoodSuppl     INDIA                          1                       1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     1560    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0      536    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096
VITAMIN-A         INDIA                          0                       0     2357    3615
VITAMIN-A         INDIA                          0                       1       12    3615
VITAMIN-A         INDIA                          1                       0     1227    3615
VITAMIN-A         INDIA                          1                       1       19    3615
ZVITAMBO          ZIMBABWE                       0                       0     8640   11694
ZVITAMBO          ZIMBABWE                       0                       1      225   11694
ZVITAMBO          ZIMBABWE                       1                       0     2651   11694
ZVITAMBO          ZIMBABWE                       1                       1      178   11694


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
* studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/b6cde38d-ed7e-4a3d-8a9e-7e45db022eb6/8e7a0d82-bec7-4c98-92ff-638142b44595/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6cde38d-ed7e-4a3d-8a9e-7e45db022eb6/8e7a0d82-bec7-4c98-92ff-638142b44595/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6cde38d-ed7e-4a3d-8a9e-7e45db022eb6/8e7a0d82-bec7-4c98-92ff-638142b44595/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6cde38d-ed7e-4a3d-8a9e-7e45db022eb6/8e7a0d82-bec7-4c98-92ff-638142b44595/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0040077   0.0023725   0.0056430
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0111353   0.0056869   0.0165838
iLiNS-DOSE        MALAWI         0                    NA                0.0653000   0.0536199   0.0769801
iLiNS-DOSE        MALAWI         1                    NA                0.0871963   0.0439812   0.1304114
iLiNS-DYAD-M      MALAWI         0                    NA                0.0180437   0.0100005   0.0260869
iLiNS-DYAD-M      MALAWI         1                    NA                0.0462963   0.0066499   0.0859426
JiVitA-3          BANGLADESH     0                    NA                0.0120113   0.0102463   0.0137763
JiVitA-3          BANGLADESH     1                    NA                0.0142005   0.0110374   0.0173635
JiVitA-4          BANGLADESH     0                    NA                0.0080122   0.0051709   0.0108535
JiVitA-4          BANGLADESH     1                    NA                0.0111224   0.0058294   0.0164154
Keneba            GAMBIA         0                    NA                0.0139409   0.0080139   0.0198680
Keneba            GAMBIA         1                    NA                0.0184519   0.0109710   0.0259327
VITAMIN-A         INDIA          0                    NA                0.0051091   0.0022313   0.0079870
VITAMIN-A         INDIA          1                    NA                0.0153934   0.0084532   0.0223336
ZVITAMBO          ZIMBABWE       0                    NA                0.0259596   0.0226254   0.0292938
ZVITAMBO          ZIMBABWE       1                    NA                0.0597824   0.0508674   0.0686975


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
JiVitA-3          BANGLADESH     NA                   NA                0.0126052   0.0110619   0.0141486
JiVitA-4          BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681
Keneba            GAMBIA         NA                   NA                0.0159884   0.0113013   0.0206755
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0344621   0.0311558   0.0377684


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.778465   1.4694141   5.253704
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.335319   0.7884122   2.261605
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.565790   0.9771002   6.737564
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.182257   0.9062890   1.542259
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.388179   0.7660990   2.515393
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.323575   0.7354536   2.382000
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.012917   1.4643167   6.199251
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.302902   1.8915659   2.803687


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014362    0.0002981   0.0025742
iLiNS-DOSE        MALAWI         0                    NA                0.0024695   -0.0015291   0.0064680
iLiNS-DYAD-M      MALAWI         0                    NA                0.0026281   -0.0011645   0.0064208
JiVitA-3          BANGLADESH     0                    NA                0.0005939   -0.0003959   0.0015838
JiVitA-4          BANGLADESH     0                    NA                0.0010067   -0.0008602   0.0028737
Keneba            GAMBIA         0                    NA                0.0020474   -0.0022748   0.0063697
VITAMIN-A         INDIA          0                    NA                0.0034662    0.0009084   0.0060241
ZVITAMBO          ZIMBABWE       0                    NA                0.0085025    0.0061530   0.0108520


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2638117    0.0441696   0.4329818
iLiNS-DOSE        MALAWI         0                    NA                0.0364393   -0.0240906   0.0933915
iLiNS-DYAD-M      MALAWI         0                    NA                0.1271368   -0.0687060   0.2870909
JiVitA-3          BANGLADESH     0                    NA                0.0471177   -0.0344607   0.1222628
JiVitA-4          BANGLADESH     0                    NA                0.1116240   -0.1164881   0.2931300
Keneba            GAMBIA         0                    NA                0.1280585   -0.1854418   0.3586509
VITAMIN-A         INDIA          0                    NA                0.4042083    0.0742746   0.6165518
ZVITAMBO          ZIMBABWE       0                    NA                0.2467204    0.1798892   0.3081055

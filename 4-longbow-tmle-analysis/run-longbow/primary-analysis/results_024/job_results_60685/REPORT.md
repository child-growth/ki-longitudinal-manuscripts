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

**Outcome Variable:** dead6plus

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

studyid           country                        pers_wasted024    dead6plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0     6016    7164
Burkina Faso Zn   BURKINA FASO                   0                         1       32    7164
Burkina Faso Zn   BURKINA FASO                   1                         0     1100    7164
Burkina Faso Zn   BURKINA FASO                   1                         1       16    7164
EE                PAKISTAN                       0                         0      338     375
EE                PAKISTAN                       0                         1        4     375
EE                PAKISTAN                       1                         0       33     375
EE                PAKISTAN                       1                         1        0     375
GMS-Nepal         NEPAL                          0                         0      511     592
GMS-Nepal         NEPAL                          0                         1        1     592
GMS-Nepal         NEPAL                          1                         0       79     592
GMS-Nepal         NEPAL                          1                         1        1     592
iLiNS-DOSE        MALAWI                         0                         0     1690    1874
iLiNS-DOSE        MALAWI                         0                         1      119    1874
iLiNS-DOSE        MALAWI                         1                         0       57    1874
iLiNS-DOSE        MALAWI                         1                         1        8    1874
iLiNS-DYAD-M      MALAWI                         0                         0     1111    1161
iLiNS-DYAD-M      MALAWI                         0                         1       25    1161
iLiNS-DYAD-M      MALAWI                         1                         0       22    1161
iLiNS-DYAD-M      MALAWI                         1                         1        3    1161
JiVitA-3          BANGLADESH                     0                         0    19446   21023
JiVitA-3          BANGLADESH                     0                         1      253   21023
JiVitA-3          BANGLADESH                     1                         0     1272   21023
JiVitA-3          BANGLADESH                     1                         1       52   21023
JiVitA-4          BANGLADESH                     0                         0     4947    5433
JiVitA-4          BANGLADESH                     0                         1       40    5433
JiVitA-4          BANGLADESH                     1                         0      436    5433
JiVitA-4          BANGLADESH                     1                         1       10    5433
Keneba            GAMBIA                         0                         0     2495    2752
Keneba            GAMBIA                         0                         1       66    2752
Keneba            GAMBIA                         1                         0      178    2752
Keneba            GAMBIA                         1                         1       13    2752
MAL-ED            BANGLADESH                     0                         0      227     240
MAL-ED            BANGLADESH                     0                         1        0     240
MAL-ED            BANGLADESH                     1                         0       13     240
MAL-ED            BANGLADESH                     1                         1        0     240
MAL-ED            INDIA                          0                         0      215     235
MAL-ED            INDIA                          0                         1        0     235
MAL-ED            INDIA                          1                         0       20     235
MAL-ED            INDIA                          1                         1        0     235
MAL-ED            PERU                           0                         0      271     273
MAL-ED            PERU                           0                         1        1     273
MAL-ED            PERU                           1                         0        1     273
MAL-ED            PERU                           1                         1        0     273
MAL-ED            SOUTH AFRICA                   0                         0      259     261
MAL-ED            SOUTH AFRICA                   0                         1        0     261
MAL-ED            SOUTH AFRICA                   1                         0        2     261
MAL-ED            SOUTH AFRICA                   1                         1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      245     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
PROVIDE           BANGLADESH                     0                         0      600     617
PROVIDE           BANGLADESH                     0                         1        3     617
PROVIDE           BANGLADESH                     1                         0       14     617
PROVIDE           BANGLADESH                     1                         1        0     617
SAS-CompFeed      INDIA                          0                         0     1266    1389
SAS-CompFeed      INDIA                          0                         1        4    1389
SAS-CompFeed      INDIA                          1                         0      111    1389
SAS-CompFeed      INDIA                          1                         1        8    1389
SAS-FoodSuppl     INDIA                          0                         0      327     402
SAS-FoodSuppl     INDIA                          0                         1        1     402
SAS-FoodSuppl     INDIA                          1                         0       71     402
SAS-FoodSuppl     INDIA                          1                         1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2038    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       58    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096
VITAMIN-A         INDIA                          0                         0     3029    3615
VITAMIN-A         INDIA                          0                         1       13    3615
VITAMIN-A         INDIA                          1                         0      555    3615
VITAMIN-A         INDIA                          1                         1       18    3615
ZVITAMBO          ZIMBABWE                       0                         0    10991   11694
ZVITAMBO          ZIMBABWE                       0                         1      349   11694
ZVITAMBO          ZIMBABWE                       1                         0      291   11694
ZVITAMBO          ZIMBABWE                       1                         1       63   11694


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/527fd300-a0ff-4755-97dd-579f2155552c/b54de64f-38c6-41a3-8083-f3030cbbb771/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/527fd300-a0ff-4755-97dd-579f2155552c/b54de64f-38c6-41a3-8083-f3030cbbb771/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/527fd300-a0ff-4755-97dd-579f2155552c/b54de64f-38c6-41a3-8083-f3030cbbb771/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/527fd300-a0ff-4755-97dd-579f2155552c/b54de64f-38c6-41a3-8083-f3030cbbb771/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052762   0.0034500   0.0071025
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0143074   0.0072546   0.0213602
iLiNS-DOSE        MALAWI         0                    NA                0.0657822   0.0543554   0.0772090
iLiNS-DOSE        MALAWI         1                    NA                0.1230769   0.0431899   0.2029640
JiVitA-3          BANGLADESH     0                    NA                0.0128844   0.0112837   0.0144852
JiVitA-3          BANGLADESH     1                    NA                0.0380689   0.0266674   0.0494704
JiVitA-4          BANGLADESH     0                    NA                0.0080355   0.0054752   0.0105959
JiVitA-4          BANGLADESH     1                    NA                0.0228476   0.0091391   0.0365561
Keneba            GAMBIA         0                    NA                0.0258969   0.0197326   0.0320612
Keneba            GAMBIA         1                    NA                0.0681100   0.0316933   0.1045267
VITAMIN-A         INDIA          0                    NA                0.0042932   0.0019637   0.0066228
VITAMIN-A         INDIA          1                    NA                0.0311695   0.0168032   0.0455358
ZVITAMBO          ZIMBABWE       0                    NA                0.0309507   0.0277468   0.0341546
ZVITAMBO          ZIMBABWE       1                    NA                0.1958743   0.1569584   0.2347901


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
JiVitA-3          BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.711670   1.4848415    4.952149
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.870976   0.9555545    3.663372
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.954643   2.1300851    4.098389
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.843337   1.4353826    5.632341
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.630043   1.4652015    4.720937
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 7.260175   3.5631847   14.792988
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 6.328587   5.0583526    7.917797


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014239    0.0002985   0.0025493
iLiNS-DOSE        MALAWI         0                    NA                0.0019873   -0.0008518   0.0048264
JiVitA-3          BANGLADESH     0                    NA                0.0016235    0.0008922   0.0023548
JiVitA-4          BANGLADESH     0                    NA                0.0011675    0.0000356   0.0022994
Keneba            GAMBIA         0                    NA                0.0028095    0.0002615   0.0053575
VITAMIN-A         INDIA          0                    NA                0.0042822    0.0019640   0.0066003
ZVITAMBO          ZIMBABWE       0                    NA                0.0042810    0.0029901   0.0055719


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2125207    0.0385715   0.3549977
iLiNS-DOSE        MALAWI         0                    NA                0.0293241   -0.0132259   0.0700872
JiVitA-3          BANGLADESH     0                    NA                0.1119037    0.0620803   0.1590804
JiVitA-4          BANGLADESH     0                    NA                0.1268620   -0.0011696   0.2385207
Keneba            GAMBIA         0                    NA                0.0978695    0.0073004   0.1801756
VITAMIN-A         INDIA          0                    NA                0.4993557    0.2434968   0.6686799
ZVITAMBO          ZIMBABWE       0                    NA                0.1215106    0.0858197   0.1558081

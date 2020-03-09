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

**Intervention Variable:** ever_sstunted06

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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_sstunted06    dead6plus   n_cell       n
----------------  -----------------------------  ----------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                          0      323     336
Burkina Faso Zn   BURKINA FASO                   0                          1        2     336
Burkina Faso Zn   BURKINA FASO                   1                          0       11     336
Burkina Faso Zn   BURKINA FASO                   1                          1        0     336
EE                PAKISTAN                       0                          0      209     374
EE                PAKISTAN                       0                          1        3     374
EE                PAKISTAN                       1                          0      161     374
EE                PAKISTAN                       1                          1        1     374
GMS-Nepal         NEPAL                          0                          0      543     592
GMS-Nepal         NEPAL                          0                          1        1     592
GMS-Nepal         NEPAL                          1                          0       47     592
GMS-Nepal         NEPAL                          1                          1        1     592
iLiNS-DOSE        MALAWI                         0                          0     1534    1756
iLiNS-DOSE        MALAWI                         0                          1      101    1756
iLiNS-DOSE        MALAWI                         1                          0      109    1756
iLiNS-DOSE        MALAWI                         1                          1       12    1756
iLiNS-DYAD-M      MALAWI                         0                          0     1038    1148
iLiNS-DYAD-M      MALAWI                         0                          1       24    1148
iLiNS-DYAD-M      MALAWI                         1                          0       82    1148
iLiNS-DYAD-M      MALAWI                         1                          1        4    1148
JiVitA-3          BANGLADESH                     0                          0    17773   21009
JiVitA-3          BANGLADESH                     0                          1      209   21009
JiVitA-3          BANGLADESH                     1                          0     2926   21009
JiVitA-3          BANGLADESH                     1                          1      101   21009
JiVitA-4          BANGLADESH                     0                          0     4630    5260
JiVitA-4          BANGLADESH                     0                          1       31    5260
JiVitA-4          BANGLADESH                     1                          0      582    5260
JiVitA-4          BANGLADESH                     1                          1       17    5260
Keneba            GAMBIA                         0                          0     1983    2312
Keneba            GAMBIA                         0                          1       53    2312
Keneba            GAMBIA                         1                          0      261    2312
Keneba            GAMBIA                         1                          1       15    2312
MAL-ED            BANGLADESH                     0                          0      222     240
MAL-ED            BANGLADESH                     0                          1        0     240
MAL-ED            BANGLADESH                     1                          0       18     240
MAL-ED            BANGLADESH                     1                          1        0     240
MAL-ED            INDIA                          0                          0      215     235
MAL-ED            INDIA                          0                          1        0     235
MAL-ED            INDIA                          1                          0       20     235
MAL-ED            INDIA                          1                          1        0     235
MAL-ED            PERU                           0                          0      236     273
MAL-ED            PERU                           0                          1        1     273
MAL-ED            PERU                           1                          0       36     273
MAL-ED            PERU                           1                          1        0     273
MAL-ED            SOUTH AFRICA                   0                          0      233     261
MAL-ED            SOUTH AFRICA                   0                          1        0     261
MAL-ED            SOUTH AFRICA                   1                          0       28     261
MAL-ED            SOUTH AFRICA                   1                          1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      208     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       37     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245
PROVIDE           BANGLADESH                     0                          0      585     617
PROVIDE           BANGLADESH                     0                          1        3     617
PROVIDE           BANGLADESH                     1                          0       29     617
PROVIDE           BANGLADESH                     1                          1        0     617
SAS-CompFeed      INDIA                          0                          0     1176    1388
SAS-CompFeed      INDIA                          0                          1        5    1388
SAS-CompFeed      INDIA                          1                          0      200    1388
SAS-CompFeed      INDIA                          1                          1        7    1388
SAS-FoodSuppl     INDIA                          0                          0      337     402
SAS-FoodSuppl     INDIA                          0                          1        1     402
SAS-FoodSuppl     INDIA                          1                          0       61     402
SAS-FoodSuppl     INDIA                          1                          1        3     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1995    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      101    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096
VITAMIN-A         INDIA                          0                          0     3059    3605
VITAMIN-A         INDIA                          0                          1       20    3605
VITAMIN-A         INDIA                          1                          0      515    3605
VITAMIN-A         INDIA                          1                          1       11    3605
ZVITAMBO          ZIMBABWE                       0                          0    10164   11694
ZVITAMBO          ZIMBABWE                       0                          1      309   11694
ZVITAMBO          ZIMBABWE                       1                          0     1115   11694
ZVITAMBO          ZIMBABWE                       1                          1      106   11694


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/e9ec0444-21f4-435f-b372-bd5860357fe3/d828c173-1efb-4e59-9493-6d42def29443/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e9ec0444-21f4-435f-b372-bd5860357fe3/d828c173-1efb-4e59-9493-6d42def29443/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e9ec0444-21f4-435f-b372-bd5860357fe3/d828c173-1efb-4e59-9493-6d42def29443/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e9ec0444-21f4-435f-b372-bd5860357fe3/d828c173-1efb-4e59-9493-6d42def29443/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0617645   0.0500921   0.0734369
iLiNS-DOSE     MALAWI       1                    NA                0.0978698   0.0435864   0.1521533
JiVitA-3       BANGLADESH   0                    NA                0.0117940   0.0101960   0.0133919
JiVitA-3       BANGLADESH   1                    NA                0.0349350   0.0269006   0.0429694
JiVitA-4       BANGLADESH   0                    NA                0.0066620   0.0040761   0.0092480
JiVitA-4       BANGLADESH   1                    NA                0.0274084   0.0145245   0.0402923
Keneba         GAMBIA       0                    NA                0.0260519   0.0191263   0.0329775
Keneba         GAMBIA       1                    NA                0.0547496   0.0272002   0.0822989
SAS-CompFeed   INDIA        0                    NA                0.0042337   0.0005807   0.0078867
SAS-CompFeed   INDIA        1                    NA                0.0338164   0.0119227   0.0557102
VITAMIN-A      INDIA        0                    NA                0.0065160   0.0036709   0.0093610
VITAMIN-A      INDIA        1                    NA                0.0205390   0.0083166   0.0327614
ZVITAMBO       ZIMBABWE     0                    NA                0.0297152   0.0264586   0.0329718
ZVITAMBO       ZIMBABWE     1                    NA                0.0807560   0.0649934   0.0965186


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0643508   0.0528708   0.0758308
JiVitA-3       BANGLADESH   NA                   NA                0.0147556   0.0131087   0.0164025
JiVitA-4       BANGLADESH   NA                   NA                0.0091255   0.0063790   0.0118719
Keneba         GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
SAS-CompFeed   INDIA        NA                   NA                0.0086455   0.0042433   0.0130478
VITAMIN-A      INDIA        NA                   NA                0.0085992   0.0055847   0.0116136
ZVITAMBO       ZIMBABWE     NA                   NA                0.0354883   0.0321349   0.0388417


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.584565   0.8821076    2.846417
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-3       BANGLADESH   1                    0                 2.962107   2.2723119    3.861299
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
JiVitA-4       BANGLADESH   1                    0                 4.114128   2.2413043    7.551876
Keneba         GAMBIA       0                    0                 1.000000   1.0000000    1.000000
Keneba         GAMBIA       1                    0                 2.101558   1.1892917    3.713593
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed   INDIA        1                    0                 7.987440   2.8177744   22.641696
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A      INDIA        1                    0                 3.152092   1.5073979    6.591282
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.717668   2.1728533    3.399088


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0025863   -0.0011910   0.0063636
JiVitA-3       BANGLADESH   0                    NA                0.0029616    0.0019809   0.0039423
JiVitA-4       BANGLADESH   0                    NA                0.0024635    0.0009412   0.0039857
Keneba         GAMBIA       0                    NA                0.0033599    0.0000334   0.0066863
SAS-CompFeed   INDIA        0                    NA                0.0044118    0.0012088   0.0076148
VITAMIN-A      INDIA        0                    NA                0.0020832    0.0002430   0.0039234
ZVITAMBO       ZIMBABWE     0                    NA                0.0057731    0.0040597   0.0074865


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0401907   -0.0199423   0.0967785
JiVitA-3       BANGLADESH   0                    NA                0.2007109    0.1358784   0.2606793
JiVitA-4       BANGLADESH   0                    NA                0.2699533    0.0968099   0.4099047
Keneba         GAMBIA       0                    NA                0.1142357   -0.0029566   0.2177345
SAS-CompFeed   INDIA        0                    NA                0.5103020    0.0855804   0.7377526
VITAMIN-A      INDIA        0                    NA                0.2422528    0.0177590   0.4154379
ZVITAMBO       ZIMBABWE     0                    NA                0.1626763    0.1155102   0.2073272

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

**Intervention Variable:** ever_swasted06

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

studyid           country                        ever_swasted06    dead6plus   n_cell       n
----------------  -----------------------------  ---------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                         0      326     336
Burkina Faso Zn   BURKINA FASO                   0                         1        2     336
Burkina Faso Zn   BURKINA FASO                   1                         0        8     336
Burkina Faso Zn   BURKINA FASO                   1                         1        0     336
EE                PAKISTAN                       0                         0      332     375
EE                PAKISTAN                       0                         1        4     375
EE                PAKISTAN                       1                         0       39     375
EE                PAKISTAN                       1                         1        0     375
GMS-Nepal         NEPAL                          0                         0      516     592
GMS-Nepal         NEPAL                          0                         1        2     592
GMS-Nepal         NEPAL                          1                         0       74     592
GMS-Nepal         NEPAL                          1                         1        0     592
iLiNS-DOSE        MALAWI                         0                         0     1643    1757
iLiNS-DOSE        MALAWI                         0                         1      112    1757
iLiNS-DOSE        MALAWI                         1                         0        1    1757
iLiNS-DOSE        MALAWI                         1                         1        1    1757
iLiNS-DYAD-M      MALAWI                         0                         0     1103    1142
iLiNS-DYAD-M      MALAWI                         0                         1       25    1142
iLiNS-DYAD-M      MALAWI                         1                         0       11    1142
iLiNS-DYAD-M      MALAWI                         1                         1        3    1142
JiVitA-3          BANGLADESH                     0                         0    19764   20985
JiVitA-3          BANGLADESH                     0                         1      270   20985
JiVitA-3          BANGLADESH                     1                         0      918   20985
JiVitA-3          BANGLADESH                     1                         1       33   20985
JiVitA-4          BANGLADESH                     0                         0     5065    5242
JiVitA-4          BANGLADESH                     0                         1       43    5242
JiVitA-4          BANGLADESH                     1                         0      129    5242
JiVitA-4          BANGLADESH                     1                         1        5    5242
Keneba            GAMBIA                         0                         0     2038    2312
Keneba            GAMBIA                         0                         1       52    2312
Keneba            GAMBIA                         1                         0      206    2312
Keneba            GAMBIA                         1                         1       16    2312
MAL-ED            BANGLADESH                     0                         0      224     240
MAL-ED            BANGLADESH                     0                         1        0     240
MAL-ED            BANGLADESH                     1                         0       16     240
MAL-ED            BANGLADESH                     1                         1        0     240
MAL-ED            INDIA                          0                         0      214     235
MAL-ED            INDIA                          0                         1        0     235
MAL-ED            INDIA                          1                         0       21     235
MAL-ED            INDIA                          1                         1        0     235
MAL-ED            PERU                           0                         0      271     273
MAL-ED            PERU                           0                         1        1     273
MAL-ED            PERU                           1                         0        1     273
MAL-ED            PERU                           1                         1        0     273
MAL-ED            SOUTH AFRICA                   0                         0      254     261
MAL-ED            SOUTH AFRICA                   0                         1        0     261
MAL-ED            SOUTH AFRICA                   1                         0        7     261
MAL-ED            SOUTH AFRICA                   1                         1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      240     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        5     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
PROVIDE           BANGLADESH                     0                         0      589     617
PROVIDE           BANGLADESH                     0                         1        3     617
PROVIDE           BANGLADESH                     1                         0       25     617
PROVIDE           BANGLADESH                     1                         1        0     617
SAS-CompFeed      INDIA                          0                         0     1283    1384
SAS-CompFeed      INDIA                          0                         1        8    1384
SAS-CompFeed      INDIA                          1                         0       90    1384
SAS-CompFeed      INDIA                          1                         1        3    1384
SAS-FoodSuppl     INDIA                          0                         0      372     402
SAS-FoodSuppl     INDIA                          0                         1        2     402
SAS-FoodSuppl     INDIA                          1                         0       26     402
SAS-FoodSuppl     INDIA                          1                         1        2     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2021    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       75    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096
VITAMIN-A         INDIA                          0                         0     3360    3606
VITAMIN-A         INDIA                          0                         1       21    3606
VITAMIN-A         INDIA                          1                         0      215    3606
VITAMIN-A         INDIA                          1                         1       10    3606
ZVITAMBO          ZIMBABWE                       0                         0    10444   11610
ZVITAMBO          ZIMBABWE                       0                         1      356   11610
ZVITAMBO          ZIMBABWE                       1                         0      760   11610
ZVITAMBO          ZIMBABWE                       1                         1       50   11610


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
![](/tmp/b18df7f9-153c-4c15-a6b4-44a4f436e970/a2abb605-e722-4acb-9724-686a9d56d8ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b18df7f9-153c-4c15-a6b4-44a4f436e970/a2abb605-e722-4acb-9724-686a9d56d8ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b18df7f9-153c-4c15-a6b4-44a4f436e970/a2abb605-e722-4acb-9724-686a9d56d8ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b18df7f9-153c-4c15-a6b4-44a4f436e970/a2abb605-e722-4acb-9724-686a9d56d8ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3    BANGLADESH   0                    NA                0.0134816    0.0118894   0.0150738
JiVitA-3    BANGLADESH   1                    NA                0.0343829    0.0217699   0.0469959
JiVitA-4    BANGLADESH   0                    NA                0.0084182    0.0057961   0.0110402
JiVitA-4    BANGLADESH   1                    NA                0.0373134   -0.0013266   0.0759535
Keneba      GAMBIA       0                    NA                0.0250782    0.0183438   0.0318125
Keneba      GAMBIA       1                    NA                0.0724653    0.0378862   0.1070445
VITAMIN-A   INDIA        0                    NA                0.0062334    0.0035770   0.0088899
VITAMIN-A   INDIA        1                    NA                0.0495965    0.0192500   0.0799430
ZVITAMBO    ZIMBABWE     0                    NA                0.0330196    0.0296523   0.0363868
ZVITAMBO    ZIMBABWE     1                    NA                0.0604348    0.0439637   0.0769058


### Parameter: E(Y)


studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3    BANGLADESH   NA                   NA                0.0144389   0.0128023   0.0160755
JiVitA-4    BANGLADESH   NA                   NA                0.0091568   0.0064104   0.0119032
Keneba      GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
VITAMIN-A   INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ZVITAMBO    ZIMBABWE     NA                   NA                0.0349699   0.0316281   0.0383116


### Parameter: RR


studyid     country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3    BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3    BANGLADESH   1                    0                 2.550359   1.742697    3.732339
JiVitA-4    BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4    BANGLADESH   1                    0                 4.432489   1.503686   13.065864
Keneba      GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba      GAMBIA       1                    0                 2.889579   1.671402    4.995606
VITAMIN-A   INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A   INDIA        1                    0                 7.956524   3.775453   16.767861
ZVITAMBO    ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO    ZIMBABWE     1                    0                 1.830272   1.368381    2.448071


### Parameter: PAR


studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3    BANGLADESH   0                    NA                0.0009573    0.0003842   0.0015303
JiVitA-4    BANGLADESH   0                    NA                0.0007386   -0.0002654   0.0017427
Keneba      GAMBIA       0                    NA                0.0043336    0.0009413   0.0077259
VITAMIN-A   INDIA        0                    NA                0.0023633    0.0006478   0.0040789
ZVITAMBO    ZIMBABWE     0                    NA                0.0019503    0.0007669   0.0031337


### Parameter: PAF


studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3    BANGLADESH   0                    NA                0.0662998    0.0270033   0.1040092
JiVitA-4    BANGLADESH   0                    NA                0.0806659   -0.0304130   0.1797706
Keneba      GAMBIA       0                    NA                0.1473425    0.0295397   0.2508455
VITAMIN-A   INDIA        0                    NA                0.2749104    0.0769629   0.4304077
ZVITAMBO    ZIMBABWE     0                    NA                0.0557707    0.0217424   0.0886154

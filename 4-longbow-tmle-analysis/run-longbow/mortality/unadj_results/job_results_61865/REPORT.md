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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid           country                        ever_swasted06    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                       0      326     336  dead624          
Burkina Faso Zn   BURKINA FASO                   0                       1        2     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       0        8     336  dead624          
Burkina Faso Zn   BURKINA FASO                   1                       1        0     336  dead624          
EE                PAKISTAN                       0                       0      332     375  dead624          
EE                PAKISTAN                       0                       1        4     375  dead624          
EE                PAKISTAN                       1                       0       39     375  dead624          
EE                PAKISTAN                       1                       1        0     375  dead624          
GMS-Nepal         NEPAL                          0                       0      516     592  dead624          
GMS-Nepal         NEPAL                          0                       1        2     592  dead624          
GMS-Nepal         NEPAL                          1                       0       74     592  dead624          
GMS-Nepal         NEPAL                          1                       1        0     592  dead624          
iLiNS-DOSE        MALAWI                         0                       0     1643    1757  dead624          
iLiNS-DOSE        MALAWI                         0                       1      112    1757  dead624          
iLiNS-DOSE        MALAWI                         1                       0        1    1757  dead624          
iLiNS-DOSE        MALAWI                         1                       1        1    1757  dead624          
iLiNS-DYAD-M      MALAWI                         0                       0     1106    1142  dead624          
iLiNS-DYAD-M      MALAWI                         0                       1       22    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                       0       12    1142  dead624          
iLiNS-DYAD-M      MALAWI                         1                       1        2    1142  dead624          
JiVitA-3          BANGLADESH                     0                       0    19798   20985  dead624          
JiVitA-3          BANGLADESH                     0                       1      236   20985  dead624          
JiVitA-3          BANGLADESH                     1                       0      924   20985  dead624          
JiVitA-3          BANGLADESH                     1                       1       27   20985  dead624          
JiVitA-4          BANGLADESH                     0                       0     5066    5242  dead624          
JiVitA-4          BANGLADESH                     0                       1       42    5242  dead624          
JiVitA-4          BANGLADESH                     1                       0      129    5242  dead624          
JiVitA-4          BANGLADESH                     1                       1        5    5242  dead624          
Keneba            GAMBIA                         0                       0     2061    2312  dead624          
Keneba            GAMBIA                         0                       1       29    2312  dead624          
Keneba            GAMBIA                         1                       0      212    2312  dead624          
Keneba            GAMBIA                         1                       1       10    2312  dead624          
MAL-ED            BANGLADESH                     0                       0      224     240  dead624          
MAL-ED            BANGLADESH                     0                       1        0     240  dead624          
MAL-ED            BANGLADESH                     1                       0       16     240  dead624          
MAL-ED            BANGLADESH                     1                       1        0     240  dead624          
MAL-ED            INDIA                          0                       0      214     235  dead624          
MAL-ED            INDIA                          0                       1        0     235  dead624          
MAL-ED            INDIA                          1                       0       21     235  dead624          
MAL-ED            INDIA                          1                       1        0     235  dead624          
MAL-ED            PERU                           0                       0      271     273  dead624          
MAL-ED            PERU                           0                       1        1     273  dead624          
MAL-ED            PERU                           1                       0        1     273  dead624          
MAL-ED            PERU                           1                       1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                       0      254     261  dead624          
MAL-ED            SOUTH AFRICA                   0                       1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       0        7     261  dead624          
MAL-ED            SOUTH AFRICA                   1                       1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       0      240     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       0        5     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
PROVIDE           BANGLADESH                     0                       0      590     617  dead624          
PROVIDE           BANGLADESH                     0                       1        2     617  dead624          
PROVIDE           BANGLADESH                     1                       0       25     617  dead624          
PROVIDE           BANGLADESH                     1                       1        0     617  dead624          
SAS-CompFeed      INDIA                          0                       0     1283    1384  dead624          
SAS-CompFeed      INDIA                          0                       1        8    1384  dead624          
SAS-CompFeed      INDIA                          1                       0       90    1384  dead624          
SAS-CompFeed      INDIA                          1                       1        3    1384  dead624          
SAS-FoodSuppl     INDIA                          0                       0      372     402  dead624          
SAS-FoodSuppl     INDIA                          0                       1        2     402  dead624          
SAS-FoodSuppl     INDIA                          1                       0       26     402  dead624          
SAS-FoodSuppl     INDIA                          1                       1        2     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     2021    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0       75    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
VITAMIN-A         INDIA                          0                       0     3360    3606  dead624          
VITAMIN-A         INDIA                          0                       1       21    3606  dead624          
VITAMIN-A         INDIA                          1                       0      215    3606  dead624          
VITAMIN-A         INDIA                          1                       1       10    3606  dead624          
ZVITAMBO          ZIMBABWE                       0                       0    10453   11610  dead624          
ZVITAMBO          ZIMBABWE                       0                       1      347   11610  dead624          
ZVITAMBO          ZIMBABWE                       1                       0      760   11610  dead624          
ZVITAMBO          ZIMBABWE                       1                       1       50   11610  dead624          


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
![](/tmp/9b85b66a-618f-4e0d-ae0a-431169e61954/de0d66e1-cec4-4254-a9d8-48769234ad90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b85b66a-618f-4e0d-ae0a-431169e61954/de0d66e1-cec4-4254-a9d8-48769234ad90/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b85b66a-618f-4e0d-ae0a-431169e61954/de0d66e1-cec4-4254-a9d8-48769234ad90/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b85b66a-618f-4e0d-ae0a-431169e61954/de0d66e1-cec4-4254-a9d8-48769234ad90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3    BANGLADESH   0                    NA                0.0117800    0.0102913   0.0132687
JiVitA-3    BANGLADESH   1                    NA                0.0283912    0.0165609   0.0402214
JiVitA-4    BANGLADESH   0                    NA                0.0082224    0.0056402   0.0108046
JiVitA-4    BANGLADESH   1                    NA                0.0373134   -0.0013266   0.0759535
Keneba      GAMBIA       0                    NA                0.0138756    0.0088596   0.0188916
Keneba      GAMBIA       1                    NA                0.0450450    0.0177565   0.0723336
VITAMIN-A   INDIA        0                    NA                0.0062112    0.0035626   0.0088598
VITAMIN-A   INDIA        1                    NA                0.0444444    0.0175134   0.0713755
ZVITAMBO    ZIMBABWE     0                    NA                0.0321296    0.0288037   0.0354556
ZVITAMBO    ZIMBABWE     1                    NA                0.0617284    0.0451543   0.0783025


### Parameter: E(Y)


studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  ----------  ----------
JiVitA-3    BANGLADESH   NA                   NA                0.0125328   0.0109928   0.0140728
JiVitA-4    BANGLADESH   NA                   NA                0.0089660   0.0062553   0.0116768
Keneba      GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
VITAMIN-A   INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ZVITAMBO    ZIMBABWE     NA                   NA                0.0341947   0.0308889   0.0375004


### Parameter: RR


studyid     country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ---------  ---------  ----------
JiVitA-3    BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-3    BANGLADESH   1                    0                 2.410121   1.568064    3.704367
JiVitA-4    BANGLADESH   0                    0                 1.000000   1.000000    1.000000
JiVitA-4    BANGLADESH   1                    0                 4.538024   1.538361   13.386754
Keneba      GAMBIA       0                    0                 1.000000   1.000000    1.000000
Keneba      GAMBIA       1                    0                 3.246350   1.603301    6.573182
VITAMIN-A   INDIA        0                    0                 1.000000   1.000000    1.000000
VITAMIN-A   INDIA        1                    0                 7.155556   3.410754   15.011924
ZVITAMBO    ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ZVITAMBO    ZIMBABWE     1                    0                 1.921230   1.440803    2.561851


### Parameter: PAR


studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3    BANGLADESH   0                    NA                0.0007528    0.0002127   0.0012929
JiVitA-4    BANGLADESH   0                    NA                0.0007436   -0.0002605   0.0017478
Keneba      GAMBIA       0                    NA                0.0029929    0.0003026   0.0056833
VITAMIN-A   INDIA        0                    NA                0.0023856    0.0006703   0.0041009
ZVITAMBO    ZIMBABWE     0                    NA                0.0020650    0.0008777   0.0032524


### Parameter: PAF


studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  -------------------  ---------------  ----------  -----------  ----------
JiVitA-3    BANGLADESH   0                    NA                0.0600656    0.0174047   0.1008742
JiVitA-4    BANGLADESH   0                    NA                0.0829404   -0.0304435   0.1838482
Keneba      GAMBIA       0                    NA                0.1774261    0.0129863   0.3144696
VITAMIN-A   INDIA        0                    NA                0.2774995    0.0800662   0.4325603
ZVITAMBO    ZIMBABWE     0                    NA                0.0603904    0.0254964   0.0940350

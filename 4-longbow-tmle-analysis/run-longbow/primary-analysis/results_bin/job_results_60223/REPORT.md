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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        single    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  -------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                     0      582    1207
0-24 months   COHORTS          GUATEMALA                      0                     1      527    1207
0-24 months   COHORTS          GUATEMALA                      1                     0       43    1207
0-24 months   COHORTS          GUATEMALA                      1                     1       55    1207
0-24 months   COHORTS          INDIA                          0                     0     4639    5384
0-24 months   COHORTS          INDIA                          0                     1      736    5384
0-24 months   COHORTS          INDIA                          1                     0        7    5384
0-24 months   COHORTS          INDIA                          1                     1        2    5384
0-24 months   COHORTS          PHILIPPINES                    0                     0     1889    3018
0-24 months   COHORTS          PHILIPPINES                    0                     1     1054    3018
0-24 months   COHORTS          PHILIPPINES                    1                     0       50    3018
0-24 months   COHORTS          PHILIPPINES                    1                     1       25    3018
0-24 months   Guatemala BSC    GUATEMALA                      0                     0      207     282
0-24 months   Guatemala BSC    GUATEMALA                      0                     1       45     282
0-24 months   Guatemala BSC    GUATEMALA                      1                     0       22     282
0-24 months   Guatemala BSC    GUATEMALA                      1                     1        8     282
0-24 months   JiVitA-4         BANGLADESH                     0                     0     4312    5423
0-24 months   JiVitA-4         BANGLADESH                     0                     1     1103    5423
0-24 months   JiVitA-4         BANGLADESH                     1                     0        8    5423
0-24 months   JiVitA-4         BANGLADESH                     1                     1        0    5423
0-24 months   MAL-ED           BANGLADESH                     0                     0      207     265
0-24 months   MAL-ED           BANGLADESH                     0                     1       58     265
0-24 months   MAL-ED           BANGLADESH                     1                     0        0     265
0-24 months   MAL-ED           BANGLADESH                     1                     1        0     265
0-24 months   MAL-ED           BRAZIL                         0                     0      183     233
0-24 months   MAL-ED           BRAZIL                         0                     1       14     233
0-24 months   MAL-ED           BRAZIL                         1                     0       28     233
0-24 months   MAL-ED           BRAZIL                         1                     1        8     233
0-24 months   MAL-ED           INDIA                          0                     0      192     249
0-24 months   MAL-ED           INDIA                          0                     1       57     249
0-24 months   MAL-ED           INDIA                          1                     0        0     249
0-24 months   MAL-ED           INDIA                          1                     1        0     249
0-24 months   MAL-ED           NEPAL                          0                     0      219     240
0-24 months   MAL-ED           NEPAL                          0                     1       21     240
0-24 months   MAL-ED           NEPAL                          1                     0        0     240
0-24 months   MAL-ED           NEPAL                          1                     1        0     240
0-24 months   MAL-ED           PERU                           0                     0      214     303
0-24 months   MAL-ED           PERU                           0                     1       54     303
0-24 months   MAL-ED           PERU                           1                     0       25     303
0-24 months   MAL-ED           PERU                           1                     1       10     303
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0      138     314
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1       38     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0      103     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1       35     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      119     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1      133     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        6     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        4     262
0-24 months   PROBIT           BELARUS                        0                     0    15765   16897
0-24 months   PROBIT           BELARUS                        0                     1      439   16897
0-24 months   PROBIT           BELARUS                        1                     0      665   16897
0-24 months   PROBIT           BELARUS                        1                     1       28   16897
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1933    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      218    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      205    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       19    2375
0-24 months   ZVITAMBO         ZIMBABWE                       0                     0    10952   14016
0-24 months   ZVITAMBO         ZIMBABWE                       0                     1     2175   14016
0-24 months   ZVITAMBO         ZIMBABWE                       1                     0      709   14016
0-24 months   ZVITAMBO         ZIMBABWE                       1                     1      180   14016
0-6 months    COHORTS          GUATEMALA                      0                     0      816     974
0-6 months    COHORTS          GUATEMALA                      0                     1       89     974
0-6 months    COHORTS          GUATEMALA                      1                     0       57     974
0-6 months    COHORTS          GUATEMALA                      1                     1       12     974
0-6 months    COHORTS          INDIA                          0                     0     4942    5203
0-6 months    COHORTS          INDIA                          0                     1      253    5203
0-6 months    COHORTS          INDIA                          1                     0        8    5203
0-6 months    COHORTS          INDIA                          1                     1        0    5203
0-6 months    COHORTS          PHILIPPINES                    0                     0     2762    3018
0-6 months    COHORTS          PHILIPPINES                    0                     1      181    3018
0-6 months    COHORTS          PHILIPPINES                    1                     0       68    3018
0-6 months    COHORTS          PHILIPPINES                    1                     1        7    3018
0-6 months    Guatemala BSC    GUATEMALA                      0                     0      220     265
0-6 months    Guatemala BSC    GUATEMALA                      0                     1       18     265
0-6 months    Guatemala BSC    GUATEMALA                      1                     0       21     265
0-6 months    Guatemala BSC    GUATEMALA                      1                     1        6     265
0-6 months    JiVitA-4         BANGLADESH                     0                     0     4590    5115
0-6 months    JiVitA-4         BANGLADESH                     0                     1      518    5115
0-6 months    JiVitA-4         BANGLADESH                     1                     0        7    5115
0-6 months    JiVitA-4         BANGLADESH                     1                     1        0    5115
0-6 months    MAL-ED           BANGLADESH                     0                     0      244     265
0-6 months    MAL-ED           BANGLADESH                     0                     1       21     265
0-6 months    MAL-ED           BANGLADESH                     1                     0        0     265
0-6 months    MAL-ED           BANGLADESH                     1                     1        0     265
0-6 months    MAL-ED           BRAZIL                         0                     0      186     233
0-6 months    MAL-ED           BRAZIL                         0                     1       11     233
0-6 months    MAL-ED           BRAZIL                         1                     0       30     233
0-6 months    MAL-ED           BRAZIL                         1                     1        6     233
0-6 months    MAL-ED           INDIA                          0                     0      230     249
0-6 months    MAL-ED           INDIA                          0                     1       19     249
0-6 months    MAL-ED           INDIA                          1                     0        0     249
0-6 months    MAL-ED           INDIA                          1                     1        0     249
0-6 months    MAL-ED           NEPAL                          0                     0      230     240
0-6 months    MAL-ED           NEPAL                          0                     1       10     240
0-6 months    MAL-ED           NEPAL                          1                     0        0     240
0-6 months    MAL-ED           NEPAL                          1                     1        0     240
0-6 months    MAL-ED           PERU                           0                     0      237     303
0-6 months    MAL-ED           PERU                           0                     1       31     303
0-6 months    MAL-ED           PERU                           1                     0       28     303
0-6 months    MAL-ED           PERU                           1                     1        7     303
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0      161     314
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1       15     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0      124     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1       14     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      215     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       37     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        9     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     262
0-6 months    PROBIT           BELARUS                        0                     0    16032   16892
0-6 months    PROBIT           BELARUS                        0                     1      167   16892
0-6 months    PROBIT           BELARUS                        1                     0      675   16892
0-6 months    PROBIT           BELARUS                        1                     1       18   16892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2057    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       94    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      215    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        9    2375
0-6 months    ZVITAMBO         ZIMBABWE                       0                     0    11942   13999
0-6 months    ZVITAMBO         ZIMBABWE                       0                     1     1170   13999
0-6 months    ZVITAMBO         ZIMBABWE                       1                     0      780   13999
0-6 months    ZVITAMBO         ZIMBABWE                       1                     1      107   13999


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/0115f3e5-1a14-42bc-9abb-e9e7f70b48f9/ec73efc2-33c9-4595-a6f1-9415c4a63b17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0115f3e5-1a14-42bc-9abb-e9e7f70b48f9/ec73efc2-33c9-4595-a6f1-9415c4a63b17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0115f3e5-1a14-42bc-9abb-e9e7f70b48f9/ec73efc2-33c9-4595-a6f1-9415c4a63b17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0115f3e5-1a14-42bc-9abb-e9e7f70b48f9/ec73efc2-33c9-4595-a6f1-9415c4a63b17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.4760867   0.4465504   0.5056230
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.5959051   0.4875297   0.7042806
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.3584241   0.3409896   0.3758586
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2968146   0.2081099   0.3855192
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.1785714   0.1312007   0.2259422
0-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.2666667   0.1081431   0.4251903
0-24 months   MAL-ED           BRAZIL                         0                    NA                0.0710660   0.0351099   0.1070221
0-24 months   MAL-ED           BRAZIL                         1                    NA                0.2222222   0.0861240   0.3583204
0-24 months   MAL-ED           PERU                           0                    NA                0.2048432   0.1566629   0.2530234
0-24 months   MAL-ED           PERU                           1                    NA                0.2560861   0.1052089   0.4069634
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.2231133   0.1492934   0.2969332
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2612497   0.1813697   0.3411298
0-24 months   PROBIT           BELARUS                        0                    NA                0.0273419   0.0196298   0.0350539
0-24 months   PROBIT           BELARUS                        1                    NA                0.0358677   0.0210562   0.0506791
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1014746   0.0887165   0.1142327
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0842197   0.0482398   0.1201996
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1665214   0.1601193   0.1729236
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2062188   0.1766374   0.2358001
0-6 months    COHORTS          GUATEMALA                      0                    NA                0.0981379   0.0787226   0.1175531
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.1756071   0.0872173   0.2639969
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0615019   0.0528192   0.0701845
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.0933333   0.0278797   0.1587870
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.0756303   0.0419751   0.1092854
0-6 months    Guatemala BSC    GUATEMALA                      1                    NA                0.2222222   0.0651105   0.3793340
0-6 months    MAL-ED           BRAZIL                         0                    NA                0.0558376   0.0237057   0.0879694
0-6 months    MAL-ED           BRAZIL                         1                    NA                0.1666667   0.0446653   0.2886680
0-6 months    MAL-ED           PERU                           0                    NA                0.1156716   0.0773169   0.1540264
0-6 months    MAL-ED           PERU                           1                    NA                0.2000000   0.0672630   0.3327370
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.0833763   0.0420674   0.1246851
0-6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.1043045   0.0531579   0.1554511
0-6 months    PROBIT           BELARUS                        0                    NA                0.0103689   0.0068989   0.0138389
0-6 months    PROBIT           BELARUS                        1                    NA                0.0226495   0.0078810   0.0374180
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0437006   0.0350597   0.0523415
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0401786   0.0144564   0.0659008
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0893321   0.0844482   0.0942159
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1201006   0.0979730   0.1422282


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4821872   0.4539860   0.5103885
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3575215   0.3404198   0.3746233
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.0944206   0.0567935   0.1320477
0-24 months   MAL-ED           PERU                           NA                   NA                0.2112211   0.1651858   0.2572564
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0276380   0.0201988   0.0350773
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0997895   0.0877330   0.1118460
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1680223   0.1618323   0.1742123
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1036961   0.0845403   0.1228519
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0622929   0.0536688   0.0709170
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.0905660   0.0559470   0.1251850
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.0729614   0.0394957   0.1064270
0-6 months    MAL-ED           PERU                           NA                   NA                0.1254125   0.0880603   0.1627648
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0109519   0.0074064   0.0144975
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0433684   0.0351750   0.0515619
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912208   0.0864511   0.0959905


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 1.2516735   1.0336325   1.515710
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 0.8281099   0.6117918   1.120914
0-24 months   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      1                    0                 1.4933333   0.7788347   2.863309
0-24 months   MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         1                    0                 3.1269841   1.4129327   6.920379
0-24 months   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           1                    0                 1.2501571   0.6651479   2.349692
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.1709287   0.7499564   1.828205
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        1                    0                 1.3118227   0.8707461   1.976327
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8299585   0.5321405   1.294453
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2383916   1.0677578   1.436294
0-6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      1                    0                 1.7893921   1.0432502   3.069181
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 1.5175691   0.7421172   3.103305
0-6 months    Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    Guatemala BSC    GUATEMALA                      1                    0                 2.9382716   1.2743457   6.774802
0-6 months    MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BRAZIL                         1                    0                 2.9848485   1.1763672   7.573588
0-6 months    MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           1                    0                 1.7290323   0.8233744   3.630854
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0                 1.2510091   0.6233033   2.510855
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        1                    0                 2.1843688   1.1166135   4.273159
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9194054   0.4704504   1.796802
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.3444290   1.1095391   1.629045


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0061005   -0.0026898   0.0148908
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0009026   -0.0037017   0.0018965
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0093718   -0.0085135   0.0272571
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0233546    0.0004972   0.0462121
0-24 months   MAL-ED           PERU                           0                    NA                 0.0063780   -0.0114205   0.0241764
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0093708   -0.0472790   0.0660206
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0002962   -0.0004101   0.0010025
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0016852   -0.0052743   0.0019040
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015008   -0.0002774   0.0032790
0-6 months    COHORTS          GUATEMALA                      0                    NA                 0.0055582   -0.0009822   0.0120987
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0007910   -0.0008691   0.0024512
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0149358   -0.0022867   0.0321583
0-6 months    MAL-ED           BRAZIL                         0                    NA                 0.0171238   -0.0030390   0.0372866
0-6 months    MAL-ED           PERU                           0                    NA                 0.0097409   -0.0065060   0.0259878
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0089804   -0.0196983   0.0376591
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0005830    0.0000449   0.0011211
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003322   -0.0028918   0.0022274
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0018887    0.0004964   0.0032811


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0126518   -0.0057626   0.0307290
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0025245   -0.0103806   0.0052705
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0498652   -0.0497480   0.1400259
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.2473466   -0.0142644   0.4414798
0-24 months   MAL-ED           PERU                           0                    NA                 0.0301957   -0.0576158   0.1107163
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0403072   -0.2373656   0.2556685
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0107161   -0.0163382   0.0370502
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0168871   -0.0534471   0.0184040
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089323   -0.0017054   0.0194571
0-6 months    COHORTS          GUATEMALA                      0                    NA                 0.0536013   -0.0110660   0.1141325
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0126987   -0.0142640   0.0389447
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.1649160   -0.0375013   0.3278415
0-6 months    MAL-ED           BRAZIL                         0                    NA                 0.2346969   -0.0710660   0.4531721
0-6 months    MAL-ED           PERU                           0                    NA                 0.0776709   -0.0596587   0.1972028
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0972361   -0.2722160   0.3593991
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0532353    0.0035276   0.1004634
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076596   -0.0684244   0.0496494
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0207052    0.0053520   0.0358214

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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid     country                        predfeed3    wast_rec90d   n_cell      n
------------  ----------  -----------------------------  ----------  ------------  -------  -----
0-24 months   EE          PAKISTAN                       1                      0       14     30
0-24 months   EE          PAKISTAN                       1                      1       16     30
0-24 months   EE          PAKISTAN                       0                      0        0     30
0-24 months   EE          PAKISTAN                       0                      1        0     30
0-24 months   GMS-Nepal   NEPAL                          1                      0      185    491
0-24 months   GMS-Nepal   NEPAL                          1                      1      231    491
0-24 months   GMS-Nepal   NEPAL                          0                      0       32    491
0-24 months   GMS-Nepal   NEPAL                          0                      1       43    491
0-24 months   JiVitA-3    BANGLADESH                     1                      0     2252   4340
0-24 months   JiVitA-3    BANGLADESH                     1                      1     1699   4340
0-24 months   JiVitA-3    BANGLADESH                     0                      0      218   4340
0-24 months   JiVitA-3    BANGLADESH                     0                      1      171   4340
0-24 months   JiVitA-4    BANGLADESH                     1                      0       37     54
0-24 months   JiVitA-4    BANGLADESH                     1                      1       12     54
0-24 months   JiVitA-4    BANGLADESH                     0                      0        5     54
0-24 months   JiVitA-4    BANGLADESH                     0                      1        0     54
0-24 months   MAL-ED      BANGLADESH                     1                      0       33    117
0-24 months   MAL-ED      BANGLADESH                     1                      1       68    117
0-24 months   MAL-ED      BANGLADESH                     0                      0        8    117
0-24 months   MAL-ED      BANGLADESH                     0                      1        8    117
0-24 months   MAL-ED      BRAZIL                         1                      0        5     22
0-24 months   MAL-ED      BRAZIL                         1                      1        9     22
0-24 months   MAL-ED      BRAZIL                         0                      0        1     22
0-24 months   MAL-ED      BRAZIL                         0                      1        7     22
0-24 months   MAL-ED      INDIA                          1                      0       43    162
0-24 months   MAL-ED      INDIA                          1                      1       67    162
0-24 months   MAL-ED      INDIA                          0                      0       19    162
0-24 months   MAL-ED      INDIA                          0                      1       33    162
0-24 months   MAL-ED      NEPAL                          1                      0       11     96
0-24 months   MAL-ED      NEPAL                          1                      1       35     96
0-24 months   MAL-ED      NEPAL                          0                      0        9     96
0-24 months   MAL-ED      NEPAL                          0                      1       41     96
0-24 months   MAL-ED      PERU                           1                      0        3     33
0-24 months   MAL-ED      PERU                           1                      1       12     33
0-24 months   MAL-ED      PERU                           0                      0        3     33
0-24 months   MAL-ED      PERU                           0                      1       15     33
0-24 months   MAL-ED      SOUTH AFRICA                   1                      0        4     77
0-24 months   MAL-ED      SOUTH AFRICA                   1                      1       12     77
0-24 months   MAL-ED      SOUTH AFRICA                   0                      0        8     77
0-24 months   MAL-ED      SOUTH AFRICA                   0                      1       53     77
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      0        2     44
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      1        8     44
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      0        6     44
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      1       28     44
0-6 months    EE          PAKISTAN                       1                      0        5     12
0-6 months    EE          PAKISTAN                       1                      1        7     12
0-6 months    EE          PAKISTAN                       0                      0        0     12
0-6 months    EE          PAKISTAN                       0                      1        0     12
0-6 months    GMS-Nepal   NEPAL                          1                      0       54    181
0-6 months    GMS-Nepal   NEPAL                          1                      1       96    181
0-6 months    GMS-Nepal   NEPAL                          0                      0       13    181
0-6 months    GMS-Nepal   NEPAL                          0                      1       18    181
0-6 months    JiVitA-3    BANGLADESH                     1                      0      762   2720
0-6 months    JiVitA-3    BANGLADESH                     1                      1     1699   2720
0-6 months    JiVitA-3    BANGLADESH                     0                      0       88   2720
0-6 months    JiVitA-3    BANGLADESH                     0                      1      171   2720
0-6 months    JiVitA-4    BANGLADESH                     1                      0        5     10
0-6 months    JiVitA-4    BANGLADESH                     1                      1        3     10
0-6 months    JiVitA-4    BANGLADESH                     0                      0        2     10
0-6 months    JiVitA-4    BANGLADESH                     0                      1        0     10
0-6 months    MAL-ED      BANGLADESH                     1                      0        8     58
0-6 months    MAL-ED      BANGLADESH                     1                      1       40     58
0-6 months    MAL-ED      BANGLADESH                     0                      0        4     58
0-6 months    MAL-ED      BANGLADESH                     0                      1        6     58
0-6 months    MAL-ED      BRAZIL                         1                      0        1     13
0-6 months    MAL-ED      BRAZIL                         1                      1        5     13
0-6 months    MAL-ED      BRAZIL                         0                      0        0     13
0-6 months    MAL-ED      BRAZIL                         0                      1        7     13
0-6 months    MAL-ED      INDIA                          1                      0       12     74
0-6 months    MAL-ED      INDIA                          1                      1       33     74
0-6 months    MAL-ED      INDIA                          0                      0       11     74
0-6 months    MAL-ED      INDIA                          0                      1       18     74
0-6 months    MAL-ED      NEPAL                          1                      0        4     46
0-6 months    MAL-ED      NEPAL                          1                      1       16     46
0-6 months    MAL-ED      NEPAL                          0                      0        5     46
0-6 months    MAL-ED      NEPAL                          0                      1       21     46
0-6 months    MAL-ED      PERU                           1                      0        0     11
0-6 months    MAL-ED      PERU                           1                      1        6     11
0-6 months    MAL-ED      PERU                           0                      0        0     11
0-6 months    MAL-ED      PERU                           0                      1        5     11
0-6 months    MAL-ED      SOUTH AFRICA                   1                      0        2     29
0-6 months    MAL-ED      SOUTH AFRICA                   1                      1        7     29
0-6 months    MAL-ED      SOUTH AFRICA                   0                      0        2     29
0-6 months    MAL-ED      SOUTH AFRICA                   0                      1       18     29
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      1        4     12
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      0        0     12
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      1        8     12
6-24 months   EE          PAKISTAN                       1                      0        9     18
6-24 months   EE          PAKISTAN                       1                      1        9     18
6-24 months   EE          PAKISTAN                       0                      0        0     18
6-24 months   EE          PAKISTAN                       0                      1        0     18
6-24 months   GMS-Nepal   NEPAL                          1                      0      131    310
6-24 months   GMS-Nepal   NEPAL                          1                      1      135    310
6-24 months   GMS-Nepal   NEPAL                          0                      0       19    310
6-24 months   GMS-Nepal   NEPAL                          0                      1       25    310
6-24 months   JiVitA-3    BANGLADESH                     1                      0     1490   1620
6-24 months   JiVitA-3    BANGLADESH                     1                      1        0   1620
6-24 months   JiVitA-3    BANGLADESH                     0                      0      130   1620
6-24 months   JiVitA-3    BANGLADESH                     0                      1        0   1620
6-24 months   JiVitA-4    BANGLADESH                     1                      0       32     44
6-24 months   JiVitA-4    BANGLADESH                     1                      1        9     44
6-24 months   JiVitA-4    BANGLADESH                     0                      0        3     44
6-24 months   JiVitA-4    BANGLADESH                     0                      1        0     44
6-24 months   MAL-ED      BANGLADESH                     1                      0       25     59
6-24 months   MAL-ED      BANGLADESH                     1                      1       28     59
6-24 months   MAL-ED      BANGLADESH                     0                      0        4     59
6-24 months   MAL-ED      BANGLADESH                     0                      1        2     59
6-24 months   MAL-ED      BRAZIL                         1                      0        4      9
6-24 months   MAL-ED      BRAZIL                         1                      1        4      9
6-24 months   MAL-ED      BRAZIL                         0                      0        1      9
6-24 months   MAL-ED      BRAZIL                         0                      1        0      9
6-24 months   MAL-ED      INDIA                          1                      0       31     88
6-24 months   MAL-ED      INDIA                          1                      1       34     88
6-24 months   MAL-ED      INDIA                          0                      0        8     88
6-24 months   MAL-ED      INDIA                          0                      1       15     88
6-24 months   MAL-ED      NEPAL                          1                      0        7     50
6-24 months   MAL-ED      NEPAL                          1                      1       19     50
6-24 months   MAL-ED      NEPAL                          0                      0        4     50
6-24 months   MAL-ED      NEPAL                          0                      1       20     50
6-24 months   MAL-ED      PERU                           1                      0        3     22
6-24 months   MAL-ED      PERU                           1                      1        6     22
6-24 months   MAL-ED      PERU                           0                      0        3     22
6-24 months   MAL-ED      PERU                           0                      1       10     22
6-24 months   MAL-ED      SOUTH AFRICA                   1                      0        2     48
6-24 months   MAL-ED      SOUTH AFRICA                   1                      1        5     48
6-24 months   MAL-ED      SOUTH AFRICA                   0                      0        6     48
6-24 months   MAL-ED      SOUTH AFRICA                   0                      1       35     48
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      0        2     32
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                      1        4     32
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      0        6     32
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                      1       20     32


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/2c0445f7-a8a8-4db7-b6c6-1d113de5b1f3/14e34f7c-feb9-4654-9857-41224d5b26e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2c0445f7-a8a8-4db7-b6c6-1d113de5b1f3/14e34f7c-feb9-4654-9857-41224d5b26e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2c0445f7-a8a8-4db7-b6c6-1d113de5b1f3/14e34f7c-feb9-4654-9857-41224d5b26e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2c0445f7-a8a8-4db7-b6c6-1d113de5b1f3/14e34f7c-feb9-4654-9857-41224d5b26e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.5561398   0.5033957   0.6088839
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.5878812   0.4572546   0.7185079
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.4283263   0.4130617   0.4435910
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.4554143   0.4066463   0.5041824
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.6732673   0.5822997   0.7642350
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.5000000   0.2219425   0.7780575
0-24 months   MAL-ED      INDIA        1                    NA                0.6069763   0.5070921   0.7068605
0-24 months   MAL-ED      INDIA        0                    NA                0.6354645   0.4888879   0.7820412
0-24 months   MAL-ED      NEPAL        1                    NA                0.7608696   0.6384483   0.8832909
0-24 months   MAL-ED      NEPAL        0                    NA                0.8200000   0.7247720   0.9152280
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.6398466   0.5622293   0.7174639
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.5887727   0.4083348   0.7692106
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.6897826   0.6715395   0.7080258
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.6680977   0.6104005   0.7257949
0-6 months    MAL-ED      INDIA        1                    NA                0.7440478   0.6135165   0.8745790
0-6 months    MAL-ED      INDIA        0                    NA                0.6153684   0.4364115   0.7943253
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.5073714   0.4417907   0.5729521
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.5976086   0.4279354   0.7672818
6-24 months   MAL-ED      INDIA        1                    NA                0.5230769   0.3907677   0.6553862
6-24 months   MAL-ED      INDIA        0                    NA                0.6521739   0.4038225   0.9005253


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5580448   0.5093588   0.6067308
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.4308756   0.4161410   0.4456101
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.6495726   0.5607849   0.7383604
0-24 months   MAL-ED      INDIA        NA                   NA                0.6172840   0.5340594   0.7005085
0-24 months   MAL-ED      NEPAL        NA                   NA                0.7916667   0.7146386   0.8686947
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.6298343   0.5587812   0.7008873
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.6875000   0.6700777   0.7049223
0-6 months    MAL-ED      INDIA        NA                   NA                0.6891892   0.5810852   0.7972932
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.5161290   0.4555456   0.5767125
6-24 months   MAL-ED      INDIA        NA                   NA                0.5568182   0.4384773   0.6751591


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.0570745   0.8302242   1.345909
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0632415   0.9511784   1.188507
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.7426471   0.4190238   1.316213
0-24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      INDIA        0                    1                 1.0469346   0.7924703   1.383108
0-24 months   MAL-ED      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      NEPAL        0                    1                 1.0777143   0.8831354   1.315164
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 0.9201779   0.6618229   1.279387
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 0.9685626   0.8850714   1.059930
0-6 months    MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED      INDIA        0                    1                 0.8270550   0.5942669   1.151031
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.1778524   0.8613875   1.610583
6-24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      INDIA        0                    1                 1.2468031   0.7893061   1.969474


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0019050   -0.0191054   0.0229154
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0025492   -0.0019255   0.0070239
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0236947   -0.0658584   0.0184690
0-24 months   MAL-ED      INDIA        1                    NA                 0.0103077   -0.0458385   0.0664538
0-24 months   MAL-ED      NEPAL        1                    NA                 0.0307971   -0.0513830   0.1129772
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0100123   -0.0431396   0.0231149
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0022826   -0.0080080   0.0034427
0-6 months    MAL-ED      INDIA        1                    NA                -0.0548586   -0.1401716   0.0304544
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0087576   -0.0158866   0.0334019
6-24 months   MAL-ED      INDIA        1                    NA                 0.0337413   -0.0410835   0.1085660


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0034137   -0.0349534   0.0403584
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0059164   -0.0045188   0.0162432
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0364773   -0.1046400   0.0274793
0-24 months   MAL-ED      INDIA        1                    NA                 0.0166984   -0.0786016   0.1035781
0-24 months   MAL-ED      NEPAL        1                    NA                 0.0389016   -0.0715585   0.1379751
0-6 months    GMS-Nepal   NEPAL        1                    NA                -0.0158968   -0.0699599   0.0354346
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0033202   -0.0116846   0.0049750
0-6 months    MAL-ED      INDIA        1                    NA                -0.0795987   -0.2129160   0.0390650
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0169679   -0.0320188   0.0636294
6-24 months   MAL-ED      INDIA        1                    NA                 0.0605965   -0.0828181   0.1850165

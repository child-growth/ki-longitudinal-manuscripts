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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
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

agecat                       studyid     country                        predfeed3    ever_stunted   n_cell       n
---------------------------  ----------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   EE          PAKISTAN                       1                       0        4      21
0-24 months (no birth st.)   EE          PAKISTAN                       1                       1       17      21
0-24 months (no birth st.)   EE          PAKISTAN                       0                       0        0      21
0-24 months (no birth st.)   EE          PAKISTAN                       0                       1        0      21
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          1                       0      116     380
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          1                       1      201     380
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          0                       0       22     380
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          0                       1       41     380
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     1                       0     6792   10148
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     1                       1     2425   10148
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     0                       0      689   10148
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     0                       1      242   10148
0-24 months (no birth st.)   JiVitA-4    BANGLADESH                     1                       0       63     113
0-24 months (no birth st.)   JiVitA-4    BANGLADESH                     1                       1       40     113
0-24 months (no birth st.)   JiVitA-4    BANGLADESH                     0                       0        4     113
0-24 months (no birth st.)   JiVitA-4    BANGLADESH                     0                       1        6     113
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     1                       0       78     202
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     1                       1       86     202
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     0                       0       16     202
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     0                       1       22     202
0-24 months (no birth st.)   MAL-ED      BRAZIL                         1                       0       69     175
0-24 months (no birth st.)   MAL-ED      BRAZIL                         1                       1       17     175
0-24 months (no birth st.)   MAL-ED      BRAZIL                         0                       0       75     175
0-24 months (no birth st.)   MAL-ED      BRAZIL                         0                       1       14     175
0-24 months (no birth st.)   MAL-ED      INDIA                          1                       0       48     184
0-24 months (no birth st.)   MAL-ED      INDIA                          1                       1       79     184
0-24 months (no birth st.)   MAL-ED      INDIA                          0                       0       35     184
0-24 months (no birth st.)   MAL-ED      INDIA                          0                       1       22     184
0-24 months (no birth st.)   MAL-ED      NEPAL                          1                       0       77     201
0-24 months (no birth st.)   MAL-ED      NEPAL                          1                       1       28     201
0-24 months (no birth st.)   MAL-ED      NEPAL                          0                       0       72     201
0-24 months (no birth st.)   MAL-ED      NEPAL                          0                       1       24     201
0-24 months (no birth st.)   MAL-ED      PERU                           1                       0       71     253
0-24 months (no birth st.)   MAL-ED      PERU                           1                       1       95     253
0-24 months (no birth st.)   MAL-ED      PERU                           0                       0       31     253
0-24 months (no birth st.)   MAL-ED      PERU                           0                       1       56     253
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   1                       0       31     237
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   1                       1       35     237
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   0                       0       75     237
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   0                       1       96     237
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       10     185
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1       46     185
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0       20     185
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1      109     185
0-6 months (no birth st.)    EE          PAKISTAN                       1                       0        8      21
0-6 months (no birth st.)    EE          PAKISTAN                       1                       1       13      21
0-6 months (no birth st.)    EE          PAKISTAN                       0                       0        0      21
0-6 months (no birth st.)    EE          PAKISTAN                       0                       1        0      21
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          1                       0      252     380
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          1                       1       65     380
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          0                       0       53     380
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          0                       1       10     380
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     1                       0     7952   10145
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     1                       1     1262   10145
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     0                       0      800   10145
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     0                       1      131   10145
0-6 months (no birth st.)    JiVitA-4    BANGLADESH                     1                       0       95     113
0-6 months (no birth st.)    JiVitA-4    BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    JiVitA-4    BANGLADESH                     0                       0        7     113
0-6 months (no birth st.)    JiVitA-4    BANGLADESH                     0                       1        3     113
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     1                       0      130     202
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     1                       1       34     202
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     0                       0       27     202
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     0                       1       11     202
0-6 months (no birth st.)    MAL-ED      BRAZIL                         1                       0       75     175
0-6 months (no birth st.)    MAL-ED      BRAZIL                         1                       1       11     175
0-6 months (no birth st.)    MAL-ED      BRAZIL                         0                       0       80     175
0-6 months (no birth st.)    MAL-ED      BRAZIL                         0                       1        9     175
0-6 months (no birth st.)    MAL-ED      INDIA                          1                       0       96     184
0-6 months (no birth st.)    MAL-ED      INDIA                          1                       1       31     184
0-6 months (no birth st.)    MAL-ED      INDIA                          0                       0       47     184
0-6 months (no birth st.)    MAL-ED      INDIA                          0                       1       10     184
0-6 months (no birth st.)    MAL-ED      NEPAL                          1                       0      101     201
0-6 months (no birth st.)    MAL-ED      NEPAL                          1                       1        4     201
0-6 months (no birth st.)    MAL-ED      NEPAL                          0                       0       89     201
0-6 months (no birth st.)    MAL-ED      NEPAL                          0                       1        7     201
0-6 months (no birth st.)    MAL-ED      PERU                           1                       0      112     253
0-6 months (no birth st.)    MAL-ED      PERU                           1                       1       54     253
0-6 months (no birth st.)    MAL-ED      PERU                           0                       0       49     253
0-6 months (no birth st.)    MAL-ED      PERU                           0                       1       38     253
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   1                       0       49     237
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   1                       1       17     237
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   0                       0      116     237
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   0                       1       55     237
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0       42     185
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1       14     185
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0       85     185
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1       44     185
6-24 months                  EE          PAKISTAN                       1                       0        4       8
6-24 months                  EE          PAKISTAN                       1                       1        4       8
6-24 months                  EE          PAKISTAN                       0                       0        0       8
6-24 months                  EE          PAKISTAN                       0                       1        0       8
6-24 months                  GMS-Nepal   NEPAL                          1                       0      112     300
6-24 months                  GMS-Nepal   NEPAL                          1                       1      136     300
6-24 months                  GMS-Nepal   NEPAL                          0                       0       21     300
6-24 months                  GMS-Nepal   NEPAL                          0                       1       31     300
6-24 months                  JiVitA-3    BANGLADESH                     1                       0     4114    5773
6-24 months                  JiVitA-3    BANGLADESH                     1                       1     1170    5773
6-24 months                  JiVitA-3    BANGLADESH                     0                       0      377    5773
6-24 months                  JiVitA-3    BANGLADESH                     0                       1      112    5773
6-24 months                  JiVitA-4    BANGLADESH                     1                       0       63     103
6-24 months                  JiVitA-4    BANGLADESH                     1                       1       32     103
6-24 months                  JiVitA-4    BANGLADESH                     0                       0        4     103
6-24 months                  JiVitA-4    BANGLADESH                     0                       1        4     103
6-24 months                  MAL-ED      BANGLADESH                     1                       0       73     150
6-24 months                  MAL-ED      BANGLADESH                     1                       1       52     150
6-24 months                  MAL-ED      BANGLADESH                     0                       0       14     150
6-24 months                  MAL-ED      BANGLADESH                     0                       1       11     150
6-24 months                  MAL-ED      BRAZIL                         1                       0       65     143
6-24 months                  MAL-ED      BRAZIL                         1                       1        6     143
6-24 months                  MAL-ED      BRAZIL                         0                       0       67     143
6-24 months                  MAL-ED      BRAZIL                         0                       1        5     143
6-24 months                  MAL-ED      INDIA                          1                       0       46     140
6-24 months                  MAL-ED      INDIA                          1                       1       48     140
6-24 months                  MAL-ED      INDIA                          0                       0       34     140
6-24 months                  MAL-ED      INDIA                          0                       1       12     140
6-24 months                  MAL-ED      NEPAL                          1                       0       76     188
6-24 months                  MAL-ED      NEPAL                          1                       1       24     188
6-24 months                  MAL-ED      NEPAL                          0                       0       71     188
6-24 months                  MAL-ED      NEPAL                          0                       1       17     188
6-24 months                  MAL-ED      PERU                           1                       0       63     148
6-24 months                  MAL-ED      PERU                           1                       1       41     148
6-24 months                  MAL-ED      PERU                           0                       0       26     148
6-24 months                  MAL-ED      PERU                           0                       1       18     148
6-24 months                  MAL-ED      SOUTH AFRICA                   1                       0       26     152
6-24 months                  MAL-ED      SOUTH AFRICA                   1                       1       18     152
6-24 months                  MAL-ED      SOUTH AFRICA                   0                       0       67     152
6-24 months                  MAL-ED      SOUTH AFRICA                   0                       1       41     152
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       0        9     123
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                       1       32     123
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       0       17     123
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                       1       65     123


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH

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
![](/tmp/c8430583-1faa-4f9d-9d07-c6756aaa9a8c/a168a276-1ab3-4033-bb6f-14ca0b5fd010/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8430583-1faa-4f9d-9d07-c6756aaa9a8c/a168a276-1ab3-4033-bb6f-14ca0b5fd010/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8430583-1faa-4f9d-9d07-c6756aaa9a8c/a168a276-1ab3-4033-bb6f-14ca0b5fd010/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8430583-1faa-4f9d-9d07-c6756aaa9a8c/a168a276-1ab3-4033-bb6f-14ca0b5fd010/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          1                    NA                0.6379397   0.5852136   0.6906657
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          0                    NA                0.6823458   0.5741657   0.7905260
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     1                    NA                0.2624088   0.2516214   0.2731961
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     0                    NA                0.2666177   0.2405044   0.2927310
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     1                    NA                0.5295779   0.4526299   0.6065258
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     0                    NA                0.6145279   0.4574125   0.7716432
0-24 months (no birth st.)   MAL-ED      BRAZIL                         1                    NA                0.2005148   0.1154647   0.2855648
0-24 months (no birth st.)   MAL-ED      BRAZIL                         0                    NA                0.1560054   0.0802858   0.2317250
0-24 months (no birth st.)   MAL-ED      INDIA                          1                    NA                0.6230131   0.5381683   0.7078580
0-24 months (no birth st.)   MAL-ED      INDIA                          0                    NA                0.4066665   0.2785726   0.5347604
0-24 months (no birth st.)   MAL-ED      NEPAL                          1                    NA                0.2729718   0.1880981   0.3578455
0-24 months (no birth st.)   MAL-ED      NEPAL                          0                    NA                0.2610232   0.1734495   0.3485969
0-24 months (no birth st.)   MAL-ED      PERU                           1                    NA                0.5760179   0.5013252   0.6507107
0-24 months (no birth st.)   MAL-ED      PERU                           0                    NA                0.6312991   0.5276508   0.7349474
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   1                    NA                0.4789120   0.3498824   0.6079415
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   0                    NA                0.5807190   0.5067100   0.6547281
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8172151   0.7141628   0.9202673
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8459934   0.7829155   0.9090714
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          1                    NA                0.2044251   0.1599535   0.2488967
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          0                    NA                0.1621136   0.0677037   0.2565235
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     1                    NA                0.1369700   0.1290276   0.1449124
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     0                    NA                0.1394537   0.1174405   0.1614669
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     1                    NA                0.2077164   0.1453884   0.2700443
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     0                    NA                0.2887073   0.1398552   0.4375594
0-6 months (no birth st.)    MAL-ED      BRAZIL                         1                    NA                0.1279070   0.0571170   0.1986970
0-6 months (no birth st.)    MAL-ED      BRAZIL                         0                    NA                0.1011236   0.0383071   0.1639401
0-6 months (no birth st.)    MAL-ED      INDIA                          1                    NA                0.2375659   0.1624280   0.3127037
0-6 months (no birth st.)    MAL-ED      INDIA                          0                    NA                0.1654918   0.0646312   0.2663523
0-6 months (no birth st.)    MAL-ED      PERU                           1                    NA                0.3219984   0.2523418   0.3916549
0-6 months (no birth st.)    MAL-ED      PERU                           0                    NA                0.4350810   0.3343090   0.5358531
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   1                    NA                0.2763866   0.1719053   0.3808679
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   0                    NA                0.3248702   0.2547070   0.3950335
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2703451   0.1564642   0.3842261
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3469842   0.2645098   0.4294587
6-24 months                  GMS-Nepal   NEPAL                          1                    NA                0.5508405   0.4890922   0.6125889
6-24 months                  GMS-Nepal   NEPAL                          0                    NA                0.5678214   0.4454595   0.6901832
6-24 months                  JiVitA-3    BANGLADESH                     1                    NA                0.2216941   0.2087358   0.2346525
6-24 months                  JiVitA-3    BANGLADESH                     0                    NA                0.2258437   0.1773909   0.2742965
6-24 months                  MAL-ED      BANGLADESH                     1                    NA                0.4173617   0.3300839   0.5046394
6-24 months                  MAL-ED      BANGLADESH                     0                    NA                0.4203899   0.2087392   0.6320406
6-24 months                  MAL-ED      BRAZIL                         1                    NA                0.0845070   0.0195813   0.1494328
6-24 months                  MAL-ED      BRAZIL                         0                    NA                0.0694444   0.0105200   0.1283689
6-24 months                  MAL-ED      INDIA                          1                    NA                0.5113306   0.4085928   0.6140684
6-24 months                  MAL-ED      INDIA                          0                    NA                0.2701850   0.1436024   0.3967676
6-24 months                  MAL-ED      NEPAL                          1                    NA                0.2414273   0.1560123   0.3268423
6-24 months                  MAL-ED      NEPAL                          0                    NA                0.1848294   0.1004474   0.2692114
6-24 months                  MAL-ED      PERU                           1                    NA                0.3925745   0.2977750   0.4873740
6-24 months                  MAL-ED      PERU                           0                    NA                0.3984134   0.2489551   0.5478718
6-24 months                  MAL-ED      SOUTH AFRICA                   1                    NA                0.3943930   0.2456136   0.5431724
6-24 months                  MAL-ED      SOUTH AFRICA                   0                    NA                0.3770907   0.2849940   0.4691875
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7804878   0.6532720   0.9077036
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7926829   0.7045819   0.8807840


### Parameter: E(Y)


agecat                       studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          NA                   NA                0.6368421   0.5884257   0.6852585
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     NA                   NA                0.2628104   0.2524838   0.2731371
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     NA                   NA                0.5346535   0.4656971   0.6036099
0-24 months (no birth st.)   MAL-ED      BRAZIL                         NA                   NA                0.1771429   0.1204149   0.2338709
0-24 months (no birth st.)   MAL-ED      INDIA                          NA                   NA                0.5489130   0.4768182   0.6210079
0-24 months (no birth st.)   MAL-ED      NEPAL                          NA                   NA                0.2587065   0.1980144   0.3193985
0-24 months (no birth st.)   MAL-ED      PERU                           NA                   NA                0.5968379   0.5362738   0.6574021
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   NA                   NA                0.5527426   0.4893071   0.6161781
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8378378   0.7845787   0.8910970
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          NA                   NA                0.1973684   0.1572979   0.2374390
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     NA                   NA                0.1373090   0.1297510   0.1448670
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     NA                   NA                0.2227723   0.1652475   0.2802970
0-6 months (no birth st.)    MAL-ED      BRAZIL                         NA                   NA                0.1142857   0.0670124   0.1615591
0-6 months (no birth st.)    MAL-ED      INDIA                          NA                   NA                0.2228261   0.1625334   0.2831188
0-6 months (no birth st.)    MAL-ED      PERU                           NA                   NA                0.3636364   0.3042435   0.4230292
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   NA                   NA                0.3037975   0.2451226   0.3624723
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3135135   0.2464813   0.3805457
6-24 months                  GMS-Nepal   NEPAL                          NA                   NA                0.5566667   0.5003580   0.6129753
6-24 months                  JiVitA-3    BANGLADESH                     NA                   NA                0.2220682   0.2093710   0.2347655
6-24 months                  MAL-ED      BANGLADESH                     NA                   NA                0.4200000   0.3407510   0.4992490
6-24 months                  MAL-ED      BRAZIL                         NA                   NA                0.0769231   0.0330951   0.1207510
6-24 months                  MAL-ED      INDIA                          NA                   NA                0.4285714   0.3463030   0.5108399
6-24 months                  MAL-ED      NEPAL                          NA                   NA                0.2180851   0.1588990   0.2772712
6-24 months                  MAL-ED      PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  MAL-ED      SOUTH AFRICA                   NA                   NA                0.3881579   0.3104288   0.4658870
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7886179   0.7161684   0.8610674


### Parameter: RR


agecat                       studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          0                    1                 1.0696087   0.8988430   1.2728172
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     0                    1                 1.0160395   0.9173729   1.1253180
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     0                    1                 1.1604107   0.8645282   1.5575582
0-24 months (no birth st.)   MAL-ED      BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      BRAZIL                         0                    1                 0.7780245   0.4075902   1.4851242
0-24 months (no birth st.)   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      INDIA                          0                    1                 0.6527414   0.4638726   0.9185094
0-24 months (no birth st.)   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      NEPAL                          0                    1                 0.9562278   0.6040865   1.5136435
0-24 months (no birth st.)   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      PERU                           0                    1                 1.0959713   0.8916483   1.3471153
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   0                    1                 1.2125799   0.9042157   1.6261054
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0352152   0.8947776   1.1976949
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          0                    1                 0.7930221   0.4256440   1.4774882
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     0                    1                 1.0181333   0.8620686   1.2024513
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     0                    1                 1.3899115   0.7635607   2.5300594
0-6 months (no birth st.)    MAL-ED      BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      BRAZIL                         0                    1                 0.7906027   0.3440626   1.8166824
0-6 months (no birth st.)    MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      INDIA                          0                    1                 0.6966143   0.3512084   1.3817195
0-6 months (no birth st.)    MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      PERU                           0                    1                 1.3511902   0.9939554   1.8368179
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   0                    1                 1.1754198   0.7591896   1.8198505
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2834860   0.7903271   2.0843730
6-24 months                  GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal   NEPAL                          0                    1                 1.0308271   0.8131535   1.3067699
6-24 months                  JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-3    BANGLADESH                     0                    1                 1.0187176   0.8172550   1.2698430
6-24 months                  MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      BANGLADESH                     0                    1                 1.0072557   0.5850715   1.7340856
6-24 months                  MAL-ED      BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      BRAZIL                         0                    1                 0.8217593   0.2615933   2.5814437
6-24 months                  MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      INDIA                          0                    1                 0.5283959   0.3185643   0.8764391
6-24 months                  MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      NEPAL                          0                    1                 0.7655695   0.4299707   1.3631083
6-24 months                  MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      PERU                           0                    1                 1.0148734   0.6477070   1.5901758
6-24 months                  MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      SOUTH AFRICA                   0                    1                 0.9561293   0.6094666   1.4999729
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0156250   0.8337865   1.2371202


### Parameter: PAR


agecat                       studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          1                    NA                -0.0010976   -0.0201822    0.0179871
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     1                    NA                 0.0004016   -0.0020852    0.0028885
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     1                    NA                 0.0050756   -0.0287883    0.0389395
0-24 months (no birth st.)   MAL-ED      BRAZIL                         1                    NA                -0.0233719   -0.0820891    0.0353453
0-24 months (no birth st.)   MAL-ED      INDIA                          1                    NA                -0.0741001   -0.1237840   -0.0244161
0-24 months (no birth st.)   MAL-ED      NEPAL                          1                    NA                -0.0142653   -0.0726231    0.0440924
0-24 months (no birth st.)   MAL-ED      PERU                           1                    NA                 0.0208200   -0.0218192    0.0634592
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0738306   -0.0364656    0.1841269
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0206228   -0.0638997    0.1051452
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          1                    NA                -0.0070567   -0.0239858    0.0098725
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     1                    NA                 0.0003390   -0.0017859    0.0024639
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     1                    NA                 0.0150559   -0.0152726    0.0453844
0-6 months (no birth st.)    MAL-ED      BRAZIL                         1                    NA                -0.0136213   -0.0617946    0.0345521
0-6 months (no birth st.)    MAL-ED      INDIA                          1                    NA                -0.0147398   -0.0535955    0.0241160
0-6 months (no birth st.)    MAL-ED      PERU                           1                    NA                 0.0416380    0.0000312    0.0832448
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0274109   -0.0640869    0.1189087
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0431684   -0.0552801    0.1416168
6-24 months                  GMS-Nepal   NEPAL                          1                    NA                 0.0058261   -0.0172584    0.0289107
6-24 months                  JiVitA-3    BANGLADESH                     1                    NA                 0.0003741   -0.0038070    0.0045553
6-24 months                  MAL-ED      BANGLADESH                     1                    NA                 0.0026383   -0.0326313    0.0379080
6-24 months                  MAL-ED      BRAZIL                         1                    NA                -0.0075840   -0.0517469    0.0365790
6-24 months                  MAL-ED      INDIA                          1                    NA                -0.0827592   -0.1394897   -0.0260286
6-24 months                  MAL-ED      NEPAL                          1                    NA                -0.0233422   -0.0796078    0.0329234
6-24 months                  MAL-ED      PERU                           1                    NA                 0.0060741   -0.0465350    0.0586832
6-24 months                  MAL-ED      SOUTH AFRICA                   1                    NA                -0.0062351   -0.1315194    0.1190492
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081301   -0.0950375    0.1112977


### Parameter: PAF


agecat                       studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL                          1                    NA                -0.0017235   -0.0321389    0.0277957
0-24 months (no birth st.)   JiVitA-3    BANGLADESH                     1                    NA                 0.0015282   -0.0079837    0.0109503
0-24 months (no birth st.)   MAL-ED      BANGLADESH                     1                    NA                 0.0094932   -0.0559318    0.0708645
0-24 months (no birth st.)   MAL-ED      BRAZIL                         1                    NA                -0.1319381   -0.5158259    0.1547289
0-24 months (no birth st.)   MAL-ED      INDIA                          1                    NA                -0.1349942   -0.2323036   -0.0453688
0-24 months (no birth st.)   MAL-ED      NEPAL                          1                    NA                -0.0551409   -0.3068433    0.1480828
0-24 months (no birth st.)   MAL-ED      PERU                           1                    NA                 0.0348838   -0.0394315    0.1038859
0-24 months (no birth st.)   MAL-ED      SOUTH AFRICA                   1                    NA                 0.1335715   -0.0921925    0.3126684
0-24 months (no birth st.)   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0246143   -0.0818055    0.1205653
0-6 months (no birth st.)    GMS-Nepal   NEPAL                          1                    NA                -0.0357537   -0.1250168    0.0464269
0-6 months (no birth st.)    JiVitA-3    BANGLADESH                     1                    NA                 0.0024689   -0.0131338    0.0178314
0-6 months (no birth st.)    MAL-ED      BANGLADESH                     1                    NA                 0.0675844   -0.0782990    0.1937311
0-6 months (no birth st.)    MAL-ED      BRAZIL                         1                    NA                -0.1191860   -0.6280671    0.2306353
0-6 months (no birth st.)    MAL-ED      INDIA                          1                    NA                -0.0661493   -0.2544234    0.0938671
0-6 months (no birth st.)    MAL-ED      PERU                           1                    NA                 0.1145045   -0.0076240    0.2218305
0-6 months (no birth st.)    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0902276   -0.2654646    0.3459431
0-6 months (no birth st.)    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1376922   -0.2391995    0.3999556
6-24 months                  GMS-Nepal   NEPAL                          1                    NA                 0.0104661   -0.0319448    0.0511340
6-24 months                  JiVitA-3    BANGLADESH                     1                    NA                 0.0016847   -0.0173123    0.0203271
6-24 months                  MAL-ED      BANGLADESH                     1                    NA                 0.0062818   -0.0813745    0.0868327
6-24 months                  MAL-ED      BRAZIL                         1                    NA                -0.0985915   -0.8488735    0.3472223
6-24 months                  MAL-ED      INDIA                          1                    NA                -0.1931047   -0.3363430   -0.0652197
6-24 months                  MAL-ED      NEPAL                          1                    NA                -0.1070326   -0.3961834    0.1222348
6-24 months                  MAL-ED      PERU                           1                    NA                 0.0152368   -0.1260037    0.1387608
6-24 months                  MAL-ED      SOUTH AFRICA                   1                    NA                -0.0160633   -0.3959155    0.2604246
6-24 months                  MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0103093   -0.1295766    0.1328718

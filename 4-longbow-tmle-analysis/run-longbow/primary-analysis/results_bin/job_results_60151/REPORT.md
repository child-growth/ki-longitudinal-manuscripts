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

**Outcome Variable:** stunted

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

agecat      studyid     country                        predfeed3    stunted   n_cell       n
----------  ----------  -----------------------------  ----------  --------  -------  ------
Birth       EE          PAKISTAN                       1                  0       20      35
Birth       EE          PAKISTAN                       1                  1       15      35
Birth       EE          PAKISTAN                       0                  0        0      35
Birth       EE          PAKISTAN                       0                  1        0      35
Birth       GMS-Nepal   NEPAL                          1                  0      317     458
Birth       GMS-Nepal   NEPAL                          1                  1       63     458
Birth       GMS-Nepal   NEPAL                          0                  0       63     458
Birth       GMS-Nepal   NEPAL                          0                  1       15     458
Birth       JiVitA-3    BANGLADESH                     1                  0     8077   13276
Birth       JiVitA-3    BANGLADESH                     1                  1     3940   13276
Birth       JiVitA-3    BANGLADESH                     0                  0      817   13276
Birth       JiVitA-3    BANGLADESH                     0                  1      442   13276
Birth       JiVitA-4    BANGLADESH                     1                  0       71     116
Birth       JiVitA-4    BANGLADESH                     1                  1       34     116
Birth       JiVitA-4    BANGLADESH                     0                  0        7     116
Birth       JiVitA-4    BANGLADESH                     0                  1        4     116
Birth       MAL-ED      BANGLADESH                     1                  0      141     215
Birth       MAL-ED      BANGLADESH                     1                  1       35     215
Birth       MAL-ED      BANGLADESH                     0                  0       34     215
Birth       MAL-ED      BANGLADESH                     0                  1        5     215
Birth       MAL-ED      BRAZIL                         1                  0       21      57
Birth       MAL-ED      BRAZIL                         1                  1        3      57
Birth       MAL-ED      BRAZIL                         0                  0       28      57
Birth       MAL-ED      BRAZIL                         0                  1        5      57
Birth       MAL-ED      INDIA                          1                  0       21      41
Birth       MAL-ED      INDIA                          1                  1        8      41
Birth       MAL-ED      INDIA                          0                  0       12      41
Birth       MAL-ED      INDIA                          0                  1        0      41
Birth       MAL-ED      NEPAL                          1                  0       13      26
Birth       MAL-ED      NEPAL                          1                  1        1      26
Birth       MAL-ED      NEPAL                          0                  0       11      26
Birth       MAL-ED      NEPAL                          0                  1        1      26
Birth       MAL-ED      PERU                           1                  0      134     223
Birth       MAL-ED      PERU                           1                  1       16     223
Birth       MAL-ED      PERU                           0                  0       65     223
Birth       MAL-ED      PERU                           0                  1        8     223
Birth       MAL-ED      SOUTH AFRICA                   1                  0       32     100
Birth       MAL-ED      SOUTH AFRICA                   1                  1        1     100
Birth       MAL-ED      SOUTH AFRICA                   0                  0       59     100
Birth       MAL-ED      SOUTH AFRICA                   0                  1        8     100
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       21     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        5     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       62     102
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       14     102
6 months    EE          PAKISTAN                       1                  0       17      39
6 months    EE          PAKISTAN                       1                  1       22      39
6 months    EE          PAKISTAN                       0                  0        0      39
6 months    EE          PAKISTAN                       0                  1        0      39
6 months    GMS-Nepal   NEPAL                          1                  0      292     441
6 months    GMS-Nepal   NEPAL                          1                  1       75     441
6 months    GMS-Nepal   NEPAL                          0                  0       56     441
6 months    GMS-Nepal   NEPAL                          0                  1       18     441
6 months    JiVitA-3    BANGLADESH                     1                  0     6392    9328
6 months    JiVitA-3    BANGLADESH                     1                  1     2124    9328
6 months    JiVitA-3    BANGLADESH                     0                  0      596    9328
6 months    JiVitA-3    BANGLADESH                     0                  1      216    9328
6 months    JiVitA-4    BANGLADESH                     1                  0       64      88
6 months    JiVitA-4    BANGLADESH                     1                  1       12      88
6 months    JiVitA-4    BANGLADESH                     0                  0        8      88
6 months    JiVitA-4    BANGLADESH                     0                  1        4      88
6 months    MAL-ED      BANGLADESH                     1                  0      158     233
6 months    MAL-ED      BANGLADESH                     1                  1       33     233
6 months    MAL-ED      BANGLADESH                     0                  0       31     233
6 months    MAL-ED      BANGLADESH                     0                  1       11     233
6 months    MAL-ED      BRAZIL                         1                  0       90     187
6 months    MAL-ED      BRAZIL                         1                  1        3     187
6 months    MAL-ED      BRAZIL                         0                  0       92     187
6 months    MAL-ED      BRAZIL                         0                  1        2     187
6 months    MAL-ED      INDIA                          1                  0      118     210
6 months    MAL-ED      INDIA                          1                  1       29     210
6 months    MAL-ED      INDIA                          0                  0       53     210
6 months    MAL-ED      INDIA                          0                  1       10     210
6 months    MAL-ED      NEPAL                          1                  0      107     227
6 months    MAL-ED      NEPAL                          1                  1        6     227
6 months    MAL-ED      NEPAL                          0                  0      109     227
6 months    MAL-ED      NEPAL                          0                  1        5     227
6 months    MAL-ED      PERU                           1                  0      144     270
6 months    MAL-ED      PERU                           1                  1       32     270
6 months    MAL-ED      PERU                           0                  0       68     270
6 months    MAL-ED      PERU                           0                  1       26     270
6 months    MAL-ED      SOUTH AFRICA                   1                  0       55     244
6 months    MAL-ED      SOUTH AFRICA                   1                  1        8     244
6 months    MAL-ED      SOUTH AFRICA                   0                  0      142     244
6 months    MAL-ED      SOUTH AFRICA                   0                  1       39     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       51     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1       13     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      108     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       40     212
24 months   EE          PAKISTAN                       1                  0        5      20
24 months   EE          PAKISTAN                       1                  1       15      20
24 months   EE          PAKISTAN                       0                  0        0      20
24 months   EE          PAKISTAN                       0                  1        0      20
24 months   GMS-Nepal   NEPAL                          1                  0      181     384
24 months   GMS-Nepal   NEPAL                          1                  1      141     384
24 months   GMS-Nepal   NEPAL                          0                  0       33     384
24 months   GMS-Nepal   NEPAL                          0                  1       29     384
24 months   JiVitA-3    BANGLADESH                     1                  0     2275    4852
24 months   JiVitA-3    BANGLADESH                     1                  1     2159    4852
24 months   JiVitA-3    BANGLADESH                     0                  0      181    4852
24 months   JiVitA-3    BANGLADESH                     0                  1      237    4852
24 months   JiVitA-4    BANGLADESH                     1                  0       84     151
24 months   JiVitA-4    BANGLADESH                     1                  1       52     151
24 months   JiVitA-4    BANGLADESH                     0                  0        6     151
24 months   JiVitA-4    BANGLADESH                     0                  1        9     151
24 months   MAL-ED      BANGLADESH                     1                  0       88     205
24 months   MAL-ED      BANGLADESH                     1                  1       80     205
24 months   MAL-ED      BANGLADESH                     0                  0       18     205
24 months   MAL-ED      BANGLADESH                     0                  1       19     205
24 months   MAL-ED      BRAZIL                         1                  0       75     152
24 months   MAL-ED      BRAZIL                         1                  1        4     152
24 months   MAL-ED      BRAZIL                         0                  0       70     152
24 months   MAL-ED      BRAZIL                         0                  1        3     152
24 months   MAL-ED      INDIA                          1                  0       69     202
24 months   MAL-ED      INDIA                          1                  1       70     202
24 months   MAL-ED      INDIA                          0                  0       46     202
24 months   MAL-ED      INDIA                          0                  1       17     202
24 months   MAL-ED      NEPAL                          1                  0       87     220
24 months   MAL-ED      NEPAL                          1                  1       23     220
24 months   MAL-ED      NEPAL                          0                  0       85     220
24 months   MAL-ED      NEPAL                          0                  1       25     220
24 months   MAL-ED      PERU                           1                  0       84     198
24 months   MAL-ED      PERU                           1                  1       47     198
24 months   MAL-ED      PERU                           0                  0       42     198
24 months   MAL-ED      PERU                           0                  1       25     198
24 months   MAL-ED      SOUTH AFRICA                   1                  0       41     228
24 months   MAL-ED      SOUTH AFRICA                   1                  1       19     228
24 months   MAL-ED      SOUTH AFRICA                   0                  0      107     228
24 months   MAL-ED      SOUTH AFRICA                   0                  1       61     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       13     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1       41     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0       36     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       94     184


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/6879557b-18d8-4914-9b25-5ce3fd056b6c/1883bf9f-2f89-4587-b91f-c71a467bac80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6879557b-18d8-4914-9b25-5ce3fd056b6c/1883bf9f-2f89-4587-b91f-c71a467bac80/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6879557b-18d8-4914-9b25-5ce3fd056b6c/1883bf9f-2f89-4587-b91f-c71a467bac80/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6879557b-18d8-4914-9b25-5ce3fd056b6c/1883bf9f-2f89-4587-b91f-c71a467bac80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    NA                0.1646435   0.1272068   0.2020801
Birth       GMS-Nepal   NEPAL                          0                    NA                0.1731984   0.0853342   0.2610626
Birth       JiVitA-3    BANGLADESH                     1                    NA                0.3294813   0.3203200   0.3386425
Birth       JiVitA-3    BANGLADESH                     0                    NA                0.3356110   0.3245957   0.3466264
Birth       MAL-ED      BANGLADESH                     1                    NA                0.1988636   0.1397572   0.2579701
Birth       MAL-ED      BANGLADESH                     0                    NA                0.1282051   0.0230361   0.2333742
Birth       MAL-ED      PERU                           1                    NA                0.1066667   0.0571559   0.1561774
Birth       MAL-ED      PERU                           0                    NA                0.1095890   0.0377697   0.1814084
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1923077   0.0400700   0.3445454
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1842105   0.0966261   0.2717950
6 months    GMS-Nepal   NEPAL                          1                    NA                0.2042471   0.1629721   0.2455221
6 months    GMS-Nepal   NEPAL                          0                    NA                0.2359520   0.1383300   0.3335739
6 months    JiVitA-3    BANGLADESH                     1                    NA                0.2501752   0.2393853   0.2609651
6 months    JiVitA-3    BANGLADESH                     0                    NA                0.2588589   0.2300073   0.2877105
6 months    MAL-ED      BANGLADESH                     1                    NA                0.1718970   0.1182678   0.2255262
6 months    MAL-ED      BANGLADESH                     0                    NA                0.2861335   0.1501760   0.4220910
6 months    MAL-ED      INDIA                          1                    NA                0.1997643   0.1348867   0.2646420
6 months    MAL-ED      INDIA                          0                    NA                0.1625756   0.0719351   0.2532160
6 months    MAL-ED      NEPAL                          1                    NA                0.0530973   0.0116634   0.0945313
6 months    MAL-ED      NEPAL                          0                    NA                0.0438596   0.0061851   0.0815342
6 months    MAL-ED      PERU                           1                    NA                0.1892196   0.1310489   0.2473903
6 months    MAL-ED      PERU                           0                    NA                0.2625958   0.1724387   0.3527528
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                0.1269841   0.0445978   0.2093705
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                0.2154696   0.1554493   0.2754900
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2069232   0.1059192   0.3079273
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2679210   0.1961327   0.3397093
24 months   GMS-Nepal   NEPAL                          1                    NA                0.4390449   0.3849665   0.4931233
24 months   GMS-Nepal   NEPAL                          0                    NA                0.4560638   0.3369543   0.5751733
24 months   JiVitA-3    BANGLADESH                     1                    NA                0.4881710   0.4705918   0.5057502
24 months   JiVitA-3    BANGLADESH                     0                    NA                0.5536823   0.4982867   0.6090778
24 months   JiVitA-4    BANGLADESH                     1                    NA                0.3823529   0.2957347   0.4689712
24 months   JiVitA-4    BANGLADESH                     0                    NA                0.6000000   0.3670443   0.8329557
24 months   MAL-ED      BANGLADESH                     1                    NA                0.4749960   0.3998024   0.5501896
24 months   MAL-ED      BANGLADESH                     0                    NA                0.4860857   0.3391153   0.6330561
24 months   MAL-ED      INDIA                          1                    NA                0.5041572   0.4204472   0.5878673
24 months   MAL-ED      INDIA                          0                    NA                0.2661446   0.1534609   0.3788284
24 months   MAL-ED      NEPAL                          1                    NA                0.2039213   0.1276783   0.2801643
24 months   MAL-ED      NEPAL                          0                    NA                0.2261860   0.1475812   0.3047907
24 months   MAL-ED      PERU                           1                    NA                0.3647785   0.2827992   0.4467578
24 months   MAL-ED      PERU                           0                    NA                0.3642509   0.2501171   0.4783848
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.2994682   0.1815138   0.4174226
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.3666914   0.2943091   0.4390738
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7686656   0.6568600   0.8804712
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7218187   0.6449820   0.7986554


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                0.1703057   0.1358418   0.2047695
Birth       JiVitA-3    BANGLADESH                     NA                   NA                0.3300693   0.3209240   0.3392146
Birth       MAL-ED      BANGLADESH                     NA                   NA                0.1860465   0.1339088   0.2381842
Birth       MAL-ED      PERU                           NA                   NA                0.1076233   0.0668572   0.1483894
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1862745   0.1103463   0.2622027
6 months    GMS-Nepal   NEPAL                          NA                   NA                0.2108844   0.1727677   0.2490010
6 months    JiVitA-3    BANGLADESH                     NA                   NA                0.2508576   0.2404565   0.2612588
6 months    MAL-ED      BANGLADESH                     NA                   NA                0.1888412   0.1384789   0.2392035
6 months    MAL-ED      INDIA                          NA                   NA                0.1857143   0.1329930   0.2384356
6 months    MAL-ED      NEPAL                          NA                   NA                0.0484581   0.0204625   0.0764538
6 months    MAL-ED      PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    MAL-ED      SOUTH AFRICA                   NA                   NA                0.1926230   0.1430395   0.2422064
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2500000   0.1915738   0.3084262
24 months   GMS-Nepal   NEPAL                          NA                   NA                0.4427083   0.3929634   0.4924533
24 months   JiVitA-3    BANGLADESH                     NA                   NA                0.4938170   0.4765272   0.5111067
24 months   JiVitA-4    BANGLADESH                     NA                   NA                0.4039735   0.3218653   0.4860818
24 months   MAL-ED      BANGLADESH                     NA                   NA                0.4829268   0.4143544   0.5514993
24 months   MAL-ED      INDIA                          NA                   NA                0.4306931   0.3622377   0.4991484
24 months   MAL-ED      NEPAL                          NA                   NA                0.2181818   0.1634817   0.2728819
24 months   MAL-ED      PERU                           NA                   NA                0.3636364   0.2964623   0.4308104
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.3508772   0.2887937   0.4129607
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7336957   0.6696530   0.7977384


### Parameter: RR


agecat      studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                 1.0519602   0.6036786   1.8331281
Birth       JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                 1.0186042   0.9987273   1.0388766
Birth       MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 0.6446886   0.2694179   1.5426722
Birth       MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED      PERU                           0                    1                 1.0273973   0.4602209   2.2935618
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9578947   0.3804270   2.4119274
6 months    GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                 1.1552280   0.7289806   1.8307097
6 months    JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                 1.0347106   0.9218644   1.1613703
6 months    MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 1.6645640   0.9431290   2.9378517
6 months    MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      INDIA                          0                    1                 0.8138370   0.4265181   1.5528779
6 months    MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      NEPAL                          0                    1                 0.8260234   0.2588158   2.6362948
6 months    MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      PERU                           0                    1                 1.3877830   0.8758176   2.1990214
6 months    MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 1.6968232   0.8375239   3.4377634
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2947846   0.7422937   2.2584958
24 months   GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                 1.0387634   0.7823830   1.3791576
24 months   JiVitA-3    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                 1.1341973   1.0231778   1.2572630
24 months   JiVitA-4    BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 1.5692308   1.0057767   2.4483420
24 months   MAL-ED      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                 1.0233469   0.7335915   1.4275505
24 months   MAL-ED      INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      INDIA                          0                    1                 0.5279001   0.3343437   0.8335092
24 months   MAL-ED      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      NEPAL                          0                    1                 1.1091826   0.6679370   1.8419194
24 months   MAL-ED      PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      PERU                           0                    1                 0.9985537   0.6820166   1.4620017
24 months   MAL-ED      SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 1.2244752   0.7909046   1.8957276
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9390543   0.7830818   1.1260930


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0056622   -0.0106259    0.0219503
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0005880   -0.0000026    0.0011786
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0128171   -0.0350027    0.0093685
Birth       MAL-ED      PERU                           1                    NA                 0.0009567   -0.0275995    0.0295128
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0060332   -0.1368996    0.1248333
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0066372   -0.0113494    0.0246239
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0006824   -0.0019266    0.0032915
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0169442   -0.0092179    0.0431064
6 months    MAL-ED      INDIA                          1                    NA                -0.0140500   -0.0479168    0.0198168
6 months    MAL-ED      NEPAL                          1                    NA                -0.0046392   -0.0327696    0.0234912
6 months    MAL-ED      PERU                           1                    NA                 0.0255952   -0.0126375    0.0638279
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0656388   -0.0101306    0.1414083
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0430768   -0.0442177    0.1303712
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0036634   -0.0164997    0.0238266
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0056460    0.0005534    0.0107385
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0216206   -0.0032699    0.0465111
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0079308   -0.0236074    0.0394690
24 months   MAL-ED      INDIA                          1                    NA                -0.0734641   -0.1200171   -0.0269112
24 months   MAL-ED      NEPAL                          1                    NA                 0.0142605   -0.0403089    0.0688299
24 months   MAL-ED      PERU                           1                    NA                -0.0011421   -0.0483530    0.0460687
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0514090   -0.0499725    0.1527905
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0349699   -0.1325193    0.0625795


### Parameter: PAF


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0332474   -0.0672038    0.1242435
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0017815   -0.0000098    0.0035696
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0688920   -0.1941495    0.0432269
Birth       MAL-ED      PERU                           1                    NA                 0.0088889   -0.2953346    0.2416622
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0323887   -1.0387102    0.4772056
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0314734   -0.0575640    0.1130146
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0027205   -0.0077382    0.0130706
6 months    MAL-ED      BANGLADESH                     1                    NA                 0.0897274   -0.0586689    0.2173226
6 months    MAL-ED      INDIA                          1                    NA                -0.0756540   -0.2738677    0.0917177
6 months    MAL-ED      NEPAL                          1                    NA                -0.0957361   -0.8572107    0.3535264
6 months    MAL-ED      PERU                           1                    NA                 0.1191501   -0.0763075    0.2791126
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.3407633   -0.1850142    0.6332592
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1723071   -0.2606037    0.4565496
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0082751   -0.0383630    0.0528184
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0114333    0.0010954    0.0216643
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0535198   -0.0115565    0.1144095
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0164224   -0.0511206    0.0796253
24 months   MAL-ED      INDIA                          1                    NA                -0.1705719   -0.2867844   -0.0648549
24 months   MAL-ED      NEPAL                          1                    NA                 0.0653606   -0.2215485    0.2848825
24 months   MAL-ED      PERU                           1                    NA                -0.0031409   -0.1417503    0.1186412
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.1465156   -0.1983466    0.3921327
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0476627   -0.1899194    0.0775870

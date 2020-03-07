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

**Outcome Variable:** ever_co

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

agecat        studyid     country                        predfeed3    ever_co   n_cell       n
------------  ----------  -----------------------------  ----------  --------  -------  ------
0-24 months   EE          PAKISTAN                       1                  0       17      39
0-24 months   EE          PAKISTAN                       1                  1       22      39
0-24 months   EE          PAKISTAN                       0                  0        0      39
0-24 months   EE          PAKISTAN                       0                  1        0      39
0-24 months   GMS-Nepal   NEPAL                          1                  0      247     458
0-24 months   GMS-Nepal   NEPAL                          1                  1      133     458
0-24 months   GMS-Nepal   NEPAL                          0                  0       54     458
0-24 months   GMS-Nepal   NEPAL                          0                  1       24     458
0-24 months   JiVitA-3    BANGLADESH                     1                  0    12292   14981
0-24 months   JiVitA-3    BANGLADESH                     1                  1     1269   14981
0-24 months   JiVitA-3    BANGLADESH                     0                  0     1289   14981
0-24 months   JiVitA-3    BANGLADESH                     0                  1      131   14981
0-24 months   JiVitA-4    BANGLADESH                     1                  0      132     165
0-24 months   JiVitA-4    BANGLADESH                     1                  1       16     165
0-24 months   JiVitA-4    BANGLADESH                     0                  0       13     165
0-24 months   JiVitA-4    BANGLADESH                     0                  1        4     165
0-24 months   MAL-ED      BANGLADESH                     1                  0      167     244
0-24 months   MAL-ED      BANGLADESH                     1                  1       33     244
0-24 months   MAL-ED      BANGLADESH                     0                  0       39     244
0-24 months   MAL-ED      BANGLADESH                     0                  1        5     244
0-24 months   MAL-ED      BRAZIL                         1                  0       95     202
0-24 months   MAL-ED      BRAZIL                         1                  1        3     202
0-24 months   MAL-ED      BRAZIL                         0                  0      104     202
0-24 months   MAL-ED      BRAZIL                         0                  1        0     202
0-24 months   MAL-ED      INDIA                          1                  0      117     216
0-24 months   MAL-ED      INDIA                          1                  1       34     216
0-24 months   MAL-ED      INDIA                          0                  0       50     216
0-24 months   MAL-ED      INDIA                          0                  1       15     216
0-24 months   MAL-ED      NEPAL                          1                  0      100     228
0-24 months   MAL-ED      NEPAL                          1                  1       14     228
0-24 months   MAL-ED      NEPAL                          0                  0      107     228
0-24 months   MAL-ED      NEPAL                          0                  1        7     228
0-24 months   MAL-ED      PERU                           1                  0      184     287
0-24 months   MAL-ED      PERU                           1                  1        4     287
0-24 months   MAL-ED      PERU                           0                  0       92     287
0-24 months   MAL-ED      PERU                           0                  1        7     287
0-24 months   MAL-ED      SOUTH AFRICA                   1                  0       68     269
0-24 months   MAL-ED      SOUTH AFRICA                   1                  1        3     269
0-24 months   MAL-ED      SOUTH AFRICA                   0                  0      180     269
0-24 months   MAL-ED      SOUTH AFRICA                   0                  1       18     269
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       63     219
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        2     219
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      137     219
0-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       17     219
0-6 months    EE          PAKISTAN                       1                  0       32      39
0-6 months    EE          PAKISTAN                       1                  1        7      39
0-6 months    EE          PAKISTAN                       0                  0        0      39
0-6 months    EE          PAKISTAN                       0                  1        0      39
0-6 months    GMS-Nepal   NEPAL                          1                  0      363     458
0-6 months    GMS-Nepal   NEPAL                          1                  1       17     458
0-6 months    GMS-Nepal   NEPAL                          0                  0       71     458
0-6 months    GMS-Nepal   NEPAL                          0                  1        7     458
0-6 months    JiVitA-3    BANGLADESH                     1                  0    12966   14954
0-6 months    JiVitA-3    BANGLADESH                     1                  1      571   14954
0-6 months    JiVitA-3    BANGLADESH                     0                  0     1352   14954
0-6 months    JiVitA-3    BANGLADESH                     0                  1       65   14954
0-6 months    JiVitA-4    BANGLADESH                     1                  0      148     164
0-6 months    JiVitA-4    BANGLADESH                     1                  1        0     164
0-6 months    JiVitA-4    BANGLADESH                     0                  0       15     164
0-6 months    JiVitA-4    BANGLADESH                     0                  1        1     164
0-6 months    MAL-ED      BANGLADESH                     1                  0      193     244
0-6 months    MAL-ED      BANGLADESH                     1                  1        7     244
0-6 months    MAL-ED      BANGLADESH                     0                  0       42     244
0-6 months    MAL-ED      BANGLADESH                     0                  1        2     244
0-6 months    MAL-ED      BRAZIL                         1                  0       97     202
0-6 months    MAL-ED      BRAZIL                         1                  1        1     202
0-6 months    MAL-ED      BRAZIL                         0                  0      104     202
0-6 months    MAL-ED      BRAZIL                         0                  1        0     202
0-6 months    MAL-ED      INDIA                          1                  0      141     216
0-6 months    MAL-ED      INDIA                          1                  1       10     216
0-6 months    MAL-ED      INDIA                          0                  0       59     216
0-6 months    MAL-ED      INDIA                          0                  1        6     216
0-6 months    MAL-ED      NEPAL                          1                  0      111     228
0-6 months    MAL-ED      NEPAL                          1                  1        3     228
0-6 months    MAL-ED      NEPAL                          0                  0      110     228
0-6 months    MAL-ED      NEPAL                          0                  1        4     228
0-6 months    MAL-ED      PERU                           1                  0      188     287
0-6 months    MAL-ED      PERU                           1                  1        0     287
0-6 months    MAL-ED      PERU                           0                  0       97     287
0-6 months    MAL-ED      PERU                           0                  1        2     287
0-6 months    MAL-ED      SOUTH AFRICA                   1                  0       71     269
0-6 months    MAL-ED      SOUTH AFRICA                   1                  1        0     269
0-6 months    MAL-ED      SOUTH AFRICA                   0                  0      194     269
0-6 months    MAL-ED      SOUTH AFRICA                   0                  1        4     269
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       65     219
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        0     219
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      151     219
0-6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1        3     219
6-24 months   EE          PAKISTAN                       1                  0       20      38
6-24 months   EE          PAKISTAN                       1                  1       18      38
6-24 months   EE          PAKISTAN                       0                  0        0      38
6-24 months   EE          PAKISTAN                       0                  1        0      38
6-24 months   GMS-Nepal   NEPAL                          1                  0      244     451
6-24 months   GMS-Nepal   NEPAL                          1                  1      131     451
6-24 months   GMS-Nepal   NEPAL                          0                  0       55     451
6-24 months   GMS-Nepal   NEPAL                          0                  1       21     451
6-24 months   JiVitA-3    BANGLADESH                     1                  0     7987    9608
6-24 months   JiVitA-3    BANGLADESH                     1                  1      794    9608
6-24 months   JiVitA-3    BANGLADESH                     0                  0      755    9608
6-24 months   JiVitA-3    BANGLADESH                     0                  1       72    9608
6-24 months   JiVitA-4    BANGLADESH                     1                  0      132     165
6-24 months   JiVitA-4    BANGLADESH                     1                  1       16     165
6-24 months   JiVitA-4    BANGLADESH                     0                  0       14     165
6-24 months   JiVitA-4    BANGLADESH                     0                  1        3     165
6-24 months   MAL-ED      BANGLADESH                     1                  0      160     231
6-24 months   MAL-ED      BANGLADESH                     1                  1       30     231
6-24 months   MAL-ED      BANGLADESH                     0                  0       37     231
6-24 months   MAL-ED      BANGLADESH                     0                  1        4     231
6-24 months   MAL-ED      BRAZIL                         1                  0       91     185
6-24 months   MAL-ED      BRAZIL                         1                  1        2     185
6-24 months   MAL-ED      BRAZIL                         0                  0       92     185
6-24 months   MAL-ED      BRAZIL                         0                  1        0     185
6-24 months   MAL-ED      INDIA                          1                  0      116     209
6-24 months   MAL-ED      INDIA                          1                  1       30     209
6-24 months   MAL-ED      INDIA                          0                  0       50     209
6-24 months   MAL-ED      INDIA                          0                  1       13     209
6-24 months   MAL-ED      NEPAL                          1                  0      101     226
6-24 months   MAL-ED      NEPAL                          1                  1       12     226
6-24 months   MAL-ED      NEPAL                          0                  0      109     226
6-24 months   MAL-ED      NEPAL                          0                  1        4     226
6-24 months   MAL-ED      PERU                           1                  0      171     267
6-24 months   MAL-ED      PERU                           1                  1        4     267
6-24 months   MAL-ED      PERU                           0                  0       86     267
6-24 months   MAL-ED      PERU                           0                  1        6     267
6-24 months   MAL-ED      SOUTH AFRICA                   1                  0       63     248
6-24 months   MAL-ED      SOUTH AFRICA                   1                  1        3     248
6-24 months   MAL-ED      SOUTH AFRICA                   0                  0      166     248
6-24 months   MAL-ED      SOUTH AFRICA                   0                  1       16     248
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  0       61     210
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                  1        2     210
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  0      132     210
6-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                  1       15     210


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
![](/tmp/8ee288fd-af42-425f-a456-09bd4e2d99fe/850b0a23-e066-457e-9e1d-204a92eeb86d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ee288fd-af42-425f-a456-09bd4e2d99fe/850b0a23-e066-457e-9e1d-204a92eeb86d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8ee288fd-af42-425f-a456-09bd4e2d99fe/850b0a23-e066-457e-9e1d-204a92eeb86d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ee288fd-af42-425f-a456-09bd4e2d99fe/850b0a23-e066-457e-9e1d-204a92eeb86d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.3481764   0.3001383   0.3962145
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.2872258   0.1835406   0.3909110
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0937342   0.0883968   0.0990715
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0910150   0.0755402   0.1064898
0-24 months   MAL-ED      BANGLADESH   1                    NA                0.1650000   0.1134522   0.2165478
0-24 months   MAL-ED      BANGLADESH   0                    NA                0.1136364   0.0196688   0.2076040
0-24 months   MAL-ED      INDIA        1                    NA                0.2250311   0.1580875   0.2919746
0-24 months   MAL-ED      INDIA        0                    NA                0.2287911   0.1257532   0.3318291
0-24 months   MAL-ED      NEPAL        1                    NA                0.1228070   0.0624248   0.1831893
0-24 months   MAL-ED      NEPAL        0                    NA                0.0614035   0.0172377   0.1055693
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0447368   0.0239291   0.0655446
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.0897436   0.0262457   0.1532414
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.0422268   0.0385059   0.0459477
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.0451362   0.0338112   0.0564611
0-6 months    MAL-ED      INDIA        1                    NA                0.0662252   0.0264694   0.1059809
0-6 months    MAL-ED      INDIA        0                    NA                0.0923077   0.0217755   0.1628399
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.3482640   0.2999355   0.3965925
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.2634190   0.1604980   0.3663401
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0905132   0.0840224   0.0970041
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0849140   0.0649495   0.1048785
6-24 months   MAL-ED      INDIA        1                    NA                0.2063941   0.1403840   0.2724041
6-24 months   MAL-ED      INDIA        0                    NA                0.2123413   0.1105820   0.3141006


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3427948   0.2992779   0.3863116
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0934517   0.0884729   0.0984306
0-24 months   MAL-ED      BANGLADESH   NA                   NA                0.1557377   0.1101466   0.2013289
0-24 months   MAL-ED      INDIA        NA                   NA                0.2268519   0.1708720   0.2828317
0-24 months   MAL-ED      NEPAL        NA                   NA                0.0921053   0.0544873   0.1297232
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.0524017   0.0319714   0.0728321
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0425304   0.0390546   0.0460063
0-6 months    MAL-ED      INDIA        NA                   NA                0.0740741   0.0390675   0.1090807
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3370288   0.2933549   0.3807028
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0901332   0.0839189   0.0963475
6-24 months   MAL-ED      INDIA        NA                   NA                0.2057416   0.1508055   0.2606778


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 0.8249433   0.5603876   1.214394
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 0.9709906   0.8093709   1.164883
0-24 months   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      BANGLADESH   0                    1                 0.6887052   0.2845336   1.666991
0-24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      INDIA        0                    1                 1.0167091   0.5911829   1.748524
0-24 months   MAL-ED      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED      NEPAL        0                    1                 0.5000000   0.2092107   1.194968
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 2.0060332   0.8602153   4.678096
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 1.0688988   0.8154253   1.401164
0-6 months    MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED      INDIA        0                    1                 1.3938462   0.5274805   3.683183
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 0.7563774   0.4999767   1.144267
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 0.9381394   0.7348392   1.197685
6-24 months   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED      INDIA        0                    1                 1.0288149   0.5775923   1.832539


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0053816   -0.0247651   0.0140018
0-24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0002824   -0.0018472   0.0012823
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0092623   -0.0287483   0.0102237
0-24 months   MAL-ED      INDIA        1                    NA                 0.0018208   -0.0354545   0.0390960
0-24 months   MAL-ED      NEPAL        1                    NA                -0.0307018   -0.0683197   0.0069162
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.0076649   -0.0038202   0.0191500
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0003036   -0.0008428   0.0014500
0-6 months    MAL-ED      INDIA        1                    NA                 0.0078489   -0.0165679   0.0322658
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0112352   -0.0300915   0.0076212
6-24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0003800   -0.0021690   0.0014090
6-24 months   MAL-ED      INDIA        1                    NA                -0.0006524   -0.0370495   0.0357446


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0156993   -0.0738376   0.0392914
0-24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0030224   -0.0198948   0.0135709
0-24 months   MAL-ED      BANGLADESH   1                    NA                -0.0594737   -0.1914494   0.0578832
0-24 months   MAL-ED      INDIA        1                    NA                 0.0080263   -0.1706724   0.1594474
0-24 months   MAL-ED      NEPAL        1                    NA                -0.3333333   -0.7884039   0.0059417
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.1462719   -0.0948184   0.3342717
0-6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0071390   -0.0202258   0.0337698
0-6 months    MAL-ED      INDIA        1                    NA                 0.1059603   -0.2879157   0.3793794
6-24 months   GMS-Nepal   NEPAL        1                    NA                -0.0333360   -0.0908020   0.0211026
6-24 months   JiVitA-3    BANGLADESH   1                    NA                -0.0042160   -0.0242597   0.0154354
6-24 months   MAL-ED      INDIA        1                    NA                -0.0031712   -0.1966336   0.1590137

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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
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
* brthmon
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
* delta_brthmon
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

agecat      studyid        country                        earlybf    swasted   n_cell       n
----------  -------------  -----------------------------  --------  --------  -------  ------
Birth       EE             PAKISTAN                       1                0       34     170
Birth       EE             PAKISTAN                       1                1        2     170
Birth       EE             PAKISTAN                       0                0      130     170
Birth       EE             PAKISTAN                       0                1        4     170
Birth       GMS-Nepal      NEPAL                          1                0      162     586
Birth       GMS-Nepal      NEPAL                          1                1        9     586
Birth       GMS-Nepal      NEPAL                          0                0      398     586
Birth       GMS-Nepal      NEPAL                          0                1       17     586
Birth       JiVitA-3       BANGLADESH                     1                0      103   17943
Birth       JiVitA-3       BANGLADESH                     1                1        2   17943
Birth       JiVitA-3       BANGLADESH                     0                0    17492   17943
Birth       JiVitA-3       BANGLADESH                     0                1      346   17943
Birth       JiVitA-4       BANGLADESH                     1                0     1611    2396
Birth       JiVitA-4       BANGLADESH                     1                1       13    2396
Birth       JiVitA-4       BANGLADESH                     0                0      754    2396
Birth       JiVitA-4       BANGLADESH                     0                1       18    2396
Birth       MAL-ED         BANGLADESH                     1                0      135     214
Birth       MAL-ED         BANGLADESH                     1                1        5     214
Birth       MAL-ED         BANGLADESH                     0                0       71     214
Birth       MAL-ED         BANGLADESH                     0                1        3     214
Birth       MAL-ED         BRAZIL                         1                0       26      62
Birth       MAL-ED         BRAZIL                         1                1        0      62
Birth       MAL-ED         BRAZIL                         0                0       36      62
Birth       MAL-ED         BRAZIL                         0                1        0      62
Birth       MAL-ED         INDIA                          1                0       31      44
Birth       MAL-ED         INDIA                          1                1        0      44
Birth       MAL-ED         INDIA                          0                0       13      44
Birth       MAL-ED         INDIA                          0                1        0      44
Birth       MAL-ED         NEPAL                          1                0       14      26
Birth       MAL-ED         NEPAL                          1                1        0      26
Birth       MAL-ED         NEPAL                          0                0       11      26
Birth       MAL-ED         NEPAL                          0                1        1      26
Birth       MAL-ED         PERU                           1                0      172     228
Birth       MAL-ED         PERU                           1                1        0     228
Birth       MAL-ED         PERU                           0                0       56     228
Birth       MAL-ED         PERU                           0                1        0     228
Birth       MAL-ED         SOUTH AFRICA                   1                0       69     110
Birth       MAL-ED         SOUTH AFRICA                   1                1        0     110
Birth       MAL-ED         SOUTH AFRICA                   0                0       41     110
Birth       MAL-ED         SOUTH AFRICA                   0                1        0     110
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      103     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       12     115
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     115
Birth       NIH-Crypto     BANGLADESH                     1                0      571     707
Birth       NIH-Crypto     BANGLADESH                     1                1       42     707
Birth       NIH-Crypto     BANGLADESH                     0                0       89     707
Birth       NIH-Crypto     BANGLADESH                     0                1        5     707
Birth       SAS-CompFeed   INDIA                          1                0       77    1072
Birth       SAS-CompFeed   INDIA                          1                1        2    1072
Birth       SAS-CompFeed   INDIA                          0                0      968    1072
Birth       SAS-CompFeed   INDIA                          0                1       25    1072
Birth       ZVITAMBO       ZIMBABWE                       1                0     5862   11514
Birth       ZVITAMBO       ZIMBABWE                       1                1      280   11514
Birth       ZVITAMBO       ZIMBABWE                       0                0     4929   11514
Birth       ZVITAMBO       ZIMBABWE                       0                1      443   11514
6 months    EE             PAKISTAN                       1                0       67     364
6 months    EE             PAKISTAN                       1                1        2     364
6 months    EE             PAKISTAN                       0                0      285     364
6 months    EE             PAKISTAN                       0                1       10     364
6 months    GMS-Nepal      NEPAL                          1                0      148     511
6 months    GMS-Nepal      NEPAL                          1                1        3     511
6 months    GMS-Nepal      NEPAL                          0                0      356     511
6 months    GMS-Nepal      NEPAL                          0                1        4     511
6 months    JiVitA-3       BANGLADESH                     1                0       36   16784
6 months    JiVitA-3       BANGLADESH                     1                1        0   16784
6 months    JiVitA-3       BANGLADESH                     0                0    16518   16784
6 months    JiVitA-3       BANGLADESH                     0                1      230   16784
6 months    JiVitA-4       BANGLADESH                     1                0     3073    4833
6 months    JiVitA-4       BANGLADESH                     1                1       22    4833
6 months    JiVitA-4       BANGLADESH                     0                0     1727    4833
6 months    JiVitA-4       BANGLADESH                     0                1       11    4833
6 months    MAL-ED         BANGLADESH                     1                0      147     240
6 months    MAL-ED         BANGLADESH                     1                1        0     240
6 months    MAL-ED         BANGLADESH                     0                0       91     240
6 months    MAL-ED         BANGLADESH                     0                1        2     240
6 months    MAL-ED         BRAZIL                         1                0       95     209
6 months    MAL-ED         BRAZIL                         1                1        0     209
6 months    MAL-ED         BRAZIL                         0                0      114     209
6 months    MAL-ED         BRAZIL                         0                1        0     209
6 months    MAL-ED         INDIA                          1                0      136     236
6 months    MAL-ED         INDIA                          1                1        4     236
6 months    MAL-ED         INDIA                          0                0       94     236
6 months    MAL-ED         INDIA                          0                1        2     236
6 months    MAL-ED         NEPAL                          1                0       96     236
6 months    MAL-ED         NEPAL                          1                1        0     236
6 months    MAL-ED         NEPAL                          0                0      140     236
6 months    MAL-ED         NEPAL                          0                1        0     236
6 months    MAL-ED         PERU                           1                0      202     273
6 months    MAL-ED         PERU                           1                1        0     273
6 months    MAL-ED         PERU                           0                0       71     273
6 months    MAL-ED         PERU                           0                1        0     273
6 months    MAL-ED         SOUTH AFRICA                   1                0      153     250
6 months    MAL-ED         SOUTH AFRICA                   1                1        3     250
6 months    MAL-ED         SOUTH AFRICA                   0                0       94     250
6 months    MAL-ED         SOUTH AFRICA                   0                1        0     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      205     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       42     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     247
6 months    NIH-Crypto     BANGLADESH                     1                0      619     715
6 months    NIH-Crypto     BANGLADESH                     1                1        0     715
6 months    NIH-Crypto     BANGLADESH                     0                0       96     715
6 months    NIH-Crypto     BANGLADESH                     0                1        0     715
6 months    SAS-CompFeed   INDIA                          1                0       92    1334
6 months    SAS-CompFeed   INDIA                          1                1        5    1334
6 months    SAS-CompFeed   INDIA                          0                0     1199    1334
6 months    SAS-CompFeed   INDIA                          0                1       38    1334
6 months    ZVITAMBO       ZIMBABWE                       1                0     4030    7553
6 months    ZVITAMBO       ZIMBABWE                       1                1       35    7553
6 months    ZVITAMBO       ZIMBABWE                       0                0     3454    7553
6 months    ZVITAMBO       ZIMBABWE                       0                1       34    7553
24 months   EE             PAKISTAN                       1                0       32     164
24 months   EE             PAKISTAN                       1                1        0     164
24 months   EE             PAKISTAN                       0                0      128     164
24 months   EE             PAKISTAN                       0                1        4     164
24 months   GMS-Nepal      NEPAL                          1                0      129     444
24 months   GMS-Nepal      NEPAL                          1                1        2     444
24 months   GMS-Nepal      NEPAL                          0                0      302     444
24 months   GMS-Nepal      NEPAL                          0                1       11     444
24 months   JiVitA-3       BANGLADESH                     1                0        1    8603
24 months   JiVitA-3       BANGLADESH                     1                1        0    8603
24 months   JiVitA-3       BANGLADESH                     0                0     8267    8603
24 months   JiVitA-3       BANGLADESH                     0                1      335    8603
24 months   JiVitA-4       BANGLADESH                     1                0     2957    4735
24 months   JiVitA-4       BANGLADESH                     1                1       74    4735
24 months   JiVitA-4       BANGLADESH                     0                0     1649    4735
24 months   JiVitA-4       BANGLADESH                     0                1       55    4735
24 months   MAL-ED         BANGLADESH                     1                0      128     211
24 months   MAL-ED         BANGLADESH                     1                1        0     211
24 months   MAL-ED         BANGLADESH                     0                0       83     211
24 months   MAL-ED         BANGLADESH                     0                1        0     211
24 months   MAL-ED         BRAZIL                         1                0       79     169
24 months   MAL-ED         BRAZIL                         1                1        1     169
24 months   MAL-ED         BRAZIL                         0                0       89     169
24 months   MAL-ED         BRAZIL                         0                1        0     169
24 months   MAL-ED         INDIA                          1                0      133     227
24 months   MAL-ED         INDIA                          1                1        1     227
24 months   MAL-ED         INDIA                          0                0       92     227
24 months   MAL-ED         INDIA                          0                1        1     227
24 months   MAL-ED         NEPAL                          1                0       95     228
24 months   MAL-ED         NEPAL                          1                1        0     228
24 months   MAL-ED         NEPAL                          0                0      133     228
24 months   MAL-ED         NEPAL                          0                1        0     228
24 months   MAL-ED         PERU                           1                0      147     201
24 months   MAL-ED         PERU                           1                1        2     201
24 months   MAL-ED         PERU                           0                0       52     201
24 months   MAL-ED         PERU                           0                1        0     201
24 months   MAL-ED         SOUTH AFRICA                   1                0      144     235
24 months   MAL-ED         SOUTH AFRICA                   1                1        0     235
24 months   MAL-ED         SOUTH AFRICA                   0                0       91     235
24 months   MAL-ED         SOUTH AFRICA                   0                1        0     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      180     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        0     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       34     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        0     214
24 months   NIH-Crypto     BANGLADESH                     1                0      439     514
24 months   NIH-Crypto     BANGLADESH                     1                1        4     514
24 months   NIH-Crypto     BANGLADESH                     0                0       71     514
24 months   NIH-Crypto     BANGLADESH                     0                1        0     514
24 months   ZVITAMBO       ZIMBABWE                       1                0      187     379
24 months   ZVITAMBO       ZIMBABWE                       1                1       14     379
24 months   ZVITAMBO       ZIMBABWE                       0                0      163     379
24 months   ZVITAMBO       ZIMBABWE                       0                1       15     379


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
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH

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
![](/tmp/84687624-7ef5-459a-bc94-473a90a5cdf7/ca7d1181-8c2b-4ca5-a9ba-eef1f12fbd7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84687624-7ef5-459a-bc94-473a90a5cdf7/ca7d1181-8c2b-4ca5-a9ba-eef1f12fbd7f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/84687624-7ef5-459a-bc94-473a90a5cdf7/ca7d1181-8c2b-4ca5-a9ba-eef1f12fbd7f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84687624-7ef5-459a-bc94-473a90a5cdf7/ca7d1181-8c2b-4ca5-a9ba-eef1f12fbd7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                0.0526316   0.0191348   0.0861284
Birth       GMS-Nepal      NEPAL        0                    NA                0.0409639   0.0218779   0.0600498
Birth       JiVitA-4       BANGLADESH   1                    NA                0.0079481   0.0039032   0.0119930
Birth       JiVitA-4       BANGLADESH   0                    NA                0.0240885   0.0103195   0.0378576
Birth       NIH-Crypto     BANGLADESH   1                    NA                0.0685155   0.0485027   0.0885283
Birth       NIH-Crypto     BANGLADESH   0                    NA                0.0531915   0.0077928   0.0985902
Birth       ZVITAMBO       ZIMBABWE     1                    NA                0.0614403   0.0569215   0.0659592
Birth       ZVITAMBO       ZIMBABWE     0                    NA                0.0637931   0.0591869   0.0683992
6 months    JiVitA-4       BANGLADESH   1                    NA                0.0071720   0.0030583   0.0112858
6 months    JiVitA-4       BANGLADESH   0                    NA                0.0062979   0.0025921   0.0100037
6 months    SAS-CompFeed   INDIA        1                    NA                0.0515464   0.0256358   0.0774570
6 months    SAS-CompFeed   INDIA        0                    NA                0.0307195   0.0217846   0.0396544
6 months    ZVITAMBO       ZIMBABWE     1                    NA                0.0086969   0.0058335   0.0115604
6 months    ZVITAMBO       ZIMBABWE     0                    NA                0.0096580   0.0063918   0.0129243
24 months   JiVitA-4       BANGLADESH   1                    NA                0.0240279   0.0178312   0.0302246
24 months   JiVitA-4       BANGLADESH   0                    NA                0.0314930   0.0224035   0.0405824
24 months   ZVITAMBO       ZIMBABWE     1                    NA                0.0717718   0.0360397   0.1075039
24 months   ZVITAMBO       ZIMBABWE     0                    NA                0.0819523   0.0417606   0.1221440


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL        NA                   NA                0.0443686   0.0276826   0.0610546
Birth       JiVitA-4       BANGLADESH   NA                   NA                0.0129382   0.0075150   0.0183614
Birth       NIH-Crypto     BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ZVITAMBO       ZIMBABWE     NA                   NA                0.0627931   0.0583619   0.0672244
6 months    JiVitA-4       BANGLADESH   NA                   NA                0.0068281   0.0038634   0.0097927
6 months    SAS-CompFeed   INDIA        NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0091354   0.0069896   0.0112812
24 months   JiVitA-4       BANGLADESH   NA                   NA                0.0272439   0.0220352   0.0324527
24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.0765172   0.0497195   0.1033148


### Parameter: RR


agecat      studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal      NEPAL        0                    1                 0.7783133   0.3536728   1.712802
Birth       JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4       BANGLADESH   0                    1                 3.0307210   1.3998718   6.561508
Birth       NIH-Crypto     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto     BANGLADESH   0                    1                 0.7763425   0.3149772   1.913496
Birth       ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO       ZIMBABWE     0                    1                 1.0382931   1.0034847   1.074309
6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4       BANGLADESH   0                    1                 0.8781196   0.3899852   1.977239
6 months    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed   INDIA        0                    1                 0.5959580   0.3210516   1.106258
6 months    ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO       ZIMBABWE     0                    1                 1.1105089   0.6928169   1.780023
24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4       BANGLADESH   0                    1                 1.3106842   0.8943047   1.920926
24 months   ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO       ZIMBABWE     0                    1                 1.1418452   0.5705999   2.284982


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0082630   -0.0355690   0.0190431
Birth       JiVitA-4       BANGLADESH   1                    NA                 0.0049901    0.0000949   0.0098854
Birth       NIH-Crypto     BANGLADESH   1                    NA                -0.0020374   -0.0086451   0.0045702
Birth       ZVITAMBO       ZIMBABWE     1                    NA                 0.0013528    0.0001793   0.0025263
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0003440   -0.0023187   0.0016307
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0193125   -0.0457136   0.0070885
6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0004385   -0.0015748   0.0024518
24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0032160   -0.0007184   0.0071505
24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.0047454   -0.0203275   0.0298182


### Parameter: PAF


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.1862348   -0.9869502   0.2918026
Birth       JiVitA-4       BANGLADESH   1                    NA                 0.3856872    0.0153161   0.6167498
Birth       NIH-Crypto     BANGLADESH   1                    NA                -0.0306480   -0.1346550   0.0638253
Birth       ZVITAMBO       ZIMBABWE     1                    NA                 0.0215436    0.0027008   0.0400304
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0503765   -0.3738981   0.1969632
6 months    SAS-CompFeed   INDIA        1                    NA                -0.5991369   -1.7539793   0.0714386
6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0480000   -0.1995865   0.2444863
24 months   JiVitA-4       BANGLADESH   1                    NA                 0.1180463   -0.0382090   0.2507844
24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.0620171   -0.3296017   0.3382892

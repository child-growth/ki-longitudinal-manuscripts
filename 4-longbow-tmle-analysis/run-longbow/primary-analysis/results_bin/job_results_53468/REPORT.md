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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** predfeed36

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

agecat      studyid                    country                        predfeed36    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0       70     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        2     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      144     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0        7      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        1      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0       55      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        2      65
Birth       ki0047075b-MAL-ED          INDIA                          1                    0        4      42
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        0      42
Birth       ki0047075b-MAL-ED          INDIA                          0                    0       36      42
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        2      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0        1      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0       24      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        1      26
Birth       ki0047075b-MAL-ED          PERU                           1                    0       58     223
Birth       ki0047075b-MAL-ED          PERU                           1                    1        0     223
Birth       ki0047075b-MAL-ED          PERU                           0                    0      161     223
Birth       ki0047075b-MAL-ED          PERU                           0                    1        4     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      102     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      111     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     119
Birth       ki1000109-EE               PAKISTAN                       1                    0        2       7
Birth       ki1000109-EE               PAKISTAN                       1                    1        1       7
Birth       ki1000109-EE               PAKISTAN                       0                    0        4       7
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       7
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0      409     526
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1       13     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0      101     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    1        3     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7467   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1      867   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2093   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      254   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1852    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1      147    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      453    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       65    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       78     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      154     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                    0       15     233
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        2     233
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      209     233
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        7     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        8     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      226     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        1     235
6 months    ki0047075b-MAL-ED          PERU                           1                    0       70     272
6 months    ki0047075b-MAL-ED          PERU                           1                    1        2     272
6 months    ki0047075b-MAL-ED          PERU                           0                    0      192     272
6 months    ki0047075b-MAL-ED          PERU                           0                    1        8     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      241     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        5     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      224     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     243
6 months    ki1000109-EE               PAKISTAN                       1                    0        3       9
6 months    ki1000109-EE               PAKISTAN                       1                    1        1       9
6 months    ki1000109-EE               PAKISTAN                       0                    0        5       9
6 months    ki1000109-EE               PAKISTAN                       0                    1        0       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      410     527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       12     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       98     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1        7     527
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6181    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      412    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1834    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3109    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      144    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      843    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       89    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       54     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       15     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      130     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       13     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                    0       14     224
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        3     224
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      180     224
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       27     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        8     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      212     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        7     227
24 months   ki0047075b-MAL-ED          PERU                           1                    0       49     201
24 months   ki0047075b-MAL-ED          PERU                           1                    1        4     201
24 months   ki0047075b-MAL-ED          PERU                           0                    0      137     201
24 months   ki0047075b-MAL-ED          PERU                           0                    1       11     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      206     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      141     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       68     213
24 months   ki1000109-EE               PAKISTAN                       1                    0        0       3
24 months   ki1000109-EE               PAKISTAN                       1                    1        0       3
24 months   ki1000109-EE               PAKISTAN                       0                    0        3       3
24 months   ki1000109-EE               PAKISTAN                       0                    1        0       3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      329     446
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       34     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       69     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14     446
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2835    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      499    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      857    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      143    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2879    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      278    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      778    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      114    4049


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/59ab41ef-bdc1-40bb-be9d-614f0dcfc223/3b7522e7-f769-4fe3-8776-337d2d39f7ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59ab41ef-bdc1-40bb-be9d-614f0dcfc223/3b7522e7-f769-4fe3-8776-337d2d39f7ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59ab41ef-bdc1-40bb-be9d-614f0dcfc223/3b7522e7-f769-4fe3-8776-337d2d39f7ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59ab41ef-bdc1-40bb-be9d-614f0dcfc223/3b7522e7-f769-4fe3-8776-337d2d39f7ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1045435   0.0981388   0.1109483
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1062608   0.0994856   0.1130361
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0833960   0.0704324   0.0963596
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0868161   0.0718183   0.1018139
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0284360   0.0125625   0.0443096
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0666667   0.0189095   0.1144238
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0623808   0.0562363   0.0685254
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0639163   0.0535415   0.0742912
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0470613   0.0397188   0.0544038
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0806156   0.0618897   0.0993415
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1848818   0.0887355   0.2810281
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0909791   0.0429221   0.1390362
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0939975   0.0639433   0.1240516
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1699538   0.0893391   0.2505686
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1491599   0.1358485   0.1624714
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1461993   0.1209963   0.1714024
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0916661   0.0797736   0.1035586
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1143575   0.0917306   0.1369844


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1049527   0.0986146   0.1112909
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0842273   0.0714625   0.0969920
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0360531   0.0201218   0.0519845
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0627923   0.0572659   0.0683187
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556750   0.0484735   0.0628765
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1076233   0.0788298   0.1364169
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1481311   0.1360218   0.1602403
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0968140   0.0862351   0.1073930


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0164266   0.9846172   1.049263
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0410100   0.9304443   1.164714
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.3444444   0.9454214   5.813725
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0246152   0.8553346   1.227398
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7129910   1.3070555   2.244999
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4920935   0.2366162   1.023412
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.8080678   1.0198665   3.205428
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9801513   0.8110793   1.184467
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2475440   0.9879270   1.575386


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004092   -0.0003416   0.0011599
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008313   -0.0012187   0.0028812
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0076171   -0.0024945   0.0177287
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004115   -0.0022228   0.0030458
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0086137    0.0042189   0.0130085
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0528063   -0.1274970   0.0218843
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0136258   -0.0026718   0.0299235
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0010289   -0.0074796   0.0054218
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0051479   -0.0004764   0.0107722


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0038987   -0.0032913   0.0110372
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0098692   -0.0148443   0.0339809
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2112746   -0.1042928   0.4366642
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0065536   -0.0363073   0.0476418
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1547143    0.0752378   0.2273603
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3998193   -1.0738692   0.0551505
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1266066   -0.0350030   0.2629818
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0069458   -0.0514942   0.0357152
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0531732   -0.0069389   0.1096968

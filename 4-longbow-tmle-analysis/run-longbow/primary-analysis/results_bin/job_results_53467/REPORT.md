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

**Intervention Variable:** predfeed6

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

agecat      studyid                    country                        predfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       71     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        1     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      129     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        5      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       52      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        2      60
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        4      39
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0      39
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       33      39
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        2      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        3      24
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       20      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1      24
Birth       ki0047075b-MAL-ED          PERU                           1                   0       73     213
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0     213
Birth       ki0047075b-MAL-ED          PERU                           0                   0      136     213
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       89      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      105     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        8     113
Birth       ki1000109-EE               PAKISTAN                       1                   0       30      42
Birth       ki1000109-EE               PAKISTAN                       1                   1        8      42
Birth       ki1000109-EE               PAKISTAN                       0                   0        4      42
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      42
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      404     563
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       15     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0      138     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        6     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9314   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1152   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2626   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      331   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1948    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      155    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      462    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       67    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       82     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      142     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        5     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        9     218
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        2     218
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      200     218
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        7     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       12     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      212     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1     225
6 months    ki0047075b-MAL-ED          PERU                           1                   0       90     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1        2     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      171     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      226     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        4     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      217     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     232
6 months    ki1000109-EE               PAKISTAN                       1                   0       31      48
6 months    ki1000109-EE               PAKISTAN                       1                   1       12      48
6 months    ki1000109-EE               PAKISTAN                       0                   0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      394     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      132     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     547
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7180    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      464    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     2112    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      145    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3184    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      144    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      854    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       90    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       62     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       14     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      117     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       12     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      143     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        8     209
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        3     209
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      174     209
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       24     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       11     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      201     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        6     219
24 months   ki0047075b-MAL-ED          PERU                           1                   0       63     201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        5     201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      123     201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       10     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      189     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       24     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      133     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     202
24 months   ki1000109-EE               PAKISTAN                       1                   0       12      23
24 months   ki1000109-EE               PAKISTAN                       1                   1        8      23
24 months   ki1000109-EE               PAKISTAN                       0                   0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      320     470
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       36     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       98     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       16     470
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3325    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      601    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      995    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      167    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3008    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      284    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      791    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      116    4199


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
![](/tmp/bfdc2b2d-bb84-4e32-9561-5f93d4bcf2ca/2483a3db-b5aa-410d-a89a-363a3d2c57fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bfdc2b2d-bb84-4e32-9561-5f93d4bcf2ca/2483a3db-b5aa-410d-a89a-363a3d2c57fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bfdc2b2d-bb84-4e32-9561-5f93d4bcf2ca/2483a3db-b5aa-410d-a89a-363a3d2c57fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bfdc2b2d-bb84-4e32-9561-5f93d4bcf2ca/2483a3db-b5aa-410d-a89a-363a3d2c57fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0357995   0.0179942   0.0536048
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0416667   0.0089999   0.0743334
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1102856   0.1044687   0.1161025
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1109381   0.1047668   0.1171095
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0836212   0.0711694   0.0960730
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0864378   0.0722446   0.1006311
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0295567   0.0130676   0.0460457
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0638298   0.0234443   0.1042152
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0608385   0.0552243   0.0664527
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0647587   0.0545328   0.0749846
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0462650   0.0389950   0.0535351
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0789785   0.0610640   0.0968930
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1662237   0.0794356   0.2530119
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0964367   0.0444591   0.1484142
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.0735294   0.0113391   0.1357198
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.0751880   0.0302611   0.1201148
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1013550   0.0700031   0.1327069
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1418857   0.0787140   0.2050573
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1523433   0.1397699   0.1649168
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1464048   0.1193100   0.1734995
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0901968   0.0786614   0.1017322
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1108179   0.0889819   0.1326539


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0373002   0.0216334   0.0529670
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1104820   0.1047181   0.1162459
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0843465   0.0720577   0.0966353
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0383912   0.0222749   0.0545076
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0615089   0.0563485   0.0666694
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0547753   0.0477475   0.0618030
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1268293   0.0811633   0.1724952
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.0746269   0.0382069   0.1110468
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1106383   0.0822491   0.1390275
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1509434   0.1390224   0.1628644
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0952608   0.0849096   0.1056119


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1638889   0.4599272   2.945330
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0059163   0.9783404   1.034269
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0336836   0.9320443   1.146407
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.1595745   0.9290246   5.020063
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0644362   0.8949093   1.266077
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7070884   1.3075072   2.228784
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.5801617   0.2756545   1.221049
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 1.0225564   0.3630333   2.880236
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3998884   0.8134836   2.409007
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9610184   0.7898064   1.169345
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2286231   0.9763388   1.546097


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0015007   -0.0080175   0.0110188
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001964   -0.0004894   0.0008822
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0007253   -0.0010399   0.0024906
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0088346   -0.0024799   0.0201491
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0006704   -0.0018546   0.0031954
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0085102    0.0043120   0.0127085
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0393945   -0.1037175   0.0249286
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0010975   -0.0496681   0.0518630
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0092833   -0.0081305   0.0266971
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0014000   -0.0079673   0.0051674
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0050639   -0.0002486   0.0103764


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0402318   -0.2514084   0.2639055
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017775   -0.0044514   0.0079678
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0085993   -0.0126170   0.0293711
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2301196   -0.1068011   0.4644785
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0108997   -0.0309713   0.0510703
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1553665    0.0775683   0.2266031
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3106103   -0.9111921   0.1012419
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0147059   -0.9651411   0.5059874
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0839067   -0.0862963   0.2274420
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0092747   -0.0538738   0.0334370
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0531587   -0.0044732   0.1074839

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0      123     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        2     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      113     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0       27     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        2     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0      150     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        6     185
Birth       ki0047075b-MAL-ED          INDIA                          1                    0       14     198
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        2     198
Birth       ki0047075b-MAL-ED          INDIA                          0                    0      177     198
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        5     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0       25     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        1     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0      141     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        5     172
Birth       ki0047075b-MAL-ED          PERU                           1                    0      116     273
Birth       ki0047075b-MAL-ED          PERU                           1                    1        2     273
Birth       ki0047075b-MAL-ED          PERU                           0                    0      151     273
Birth       ki0047075b-MAL-ED          PERU                           0                    1        4     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      114     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     121
Birth       ki1000109-EE               PAKISTAN                       1                    0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                    1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                    0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10214   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1      962   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2405   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      365   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0      541     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1       41     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      129     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       16     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0      125     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      107     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                    0       16     236
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        3     236
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      211     236
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        6     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       31     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        1     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      204     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        0     236
6 months    ki0047075b-MAL-ED          PERU                           1                    0      123     271
6 months    ki0047075b-MAL-ED          PERU                           1                    1        3     271
6 months    ki0047075b-MAL-ED          PERU                           0                    0      137     271
6 months    ki0047075b-MAL-ED          PERU                           0                    1        8     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      245     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      231     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     247
6 months    ki1000109-EE               PAKISTAN                       1                    0      157     367
6 months    ki1000109-EE               PAKISTAN                       1                    1       65     367
6 months    ki1000109-EE               PAKISTAN                       0                    0      119     367
6 months    ki1000109-EE               PAKISTAN                       0                    1       26     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      412     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       11     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       96     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1        7     526
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10183   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      522   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2386   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      284   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3110    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      146    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      826    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       89    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       99     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1       18     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       87     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        7     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      138     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                    0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        5     227
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      186     227
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       23     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       28     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        2     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      193     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        5     228
24 months   ki0047075b-MAL-ED          PERU                           1                    0       90     200
24 months   ki0047075b-MAL-ED          PERU                           1                    1        4     200
24 months   ki0047075b-MAL-ED          PERU                           0                    0       96     200
24 months   ki0047075b-MAL-ED          PERU                           0                    1       10     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      209     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      143     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       69     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      335     456
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       34     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       72     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       15     456
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4528    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      765    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1152    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      248    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2879    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      274    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      758    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      112    4023


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/f6c05951-67ed-4fce-a3e7-14b73bcb4b9a/b3b395f5-e4e8-4b50-aac9-4e19c3585365/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6c05951-67ed-4fce-a3e7-14b73bcb4b9a/b3b395f5-e4e8-4b50-aac9-4e19c3585365/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6c05951-67ed-4fce-a3e7-14b73bcb4b9a/b3b395f5-e4e8-4b50-aac9-4e19c3585365/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6c05951-67ed-4fce-a3e7-14b73bcb4b9a/b3b395f5-e4e8-4b50-aac9-4e19c3585365/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0948607   0.0897833   0.0999382
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0959464   0.0907502   0.1011425
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0703987   0.0449273   0.0958701
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1112001   0.0478140   0.1745863
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.2979537   0.2382815   0.3576259
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1729195   0.1095010   0.2363381
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0260047   0.0108239   0.0411856
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0679612   0.0193104   0.1166120
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0535713   0.0494294   0.0577131
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0842522   0.0735173   0.0949870
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0480394   0.0398109   0.0562680
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0824149   0.0629445   0.1018853
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1538462   0.0883140   0.2193784
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0744681   0.0212699   0.1276662
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.2777778   0.0704036   0.4851520
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1100478   0.0675264   0.1525693
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0922879   0.0626820   0.1218939
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1709497   0.0898257   0.2520737
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1494340   0.1389768   0.1598912
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1582288   0.1371189   0.1793387
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0906190   0.0787635   0.1024745
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1139441   0.0911807   0.1367075


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0951527   0.0900508   0.1002546
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0784044   0.0544827   0.1023261
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2479564   0.2037162   0.2921966
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0342205   0.0186698   0.0497713
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0602617   0.0561000   0.0644233
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563414   0.0484727   0.0642101
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1184834   0.0747732   0.1621936
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1074561   0.0790002   0.1359121
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1513522   0.1415495   0.1611548
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0959483   0.0853397   0.1065568


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0114444   1.0041439   1.0187980
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5795771   0.8031101   3.1067519
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.5803571   0.3828703   0.8797087
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.6134157   1.0376345   6.5822227
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5727118   1.3644183   1.8128036
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7155681   1.2954282   2.2719700
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4840426   0.2107018   1.1119849
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.3961722   0.1709269   0.9182429
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.8523515   1.0441231   3.2862083
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0588539   0.9177878   1.2216023
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2573971   0.9930987   1.5920346


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002920    0.0001057    0.0004783
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0080057   -0.0056866    0.0216981
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0499973   -0.0846556   -0.0153390
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0082158   -0.0018650    0.0182966
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0066904    0.0042949    0.0090859
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0083020    0.0037981    0.0128059
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0353627   -0.0733425    0.0026170
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1544298   -0.3494222    0.0405626
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0151682   -0.0013045    0.0316409
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0019182   -0.0027627    0.0065990
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0053293   -0.0003006    0.0109592


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0030686    0.0011263    0.0050071
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1021080   -0.0876190    0.2587386
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2016375   -0.3497653   -0.0697656
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2400841   -0.0909814    0.4706855
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1110226    0.0719997    0.1484046
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1473515    0.0652729    0.2222227
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2984615   -0.6460506   -0.0242713
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -1.2519841   -3.4995378   -0.1271008
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1411572   -0.0223268    0.2784979
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0126735   -0.0186741    0.0430564
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0555434   -0.0051348    0.1125584

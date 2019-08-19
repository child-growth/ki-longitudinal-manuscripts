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

agecat      studyid                    country                        predfeed36    stunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      107     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0       95     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1       23     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       25     185
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        4     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      141     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1       15     185
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       11     198
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        5     198
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      155     198
Birth       ki0047075b-MAL-ED          INDIA                          0                   1       27     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       24     172
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        2     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      130     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1       16     172
Birth       ki0047075b-MAL-ED          PERU                           1                   0      106     273
Birth       ki0047075b-MAL-ED          PERU                           1                   1       12     273
Birth       ki0047075b-MAL-ED          PERU                           0                   0      135     273
Birth       ki0047075b-MAL-ED          PERU                           0                   1       20     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      211     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      102     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       18     121
Birth       ki1000109-EE               PAKISTAN                       1                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7895   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     3281   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1750   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1     1020   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      415     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1      167     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0       89     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       56     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      110     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1       19     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       86     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       25     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      167     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       14     236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        5     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      176     236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1       41     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       29     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        3     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      195     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        9     236
6 months    ki0047075b-MAL-ED          PERU                           1                   0      109     271
6 months    ki0047075b-MAL-ED          PERU                           1                   1       17     271
6 months    ki0047075b-MAL-ED          PERU                           0                   0      103     271
6 months    ki0047075b-MAL-ED          PERU                           0                   1       42     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      202     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       49     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      187     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       58     247
6 months    ki1000109-EE               PAKISTAN                       1                   0       94     367
6 months    ki1000109-EE               PAKISTAN                       1                   1      128     367
6 months    ki1000109-EE               PAKISTAN                       0                   0       83     367
6 months    ki1000109-EE               PAKISTAN                       0                   1       62     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       81     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      342     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       81     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       75     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       28     526
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8214   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2491   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1798   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      872   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     2476    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      780    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      628    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      287    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       64     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       53     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       50     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       44     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       30     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      133     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        7     227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1       11     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      125     227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       84     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       24     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        6     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      155     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       43     228
24 months   ki0047075b-MAL-ED          PERU                           1                   0       65     200
24 months   ki0047075b-MAL-ED          PERU                           1                   1       29     200
24 months   ki0047075b-MAL-ED          PERU                           0                   0       62     200
24 months   ki0047075b-MAL-ED          PERU                           0                   1       44     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      151     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       84     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0       59     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1      153     214
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      211     456
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      158     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       43     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       44     456
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     2750    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2543    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      692    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      708    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1927    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1     1226    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      490    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      380    4023


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/1112eb02-55f1-4f3f-addc-6086a2fc1183/5d4036fd-8dbd-47e7-8489-b971f133a241/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1112eb02-55f1-4f3f-addc-6086a2fc1183/5d4036fd-8dbd-47e7-8489-b971f133a241/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1112eb02-55f1-4f3f-addc-6086a2fc1183/5d4036fd-8dbd-47e7-8489-b971f133a241/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1112eb02-55f1-4f3f-addc-6086a2fc1183/5d4036fd-8dbd-47e7-8489-b971f133a241/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1423905   0.0806163   0.2041647
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1969885   0.1249828   0.2689941
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.3125000   0.0848074   0.5401926
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.1483516   0.0965804   0.2001228
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1005687   0.0457287   0.1554088
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1283600   0.0752478   0.1814723
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3082958   0.2996233   0.3169682
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3087432   0.3000736   0.3174128
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3064730   0.2683747   0.3445712
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2995027   0.2572030   0.3418024
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1496208   0.0882399   0.2110017
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2328920   0.1550275   0.3107565
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.2631579   0.0647364   0.4615794
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1889401   0.1367451   0.2411351
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1454652   0.0852118   0.2057186
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2916420   0.2181953   0.3650887
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5847156   0.5211869   0.6482444
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4162571   0.3395388   0.4929754
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1909902   0.1534433   0.2285372
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2686976   0.1813331   0.3560621
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3925370   0.2540233   0.5310507
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3578946   0.2950844   0.4207048
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2423903   0.2332512   0.2515293
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2882435   0.2710328   0.3054541
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2457139   0.2296023   0.2618256
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2876955   0.2542625   0.3211285
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4533235   0.3652779   0.5413690
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4765763   0.3752626   0.5778901
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6111111   0.3854050   0.8368173
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4019139   0.3352973   0.4685304
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.2000000   0.0565495   0.3434505
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2171717   0.1596138   0.2747296
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.3424799   0.2471832   0.4377767
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3850393   0.2916074   0.4784713
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4319348   0.3812848   0.4825848
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4767735   0.3707018   0.5828452
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.4923093   0.3188293   0.6657893
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4844090   0.4053420   0.5634760
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4860856   0.4706996   0.5014715
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4781936   0.4491814   0.5072059
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3945507   0.3743905   0.4147110
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4114581   0.3733039   0.4496124


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1687243   0.1215395   0.2159090
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1616162   0.1102143   0.2130180
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1172161   0.0789879   0.1554444
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3084038   0.2997331   0.3170746
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3067400   0.2694794   0.3440006
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2177122   0.1684866   0.2669378
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5177112   0.4665188   0.5689035
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2072243   0.1725535   0.2418951
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2514393   0.2427410   0.2601375
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2558140   0.2405969   0.2710310
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4597156   0.3923103   0.5271210
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3650000   0.2981110   0.4318890
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4429825   0.3973399   0.4886250
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4857314   0.4714029   0.5000599
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3992046   0.3802350   0.4181742


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.3834384   0.7849405   2.4382761
Birth       ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 0.4747253   0.2116341   1.0648762
Birth       ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 1.2763414   0.6436377   2.5310006
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0014513   1.0003127   1.0025911
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9772564   0.8913663   1.0714227
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.5565487   0.9160027   2.6450182
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 0.7179724   0.3216345   1.6027022
6 months    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 2.0048922   1.2357622   3.2527237
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7118966   0.5796844   0.8742633
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4068657   0.9617359   2.0580194
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9117474   0.6147849   1.3521530
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1891709   1.1160146   1.2671227
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1708554   1.0323534   1.3279391
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0512942   0.7929401   1.3938248
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.6576773   0.4387326   0.9858837
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 1.0858586   0.5054623   2.3326939
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 1.1242683   0.7826916   1.6149134
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1038090   0.8588656   1.4186090
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9839525   0.6670068   1.4515033
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9837643   0.9228621   1.0486856
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0428523   0.9454402   1.1503010


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0263338   -0.0197752    0.0724428
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.1508838   -0.3656099    0.0638422
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0166474   -0.0267179    0.0600127
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001081    0.0000297    0.0001864
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0002671   -0.0050055    0.0055396
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0337126   -0.0126321    0.0800572
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0682426   -0.2569139    0.1204286
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0722470    0.0201134    0.1243806
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0670045   -0.1061563   -0.0278527
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0162341   -0.0024428    0.0349110
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0359193   -0.1619904    0.0901517
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0090490    0.0055073    0.0125906
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0101000    0.0024857    0.0177143
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0063922   -0.0520581    0.0648424
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1926089   -0.4094053    0.0241875
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0149123   -0.1193190    0.1491436
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0225201   -0.0476004    0.0926405
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0110477   -0.0114837    0.0335790
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0055369   -0.1631738    0.1521001
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003542   -0.0065977    0.0058893
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0046538   -0.0039484    0.0132560


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1560759   -0.1640148    0.3881453
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.9335938   -2.8271567    0.0230907
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1420230   -0.3177821    0.4413913
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003504    0.0000959    0.0006048
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008707   -0.0164769    0.0179222
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1838867   -0.1073253    0.3985138
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.3501144   -1.7622428    0.3400982
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.3318463    0.0588481    0.5256565
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1294244   -0.2091842   -0.0549258
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0783407   -0.0158170    0.1637708
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.1007223   -0.5180539    0.2018798
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0359888    0.0218401    0.0499328
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0394818    0.0094692    0.0685851
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0139046   -0.1217579    0.1331605
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.4602339   -1.0896138   -0.0204197
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0693878   -0.8205132    0.5242885
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0616988   -0.1514431    0.2353863
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0249393   -0.0273083    0.0745297
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.0113746   -0.3930608    0.2657330
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007292   -0.0136669    0.0120433
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0116578   -0.0100869    0.0329343

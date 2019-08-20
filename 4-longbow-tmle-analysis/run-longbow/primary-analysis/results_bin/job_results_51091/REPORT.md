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

agecat      studyid                    country                        predfeed6    stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      101     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       91     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       24     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      134     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       14     175
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       10     190
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        5     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      149     190
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       26     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       21     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        2     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      131     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       16     170
Birth       ki0047075b-MAL-ED          PERU                           1                  0       95     256
Birth       ki0047075b-MAL-ED          PERU                           1                  1       11     256
Birth       ki0047075b-MAL-ED          PERU                           0                  0      132     256
Birth       ki0047075b-MAL-ED          PERU                           0                  1       18     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      188     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       20     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      102     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       16     119
Birth       ki1000109-EE               PAKISTAN                       1                  0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  0        0       2
Birth       ki1000109-EE               PAKISTAN                       0                  1        1       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10565   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1     4531   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2475   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1511   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      439     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      180     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0       91     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       57     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      104     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       19     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       88     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       24     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      169     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        5     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       13     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      174     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       40     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       26     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        3     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      197     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        9     235
6 months    ki0047075b-MAL-ED          PERU                           1                  0       97     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1       16     269
6 months    ki0047075b-MAL-ED          PERU                           0                  0      114     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1       42     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      192     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       47     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      185     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       57     244
6 months    ki1000109-EE               PAKISTAN                       1                  0       92     372
6 months    ki1000109-EE               PAKISTAN                       1                  1      126     372
6 months    ki1000109-EE               PAKISTAN                       0                  0       87     372
6 months    ki1000109-EE               PAKISTAN                       0                  1       67     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0       87     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       81     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      327     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       77     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      104     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       38     546
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       30     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1       17     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      145     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1       80     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    10155   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3068   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2343   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1116   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2540    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      792    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      635    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      292    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       59     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       53     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       44     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      134     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        7     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       10     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      123     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       84     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       22     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        6     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      156     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       43     227
24 months   ki0047075b-MAL-ED          PERU                           1                  0       57     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1       27     198
24 months   ki0047075b-MAL-ED          PERU                           0                  0       70     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1       44     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      145     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       79     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       59     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      151     212
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      202     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1      158     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       61     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       59     480
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       17     189
24 months   ki1148112-LCNI-5           MALAWI                         1                  1       17     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  0       80     189
24 months   ki1148112-LCNI-5           MALAWI                         0                  1       75     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3426    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     3251    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      924    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      941    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2012    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1     1277    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      496    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      389    4174


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
![](/tmp/7689babd-b18b-4aee-877f-4f584dc2aefc/e3ef3698-5375-445e-b960-ef29e042cab4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7689babd-b18b-4aee-877f-4f584dc2aefc/e3ef3698-5375-445e-b960-ef29e042cab4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7689babd-b18b-4aee-877f-4f584dc2aefc/e3ef3698-5375-445e-b960-ef29e042cab4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7689babd-b18b-4aee-877f-4f584dc2aefc/e3ef3698-5375-445e-b960-ef29e042cab4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1492612   0.0847791   0.2137434
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1880342   0.1152936   0.2607749
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                0.3333333   0.0941438   0.5725228
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                0.1485714   0.0957370   0.2014058
Birth       ki0047075b-MAL-ED     PERU         1                    NA                0.1050102   0.0467810   0.1632395
Birth       ki0047075b-MAL-ED     PERU         0                    NA                0.1223582   0.0695855   0.1751309
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3165117   0.3089009   0.3241224
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3169683   0.3093605   0.3245760
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3103471   0.2729069   0.3477874
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.3022850   0.2589774   0.3455926
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1560894   0.0917623   0.2204166
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2191091   0.1431547   0.2950636
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.2777778   0.0704135   0.4851421
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1869159   0.1345715   0.2392603
6 months    ki0047075b-MAL-ED     PERU         1                    NA                0.1452877   0.0807383   0.2098372
6 months    ki0047075b-MAL-ED     PERU         0                    NA                0.2654111   0.1956823   0.3351398
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.5869231   0.5234000   0.6504462
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4241752   0.3500739   0.4982766
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1908246   0.1525470   0.2291021
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2750261   0.2019197   0.3481324
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                0.3717951   0.2328454   0.5107449
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                0.3560308   0.2932606   0.4188009
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2422462   0.2334888   0.2510037
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2823892   0.2676274   0.2971511
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2450549   0.2289413   0.2611685
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2903444   0.2580010   0.3226879
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4620112   0.3701458   0.5538767
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4562934   0.3597113   0.5528755
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.5882353   0.3537610   0.8227096
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4057971   0.3387537   0.4728406
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.2142857   0.0619658   0.3666056
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.2160804   0.1587713   0.2733895
24 months   ki0047075b-MAL-ED     PERU         1                    NA                0.3642251   0.2612703   0.4671799
24 months   ki0047075b-MAL-ED     PERU         0                    NA                0.3617080   0.2726636   0.4507524
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4421652   0.3910011   0.4933293
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4829275   0.3917403   0.5741147
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                0.4867656   0.3112225   0.6623087
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                0.4822721   0.4031320   0.5614121
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4922174   0.4779482   0.5064867
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4825391   0.4583386   0.5067395
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3946325   0.3750713   0.4141938
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4116615   0.3732316   0.4500914


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1688312   0.1204189   0.2172434
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                0.1631579   0.1104782   0.2158376
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                0.1132813   0.0743812   0.1521813
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.3166335   0.3090239   0.3242430
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3089961   0.2722361   0.3457561
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1829787   0.1334386   0.2325189
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.1939655   0.1429760   0.2449551
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                0.2156134   0.1663773   0.2648495
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2106227   0.1763897   0.2448557
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2508093   0.2426385   0.2589801
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2545198   0.2394884   0.2695513
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4641148   0.3963405   0.5318891
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.4196429   0.3548715   0.4844143
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.2158590   0.1622206   0.2694975
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                0.3585859   0.2916158   0.4255559
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4520833   0.4075129   0.4966538
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.4867725   0.4153250   0.5582200
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4907516   0.4775997   0.5039035
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.3991375   0.3806098   0.4176653


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2597658   0.7062458   2.2471070
Birth       ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 0.4457143   0.2001014   0.9928030
Birth       ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 1.1652031   0.5758579   2.3576967
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0014427   1.0005279   1.0023583
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9740222   0.8838672   1.0733731
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.4037411   0.8192746   2.4051630
6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 0.6728972   0.3031666   1.4935372
6 months    ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 1.8267961   1.0897406   3.0623656
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7227101   0.5940583   0.8792233
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4412509   1.0324429   2.0119314
6 months    ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 0.9575994   0.6331296   1.4483553
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1657115   1.1017215   1.2334182
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1848138   1.0481054   1.3393536
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.9876241   0.7434215   1.3120435
24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.6898551   0.4480893   1.0620652
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 1.0083752   0.4721996   2.1533703
24 months   ki0047075b-MAL-ED     PERU         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 0.9930891   0.6860977   1.4374426
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0921880   0.8756619   1.3622547
24 months   ki1148112-LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                 0.9907687   0.6666651   1.4724374
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9803373   0.9296519   1.0337860
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0431514   0.9448377   1.1516950


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0195699   -0.0275192    0.0666591
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.1701754   -0.3959039    0.0555530
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0082710   -0.0376044    0.0541465
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001218    0.0000528    0.0001908
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0013511   -0.0067353    0.0040332
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0268893   -0.0209914    0.0747700
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0838123   -0.2811128    0.1134882
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0703256    0.0145649    0.1260864
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0681059   -0.1075419   -0.0286698
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0197982   -0.0018750    0.0414713
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0151775   -0.1417053    0.1113504
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0085630    0.0052691    0.0118570
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0094649    0.0020659    0.0168640
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0021036   -0.0587133    0.0629206
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1685924   -0.3940445    0.0568596
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0015733   -0.1410968    0.1442434
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0056393   -0.0844369    0.0731584
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0099181   -0.0158535    0.0356898
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0000069   -0.1596267    0.1596405
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0014658   -0.0070525    0.0041208
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0045050   -0.0038599    0.0128699


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1159142   -0.2106944    0.3544137
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -1.0430108   -3.0048977   -0.0421971
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.0730132   -0.4335668    0.4005829
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003848    0.0001664    0.0006030
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0043724   -0.0219285    0.0128821
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1469531   -0.1564576    0.3707603
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.4320988   -1.9096862    0.2951450
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.3261655    0.0224971    0.5354971
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1312714   -0.2114059   -0.0564379
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0939982   -0.0142062    0.1906584
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0425595   -0.4652662    0.2582028
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0341415    0.0208900    0.0472137
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0371874    0.0078024    0.0657022
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0045326   -0.1355373    0.1273246
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.4017522   -1.0618527    0.0470176
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0072886   -0.9318486    0.4898793
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0157264   -0.2611101    0.1819111
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0219388   -0.0367724    0.0773252
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0000142   -0.3880965    0.2796095
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0029869   -0.0144363    0.0083332
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0112868   -0.0098482    0.0319794

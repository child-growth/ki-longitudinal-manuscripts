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

agecat      studyid                    country                        predfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       26     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      142     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       13     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      170     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        5     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       22     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        1     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      142     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        5     170
Birth       ki0047075b-MAL-ED          PERU                           1                   0      104     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     256
Birth       ki0047075b-MAL-ED          PERU                           0                   0      146     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      207     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      113     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     119
Birth       ki1000109-EE               PAKISTAN                       1                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13791   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1305   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3439   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      547   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      574     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       45     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      132     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       16     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       15     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        3     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      208     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       28     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     235
6 months    ki0047075b-MAL-ED          PERU                           1                   0      110     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     269
6 months    ki0047075b-MAL-ED          PERU                           0                   0      149     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        7     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      233     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      228     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     244
6 months    ki1000109-EE               PAKISTAN                       1                   0      153     372
6 months    ki1000109-EE               PAKISTAN                       1                   1       65     372
6 months    ki1000109-EE               PAKISTAN                       0                   0      125     372
6 months    ki1000109-EE               PAKISTAN                       0                   1       29     372
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      393     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      133     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     546
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    12596   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      627   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3082   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      377   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3186    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      146    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      837    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       90    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       94     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       90     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      139     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       13     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        4     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       24     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        5     227
24 months   ki0047075b-MAL-ED          PERU                           1                   0       80     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     198
24 months   ki0047075b-MAL-ED          PERU                           0                   0      105     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      199     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      142     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     212
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      324     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       36     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      103     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       17     480
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5691    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      986    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1526    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      339    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3010    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      279    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      772    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      113    4174


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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/685ac754-45f8-4374-8925-819df15452a5/19ffbb1e-b193-4734-afd0-1a2eb36f5d59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/685ac754-45f8-4374-8925-819df15452a5/19ffbb1e-b193-4734-afd0-1a2eb36f5d59/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/685ac754-45f8-4374-8925-819df15452a5/19ffbb1e-b193-4734-afd0-1a2eb36f5d59/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/685ac754-45f8-4374-8925-819df15452a5/19ffbb1e-b193-4734-afd0-1a2eb36f5d59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0967270   0.0921809   0.1012731
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0978418   0.0931995   0.1024841
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0725671   0.0490820   0.0960523
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1060324   0.0417852   0.1702796
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3074952   0.2468793   0.3681111
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1857190   0.1240537   0.2473844
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0272277   0.0113435   0.0431120
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0633803   0.0232695   0.1034910
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0522130   0.0483881   0.0560380
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0854791   0.0759071   0.0950511
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0469712   0.0387735   0.0551690
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0827275   0.0639568   0.1014982
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1607143   0.0925334   0.2288952
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0721649   0.0205468   0.1237831
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1007162   0.0696394   0.1317929
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1459799   0.0836181   0.2083417
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1531009   0.1438591   0.1623427
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1626481   0.1444606   0.1808356
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0881083   0.0766798   0.0995368
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1111584   0.0887603   0.1335564


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0970548   0.0924831   0.1016266
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0795306   0.0569401   0.1021211
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0366300   0.0208588   0.0524012
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0601846   0.0563303   0.0640390
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0554121   0.0477101   0.0631140
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1196172   0.0755162   0.1637183
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1104167   0.0823500   0.1384833
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1551159   0.1463315   0.1639003
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0939147   0.0835386   0.1042909


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0115249   1.0057822   1.0173004
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4611626   0.7341172   2.9082497
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.6039737   0.4108533   0.8878698
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.3277849   0.9843161   5.5049211
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6371222   1.4437215   1.8564308
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7612380   1.3389210   2.3167604
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4490263   0.1954795   1.0314363
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4494184   0.8550456   2.4569610
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0623587   0.9445233   1.1948947
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.2616104   0.9967624   1.5968306


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003278    0.0001675    0.0004881
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0069635   -0.0063181    0.0202451
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0548070   -0.0913132   -0.0183008
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0094023   -0.0018963    0.0207010
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0079716    0.0057540    0.0101892
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0084408    0.0041402    0.0127415
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0410971   -0.0812377   -0.0009564
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0097005   -0.0079051    0.0273061
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0020150   -0.0021537    0.0061836
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0058064    0.0005286    0.0110842


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0033775    0.0017456    0.0050068
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0875573   -0.0911555    0.2370000
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2168959   -0.3707925   -0.0802771
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2566832   -0.0967984    0.4962429
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1324523    0.0964921    0.1669812
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1523283    0.0716056    0.2260323
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3435714   -0.7049407   -0.0587959
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0878535   -0.0846836    0.2329457
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0129901   -0.0141694    0.0394222
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0618263    0.0037960    0.1164763

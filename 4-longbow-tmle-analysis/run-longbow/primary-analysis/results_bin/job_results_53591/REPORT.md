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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        predfeed6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       58     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       10     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      102     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       24     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0       50      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        2      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        4      37
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0      37
Birth       ki0047075b-MAL-ED          INDIA                          0                 0       28      37
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        5      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        3      23
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0       19      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        1      23
Birth       ki0047075b-MAL-ED          PERU                           1                 0       71     208
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     208
Birth       ki0047075b-MAL-ED          PERU                           0                 0      132     208
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       80      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        9      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      104     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     105
Birth       ki1000109-EE               PAKISTAN                       1                 0       20      28
Birth       ki1000109-EE               PAKISTAN                       1                 1        4      28
Birth       ki1000109-EE               PAKISTAN                       0                 0        3      28
Birth       ki1000109-EE               PAKISTAN                       0                 1        1      28
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 0      309     522
Birth       ki1113344-GMS-Nepal        NEPAL                          1                 1       81     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 0      111     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 1       21     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7437   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      955   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2112   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      240   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0     1626    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1      176    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      375    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1       47    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       80     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      143     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       29     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       11     218
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     218
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      191     218
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       16     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       12     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      209     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     225
6 months    ki0047075b-MAL-ED          PERU                           1                 0       92     271
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                 0      179     271
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     232
6 months    ki1000109-EE               PAKISTAN                       1                 0       39      48
6 months    ki1000109-EE               PAKISTAN                       1                 1        4      48
6 months    ki1000109-EE               PAKISTAN                       0                 0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                 1        0      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      370     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       36     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      127     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14     547
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     6962    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      663    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2066    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      191    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3164    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      163    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      870    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       69     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        7     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      116     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      142     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       11     209
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     209
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      174     209
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       12     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      202     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     219
24 months   ki0047075b-MAL-ED          PERU                           1                 0       66     201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        2     201
24 months   ki0047075b-MAL-ED          PERU                           0                 0      131     201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      212     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      197     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     202
24 months   ki1000109-EE               PAKISTAN                       1                 0       17      23
24 months   ki1000109-EE               PAKISTAN                       1                 1        3      23
24 months   ki1000109-EE               PAKISTAN                       0                 0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                 1        0      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      294     469
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       61     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       85     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       29     469
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     3046    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      863    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0      909    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      249    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2663    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      615    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      704    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      202    4184


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
![](/tmp/c93fe2e4-dcf7-4480-8d8f-4facbb8003b3/580f5217-273c-4544-a556-2690dbf6b16f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c93fe2e4-dcf7-4480-8d8f-4facbb8003b3/580f5217-273c-4544-a556-2690dbf6b16f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c93fe2e4-dcf7-4480-8d8f-4facbb8003b3/580f5217-273c-4544-a556-2690dbf6b16f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c93fe2e4-dcf7-4480-8d8f-4facbb8003b3/580f5217-273c-4544-a556-2690dbf6b16f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1408854   0.0539972   0.2277736
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1960024   0.1252212   0.2667835
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2078734   0.1675014   0.2482454
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1561699   0.0932806   0.2190593
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1111921   0.1047979   0.1175864
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1110269   0.1042310   0.1178229
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0976566   0.0806416   0.1146715
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1094747   0.0721877   0.1467616
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0884378   0.0606759   0.1161997
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0944348   0.0440648   0.1448048
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0870435   0.0797726   0.0943144
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0844492   0.0721948   0.0967036
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0501326   0.0399494   0.0603159
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0788314   0.0602713   0.0973915
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0921053   0.0269330   0.1572776
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1007752   0.0487006   0.1528498
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1724034   0.1330164   0.2117904
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2518966   0.1697594   0.3340337
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2202696   0.2046743   0.2358649
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2164680   0.1876998   0.2452362
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1908330   0.1754214   0.2062446
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2129976   0.1785218   0.2474734


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1752577   0.1216204   0.2288951
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1954023   0.1613549   0.2294497
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1112249   0.1049045   0.1175452
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1002698   0.0846581   0.1158815
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0914077   0.0672348   0.1155805
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0864198   0.0802086   0.0926309
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0563743   0.0475411   0.0652074
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0975610   0.0568436   0.1382784
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1918977   0.1562203   0.2275751
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2194592   0.2057462   0.2331723
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1952677   0.1809764   0.2095589


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.3912181   0.6793612   2.848982
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 0.7512743   0.4801275   1.175548
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9985144   0.9666988   1.031377
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1210169   0.7673501   1.637687
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0678104   0.5740765   1.986179
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9701953   0.8192215   1.148992
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5724570   1.1535638   2.143463
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0941307   0.4555621   2.627791
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4610882   0.9803966   2.177465
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9827412   0.8458227   1.141824
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1161466   0.9351143   1.332226


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0343723   -0.0393607   0.1081053
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0124711   -0.0314463   0.0065041
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0000327   -0.0007576   0.0008231
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0026132   -0.0050860   0.0103124
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0029699   -0.0117637   0.0177035
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0006237   -0.0039139   0.0026664
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0062416    0.0015208   0.0109624
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0054557   -0.0470421   0.0579535
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0194943   -0.0025634   0.0415520
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008104   -0.0082329   0.0066122
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044347   -0.0033393   0.0122087


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1961243   -0.3541239   0.5227792
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0638227   -0.1651551   0.0286969
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0002943   -0.0068373   0.0073754
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0260619   -0.0537002   0.0997862
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0324905   -0.1427323   0.1808453
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0072176   -0.0459757   0.0301044
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1107178    0.0201953   0.1928771
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0559211   -0.6686320   0.4658588
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1015868   -0.0199571   0.2086469
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0036925   -0.0380915   0.0295666
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0227108   -0.0177476   0.0615609

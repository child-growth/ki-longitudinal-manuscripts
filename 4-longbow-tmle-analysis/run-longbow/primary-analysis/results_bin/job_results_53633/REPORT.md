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

agecat      studyid                    country                        predfeed6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      118     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        8     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       52      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      57
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        4      37
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0      37
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       33      37
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3      23
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       19      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1      23
Birth       ki0047075b-MAL-ED          PERU                           1                  0       72     208
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     208
Birth       ki0047075b-MAL-ED          PERU                           0                  0      136     208
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       89      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     105
Birth       ki1000109-EE               PAKISTAN                       1                  0       24      28
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      28
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      28
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      28
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      371     522
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       19     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      129     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1        3     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8220   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      172   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2314   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1783    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      412    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       83     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      146     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       11     218
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      202     218
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       12     225
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      213     225
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     225
6 months    ki0047075b-MAL-ED          PERU                           1                  0       92     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           0                  0      179     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      227     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      231     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     232
6 months    ki1000109-EE               PAKISTAN                       1                  0       42      48
6 months    ki1000109-EE               PAKISTAN                       1                  1        1      48
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      48
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      399     547
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      141     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     547
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     7512    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      113    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2232    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       25    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3308    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      937    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       11    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      129     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       24     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      144     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       11     209
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      196     209
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       12     219
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      207     219
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     219
24 months   ki0047075b-MAL-ED          PERU                           1                  0       67     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      132     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      213     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      201     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     202
24 months   ki1000109-EE               PAKISTAN                       1                  0       20      23
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      23
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      23
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      349     469
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        6     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      105     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        9     469
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     3752    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      157    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1120    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       38    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3198    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       80    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      880    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       26    4184


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
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
![](/tmp/3f6184a3-2e3b-44e4-bf4a-98d2f66a9e86/40c69ecf-7f4f-4344-979a-488ddcb9067e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f6184a3-2e3b-44e4-bf4a-98d2f66a9e86/40c69ecf-7f4f-4344-979a-488ddcb9067e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f6184a3-2e3b-44e4-bf4a-98d2f66a9e86/40c69ecf-7f4f-4344-979a-488ddcb9067e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f6184a3-2e3b-44e4-bf4a-98d2f66a9e86/40c69ecf-7f4f-4344-979a-488ddcb9067e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0204997   0.0172505   0.0237489
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0162333   0.0096899   0.0227767
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0106055   0.0056793   0.0155316
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0235173   0.0039121   0.0431225
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0148404   0.0119404   0.0177403
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0110775   0.0060833   0.0160717
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057772   0.0020800   0.0094744
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0117865   0.0057002   0.0178729
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0169014   0.0034782   0.0303247
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0789474   0.0293943   0.1285004
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0402015   0.0320149   0.0483881
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0327591   0.0226688   0.0428494
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0245156   0.0181713   0.0308599
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0285862   0.0173203   0.0398521


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0195458   0.0166489   0.0224427
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0130396   0.0073461   0.0187330
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0139648   0.0114567   0.0164729
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0070175   0.0038738   0.0101612
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0319829   0.0160416   0.0479243
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0384843   0.0318086   0.0451600
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0253346   0.0198022   0.0308670


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7918782   0.5122353    1.224186
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.2174708   0.8528399    5.765650
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7464429   0.4554177    1.223442
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0401732   0.8918645    4.666972
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.6710523   1.6973880   12.854297
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8148721   0.5619321    1.181667
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1660441   0.7238720    1.878314


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009539   -0.0025736   0.0006657
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024341   -0.0017728   0.0066410
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008756   -0.0022334   0.0004823
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012403   -0.0003442   0.0028249
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0150815    0.0023717   0.0277913
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0017172   -0.0047331   0.0012987
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0008190   -0.0019988   0.0036369


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0488056   -0.1357533   0.0314858
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1866701   -0.1574493   0.4284799
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0626990   -0.1647337   0.0303971
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1767449   -0.1135559   0.3913651
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.4715493    0.0254393   0.7134502
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0446213   -0.1236151   0.0288190
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0323292   -0.0862212   0.1379409

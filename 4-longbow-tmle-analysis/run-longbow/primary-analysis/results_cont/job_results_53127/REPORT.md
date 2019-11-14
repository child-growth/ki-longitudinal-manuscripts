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

**Outcome Variable:** whz

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

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 69     208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                139     208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  7      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 55      62
Birth       ki0047075b-MAL-ED          INDIA                          1                  4      40
Birth       ki0047075b-MAL-ED          INDIA                          0                 36      40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 24      25
Birth       ki0047075b-MAL-ED          PERU                           1                 57     218
Birth       ki0047075b-MAL-ED          PERU                           0                161     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2     104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                102     104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111     111
Birth       ki1000109-EE               PAKISTAN                       1                  2       6
Birth       ki1000109-EE               PAKISTAN                       0                  4       6
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396     491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95     491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8205   10491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2286   10491
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1714    2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                414    2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 17     233
6 months    ki0047075b-MAL-ED          INDIA                          0                216     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                227     235
6 months    ki0047075b-MAL-ED          PERU                           1                 72     272
6 months    ki0047075b-MAL-ED          PERU                           0                200     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6559    8516
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1957    8516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3252    4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                936    4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 17     224
24 months   ki0047075b-MAL-ED          INDIA                          0                207     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                219     227
24 months   ki0047075b-MAL-ED          PERU                           1                 53     201
24 months   ki0047075b-MAL-ED          PERU                           0                148     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362     445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3297    4283
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                986    4283
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3144    4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                891    4035


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/ed14c154-03a0-4730-9f5f-0fb0f97c62c9/91fa950c-c4a7-41aa-a24d-8db0c8400ff9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed14c154-03a0-4730-9f5f-0fb0f97c62c9/91fa950c-c4a7-41aa-a24d-8db0c8400ff9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ed14c154-03a0-4730-9f5f-0fb0f97c62c9/91fa950c-c4a7-41aa-a24d-8db0c8400ff9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9121076   -1.1531154   -0.6710998
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.9659334   -1.1600085   -0.7718582
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.1488806   -0.0951403    0.3929016
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.1159928   -0.2629591    0.0309734
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0976455   -1.2066328   -0.9886582
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1534242   -1.3528072   -0.9540412
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7664453   -0.7923002   -0.7405904
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7372433   -0.7819380   -0.6925486
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.6890498   -0.7449692   -0.6331305
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.7566455   -0.8907332   -0.6225577
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1474926   -0.3733904    0.0784052
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1266164   -0.2869957    0.0337628
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.5151233    1.0909331    1.9393135
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.8921438    0.7147769    1.0695106
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0574289   -0.5409738    0.4261160
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7501237   -0.8816572   -0.6185902
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1298532   -0.0040807    0.2637870
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.3115848    1.0733738    1.5497958
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 0.9592435    0.8190263    1.0994606
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.5676612   -0.6685357   -0.4667867
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.7054370   -0.8953494   -0.5155245
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.3751622    0.0355730    0.7147514
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                 0.3962321    0.2695466    0.5229175
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.5999250   -0.6291033   -0.5707467
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5972894   -0.6458825   -0.5486964
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.3460466   -0.3920625   -0.3000307
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.5666518   -0.6450112   -0.4882925
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9656830   -1.1606416   -0.7707243
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7570398   -0.9138265   -0.6002531
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4474878   -0.1602370    1.0552126
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4588826    0.2368231    0.6809422
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.7425609   -1.1196549   -0.3654668
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9791201   -1.1014889   -0.8567512
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.3659361   -0.4823082   -0.2495640
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0131727   -0.2071248    0.1807794
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.1621893    0.0164530    0.3079257
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0649118   -1.1635365   -0.9662870
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.3971502   -1.6443073   -1.1499932
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.1292288   -0.4441072    0.1856497
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -0.0634584   -0.2244336    0.0975168
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3504950   -1.3894446   -1.3115454
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2901551   -1.3578606   -1.2224495
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.2293020   -1.2709226   -1.1876813
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.2469282   -1.3282051   -1.1656513


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9474038   -1.0929246   -0.8018831
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7602278   -0.7829387   -0.7375169
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1361806   -0.2655204   -0.0068407
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7164664   -0.8440835   -0.5888492
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1146454   -0.0170405    0.2463313
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0551961    0.9331945    1.1771976
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5508093    0.4191033    0.6825154
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.5994135   -0.6250748   -0.5737521
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9587723   -1.0752995   -0.8422452
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3741410   -0.4879554   -0.2603265
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3365001   -1.3704041   -1.3025961
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0538258   -0.3747178    0.2670663
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.2648735   -0.5503941    0.0206471
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0557787   -0.2741684    0.1626109
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0292020   -0.0216794    0.0800834
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0675956   -0.2086664    0.0734751
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0208762   -0.2556630    0.2974153
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.6229796   -1.0823474   -0.1636117
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.6926948   -1.1922328   -0.1931569
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.4467282   -0.2208600    1.1143163
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.3523414   -0.6288160   -0.0758667
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1377758   -0.3530458    0.0774943
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                  0.0210698   -0.3415019    0.3836416
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0026356   -0.0526103    0.0578814
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2206052   -0.3105929   -0.1306176
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.2086432   -0.0433314    0.4606177
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0113949   -0.6365517    0.6593414
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.2365592   -0.6330104    0.1598920
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2328139   -0.2861187    0.7517465
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.1753621   -0.0679542    0.4186784
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.3322384   -0.5985798   -0.0658971
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.0657703   -0.2903618    0.4219024
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0603399   -0.0172663    0.1379461
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0176262   -0.1070670    0.0718145


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0352963   -0.2515894    0.1809969
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.1947063   -0.4135804    0.0241678
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0109289   -0.0530487    0.0311910
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0062175   -0.0048651    0.0173001
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0128487   -0.0408887    0.0151914
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0113120   -0.1743702    0.1969943
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.5434008   -0.9544759   -0.1323257
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.6590375   -1.1268751   -0.1911999
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.4315204   -0.2134249    1.0764657
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.2563887   -0.4611883   -0.0515892
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0324463   -0.0751842    0.0102915
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0173378   -0.2851821    0.3198577
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0005115   -0.0121729    0.0131960
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0499551   -0.0720382   -0.0278719
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1454943   -0.0255838    0.3165723
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0117430   -0.5734704    0.5969564
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.2162115   -0.5841744    0.1517515
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.2246090   -0.2760665    0.7252846
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.1336205   -0.0475955    0.3148364
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0587137   -0.1095582   -0.0078692
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0521635   -0.2445686    0.3488957
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0139949   -0.0038491    0.0318389
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0051069   -0.0249062    0.0146923

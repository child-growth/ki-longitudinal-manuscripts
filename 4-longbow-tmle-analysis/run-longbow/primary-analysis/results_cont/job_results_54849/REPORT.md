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

agecat      studyid                    country                        predfeed36    n_cell      n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  -----  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 69    208  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                139    208  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  7     62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 55     62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1                  4     40  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0                 36     40  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1     25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                 24     25  whz              
Birth       ki0047075b-MAL-ED          PERU                           1                 57    218  whz              
Birth       ki0047075b-MAL-ED          PERU                           0                161    218  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2    104  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                102    104  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111  whz              
Birth       ki1000109-EE               PAKISTAN                       1                  2      6  whz              
Birth       ki1000109-EE               PAKISTAN                       0                  4      6  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6746   8619  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1873   8619  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1714   2128  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                414   2128  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81    240  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159    240  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25    209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184    209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1                 17    233  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0                216    233  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8    235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0                227    235  whz              
6 months    ki0047075b-MAL-ED          PERU                           1                 72    272  whz              
6 months    ki0047075b-MAL-ED          PERU                           0                200    272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    250  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247    250  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5    243  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238    243  whz              
6 months    ki1000109-EE               PAKISTAN                       1                  4      9  whz              
6 months    ki1000109-EE               PAKISTAN                       0                  5      9  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272  whz              
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6576   8535  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959   8535  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3252   4188  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                936   4188  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69    212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143    212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20    169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149    169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1                 17    224  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0                207    224  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8    227  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0                219    227  whz              
24 months   ki0047075b-MAL-ED          PERU                           1                 53    201  whz              
24 months   ki0047075b-MAL-ED          PERU                           0                148    201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3    235  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232    235  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    213  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209    213  whz              
24 months   ki1000109-EE               PAKISTAN                       1                  0      3  whz              
24 months   ki1000109-EE               PAKISTAN                       0                  3      3  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184  whz              
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3320   4317  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                997   4317  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3144   4035  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                891   4035  whz              


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
![](/tmp/548a89ed-267f-4ccc-8f68-663ee8fb2d5b/760a12c4-e191-4092-86d1-05102be32fd0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/548a89ed-267f-4ccc-8f68-663ee8fb2d5b/760a12c4-e191-4092-86d1-05102be32fd0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/548a89ed-267f-4ccc-8f68-663ee8fb2d5b/760a12c4-e191-4092-86d1-05102be32fd0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9053615   -1.1329529   -0.6777700
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.9470536   -1.1363851   -0.7577220
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.3457143   -1.2397629    0.5483343
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4981818    0.1725808    0.8237829
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.1485697   -0.0912359    0.3883753
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.1108531   -0.2575513    0.0358451
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0989484   -1.2073361   -0.9905608
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1451407   -1.3486804   -0.9416010
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7978911   -0.8248656   -0.7709167
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7580398   -0.8107257   -0.7053539
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.6889663   -0.7448530   -0.6330797
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.7539556   -0.8896155   -0.6182957
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.2017409   -0.4300663    0.0265845
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.0977802   -0.2634495    0.0678891
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.4786217    1.0589002    1.8983431
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.9060887    0.7287322    1.0834452
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.2800231   -0.7490925    0.1890462
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7554236   -0.8868505   -0.6239968
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3168750   -0.9708901    0.3371401
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.1292144   -0.0046984    0.2631272
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.3143132    1.0731888    1.5554376
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 0.9595168    0.8188363    1.1001972
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.7950000    1.1425391    2.4474609
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5246709    0.3926689    0.6566728
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.5689298   -0.6696391   -0.4682204
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.7790994   -0.9662392   -0.5919596
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.3469939    0.0154618    0.6785259
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                 0.3947974    0.2679526    0.5216423
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.5996880   -0.6289096   -0.5704663
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5929014   -0.6422225   -0.5435803
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.3420152   -0.3880055   -0.2960249
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.5673727   -0.6469021   -0.4878432
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9350673   -1.1359779   -0.7341567
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7685766   -0.9259193   -0.6112340
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4314629   -0.1291603    0.9920861
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.4658952    0.2443721    0.6874183
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.8872449   -1.2697129   -0.5047769
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9782476   -1.1008344   -0.8556608
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.5987500   -1.1044659   -0.0930341
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.3643379   -0.4810145   -0.2476613
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0128273   -0.1780983    0.2037530
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.1310894   -0.0216981    0.2838768
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0687021   -1.1670440   -0.9703602
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.3631804   -1.6164796   -1.1098812
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.1566532   -0.4707711    0.1574646
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -0.0615497   -0.2225968    0.0994974
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3458121   -1.3844999   -1.3071243
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2976919   -1.3649259   -1.2304580
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.2298450   -1.2719544   -1.1877355
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.2464276   -1.3312982   -1.1615571


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1140284   -0.0176364    0.2456931
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5508093    0.4191033    0.6825154
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3725991   -0.4867052   -0.2584930
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0416921   -0.3416581    0.2582739
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.8438961   -0.1075969    1.7953891
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.2594228   -0.5410895    0.0222439
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0461923   -0.2668721    0.1744876
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0398514   -0.0190625    0.0987653
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0649893   -0.2073420    0.0773634
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1039607   -0.1861804    0.3941018
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.5725330   -1.0286659   -0.1164001
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.4754005   -0.9632051    0.0124041
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.4460894   -0.2214946    1.1136734
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.3547964   -0.6341727   -0.0754202
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -1.2703291   -1.9360090   -0.6046493
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.2101696   -0.4234857    0.0031465
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                  0.0478036   -0.3075769    0.4031841
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0067866   -0.0494158    0.0629889
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2253575   -0.3159307   -0.1347842
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1664906   -0.0938079    0.4267892
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0344323   -0.5695229    0.6383875
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0910027   -0.4926112    0.3106057
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2344121   -0.2845889    0.7534131
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.1182620   -0.1271267    0.3636508
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.2944783   -0.5662445   -0.0227122
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.0951035   -0.2603461    0.4505531
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0481202   -0.0291973    0.1254376
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0165827   -0.1094744    0.0763091


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0427155   -0.2456361    0.1602052
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.7486175   -0.0981055    1.5953405
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.1943954   -0.4091227    0.0203320
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0096259   -0.0511154    0.0318635
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0086604   -0.0041013    0.0214220
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0129321   -0.0407206    0.0148563
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0662825   -0.1269490    0.2595140
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.5065443   -0.9142485   -0.0988402
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.4361679   -0.8898705    0.0175348
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.4309034   -0.2140376    1.0758444
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.2631490   -0.4706008   -0.0556972
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2441907   -1.8936261   -0.5947552
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0311778   -0.0739002    0.0115447
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0455061   -0.2490765    0.3400888
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0001678   -0.0127032    0.0130387
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0539865   -0.0758976   -0.0320754
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1157748   -0.0626380    0.2941877
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0311604   -0.5072800    0.5696008
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0708801   -0.4445179    0.3027576
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.2261509   -0.2745910    0.7268928
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0983708   -0.0837206    0.2804623
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0549234   -0.1059298   -0.0039170
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0795880   -0.2166408    0.3758167
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0105886   -0.0073335    0.0285107
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0045640   -0.0247179    0.0155900

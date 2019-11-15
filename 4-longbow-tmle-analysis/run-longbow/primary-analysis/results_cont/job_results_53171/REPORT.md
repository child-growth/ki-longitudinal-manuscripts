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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 72     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                149     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 57      65
Birth       ki0047075b-MAL-ED          INDIA                          1                  4      42
Birth       ki0047075b-MAL-ED          INDIA                          0                 38      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25      26
Birth       ki0047075b-MAL-ED          PERU                           1                 58     223
Birth       ki0047075b-MAL-ED          PERU                           0                165     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       ki1000109-EE               PAKISTAN                       1                  3       7
Birth       ki1000109-EE               PAKISTAN                       0                  4       7
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8334   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2347   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1999    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                518    2517
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6593    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3253    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                932    4185
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3334    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1000    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3157    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                892    4049


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
![](/tmp/bb37c80f-d3b5-4d41-97cf-3d5dbb13c8cc/8fbd3dc5-7ebc-463b-8448-74fcef34940c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bb37c80f-d3b5-4d41-97cf-3d5dbb13c8cc/8fbd3dc5-7ebc-463b-8448-74fcef34940c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bb37c80f-d3b5-4d41-97cf-3d5dbb13c8cc/8fbd3dc5-7ebc-463b-8448-74fcef34940c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1601895   -1.3700567   -0.9503223
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0887396   -1.2628995   -0.9145797
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.9563517   -1.1371068   -0.7755966
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8717983   -1.0079816   -0.7356150
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0019376   -1.0981035   -0.9057716
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.0679521   -1.2674713   -0.8684329
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.5733368   -1.6013313   -1.5453424
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.5867414   -1.6317030   -1.5417798
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.5030937   -1.5564321   -1.4497552
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.5948757   -1.7204722   -1.4692792
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1872754   -1.3859651   -0.9885858
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.2144886   -1.3634338   -1.0655434
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1478480   -0.3594265    0.6551225
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0316452   -0.1179984    0.1812888
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.2319663   -1.9767054   -0.4872271
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1989172   -1.3177641   -1.0800703
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5702349   -0.6852437   -0.4552262
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.3535762   -1.5589187   -1.1482338
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3338641   -1.4621227   -1.2056055
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.2869173   -1.3738945   -1.1999401
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.5182937   -1.7100054   -1.3265820
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -1.6725340   -1.9457677   -1.3993002
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                -1.6278954   -1.7589715   -1.4968193
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3106015   -1.3425353   -1.2786676
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.3346866   -1.3891859   -1.2801874
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.3119182   -1.3532946   -1.2705418
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.4728324   -1.5652245   -1.3804404
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -2.0865858   -2.3508206   -1.8223511
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.9047317   -2.0428090   -1.7666543
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0040111   -0.5662873    0.5743095
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0049136   -0.1776082    0.1874355
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -2.2209674   -2.7324158   -1.7095190
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.8619323   -1.9917737   -1.7320909
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.3095434   -1.4315531   -1.1875337
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.8127733   -2.0485425   -1.5770041
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.7422531   -1.8846736   -1.5998327
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8739329   -1.9672694   -1.7805963
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.9233820   -2.1553351   -1.6914289
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -2.0486669   -2.3499680   -1.7473659
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -1.9513075   -2.1099804   -1.7926347
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.9965781   -2.0383139   -1.9548422
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.0473655   -2.1220914   -1.9726395
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7826185   -1.8254551   -1.7397820
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.8230713   -1.9017734   -1.7443693


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.5762700   -1.6018685   -1.5506716
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5621418   -0.6752179   -0.4490658
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3737037   -1.4970489   -1.2503585
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3152982   -1.3444394   -1.2861570
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.3082379   -1.4282426   -1.1882331
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0071989   -2.0453355   -1.9690623
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7922845   -1.8313538   -1.7532153


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0714499   -0.2027164    0.3456162
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.0845534   -0.1184679    0.2875747
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0660145   -0.2812216    0.1491926
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0134046   -0.0617312    0.0349221
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0917820   -0.2272297    0.0436657
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0272132   -0.2758599    0.2214335
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1162028   -0.6465234    0.4141178
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0330491   -0.7218342    0.7879324
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.2377349   -0.8463250    0.3708551
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0197121   -0.2223411    0.2617653
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.2313764   -0.4416562   -0.0210965
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                  0.0446385   -0.2549344    0.3442114
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0240852   -0.0830934    0.0349231
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.1609142   -0.2607400   -0.0610885
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1818542   -0.1169334    0.4806418
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.0009026   -0.6026033    0.6044085
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.3590351   -0.1689422    0.8870125
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0370434   -0.7104558    0.6363691
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0705201   -0.2060618    0.3471021
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0494491   -0.2976242    0.1987260
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.0973594   -0.2439822    0.4387010
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0507874   -0.1320228    0.0304480
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0404528   -0.1257889    0.0448833


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0799633   -0.1072085    0.2671351
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0650512   -0.0855213    0.2156238
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0280244   -0.0707316    0.0146828
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0029332   -0.0135434    0.0076770
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0203787   -0.0488178    0.0080604
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0199884   -0.1867065    0.1467297
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1002722   -0.5742323    0.3736878
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0263869   -0.6831038    0.7358775
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.2296418   -0.8175399    0.3582562
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0304849   -0.1488831    0.2098529
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0468461   -0.0893900   -0.0043023
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0329384   -0.2142688    0.2801455
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0046967   -0.0182130    0.0088196
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0395704   -0.0616960   -0.0174449
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1081896   -0.0942085    0.3105877
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0021033   -0.5412211    0.5454277
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.3303424   -0.1603994    0.8210843
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0357379   -0.6854184    0.6139426
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0603023   -0.1444074    0.2650120
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0091389   -0.0546775    0.0363997
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0835347   -0.1976324    0.3647017
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0106208   -0.0292959    0.0080542
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0096660   -0.0283579    0.0090258

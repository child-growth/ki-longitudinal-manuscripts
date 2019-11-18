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

agecat      studyid                    country                        predfeed36    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 72     221  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                149     221  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  8      65  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 57      65  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                  4      42  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                 38      42  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                 58     223  haz              
Birth       ki0047075b-MAL-ED          PERU                           0                165     223  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2     105  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103     105  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119  haz              
Birth       ki1000109-EE               PAKISTAN                       1                  3       7  haz              
Birth       ki1000109-EE               PAKISTAN                       0                  4       7  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8334   10681  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2347   10681  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1999    2517  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                518    2517  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159     240  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                 17     233  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0                216     233  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0                227     235  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                 72     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           0                200     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     250  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247     250  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243  haz              
6 months    ki1000109-EE               PAKISTAN                       1                  4       9  haz              
6 months    ki1000109-EE               PAKISTAN                       0                  5       9  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6593    8552  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959    8552  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3253    4185  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                932    4185  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                 17     224  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0                207     224  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0                219     227  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                 53     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           0                148     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     235  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232     235  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213  haz              
24 months   ki1000109-EE               PAKISTAN                       1                  0       3  haz              
24 months   ki1000109-EE               PAKISTAN                       0                  3       3  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3334    4334  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1000    4334  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3157    4049  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                892    4049  haz              


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
![](/tmp/893a5fb5-4cf9-43e1-ab24-f89496c050ad/7ccaf866-a7fe-4c19-8bc0-13d4494f09c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/893a5fb5-4cf9-43e1-ab24-f89496c050ad/7ccaf866-a7fe-4c19-8bc0-13d4494f09c8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/893a5fb5-4cf9-43e1-ab24-f89496c050ad/7ccaf866-a7fe-4c19-8bc0-13d4494f09c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1120603   -1.3201316   -0.9039890
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0869598   -1.2615276   -0.9123921
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.9772725   -1.1631078   -0.7914371
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8712048   -1.0063670   -0.7360426
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0050089   -1.1011161   -0.9089017
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1205800   -1.3218422   -0.9193178
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.5732880   -1.6012763   -1.5452998
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.5858312   -1.6308116   -1.5408508
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.5041522   -1.5576176   -1.4506868
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.5872969   -1.7134195   -1.4611743
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1975513   -1.3939765   -1.0011261
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.2116243   -1.3598278   -1.0634208
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1395484   -0.4098192    0.6889159
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0310878   -0.1198284    0.1820040
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.3204650   -1.9634003   -0.6775298
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1982394   -1.3173544   -1.0791244
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5702349   -0.6852437   -0.4552262
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.2736319   -1.4770989   -1.0701649
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3234899   -1.4520484   -1.1949314
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.2883726   -1.3752294   -1.2015157
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.5042371   -1.6978711   -1.3106030
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -1.6723373   -1.9485263   -1.3961483
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                -1.6263954   -1.7580455   -1.4947452
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3102511   -1.3421750   -1.2783272
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.3304369   -1.3848807   -1.2759931
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.3113694   -1.3529609   -1.2697779
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.4709051   -1.5651686   -1.3766416
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -2.1155166   -2.3772694   -1.8537639
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.9187520   -2.0553715   -1.7821325
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0605050   -0.5107797    0.6317897
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0052724   -0.1757035    0.1862483
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -2.3679209   -2.8611184   -1.8747234
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.8621119   -1.9920595   -1.7321643
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.3095434   -1.4315531   -1.1875337
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.8094046   -2.0435771   -1.5752322
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.7450376   -1.8872418   -1.6028334
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8720060   -1.9653876   -1.7786244
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.9329350   -2.1714725   -1.6943975
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -1.9472700   -2.2479688   -1.6465713
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -1.9499078   -2.1087414   -1.7910742
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.9967803   -2.0386509   -1.9549098
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.0454895   -2.1202773   -1.9707018
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7826886   -1.8255665   -1.7398107
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.8212110   -1.9003905   -1.7420315


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
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0251005   -0.2475717    0.2977726
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.1060676   -0.0990582    0.3111935
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1155711   -0.3318652    0.1007230
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0125432   -0.0609017    0.0358153
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0831447   -0.2190896    0.0528003
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0140730   -0.2604839    0.2323378
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1084606   -0.6799659    0.4630447
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.1222256   -0.5317601    0.7762113
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.2377349   -0.8463250    0.3708551
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0498581   -0.2912458    0.1915297
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.2158645   -0.4275034   -0.0042256
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                  0.0459419   -0.2563438    0.3482276
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0201858   -0.0792325    0.0388608
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.1595357   -0.2612175   -0.0578539
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1967646   -0.0962254    0.4897546
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0552326   -0.6575609    0.5470957
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.5058090   -0.0054967    1.0171147
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0370434   -0.7104558    0.6363691
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.0643670   -0.2102384    0.3389724
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0609290   -0.3164722    0.1946142
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0026378   -0.3440759    0.3388003
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0487092   -0.1302269    0.0328085
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0385224   -0.1243081    0.0472633


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0318341   -0.1520740    0.2157421
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0859720   -0.0669394    0.2388834
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0249531   -0.0674354    0.0175293
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0029820   -0.0135798    0.0076158
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0193202   -0.0479746    0.0093342
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0097126   -0.1740543    0.1546291
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0919726   -0.6046990    0.4207538
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1148856   -0.4924477    0.7222190
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.2296418   -0.8175399    0.3582562
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0494594   -0.2276627    0.1287438
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0453909   -0.0877794   -0.0030024
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                 0.0327417   -0.2188459    0.2843293
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0050471   -0.0185531    0.0084589
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0401193   -0.0625563   -0.0176823
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1371204   -0.0617342    0.3359751
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0543906   -0.5972749    0.4884937
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.4772959    0.0028859    0.9517059
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0357379   -0.6854184    0.6139426
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0569336   -0.1457383    0.2596056
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0110657   -0.0572498    0.0351184
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0178622   -0.2997999    0.2640755
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0104185   -0.0291918    0.0083547
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0095959   -0.0282487    0.0090568

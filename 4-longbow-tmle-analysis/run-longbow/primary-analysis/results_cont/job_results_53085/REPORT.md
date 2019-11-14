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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9859   12642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2783   12642
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6576    8533
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1957    8533
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3311    4300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                989    4300
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
![](/tmp/33d1a10d-27a3-4ba6-a21c-3388f9d1eb03/1dceeeac-3a42-485e-923f-5bdd7149d78e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/33d1a10d-27a3-4ba6-a21c-3388f9d1eb03/1dceeeac-3a42-485e-923f-5bdd7149d78e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/33d1a10d-27a3-4ba6-a21c-3388f9d1eb03/1dceeeac-3a42-485e-923f-5bdd7149d78e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.0823651   -1.2957047   -0.8690254
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0813506   -1.2561553   -0.9065458
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -1.0850000   -1.9106873   -0.2593127
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.6185965   -0.9082545   -0.3289385
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.9250723   -1.1090749   -0.7410697
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8683784   -1.0042258   -0.7325311
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0044108   -1.1004466   -0.9083749
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1392931   -1.3389752   -0.9396110
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.1730692   -1.2113040   -1.1348344
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.1855025   -1.2493028   -1.1217023
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.5046564   -1.5581376   -1.4511752
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.5889874   -1.7147614   -1.4632134
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1980543   -1.3951988   -1.0009099
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.2131681   -1.3614982   -1.0648381
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1373013   -0.4100619    0.6846646
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0345464   -0.1158388    0.1849316
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.3505805   -1.9816459   -0.7195151
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1979736   -1.3171297   -1.0788174
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3325000   -0.9301243    0.2651243
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5696916   -0.6848396   -0.4545437
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.3184130   -1.5240940   -1.1127320
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3296310   -1.4576117   -1.2016502
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.2240000   -1.8175386   -0.6304614
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3768487   -1.5024066   -1.2512909
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.2901584   -1.3771673   -1.2031496
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.5126961   -1.7004950   -1.3248973
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -1.6035346   -1.8822116   -1.3248576
6 months    ki1148112-LCNI-5      MALAWI                         0                    NA                -1.6213514   -1.7523107   -1.4903921
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3332635   -1.3652650   -1.3012620
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.3545278   -1.4094645   -1.2995912
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.3118498   -1.3531224   -1.2705773
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.4782108   -1.5700687   -1.3863530
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -2.1078438   -2.3552525   -1.8604351
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.9370303   -2.0726574   -1.8014032
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.0850171   -0.4575719    0.6276061
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.0073732   -0.1752097    0.1899560
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -2.0267118   -2.5274699   -1.5259537
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.8589118   -1.9888563   -1.7289673
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.2725000   -1.9347673   -0.6102327
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.3139954   -1.4361791   -1.1918118
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.6938393   -1.9246994   -1.4629793
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.7268427   -1.8674866   -1.5861989
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8719199   -1.9655229   -1.7783168
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.9323997   -2.1655763   -1.6992231
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                -2.0692935   -2.3718720   -1.7667149
24 months   ki1148112-LCNI-5      MALAWI                         0                    NA                -1.9515362   -2.1099260   -1.7931464
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -2.0041562   -2.0466645   -1.9616480
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.0479257   -2.1256785   -1.9701728
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7824895   -1.8255362   -1.7394428
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.8304070   -1.9118221   -1.7489918


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.1758733   -1.2120647   -1.1396819
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2077639   -1.3255735   -1.0899543
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2054220   -1.3250470   -1.0857970
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5616170   -0.6748246   -0.4484095
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3275368   -1.4361710   -1.2189025
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3737037   -1.4970489   -1.2503585
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI                         NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3384308   -1.3675493   -1.3093123
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8892634   -2.0152690   -1.7632578
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.3125330   -1.4327032   -1.1923629
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI                         NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0131814   -2.0513347   -1.9750280
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7922845   -1.8313538   -1.7532153


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0010145   -0.2752057    0.2772347
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4664035   -0.4086172    1.3414243
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.0566939   -0.1477260    0.2611137
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1348824   -0.3496706    0.0799058
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0124334   -0.0774687    0.0526020
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0843310   -0.2202876    0.0516257
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0151138   -0.2620754    0.2318479
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1027549   -0.6710231    0.4655132
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.1526069   -0.4890180    0.7942319
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.2371916   -0.8458080    0.3714248
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0112179   -0.2531100    0.2306741
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1528487   -0.7595223    0.4538248
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.2225377   -0.4289749   -0.0161005
6 months    ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI                         0                    1                 -0.0178168   -0.3238621    0.2882285
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0212644   -0.0811272    0.0385984
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.1663610   -0.2657917   -0.0669303
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1708135   -0.1094933    0.4511202
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0776440   -0.6535594    0.4982714
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.1678000   -0.3503858    0.6859859
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0414954   -0.7149394    0.6319486
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.0330034   -0.3028258    0.2368189
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0604798   -0.3102736    0.1893140
24 months   ki1148112-LCNI-5      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI                         0                    1                  0.1177573   -0.2246666    0.4601811
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0437694   -0.1302791    0.0427403
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.0479175   -0.1357049    0.0398699


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0021388   -0.1854160    0.1896936
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.4090000   -0.3592436    1.1772436
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0337719   -0.1191227    0.1866665
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0255512   -0.0679784    0.0168760
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0028041   -0.0171020    0.0114938
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0188160   -0.0474747    0.0098427
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0097095   -0.1749736    0.1555545
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0862806   -0.5979111    0.4253499
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1451585   -0.4508920    0.7412089
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.2291170   -0.8170404    0.3588063
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0091237   -0.1873365    0.1690890
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1497037   -0.7412167    0.4418093
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0436050   -0.0862791   -0.0009310
6 months    ki1148112-LCNI-5      MALAWI                         1                    NA                -0.0360610   -0.2910603    0.2189383
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0051673   -0.0188369    0.0085022
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0396388   -0.0617111   -0.0175666
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.1289287   -0.0612276    0.3190851
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0779165   -0.5954785    0.4396454
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1374484   -0.3441231    0.6190200
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0400330   -0.6897441    0.6096780
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0606383   -0.2611721    0.1398955
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0111519   -0.0568960    0.0345923
24 months   ki1148112-LCNI-5      MALAWI                         1                    NA                 0.1041612   -0.1783817    0.3867040
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0090252   -0.0289368    0.0108864
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0097950   -0.0284752    0.0088853

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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid                    country                        exclfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 31     208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                177     208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  4      62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 58      62
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      40
Birth       ki0047075b-MAL-ED          INDIA                          0                 39      40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25      25
Birth       ki0047075b-MAL-ED          PERU                           1                  5     218
Birth       ki0047075b-MAL-ED          PERU                           0                213     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103     104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111     111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       3
Birth       ki1000108-IRC              INDIA                          0                  3       3
Birth       ki1000109-EE               PAKISTAN                       1                  2       6
Birth       ki1000109-EE               PAKISTAN                       0                  4       6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                115     483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                368     483
Birth       ki1101329-Keneba           GAMBIA                         1                  4       9
Birth       ki1101329-Keneba           GAMBIA                         0                  5       9
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396     491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95     491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8189   10491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2302   10491
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1711    2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                417    2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9     233
6 months    ki0047075b-MAL-ED          INDIA                          0                224     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231     235
6 months    ki0047075b-MAL-ED          PERU                           1                  6     272
6 months    ki0047075b-MAL-ED          PERU                           0                266     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458     603
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6544    8516
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1972    8516
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3240    4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                948    4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9     224
24 months   ki0047075b-MAL-ED          INDIA                          0                215     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223     227
24 months   ki0047075b-MAL-ED          PERU                           1                  4     201
24 months   ki0047075b-MAL-ED          PERU                           0                197     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436     577
24 months   ki1101329-Keneba           GAMBIA                         1                424    1395
24 months   ki1101329-Keneba           GAMBIA                         0                971    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362     445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3288    4283
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                995    4283
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3132    4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                903    4035


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/193f6593-cebf-463e-bfbd-aaa51d0ea9eb/695a0e32-4d2e-4ae5-87f6-a07bcc2a1b1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/193f6593-cebf-463e-bfbd-aaa51d0ea9eb/695a0e32-4d2e-4ae5-87f6-a07bcc2a1b1e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/193f6593-cebf-463e-bfbd-aaa51d0ea9eb/695a0e32-4d2e-4ae5-87f6-a07bcc2a1b1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8518869   -1.1939189   -0.5098548
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.9593888   -1.1202766   -0.7985009
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.3504599   -1.5157274   -1.1851923
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.2929244   -1.3808242   -1.2050246
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0983977   -1.2063860   -0.9904094
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1472382   -1.3478135   -0.9466630
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7667902   -0.7927340   -0.7408464
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7338179   -0.7784892   -0.6891465
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6885790   -0.7446327   -0.6325253
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7549329   -0.8902789   -0.6195869
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3285144   -0.7119436    0.0549149
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1208448   -0.2589406    0.0172511
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.3294765    0.5956160    2.0633370
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.9479189    0.7783070    1.1175307
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.4772222   -1.2114182    0.2569738
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7260789   -0.8553450   -0.5968127
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.3608333    0.6586581    2.0630086
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 1.0483020    0.9246012    1.1720028
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0227966   -0.1374211    0.1830142
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.2718432   -0.3666025   -0.1770840
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0229425   -0.0826009    0.1284858
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.2873662   -0.3508454   -0.2238870
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5685324   -0.6685056   -0.4685592
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7251564   -0.9084364   -0.5418765
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.2840944   -0.0558411    0.6240300
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.4013273    0.2741869    0.5284677
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.6004913   -0.6297031   -0.5712795
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5936457   -0.6419782   -0.5453132
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3453242   -0.3909530   -0.2996955
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5598762   -0.6388855   -0.4808668
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9507092   -1.2737602   -0.6276583
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.8065743   -0.9391818   -0.6739667
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3453156   -0.4428115    1.1334427
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4640031    0.2492239    0.6787823
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9557907   -1.0760589   -0.8355225
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.8359057   -0.9961242   -0.6756872
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.9312511   -1.0267322   -0.8357700
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.7067307   -0.7996477   -0.6138136
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.8375556   -0.8999440   -0.7751673
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0628597   -1.1616157   -0.9641037
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.2820858   -1.5215703   -1.0426013
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1519008   -0.4617314    0.1579298
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0546419   -0.2184403    0.1091566
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3475470   -1.3865632   -1.3085308
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2977211   -1.3644360   -1.2310062
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2292581   -1.2715006   -1.1870157
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2458864   -1.3246698   -1.1671031


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9474038   -1.0929246   -0.8018831
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.2966874   -1.3774293   -1.2159454
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7602278   -0.7829387   -0.7375169
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1361806   -0.2655204   -0.0068407
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7164664   -0.8440835   -0.5888492
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0551961    0.9331945    1.1771976
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.2009461   -0.2562412   -0.1456509
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5994135   -0.6250748   -0.5737521
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9587723   -1.0752995   -0.8422452
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8945581   -0.9774087   -0.8117074
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3365001   -1.3704041   -1.3025961
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1075019   -0.4862122    0.2712083
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0575355   -0.1225943    0.2376652
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0488405   -0.2657034    0.1680224
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0329723   -0.0180588    0.0840035
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0663538   -0.2085429    0.0758352
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.2076696   -0.2014596    0.6167988
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.3815576   -1.1350452    0.3719300
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.2488566   -0.9943454    0.4966322
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.3125313   -1.0255194    0.4004567
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.2946398   -0.4784687   -0.1108109
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.3103087   -0.4325971   -0.1880202
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1566240   -0.3629630    0.0497150
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.1172329   -0.2466633    0.4811291
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0068456   -0.0481379    0.0618291
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2145519   -0.3048979   -0.1242060
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1441350   -0.2063460    0.4946159
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1186875   -0.6989391    0.9363141
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0742093   -0.3368752    0.4852938
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0953454   -0.2804612    0.0897703
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.1308250   -0.2409713   -0.0206786
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2192261   -0.4779357    0.0394835
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0972589   -0.2534710    0.4479889
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0498259   -0.0270199    0.1266718
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0166283   -0.1043248    0.0710683


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0955170   -0.4230176    0.2319836
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0537725   -0.0840107    0.1915557
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0101766   -0.0509009    0.0305476
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0065624   -0.0046524    0.0177771
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0133195   -0.0412362    0.0145972
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1923338   -0.1823247    0.5669924
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.3577540   -1.0737032    0.3581952
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2392442   -0.9559638    0.4774755
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.3056373   -1.0008221    0.3895476
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2218872   -0.3624856   -0.0812889
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.2238885   -0.3120737   -0.1357034
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0315751   -0.0727601    0.0096099
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.1084056   -0.1945348    0.4113460
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0010778   -0.0116409    0.0137966
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0506774   -0.0723179   -0.0290370
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1305206   -0.1813109    0.4423520
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1139152   -0.6528030    0.8806333
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0712277   -0.3233447    0.4658001
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0586524   -0.1988617    0.0815569
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0906648   -0.1676719   -0.0136576
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0607658   -0.1118731   -0.0096586
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0748356   -0.2177022    0.3673734
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0110469   -0.0068636    0.0289574
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0051508   -0.0256457    0.0153441

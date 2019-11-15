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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 32     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                189     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  5      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 60      65
Birth       ki0047075b-MAL-ED          INDIA                          1                  1      42
Birth       ki0047075b-MAL-ED          INDIA                          0                 41      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 26      26
Birth       ki0047075b-MAL-ED          PERU                           1                  5     223
Birth       ki0047075b-MAL-ED          PERU                           0                218     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                104     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  3       7
Birth       ki1000109-EE               PAKISTAN                       0                  4       7
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                119     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                371     490
Birth       ki1101329-Keneba           GAMBIA                         1                363    1253
Birth       ki1101329-Keneba           GAMBIA                         0                890    1253
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8322   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2359   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1994    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                523    2517
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6578    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3241    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                944    4185
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
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3325    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1009    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3145    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                904    4049


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/a6f7db10-aa8d-4adb-a552-11b0f47faf03/140d4274-2876-4135-b1c0-aacc3aac04c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a6f7db10-aa8d-4adb-a552-11b0f47faf03/140d4274-2876-4135-b1c0-aacc3aac04c8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a6f7db10-aa8d-4adb-a552-11b0f47faf03/140d4274-2876-4135-b1c0-aacc3aac04c8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1307749   -1.3972627   -0.8642871
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0779978   -1.2293008   -0.9266947
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -1.4240000   -2.4288338   -0.4191662
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.6136667   -0.8950902   -0.3322431
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -1.0080000   -1.6595862   -0.3564138
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.8886239   -1.0108291   -0.7664186
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.9335481   -1.0674598   -0.7996364
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.8636531   -0.9519397   -0.7753665
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0252816   -0.0930486    0.1436117
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0345505   -0.0464727    0.1155738
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0081156   -1.1043075   -0.9119236
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1726359   -1.3634899   -0.9817819
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5732338   -1.6012591   -1.5452086
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5892767   -1.6341966   -1.5443568
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.5023266   -1.5558150   -1.4488382
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5951925   -1.7222716   -1.4681133
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1936899   -1.5279443   -0.8594355
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2088801   -1.3360015   -1.0817588
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1710551   -0.6492198    0.9913300
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0336401   -0.1117429    0.1790232
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.9116667   -1.7458275   -0.0775058
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.2173884   -1.3368172   -1.0979596
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.4083333   -2.0844008   -0.7322659
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3211685   -1.4309807   -1.2113564
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.0958382   -1.2281645   -0.9635119
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.0877066   -1.1745017   -1.0009116
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.9065115   -0.9961653   -0.8168578
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.9453409   -1.0050804   -0.8856014
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2894464   -1.3762983   -1.2025946
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4820312   -1.6738515   -1.2902108
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7007233   -1.9999464   -1.4015002
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6253757   -1.7570037   -1.4937477
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3095872   -1.3415204   -1.2776540
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3360799   -1.3903800   -1.2817798
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3129382   -1.3543655   -1.2715108
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4739139   -1.5663759   -1.3814519
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -2.0983987   -2.5571105   -1.6396868
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.9710081   -2.1027538   -1.8392625
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.5241128   -0.2592484    1.3074741
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.0037883   -0.1767527    0.1691761
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.2088889   -2.9737293   -1.4440485
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8773023   -2.0042653   -1.7503393
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.7048055   -1.8663939   -1.5432171
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.5751487   -1.6713406   -1.4789568
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -1.5431899   -1.6324899   -1.4538900
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -1.6195661   -1.6857956   -1.5533366
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8740936   -1.9675235   -1.7806637
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.9151419   -2.1477134   -1.6825704
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0050095   -2.3060438   -1.7039753
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9483399   -2.1062314   -1.7904485
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.9979649   -2.0404973   -1.9554325
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0376215   -2.1149027   -1.9603404
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7789800   -1.8220893   -1.7358707
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8367629   -1.9174435   -1.7560823


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.8913004   -1.0115814   -0.7710195
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8769592   -0.9559693   -0.7979491
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                 0.0318156   -0.0392907    0.1029220
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5762700   -1.6018685   -1.5506716
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2072639   -1.3248889   -1.0896388
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2055794   -1.3250712   -1.0860876
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3230913   -1.4314947   -1.2146879
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.0855583   -1.1591292   -1.0119875
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3152982   -1.3444394   -1.2861570
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8906250   -2.0165920   -1.7646580
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.6022704   -1.6857342   -1.5188065
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -1.5981956   -1.6534947   -1.5428965
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0071989   -2.0453355   -1.9690623
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7922845   -1.8313538   -1.7532153


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0527771   -0.2541120    0.3596662
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.8103333   -0.2331657    1.8538323
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                  0.1193761   -0.5435709    0.7823232
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0698950   -0.0769181    0.2167081
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                  0.0092690   -0.1235117    0.1420497
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1645203   -0.3715309    0.0424903
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0160429   -0.0643840    0.0322982
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0928659   -0.2299657    0.0442340
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0151903   -0.3731248    0.3427443
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1374150   -0.9706596    0.6958296
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.3057217   -1.1483886    0.5369452
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0871648   -0.5977629    0.7720924
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0081316   -0.1488297    0.1650928
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.0388294   -0.1452261    0.0675673
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1925847   -0.4025891    0.0174197
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0753476   -0.2518709    0.4025661
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0264927   -0.0853567    0.0323713
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1609757   -0.2607839   -0.0611675
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1273906   -0.3504228    0.6052039
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.5279011   -1.3308539    0.2750517
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.3315866   -0.4437201    1.1068933
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.1296568   -0.0568190    0.3161325
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0763762   -0.1837323    0.0309800
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0410483   -0.2901982    0.2081015
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0566696   -0.2845908    0.3979300
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0396566   -0.1256503    0.0463370
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0577829   -0.1452027    0.0296368


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0505486   -0.2114474    0.3125447
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.7480000   -0.2166815    1.7126815
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1166996   -0.5296780    0.7630771
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0565889   -0.0551108    0.1682887
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0065341   -0.0882473    0.1013155
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0218464   -0.0652241    0.0215313
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0030362   -0.0136975    0.0076251
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0211458   -0.0500616    0.0077701
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0135740   -0.3320950    0.3049470
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1234793   -0.9127852    0.6658265
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2939127   -1.1040657    0.5162403
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0852420   -0.5825642    0.7530482
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0102799   -0.1089477    0.1295074
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0290706   -0.1053967    0.0472554
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0443170   -0.0866048   -0.0020292
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0611277   -0.2106983    0.3329537
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0057110   -0.0192574    0.0078354
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0385505   -0.0607875   -0.0163134
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1200025   -0.3048566    0.5448615
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.5179984   -1.2721317    0.2361348
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.3182639   -0.4259412    1.0624690
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1025351   -0.0387815    0.2438518
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0550057   -0.1302016    0.0201903
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0089782   -0.0548339    0.0368775
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0398772   -0.2433391    0.3230936
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0092340   -0.0291955    0.0107275
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0133045   -0.0324062    0.0057972

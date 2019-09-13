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
* month
* brthmon
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
* delta_month
* delta_brthmon
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 62     243
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                181     243
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 13     185
Birth       ki0047075b-MAL-ED          BRAZIL                         0                172     185
Birth       ki0047075b-MAL-ED          INDIA                          1                  5     198
Birth       ki0047075b-MAL-ED          INDIA                          0                193     198
Birth       ki0047075b-MAL-ED          NEPAL                          1                 11     172
Birth       ki0047075b-MAL-ED          NEPAL                          0                161     172
Birth       ki0047075b-MAL-ED          PERU                           1                 15     273
Birth       ki0047075b-MAL-ED          PERU                           0                258     273
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                236     236
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                120     121
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       4
Birth       ki1000108-IRC              INDIA                          0                  4       4
Birth       ki1000109-EE               PAKISTAN                       1                  1       2
Birth       ki1000109-EE               PAKISTAN                       0                  1       2
Birth       ki1101329-Keneba           GAMBIA                         1                363    1252
Birth       ki1101329-Keneba           GAMBIA                         0                889    1252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              11155   13946
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2791   13946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                580     727
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                147     727
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 63     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                177     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 17     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                192     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  7     236
6 months    ki0047075b-MAL-ED          INDIA                          0                229     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 15     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                221     236
6 months    ki0047075b-MAL-ED          PERU                           1                 16     271
6 months    ki0047075b-MAL-ED          PERU                           0                255     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                254     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                246     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    ki1000108-IRC              INDIA                          1                  0       4
6 months    ki1000108-IRC              INDIA                          0                  4       4
6 months    ki1000109-EE               PAKISTAN                       1                222     367
6 months    ki1000109-EE               PAKISTAN                       0                145     367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                140     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                442     582
6 months    ki1101329-Keneba           GAMBIA                         1                507    1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                423     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                103     526
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10685   13375
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2690   13375
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3243    4171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                928    4171
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 58     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                153     211
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 16     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                153     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  6     227
24 months   ki0047075b-MAL-ED          INDIA                          0                221     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 14     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                214     228
24 months   ki0047075b-MAL-ED          PERU                           1                 12     200
24 months   ki0047075b-MAL-ED          PERU                           0                188     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                238     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                213     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   ki1000108-IRC              INDIA                          1                  0       4
24 months   ki1000108-IRC              INDIA                          0                  4       4
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                148     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                428     576
24 months   ki1101329-Keneba           GAMBIA                         1                424    1394
24 months   ki1101329-Keneba           GAMBIA                         0                970    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                369     456
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     456
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5283    6693
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1410    6693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3140    4023
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                883    4023


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/3dcb3122-7975-4f6d-b706-459f5e052c76/7a23725a-40ce-4cea-a0e0-51a38d9dbd66/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3dcb3122-7975-4f6d-b706-459f5e052c76/7a23725a-40ce-4cea-a0e0-51a38d9dbd66/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3dcb3122-7975-4f6d-b706-459f5e052c76/7a23725a-40ce-4cea-a0e0-51a38d9dbd66/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1010659   -1.3387292   -0.8634025
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0219111   -1.1729139   -0.8709084
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.9278762   -1.6551786   -0.2005737
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.7308072   -0.8936948   -0.5679197
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -1.3600000   -2.6217741   -0.0982259
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -1.0148187   -1.1567569   -0.8728804
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1655886   -0.6780935    0.3469162
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.7413070   -0.9054540   -0.5771600
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -1.0997433   -1.8094826   -0.3900040
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9132860   -1.0282149   -0.7983572
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0326246   -0.0843263    0.1495755
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 0.0372340   -0.0433822    0.1178501
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5168953   -1.5402817   -1.4935089
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5829677   -1.6228320   -1.5431034
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.4894807   -1.5797199   -1.3992414
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.6379348   -1.8190306   -1.4568390
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.1928760   -1.4355054   -0.9502466
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.1974957   -1.3326235   -1.0623678
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4915712   -0.1595615    1.1427039
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0106124   -0.1352914    0.1565162
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.4169048   -2.5149859   -0.3188236
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.2143595   -1.3315781   -1.0971410
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3820336   -0.7598493   -0.0042179
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5797625   -0.6974492   -0.4620759
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.3690306   -1.8855619   -0.8524992
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3124411   -1.4224025   -1.2024798
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.3955595   -2.5512444   -2.2398747
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.9162508   -2.1076548   -1.7248468
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.0673178   -1.2054178   -0.9292178
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.0797215   -1.1688208   -0.9906222
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.9194604   -1.0099255   -0.8289953
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.9433463   -1.0031746   -0.8835180
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.2690402   -1.3556158   -1.1824647
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4948380   -1.6921637   -1.2975122
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7194521   -2.0168678   -1.4220364
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6224660   -1.7527850   -1.4921469
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.2762749   -1.3027786   -1.2497713
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.4468793   -1.4981213   -1.3956374
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3192342   -1.3612916   -1.2771769
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4972395   -1.5928550   -1.4016240
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -2.0399004   -2.3013122   -1.7784885
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.8963128   -2.0389735   -1.7536522
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0809311   -0.6426402    0.4807779
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0550426   -0.1202522    0.2303375
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.7416667   -3.6915069   -1.7918265
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8214932   -1.9468277   -1.6961587
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.2110146   -1.6548210   -0.7672082
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.2849597   -1.4103447   -1.1595748
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.8926406   -2.4809690   -1.3043122
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.7414870   -1.8650807   -1.6178933
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.6902510   -1.8473300   -1.5331720
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.5599325   -1.6564725   -1.4633925
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -1.5209758   -1.6118740   -1.4300776
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -1.6064125   -1.6740146   -1.5388104
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.8606539   -1.9532733   -1.7680344
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.9379649   -2.1693043   -1.7066255
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -2.0650332   -2.3350584   -1.7950081
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9510691   -2.1087163   -1.7934219
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.9897253   -2.0209575   -1.9584930
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0021779   -2.0622199   -1.9421360
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7607370   -1.8039067   -1.7175672
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8334233   -1.9152679   -1.7515786


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0414815   -1.1687478   -0.9142151
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.7350811   -0.8943683   -0.5757938
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0235354   -1.1657122   -0.8813585
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9231136   -1.0355489   -0.8106782
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                 0.0325958   -0.0384289    0.1036205
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5333680   -1.5553430   -1.5113930
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5200688   -1.6064560   -1.4336815
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.2006806   -1.3182323   -1.0831288
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2203672   -1.3387619   -1.1019726
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3173678   -1.4250795   -1.2096560
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.2009401   -2.3240630   -2.0778171
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.0807417   -1.1562973   -1.0051861
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.9355822   -0.9858754   -0.8852889
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3150063   -1.3948049   -1.2352077
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3121772   -1.3366725   -1.2876819
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3602409   -1.3996637   -1.3208182
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9363270   -2.0622735   -1.8103806
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8458150   -1.9718703   -1.7197596
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7430000   -1.8632412   -1.6227588
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.5859375   -1.6693304   -1.5025446
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -1.5825269   -1.6378553   -1.5271985
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.8785563   -1.9657607   -1.7913519
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9605820   -2.1001715   -1.8209925
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.9946153   -2.0246928   -1.9645378
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7766542   -1.8163158   -1.7369927


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0791547   -0.2030051    0.3613146
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1970689   -0.5461204    0.9402583
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                  0.3451813   -0.9245511    1.6149138
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 -0.5757184   -1.1139613   -0.0374755
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                  0.1864573   -0.5311419    0.9040565
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                  0.0046094   -0.1264010    0.1356197
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0660724   -0.1073507   -0.0247941
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1484541   -0.3356665    0.0387583
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0046197   -0.2828328    0.2735934
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.4809588   -1.1480750    0.1861574
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.2025452   -0.9017747    1.3068651
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1977289   -0.5934310    0.1979732
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                  0.0565894   -0.4715797    0.5847585
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.4793087    0.2329280    0.7256894
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.0124037   -0.1760860    0.1512786
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.0238859   -0.1314117    0.0836399
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2257977   -0.4414657   -0.0101297
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0969861   -0.2241591    0.4181313
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1706044   -0.2248501   -0.1163588
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1780053   -0.2805870   -0.0754235
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1435875   -0.1531868    0.4403618
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.1359738   -0.4511425    0.7230901
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.9201735   -0.0379002    1.8782471
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0739452   -0.5335215    0.3856312
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.1511536   -0.4499274    0.7522346
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.1303185   -0.0515438    0.3121808
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0854367   -0.1970081    0.0261346
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0773110   -0.3255217    0.1708997
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1139641   -0.1995360    0.4274641
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0124527   -0.0734172    0.0485118
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0726863   -0.1604892    0.0151166


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0595844   -0.1513996    0.2705683
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1927951   -0.5019841    0.8875744
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                 0.3364646   -0.9012269    1.5741562
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.5397021   -1.0484917   -0.0309124
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.1766298   -0.5132109    0.8664704
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0000287   -0.0932346    0.0931771
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0164727   -0.0253403   -0.0076052
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0305881   -0.0682913    0.0071151
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0078046   -0.2136253    0.1980162
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.4405505   -1.0570910    0.1759901
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.1965375   -0.8750361    1.2681112
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1790257   -0.5512815    0.1932301
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 0.0516628   -0.4465648    0.5498904
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1946195    0.0940512    0.2951877
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0134239   -0.1378625    0.1110147
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0161217   -0.0933400    0.0610965
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0459661   -0.0887314   -0.0032008
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0798565   -0.1899292    0.3496422
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0359023   -0.0473290   -0.0244755
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0410067   -0.0631194   -0.0188940
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1035734   -0.1127608    0.3199075
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.1227655   -0.4116674    0.6571983
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.8958517   -0.0370970    1.8288003
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0642047   -0.4995833    0.3711739
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.1496406   -0.4208155    0.7200967
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1043135   -0.0311147    0.2397418
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0615511   -0.1393155    0.0162132
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0179024   -0.0655245    0.0297197
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.1044512   -0.1515801    0.3604825
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0048900   -0.0176358    0.0078558
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0159173   -0.0349102    0.0030756

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

agecat      studyid                    country                        exclfeed36    n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 31    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                177    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  4     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 58     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  1     40
Birth       ki0047075b-MAL-ED          INDIA                          0                 39     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25     25
Birth       ki0047075b-MAL-ED          PERU                           1                  5    218
Birth       ki0047075b-MAL-ED          PERU                           0                213    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                111    111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      3
Birth       ki1000108-IRC              INDIA                          1                  0      3
Birth       ki1000108-IRC              INDIA                          0                  3      3
Birth       ki1000109-EE               PAKISTAN                       1                  2      6
Birth       ki1000109-EE               PAKISTAN                       0                  4      6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                115    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                368    483
Birth       ki1101329-Keneba           GAMBIA                         1                343   1192
Birth       ki1101329-Keneba           GAMBIA                         0                849   1192
Birth       ki1113344-GMS-Nepal        NEPAL                          1                396    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                 95    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               6736   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1883   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1711   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                417   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 30    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                210    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 12    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                197    209
6 months    ki0047075b-MAL-ED          INDIA                          1                  9    233
6 months    ki0047075b-MAL-ED          INDIA                          0                224    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  4    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                231    235
6 months    ki0047075b-MAL-ED          PERU                           1                  6    272
6 months    ki0047075b-MAL-ED          PERU                           0                266    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                249    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                239    243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9
6 months    ki1000108-IRC              INDIA                          1                  0      4
6 months    ki1000108-IRC              INDIA                          0                  4      4
6 months    ki1000109-EE               PAKISTAN                       1                  4      9
6 months    ki1000109-EE               PAKISTAN                       0                  5      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168    168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                145    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                458    603
6 months    ki1101329-Keneba           GAMBIA                         1                507   1790
6 months    ki1101329-Keneba           GAMBIA                         0               1283   1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105    527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47    272
6 months    ki1148112-LCNI-5           MALAWI                         0                225    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6561   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1974   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3240   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                948   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 25    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                187    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                158    169
24 months   ki0047075b-MAL-ED          INDIA                          1                  9    224
24 months   ki0047075b-MAL-ED          INDIA                          0                215    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                223    227
24 months   ki0047075b-MAL-ED          PERU                           1                  4    201
24 months   ki0047075b-MAL-ED          PERU                           0                197    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                234    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  3    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                210    213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  9      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      9
24 months   ki1000108-IRC              INDIA                          1                  0      4
24 months   ki1000108-IRC              INDIA                          0                  4      4
24 months   ki1000109-EE               PAKISTAN                       1                  0      3
24 months   ki1000109-EE               PAKISTAN                       0                  3      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                141    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                436    577
24 months   ki1101329-Keneba           GAMBIA                         1                424   1395
24 months   ki1101329-Keneba           GAMBIA                         0                971   1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                362    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83    445
24 months   ki1148112-LCNI-5           MALAWI                         1                 34    184
24 months   ki1148112-LCNI-5           MALAWI                         0                150    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3311   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1006   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3132   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                903   4035


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
![](/tmp/6576f77e-63ae-42e2-8aba-f70ad3118ae5/0ffd298d-bceb-406e-b62b-c0173b4d1efb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6576f77e-63ae-42e2-8aba-f70ad3118ae5/0ffd298d-bceb-406e-b62b-c0173b4d1efb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6576f77e-63ae-42e2-8aba-f70ad3118ae5/0ffd298d-bceb-406e-b62b-c0173b4d1efb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8331255   -1.1977075   -0.4685436
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.9582346   -1.1217306   -0.7947385
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.6820000    0.4886003    0.8753997
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0629108   -0.1888962    0.0630746
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -1.3267797   -1.4955512   -1.1580083
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                -1.2904639   -1.3786848   -1.2022430
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -1.2490656   -1.3647085   -1.1334228
Birth       ki1101329-Keneba      GAMBIA       0                    NA                -1.2854524   -1.3629474   -1.2079575
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0984370   -1.2071413   -0.9897327
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1777232   -1.3724836   -0.9829629
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7983603   -0.8254200   -0.7713006
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7560503   -0.8082138   -0.7038868
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6881647   -0.7442921   -0.6320373
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7581554   -0.8910150   -0.6252958
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.2564703   -0.6612382    0.1482976
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1255427   -0.2644567    0.0133713
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.5656094    0.9223862    2.2088325
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.9457359    0.7763244    1.1151475
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.4850000   -1.2185777    0.2485777
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7254799   -0.8547181   -0.5962418
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.2841667    0.5956438    1.9726896
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 1.0459085    0.9221243    1.1696927
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0020755   -0.1565427    0.1606936
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.2750539   -0.3701594   -0.1799485
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0066087   -0.0989083    0.1121257
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.2839061   -0.3473440   -0.2204681
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5685969   -0.6692779   -0.4679159
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7507744   -0.9392651   -0.5622837
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3407187    0.0141337    0.6673037
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3973763    0.2706791    0.5240736
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.5998231   -0.6290437   -0.5706025
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5980220   -0.6465826   -0.5494614
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3439452   -0.3898957   -0.2979947
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5570586   -0.6353800   -0.4787373
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.7770908   -1.0879602   -0.4662214
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.8128668   -0.9454262   -0.6803074
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.5839164   -0.2301808    1.3980137
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4681876    0.2541132    0.6822620
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -1.0300000   -1.4230980   -0.6369020
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9551163   -1.0754326   -0.8348000
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.7928568   -0.9546091   -0.6311045
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.9259480   -1.0214272   -0.8304688
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.7073162   -0.8011039   -0.6135285
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.8384309   -0.9006898   -0.7761720
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0677323   -1.1658803   -0.9695842
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3633680   -1.6117415   -1.1149946
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1764483   -0.4756874    0.1227907
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0511939   -0.2140926    0.1117049
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3455732   -1.3842716   -1.3068749
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3034445   -1.3694328   -1.2374562
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2291863   -1.2710876   -1.1872850
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2468713   -1.3257441   -1.1679985


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9480769   -1.0934921   -0.8026617
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0458257   -0.1696487    0.0779973
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -1.2966874   -1.3774293   -1.2159454
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                -1.2752643   -1.3442810   -1.2062476
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1085743   -1.2077878   -1.0093609
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7892308   -0.8133344   -0.7651272
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.7018985   -0.7560164   -0.6477806
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1354583   -0.2647102   -0.0062065
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7161910   -0.8437667   -0.5886153
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0511642    0.9291821    1.1731463
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.2009461   -0.2562412   -0.1456509
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6001075   -0.6890924   -0.5111227
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5995202   -0.6251579   -0.5738825
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3960017   -0.4356255   -0.3563778
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9581250   -1.0746982   -0.8415518
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8945581   -0.9774087   -0.8117074
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1236255   -1.2167712   -1.0304797
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3352235   -1.3688736   -1.3015735
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2344089   -1.2708428   -1.1979750


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1251090   -0.5248310    0.2746129
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.7449108   -0.9757262   -0.5140954
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                  0.0363158   -0.1481808    0.2208124
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 -0.0363868   -0.1642799    0.0915063
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0792862   -0.2913869    0.1328145
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0423100   -0.0162177    0.1008377
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0699907   -0.2099121    0.0699307
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1309275   -0.2972246    0.5590797
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.6198734   -1.2835912    0.0438443
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.2404799   -0.9853549    0.5043950
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2382581   -0.9378196    0.4613034
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.2771294   -0.4600098   -0.0942491
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.2905148   -0.4128831   -0.1681464
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1821775   -0.3960053    0.0316503
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0566576   -0.2936603    0.4069755
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0018010   -0.0535544    0.0571565
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2131134   -0.3030208   -0.1232060
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0357760   -0.3755654    0.3040134
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1157288   -0.9581934    0.7267358
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0748837   -0.3362149    0.4859823
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.1330912   -0.3197840    0.0536017
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.1311146   -0.2421586   -0.0200707
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2956358   -0.5625888   -0.0286827
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1252545   -0.2162405    0.4667494
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0421287   -0.0337582    0.1180156
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0176850   -0.1053520    0.0699819


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1149514   -0.4654581    0.2355553
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.7278257   -0.9533592   -0.5022921
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0300924   -0.1106626    0.1708474
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0261986   -0.1174513    0.0650541
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0101373   -0.0511748    0.0309002
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0091296   -0.0036919    0.0219511
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0137338   -0.0417194    0.0142518
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1210119   -0.2699791    0.5120030
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.5935320   -1.2214152    0.0343512
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.2311910   -0.9473188    0.4849368
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.2330025   -0.9150876    0.4490827
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2011661   -0.3410817   -0.0612506
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.2075548   -0.2955410   -0.1195685
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0315106   -0.0742142    0.0111930
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0517813   -0.2381187    0.3416813
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003029   -0.0124853    0.0130910
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0520564   -0.0740334   -0.0300795
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0422016   -0.3447791    0.2603759
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1212931   -0.9131643    0.6705780
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0718750   -0.3227110    0.4664610
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1017013   -0.2429349    0.0395324
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0900792   -0.1676688   -0.0124897
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0558932   -0.1071642   -0.0046222
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0993831   -0.1807842    0.3795504
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0103497   -0.0073160    0.0280154
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0052227   -0.0255330    0.0150877

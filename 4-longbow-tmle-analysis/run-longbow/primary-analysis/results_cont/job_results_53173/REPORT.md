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

**Intervention Variable:** exclfeed6

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

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                31     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               174     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                58      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      39
Birth       ki0047075b-MAL-ED          INDIA                          0                38      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                22      24
Birth       ki0047075b-MAL-ED          PERU                           1                 2     213
Birth       ki0047075b-MAL-ED          PERU                           0               211     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                91      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                38      42
Birth       ki1000109-EE               PAKISTAN                       0                 4      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               159     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               380     539
Birth       ki1101329-Keneba           GAMBIA                         1               485    1403
Birth       ki1101329-Keneba           GAMBIA                         0               918    1403
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10452   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2971   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2098    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               534    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                33     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               198     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 2     218
6 months    ki0047075b-MAL-ED          INDIA                          0               216     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 5     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     225
6 months    ki0047075b-MAL-ED          PERU                           1                 5     271
6 months    ki0047075b-MAL-ED          PERU                           0               266     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               463     604
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7628    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2273    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3316    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               956    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                31     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 2     209
24 months   ki0047075b-MAL-ED          INDIA                          0               207     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               214     219
24 months   ki0047075b-MAL-ED          PERU                           1                 3     201
24 months   ki0047075b-MAL-ED          PERU                           0               198     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3916    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1172    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3280    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               919    4199


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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/efe68820-ec67-4653-8710-8e28dc768f50/caae7313-039d-4236-8865-ed787f3fc468/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/efe68820-ec67-4653-8710-8e28dc768f50/caae7313-039d-4236-8865-ed787f3fc468/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/efe68820-ec67-4653-8710-8e28dc768f50/caae7313-039d-4236-8865-ed787f3fc468/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.0467925   -1.3677499   -0.7258351
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0373915   -1.1908611   -0.8839220
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.9256868   -1.0490210   -0.8023526
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.8735576   -0.9600938   -0.7870214
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0061415   -0.1019044    0.1141874
Birth       ki1101329-Keneba          GAMBIA       0                    NA                 0.0291717   -0.0503449    0.1086882
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0526390   -1.1497926   -0.9554853
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.0941922   -1.2688145   -0.9195698
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.5944469   -1.6192336   -1.5696601
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.5991743   -1.6384104   -1.5599381
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.5055088   -1.5576290   -1.4533885
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.6013205   -1.7294548   -1.4731862
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1197876   -1.4339658   -0.8056094
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.1939607   -1.3256921   -1.0622294
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0110750   -0.8458409    0.8236909
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0406001   -0.1046027    0.1858028
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4050000   -1.0737079    0.2637079
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5658106   -0.6826403   -0.4489809
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.8680000   -2.2794681   -1.4565319
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.3117701   -1.4224656   -1.2010745
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.1337781   -1.2681129   -0.9994434
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0955649   -1.1835227   -1.0076072
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8891727   -0.9793190   -0.7990265
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9492231   -1.0081268   -0.8903195
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.3090067   -1.3977996   -1.2202138
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.5002209   -1.6673025   -1.3331392
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.7824106   -2.0519123   -1.5129089
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6209297   -1.7518369   -1.4900225
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3072611   -1.3376546   -1.2768677
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3361209   -1.3854693   -1.2867725
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3107101   -1.3515522   -1.2698681
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.4842394   -1.5738520   -1.3946268
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.9192438   -2.3493491   -1.4891385
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9489543   -2.0835435   -1.8143652
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.4109249   -1.2691992    0.4473493
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0155955   -0.1570565    0.1882476
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.1950000   -1.7707330   -0.6192670
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.3216589   -1.4457846   -1.1975331
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6902137   -1.8470606   -1.5333668
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5693312   -1.6651118   -1.4735507
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5170417   -1.6004329   -1.4336506
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6233261   -1.6884332   -1.5582189
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.9069117   -2.0020415   -1.8117819
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8833570   -2.0773722   -1.6893419
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0715227   -2.3727642   -1.7702812
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9534213   -2.1117719   -1.7950707
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0018786   -2.0418788   -1.9618783
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0460104   -2.1153704   -1.9766504
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7773906   -1.8195445   -1.7352367
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8443474   -1.9249410   -1.7637538


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.0094010   -0.3470198    0.3658218
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0521292   -0.0833484    0.1876069
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.0230301   -0.1012684    0.1473287
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0415532   -0.2335042    0.1503977
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0047274   -0.0454231    0.0359683
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0958117   -0.2333646    0.0417411
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0741731   -0.4154289    0.2670827
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                  0.0516750   -0.7962745    0.8996245
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1608106   -0.8396474    0.5180262
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.5562299    0.1301320    0.9823279
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0382132   -0.1226025    0.1990290
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0600504   -0.1667736    0.0466728
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1912142   -0.3794047   -0.0030236
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.1614809   -0.1328874    0.4558493
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0288597   -0.0812313    0.0235118
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1735293   -0.2706771   -0.0763814
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0297105   -0.4790890    0.4196681
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                  0.4265205   -0.4508357    1.3038767
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1266589   -0.7156204    0.4623026
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1208824   -0.0599299    0.3016948
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1062843   -0.2083235   -0.0042451
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0235546   -0.1897628    0.2368721
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.1181014   -0.2239224    0.4601251
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0441318   -0.1206602    0.0323965
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0669568   -0.1532746    0.0193610


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0062319   -0.3106795    0.2982157
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0405848   -0.0601995    0.1413691
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.0065028   -0.0752536    0.0882592
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0114818   -0.0606591    0.0376954
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0010869   -0.0101117    0.0079379
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0218051   -0.0504725    0.0068624
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0702918   -0.3675836    0.2270001
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0586507   -0.7456351    0.8629366
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1572370   -0.8191102    0.5046361
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.5459674    0.1304259    0.9615089
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0420866   -0.0817146    0.1658879
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0439381   -0.1189087    0.0310326
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0450213   -0.0939223    0.0038797
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.1428150   -0.1020138    0.3876438
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0065647   -0.0185750    0.0054456
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0375202   -0.0590381   -0.0160023
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0383903   -0.4320180    0.3552373
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.4170393   -0.4102789    1.2443576
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1237671   -0.6980101    0.4504758
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0877915   -0.0504934    0.2260765
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0705876   -0.1385172   -0.0026579
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0066989   -0.0443505    0.0577483
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.1063904   -0.1769620    0.3897428
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0099217   -0.0276123    0.0077688
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0140859   -0.0321149    0.0039430

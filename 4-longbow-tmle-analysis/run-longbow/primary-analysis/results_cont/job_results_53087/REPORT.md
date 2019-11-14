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
Birth       ki1101329-Keneba           GAMBIA                         1                 6      12
Birth       ki1101329-Keneba           GAMBIA                         0                 6      12
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12302   15793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3491   15793
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7608    9877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2269    9877
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3887    5048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1161    5048
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
![](/tmp/d8a9bc80-a99e-45e2-8ede-2eb24add290e/41d6a3d8-c553-48b7-81a1-236678202f6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d8a9bc80-a99e-45e2-8ede-2eb24add290e/41d6a3d8-c553-48b7-81a1-236678202f6e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d8a9bc80-a99e-45e2-8ede-2eb24add290e/41d6a3d8-c553-48b7-81a1-236678202f6e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1951795   -1.5073682   -0.8829908
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.0415788   -1.1947979   -0.8883596
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.3791683   -1.4632120   -1.2951246
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4196640   -2.1447080   -0.6946200
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.9256726   -1.0567390   -0.7946062
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.8771898   -0.9635002   -0.7908794
Birth       ki1101329-Keneba          GAMBIA       1                    NA                -0.9616667   -1.9274750    0.0041417
Birth       ki1101329-Keneba          GAMBIA       0                    NA                -0.1016667   -2.3897981    2.1864648
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.0549429   -1.1521974   -0.9576884
Birth       ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.1243476   -1.2993875   -0.9493076
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.2123758   -1.2462908   -1.1784607
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.2284323   -1.2818559   -1.1750087
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.5056111   -1.5576790   -1.4535432
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.6085577   -1.7402083   -1.4769071
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.1559375   -1.4756172   -0.8362578
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.1942094   -1.3259061   -1.0625127
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.1955227   -0.6337799    1.0248253
6 months    ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0434215   -0.1023620    0.1892051
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.4050000   -1.0737079    0.2637079
6 months    ki0047075b-MAL-ED         NEPAL        0                    NA                -0.5652500   -0.6822261   -0.4482739
6 months    ki0047075b-MAL-ED         PERU         1                    NA                -1.9530000   -2.4531315   -1.4528685
6 months    ki0047075b-MAL-ED         PERU         0                    NA                -1.3147180   -1.4252939   -1.2041422
6 months    ki1000109-EE              PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.0875681   -1.2234842   -0.9516520
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.0918616   -1.1798332   -1.0038900
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.8922186   -0.9800080   -0.8044292
6 months    ki1101329-Keneba          GAMBIA       0                    NA                -0.9483803   -1.0074090   -0.8893516
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.3076328   -1.3964332   -1.2188325
6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.4830108   -1.6507647   -1.3152568
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                -1.7014647   -1.9989622   -1.4039671
6 months    ki1148112-LCNI-5          MALAWI       0                    NA                -1.6262866   -1.7577276   -1.4948455
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -1.3301768   -1.3605896   -1.2997641
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -1.3608966   -1.4103327   -1.3114605
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.3102223   -1.3512335   -1.2692111
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.4798260   -1.5721153   -1.3875367
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -1.8863720   -2.3016310   -1.4711131
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -1.9544809   -2.0882354   -1.8207263
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                 0.0706983   -0.7114477    0.8528442
24 months   ki0047075b-MAL-ED         BRAZIL       0                    NA                 0.0195305   -0.1530996    0.1921606
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -1.1950000   -1.7707330   -0.6192670
24 months   ki0047075b-MAL-ED         NEPAL        0                    NA                -1.3262150   -1.4505125   -1.2019174
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                -1.6997272   -1.8591223   -1.5403321
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -1.5681419   -1.6641789   -1.4721049
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -1.5170615   -1.6002189   -1.4339042
24 months   ki1101329-Keneba          GAMBIA       0                    NA                -1.6187756   -1.6835601   -1.5539911
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                -1.9083464   -2.0035433   -1.8131494
24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -1.8784015   -2.0724808   -1.6843221
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                -2.0214273   -2.3269995   -1.7158552
24 months   ki1148112-LCNI-5          MALAWI       0                    NA                -1.9493475   -2.1077943   -1.7909007
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -2.0057923   -2.0453718   -1.9662127
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -2.0584863   -2.1250608   -1.9919118
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -1.7758844   -1.8179992   -1.7337696
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -1.8442983   -1.9218545   -1.7667421


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       NA                   NA                -0.5316667   -1.7992053    0.7358720
Birth       ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.2156259   -1.2478377   -1.1834141
Birth       kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.1905988   -1.3103463   -1.0708514
6 months    ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         NEPAL        NA                   NA                -0.5616889   -0.6770008   -0.4463770
6 months    ki0047075b-MAL-ED         PERU         NA                   NA                -1.3264945   -1.4355111   -1.2174779
6 months    ki1000109-EE              PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -1.3370052   -1.3650190   -1.3089913
6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                -1.9581707   -2.0862906   -1.8300508
24 months   ki0047075b-MAL-ED         BRAZIL       NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED         NEPAL        NA                   NA                -1.3232192   -1.4452887   -1.2011496
24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                -2.0173019   -2.0536076   -1.9809962
24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH   0                    1                  0.1536007   -0.1947978    0.5019993
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0404957   -0.7393477    0.6583563
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.0484828   -0.0941387    0.1911042
Birth       ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA       0                    1                  0.8600000   -1.6236126    3.3436126
Birth       ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.0694046   -0.2625837    0.1237744
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0160565   -0.0693502    0.0372372
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1029466   -0.2438392    0.0379461
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0382719   -0.3840379    0.3074940
6 months    ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.1521011   -0.9943346    0.6901323
6 months    ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1602500   -0.8391120    0.5186120
6 months    ki0047075b-MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU         0                    1                  0.6382820    0.1260725    1.1504914
6 months    ki1000109-EE              PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE              PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH   0                    1                 -0.0042935   -0.1663096    0.1577226
6 months    ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA       0                    1                 -0.0561616   -0.1615403    0.0492170
6 months    ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL        0                    1                 -0.1753779   -0.3642260    0.0134701
6 months    ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5          MALAWI       0                    1                  0.0751781   -0.2507565    0.4011127
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0307198   -0.0832747    0.0218352
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.1696037   -0.2690896   -0.0701179
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH   0                    1                 -0.0681088   -0.5044936    0.3682759
24 months   ki0047075b-MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL       0                    1                 -0.0511678   -0.8521798    0.7498442
24 months   ki0047075b-MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL        0                    1                 -0.1312150   -0.7202127    0.4577828
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH   0                    1                  0.1315853   -0.0522950    0.3154656
24 months   ki1101329-Keneba          GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA       0                    1                 -0.1017141   -0.2034953    0.0000672
24 months   ki1113344-GMS-Nepal       NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL        0                    1                  0.0299449   -0.1842717    0.2441615
24 months   ki1148112-LCNI-5          MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5          MALAWI       0                    1                  0.0720798   -0.2726598    0.4168194
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    1                 -0.0526941   -0.1243592    0.0189711
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    1                 -0.0684139   -0.1522314    0.0154036


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   1                    NA                 0.1421551   -0.1543037    0.4386139
Birth       ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0145405   -0.0577897    0.0287087
Birth       ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0405705   -0.0677464    0.1488874
Birth       ki1101329-Keneba          GAMBIA       1                    NA                 0.4300000   -0.8375387    1.6975387
Birth       ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0091779   -0.0589707    0.0406150
Birth       kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0032502   -0.0150290    0.0085287
Birth       kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0217027   -0.0503367    0.0069313
6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0346614   -0.3376342    0.2683115
6 months    ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.1445019   -0.9430503    0.6540464
6 months    ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1566889   -0.8185866    0.5052088
6 months    ki0047075b-MAL-ED         PERU         1                    NA                 0.6265055    0.1269962    1.1260149
6 months    ki1000109-EE              PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                -0.0041234   -0.1284282    0.1201813
6 months    ki1101329-Keneba          GAMBIA       1                    NA                -0.0408921   -0.1139217    0.0321374
6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                -0.0463952   -0.0954210    0.0026306
6 months    ki1148112-LCNI-5          MALAWI       1                    NA                 0.0618691   -0.2101681    0.3339063
6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0068284   -0.0188831    0.0052264
6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0380081   -0.0596662   -0.0163499
24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                -0.0717987   -0.4510479    0.3074505
24 months   ki0047075b-MAL-ED         BRAZIL       1                    NA                -0.0635977   -0.8150486    0.6878532
24 months   ki0047075b-MAL-ED         NEPAL        1                    NA                -0.1282192   -0.7024979    0.4460595
24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                 0.0973050   -0.0434442    0.2380543
24 months   ki1101329-Keneba          GAMBIA       1                    NA                -0.0705678   -0.1383050   -0.0028306
24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                 0.0081336   -0.0433310    0.0595982
24 months   ki1148112-LCNI-5          MALAWI       1                    NA                 0.0562951   -0.2283075    0.3408976
24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                -0.0115096   -0.0279746    0.0049553
24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                -0.0155921   -0.0336684    0.0024841

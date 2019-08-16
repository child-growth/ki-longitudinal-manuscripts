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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 58     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                172     230
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 12     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                165     177
Birth       ki0047075b-MAL-ED          INDIA                          1                  5     195
Birth       ki0047075b-MAL-ED          INDIA                          0                190     195
Birth       ki0047075b-MAL-ED          NEPAL                          1                 11     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                156     167
Birth       ki0047075b-MAL-ED          PERU                           1                 15     266
Birth       ki0047075b-MAL-ED          PERU                           0                251     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                234     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                115     116
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       ki1000108-IRC              INDIA                          1                  0       3
Birth       ki1000108-IRC              INDIA                          0                  3       3
Birth       ki1000109-EE               PAKISTAN                       1                  0       1
Birth       ki1000109-EE               PAKISTAN                       0                  1       1
Birth       ki1101329-Keneba           GAMBIA                         1                345    1202
Birth       ki1101329-Keneba           GAMBIA                         0                857    1202
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9175   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2144   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                491     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                111     602
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
6 months    ki1000109-EE               PAKISTAN                       1                224     371
6 months    ki1000109-EE               PAKISTAN                       0                147     371
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              10654   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               2699   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3242    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                930    4172
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
24 months   ki1101329-Keneba           GAMBIA                         1                424    1395
24 months   ki1101329-Keneba           GAMBIA                         0                971    1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                368     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 87     455
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     184
24 months   ki1148112-LCNI-5           MALAWI                         0                150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               5266    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1406    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3127    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                882    4009


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
![](/tmp/3647f3ed-1716-4824-87d5-29d062b5c8c7/6362ce3c-e03c-419e-b53a-47e56fc5dbbb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3647f3ed-1716-4824-87d5-29d062b5c8c7/6362ce3c-e03c-419e-b53a-47e56fc5dbbb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3647f3ed-1716-4824-87d5-29d062b5c8c7/6362ce3c-e03c-419e-b53a-47e56fc5dbbb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8747534   -1.1333985   -0.6161083
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0134474   -1.1770179   -0.8498769
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3438228   -0.5137878    1.2014334
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.3802174    0.1968974    0.5635374
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.4840000   -1.1529255    0.1849255
Birth       ki0047075b-MAL-ED     INDIA        0                    NA                -1.0973684   -1.2418489   -0.9528879
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3716452   -0.7987240    0.0554336
Birth       ki0047075b-MAL-ED     NEPAL        0                    NA                -0.9484907   -1.0927066   -0.8042748
Birth       ki0047075b-MAL-ED     PERU         1                    NA                 0.2850871   -0.1133985    0.6835727
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0849814   -0.2017027    0.0317399
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 1.7716146    1.5935725    1.9496566
Birth       ki1101329-Keneba      GAMBIA       0                    NA                 1.6732551    1.5714888    1.7750214
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7360677   -0.7607783   -0.7113571
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7840178   -0.8313753   -0.7366602
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3766506   -0.4706643   -0.2826369
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4322083   -0.5981649   -0.2662517
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1472232   -0.3975875    0.1031412
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1469828   -0.3007602    0.0067947
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.1697813    0.6326273    1.7069353
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.9212653    0.7497807    1.0927500
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.6254762   -1.2926685    0.0417161
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7057787   -0.8330997   -0.5784578
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.2926616   -0.2338639    0.8191871
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                 0.1004229   -0.0355205    0.2363662
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.3434527    0.9289388    1.7579665
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 1.0391244    0.9114637    1.1667851
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.5231674   -0.6630528   -0.3832819
6 months    ki1000109-EE          PAKISTAN     0                    NA                -1.0381161   -1.2233828   -0.8528495
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0027679   -0.1581250    0.1636608
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.2806530   -0.3781386   -0.1831673
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0045788   -0.1026153    0.1117730
6 months    ki1101329-Keneba      GAMBIA       0                    NA                -0.2841361   -0.3476945   -0.2205778
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5689401   -0.6693906   -0.4684896
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.7289851   -0.9220512   -0.5359190
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.4060541    0.0570095    0.7550987
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3973976    0.2704211    0.5243742
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.5486432   -0.5722582   -0.5250283
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7260176   -0.7734323   -0.6786028
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3424972   -0.3899369   -0.2950575
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5639557   -0.6412182   -0.4866932
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8841121   -1.1215800   -0.6466442
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.7636846   -0.9054427   -0.6219266
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.6328525    0.1972709    1.0684341
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4339993    0.2171562    0.6508424
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.9983333   -1.3225137   -0.6741530
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9510407   -1.0692101   -0.8328714
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1356570   -0.6820225    0.4107085
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.3863069   -0.5031586   -0.2694551
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.1308580   -0.1686413    0.4303573
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.1301909    0.0057270    0.2546549
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.8002086   -0.9549849   -0.6454323
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                -0.9164463   -1.0137456   -0.8191470
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.7349465   -0.8274557   -0.6424372
24 months   ki1101329-Keneba      GAMBIA       0                    NA                -0.8256856   -0.8881738   -0.7631974
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0666626   -1.1654030   -0.9679222
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3204608   -1.5698352   -1.0710865
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1605995   -0.4965128    0.1753139
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0597268   -0.2224239    0.1029703
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3259880   -1.3566855   -1.2952904
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3185711   -1.3739459   -1.2631962
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2346573   -1.2726861   -1.1966285
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2611684   -1.3388371   -1.1834997


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9773043   -1.1153078   -0.8393008
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.3837288    0.2059602    0.5614974
Birth       ki0047075b-MAL-ED     INDIA        NA                   NA                -1.0816410   -1.2241126   -0.9391694
Birth       ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0602256   -0.1729666    0.0525155
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                 1.7015141    1.6127308    1.7902975
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7445605   -0.7677110   -0.7214100
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3861794   -0.4712311   -0.3011277
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1400243   -0.2696346   -0.0104140
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7033969   -0.8285284   -0.5782654
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0562362    0.9338834    1.1785889
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -0.7256065   -0.8395859   -0.6116270
6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                -0.2009677   -0.2562623   -0.1456731
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6007161   -0.6897580   -0.5116742
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3927574    0.2737700    0.5117448
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.5834618   -0.6054534   -0.5614701
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3973178   -0.4385298   -0.3561058
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8227962   -0.9454140   -0.7001785
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                 0.1302000    0.0113848    0.2490152
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                -0.8896181   -0.9727493   -0.8064868
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                -0.7973955   -0.8498696   -0.7449213
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1186923   -1.2105469   -1.0268377
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0771196   -0.2204715    0.0662323
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3246418   -1.3519597   -1.2973238
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2418558   -1.2769820   -1.2067296


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1386941   -0.4453974    0.1680093
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0363946   -0.8406566    0.9134458
Birth       ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA        0                    1                 -0.6133684   -1.2977192    0.0709824
Birth       ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL        0                    1                 -0.5768455   -1.0278798   -0.1258111
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.3700686   -0.7855900    0.0454529
Birth       ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 -0.0983595   -0.3037040    0.1069851
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0479501   -0.0975947    0.0016945
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0555577   -0.2383050    0.1271897
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0002404   -0.2943630    0.2948439
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.2485160   -0.8137519    0.3167200
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.0803026   -0.7595346    0.5989295
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                 -0.1922388   -0.7328655    0.3483880
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.3043283   -0.7385707    0.1299141
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 -0.5149488   -0.7477148   -0.2821828
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.2834209   -0.4701798   -0.0966620
6 months    ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 -0.2887150   -0.4124099   -0.1650200
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1600450   -0.3778894    0.0577994
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                 -0.0086565   -0.3801325    0.3628196
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.1773743   -0.2276569   -0.1270918
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2214586   -0.3105625   -0.1323546
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1204275   -0.1569864    0.3978414
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.1988532   -0.6844325    0.2867261
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.0472926   -0.2977536    0.3923389
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.2506498   -0.8098724    0.3085727
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                 -0.0006671   -0.3226247    0.3212905
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 -0.1162377   -0.2963061    0.0638307
24 months   ki1101329-Keneba      GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 -0.0907391   -0.2007685    0.0192902
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2537982   -0.5231929    0.0155965
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.1008727   -0.2732568    0.4750021
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0074169   -0.0546745    0.0695083
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0265111   -0.1108388    0.0578167


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1025510   -0.3331779    0.1280760
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0399060   -0.7895758    0.8693878
Birth       ki0047075b-MAL-ED     INDIA        1                    NA                -0.5976410   -1.2645839    0.0693018
Birth       ki0047075b-MAL-ED     NEPAL        1                    NA                -0.5410494   -0.9673802   -0.1147186
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.3453127   -0.7400467    0.0494214
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0701004   -0.2166884    0.0764876
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0084928   -0.0179806    0.0009950
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0095288   -0.0423845    0.0233269
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0071989   -0.2138499    0.2282476
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1980588   -0.7222667    0.3261491
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0779207   -0.7370084    0.5811670
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.1816164   -0.6915568    0.3283239
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.2872165   -0.6981020    0.1236690
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2024391   -0.2985148   -0.1063634
6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2111385   -0.3536083   -0.0686687
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.2055466   -0.2950960   -0.1159971
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0317760   -0.0743965    0.0108445
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -0.0132968   -0.3260286    0.2994351
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0348185   -0.0450286   -0.0246084
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0548207   -0.0754956   -0.0341458
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0613159   -0.1436187    0.2662505
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.1862253   -0.6237976    0.2513470
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.0460426   -0.2898850    0.3819701
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.2407904   -0.7708633    0.2892825
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -0.0006580   -0.3045009    0.3031849
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0894094   -0.2235981    0.0447792
24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0624490   -0.1391233    0.0142253
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0520297   -0.1036042   -0.0004552
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0834799   -0.2270948    0.3940546
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0013462   -0.0117250    0.0144174
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0071985   -0.0258170    0.0114200

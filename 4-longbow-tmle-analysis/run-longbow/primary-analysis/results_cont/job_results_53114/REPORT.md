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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            44     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             33     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          42     119
Birth       ki0047075b-MAL-ED          INDIA                          High             7      23
Birth       ki0047075b-MAL-ED          INDIA                          Low             13      23
Birth       ki0047075b-MAL-ED          INDIA                          Medium           3      23
Birth       ki0047075b-MAL-ED          NEPAL                          High             3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Low              3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           3       9
Birth       ki0047075b-MAL-ED          PERU                           High            84     190
Birth       ki0047075b-MAL-ED          PERU                           Low             56     190
Birth       ki0047075b-MAL-ED          PERU                           Medium          50     190
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           9      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             26      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           8      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           270    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            476    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         355    1101
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           161     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            185     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         186     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           277     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         201     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High           162     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            266     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         212     640
Birth       ki1119695-PROBIT           BELARUS                        High          2051   13364
Birth       ki1119695-PROBIT           BELARUS                        Low           5297   13364
Birth       ki1119695-PROBIT           BELARUS                        Medium        6016   13364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2091   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12573
Birth       ki1135781-COHORTS          GUATEMALA                      High           136     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low            311     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         271     718
Birth       ki1135781-COHORTS          INDIA                          High           507    1291
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          5654   21305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8510   21305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        7141   21305
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           510    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            913    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         900    2323
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95
6 months    ki0047075b-MAL-ED          PERU                           High           107     224
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           349    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            548    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         434    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            208     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         186     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High           137     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     563
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15208
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15208
6 months    ki1119695-PROBIT           BELARUS                        Medium        6738   15208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           569    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1433    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6264    8266
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         334     905
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4259   16048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6269   16048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5520   16048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1098    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1726    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1866    4690
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91
24 months   ki0047075b-MAL-ED          PERU                           High            77     164
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            198     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           113     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            218     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155     486
24 months   ki1119695-PROBIT           BELARUS                        High           620    3853
24 months   ki1119695-PROBIT           BELARUS                        Low           1489    3853
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            103     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         294     410
24 months   ki1135781-COHORTS          GUATEMALA                      High           178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low            465    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         359    1002
24 months   ki1135781-COHORTS          INDIA                          High           536    1370
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2039    8201
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3348    8201
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2814    8201
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1092    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1694    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1816    4602


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2d1fcb81-7a93-45b7-b02a-e329e64458b1/fbf73553-c876-48ba-a0d5-69354000d627/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2d1fcb81-7a93-45b7-b02a-e329e64458b1/fbf73553-c876-48ba-a0d5-69354000d627/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2d1fcb81-7a93-45b7-b02a-e329e64458b1/fbf73553-c876-48ba-a0d5-69354000d627/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6633788   -0.9798121   -0.3469456
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.3187504   -1.7572806   -0.8802203
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0187808   -1.3269534   -0.7106081
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0115489   -0.1553596    0.1784574
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0149597   -0.2771408    0.2472215
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0701320   -0.3520685    0.2118044
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6309772   -0.8347135   -0.4272409
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7360396   -0.9215161   -0.5505631
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6313302   -0.8272610   -0.4353995
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2869563   -1.4156361   -1.1582765
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.3198821   -1.4442548   -1.1955093
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.2969826   -1.4272932   -1.1666720
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2576550   -1.3853001   -1.1300099
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2911966   -1.4383369   -1.1440563
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2028664   -1.3608354   -1.0448975
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.2663025   -1.4309629   -1.1016420
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0040797   -1.1306919   -0.8774675
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1499431   -1.2918612   -1.0080250
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1209795   -1.3198134   -0.9221456
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1485141   -1.4015107   -0.8955174
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1425580   -1.3461223   -0.9389937
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5336639   -0.6228131   -0.4445148
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5006590   -0.5660333   -0.4352847
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5126988   -0.5422893   -0.4831083
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.1200067   -1.3321570   -0.9078564
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.9969624   -1.1480322   -0.8458926
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0841995   -1.2540894   -0.9143095
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -1.0015558   -1.0999392   -0.9031723
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9305087   -1.0360401   -0.8249773
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -1.0760249   -1.2012060   -0.9508439
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.7834936   -0.8630335   -0.7039538
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6159598   -0.7029972   -0.5289225
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.7051843   -0.7869100   -0.6234585
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7492185   -0.7793030   -0.7191341
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7520023   -0.7767291   -0.7272755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7499268   -0.7769740   -0.7228796
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.6686379   -0.7782717   -0.5590041
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.6847101   -0.7596807   -0.6097395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.6951241   -0.7820094   -0.6082389
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2235597   -0.4931488    0.0460294
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.5302546   -0.7800525   -0.2804567
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.2150432   -0.5590775    0.1289911
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6745450   -0.9539009   -0.3951890
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6440594   -0.9199366   -0.3681823
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9404525   -1.3001124   -0.5807925
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0965668   -0.1772163    0.3703500
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2476408   -0.6303376    0.1350559
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.2159258   -0.1502090    0.5820606
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.0776333    0.8864003    1.2688664
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.2834880    1.0071802    1.5597959
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 0.9217495    0.6629104    1.1805885
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5325251    0.1395120    0.9255383
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1249858   -0.2984269    0.5483985
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.3670362   -0.0271717    0.7612441
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4569888    0.2691752    0.6448024
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5027501    0.2493186    0.7561815
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.0788910    0.6125773    1.5452047
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6027757   -0.7602491   -0.4453023
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7099850   -0.8498894   -0.5700806
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6536868   -0.8324413   -0.4749324
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.9578835   -1.1800980   -0.7356690
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.9299785   -1.1125563   -0.7474007
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.1271578   -1.3267603   -0.9275553
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1265130   -0.2698363    0.0168102
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2907576   -0.4433736   -0.1381416
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.2186238   -0.3564693   -0.0807784
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0780839   -0.0437459    0.1999138
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0122020   -0.1592643    0.1348603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0071919   -0.1497026    0.1640864
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1310780    0.0039590    0.2581970
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0800094    0.0106405    0.1493784
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0360973   -0.0690030    0.1411976
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5433914   -0.7215001   -0.3652827
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6428385   -0.7763621   -0.5093148
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.5961089   -0.7451280   -0.4470898
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5709031    0.4938988    0.6479075
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5797312    0.5064806    0.6529819
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5774823    0.5133995    0.6415651
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3185873    0.2112259    0.4259486
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1952678    0.1214560    0.2690797
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3380248    0.3082575    0.3677921
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1656781   -0.0261955    0.3575516
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1557174    0.0473572    0.2640776
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1991592    0.0675137    0.3308047
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.6050864   -0.7010474   -0.5091253
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.6986927   -0.8051852   -0.5922003
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6600424   -0.7751749   -0.5449098
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2780889   -0.3515093   -0.2046684
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2812699   -0.3619976   -0.2005422
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.3070860   -0.3803215   -0.2338505
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.3785075    0.2490361    0.5079788
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.4893212    0.3699535    0.6086888
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.4526412    0.3249465    0.5803358
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5522581   -0.5892509   -0.5152652
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6285293   -0.6591047   -0.5979539
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5706360   -0.6024499   -0.5388222
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2627699   -0.3480426   -0.1774973
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.4468623   -0.5057246   -0.3879999
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.4044087   -0.4590675   -0.3497499
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8043302   -1.0602061   -0.5484544
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0526360   -1.3407209   -0.7645512
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.8585852   -1.1935674   -0.5236031
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.8986213   -1.1055814   -0.6916613
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.8739608   -1.1023899   -0.6455318
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0108012   -1.3267872   -0.6948152
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2737456   -0.5506299    0.0031388
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6825731   -0.9571533   -0.4079930
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5935222   -0.9849107   -0.2021337
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0392097   -0.1452899    0.2237093
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.3956040    0.1870387    0.6041694
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0675486   -0.1960182    0.3311154
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5940352    0.2483272    0.9397432
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3994937    0.0698500    0.7291374
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.1810293   -0.1135870    0.4756456
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1499904   -0.0308597    0.3308405
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0496363   -0.3171362    0.2178636
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.2068530   -0.1593533    0.5730592
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.7811876   -0.9132380   -0.6491373
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0398935   -1.1733311   -0.9064558
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8639841   -1.0204207   -0.7075476
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4981429   -0.6542106   -0.3420752
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8855508   -1.0363692   -0.7347324
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.5093044   -0.6802038   -0.3384049
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1730481   -1.3633248   -0.9827714
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0951718   -1.2269281   -0.9634155
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1558041   -1.3177977   -0.9938105
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7540985    0.6325251    0.8756719
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.7089668    0.5355770    0.8823567
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6413637    0.5360042    0.7467231
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.7183205   -1.2191706   -0.2174703
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2835190   -1.5213210   -1.0457171
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1418408   -1.2587073   -1.0249743
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.5219980   -0.6495447   -0.3944513
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2263421   -0.3126501   -0.1400341
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2819391   -0.3973554   -0.1665229
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4578085   -0.5405858   -0.3750311
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.8336104   -0.9256371   -0.7415837
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5669049   -0.6749405   -0.4588692
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5338313   -0.5950129   -0.4726497
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6565150   -0.7242595   -0.5887705
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6812264   -0.7491295   -0.6133234
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0108388   -0.1628995    0.1412219
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0788973   -0.2059688    0.0481742
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0500266   -0.1981444    0.0980913
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2866631   -1.3339296   -1.2393967
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2983308   -1.3358237   -1.2608378
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3189329   -1.3606669   -1.2771988
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1677506   -1.2402131   -1.0952881
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2558542   -1.3082031   -1.2035054
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.2234848   -1.2713886   -1.1755809


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9478151   -1.1432411   -0.7523892
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0145789   -0.1426994    0.1135416
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3060606   -0.0577506    0.6698718
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7542708    0.5468640    0.9616776
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1161562   -1.2038617   -1.0284508
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1396625   -1.3498047   -0.9295204
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5092691   -0.5354330   -0.4831051
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0475905   -1.1510656   -0.9441155
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -1.0020759   -1.0646599   -0.9394920
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7218585   -0.7694262   -0.6742908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7487472   -0.7666369   -0.7308576
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6831985   -0.7361386   -0.6302583
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.3028662   -0.4799359   -0.1257965
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7276329   -0.9005415   -0.5547242
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0897247    0.9553803    1.2240691
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5336484    0.3899788    0.6773181
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6031912   -0.6894381   -0.5169444
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5786017    0.5191854    0.6380180
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3153847    0.2894045    0.3413649
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1987403    0.1250477    0.2724329
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4414163    0.3697939    0.5130386
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5899623   -0.6100932   -0.5698314
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3852207   -0.4232704   -0.3471709
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1419207    0.0110291    0.2728124
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1074576   -0.0311240    0.2460393
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1331550   -1.2220936   -1.0442165
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6847249    0.5730773    0.7963725
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1889512   -1.2920613   -1.0858411
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0443153   -0.1269075    0.0382769
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2997171   -1.3237968   -1.2756375
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2222794   -1.2547188   -1.1898401


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.6553716   -1.1989792   -0.1117640
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3554019   -0.8024692    0.0916654
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0265085   -0.3377471    0.2847301
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0816809   -0.4099042    0.2465423
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3174286   -1.0952008    0.4603437
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.5856667   -0.0599684    1.2313017
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1285236   -0.6581988    0.4011517
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5328226   -0.3650679    1.4307130
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1050624   -0.2188119    0.0086871
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0003530   -0.1967332    0.1960272
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0329258   -0.2068122    0.1409607
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0100263   -0.1880159    0.1679632
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0335416   -0.2245062    0.1574230
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0547886   -0.1450579    0.2546350
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.2622227    0.0610167    0.4634287
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.1163594   -0.0951334    0.3278521
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0275345   -0.1540675    0.0989984
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0215785   -0.0970067    0.0538497
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0330049   -0.0762562    0.1422660
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0209651   -0.0714157    0.1133460
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.1230443   -0.1298192    0.3759078
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0358072   -0.2288573    0.3004718
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High               0.0710470   -0.0722371    0.2143312
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0744692   -0.2326187    0.0836804
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.1675338    0.0511083    0.2839592
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0783093   -0.0339087    0.1905274
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0027838   -0.0391599    0.0335924
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0007082   -0.0362990    0.0348826
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0160722   -0.1491371    0.1169927
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0264862   -0.1624384    0.1094659
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3066949   -0.6743117    0.0609219
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0085165   -0.4294405    0.4464735
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0304855   -0.3624176    0.4233886
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2659075   -0.7217269    0.1899119
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3442077   -0.8101658    0.1217505
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High               0.1193590   -0.3300183    0.5687363
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.2058547   -0.1305398    0.5422493
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1558839   -0.4763570    0.1645892
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.4075393   -0.9835460    0.1684674
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1654889   -0.7228656    0.3918878
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0457613   -0.2681989    0.3597214
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6219022    0.1200529    1.1237515
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1072093   -0.1926988   -0.0217197
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0509111   -0.1434923    0.0416701
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.0279050   -0.2599922    0.3158022
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1692743   -0.4682219    0.1296732
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1642446   -0.3730627    0.0445735
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0921108   -0.2902837    0.1060621
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0902859   -0.2809280    0.1003561
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0708920   -0.2693015    0.1275175
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0510686   -0.1959757    0.0938384
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0949808   -0.2597394    0.0697779
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0994471   -0.3220709    0.1231767
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0527175   -0.2852658    0.1798307
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0088281   -0.0594777    0.0771339
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0065792   -0.0598083    0.0729668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1233194   -0.2533910    0.0067521
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0194376   -0.0917704    0.1306455
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0099607   -0.2306046    0.2106833
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0334811   -0.1989153    0.2658776
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.0936064   -0.2370462    0.0498335
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0549560   -0.2048914    0.0949793
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0031810   -0.1122091    0.1058470
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0289971   -0.1321806    0.0741863
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.1108137   -0.0652619    0.2868893
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High               0.0741337   -0.1079731    0.2562404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0762712   -0.1226401   -0.0299024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0183780   -0.0644126    0.0276567
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.1840923   -0.2895386   -0.0786461
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1416387   -0.2384247   -0.0448528
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2483058   -0.6342488    0.1376372
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0542550   -0.4757423    0.3672324
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               0.0246605   -0.2849722    0.3342932
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1121799   -0.4887883    0.2644284
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.4088276   -0.8015811   -0.0160740
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3197766   -0.8015985    0.1620452
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.3563943    0.0805955    0.6321931
24 months   ki0047075b-MAL-ED          PERU                           Medium               High               0.0283389   -0.2852805    0.3419582
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1945414   -0.6819420    0.2928591
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4130059   -0.8772839    0.0512721
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1996267   -0.5229960    0.1237426
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0568625   -0.3514614    0.4651864
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.2587058   -0.4458340   -0.0715776
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0827965   -0.2864501    0.1208571
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3874079   -0.6039853   -0.1708304
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0111614   -0.2417604    0.2194376
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0778763   -0.1540467    0.3097993
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0172440   -0.2325999    0.2670879
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0451317   -0.2124927    0.1222293
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1127348   -0.2365812    0.0111115
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.5651986   -1.1207940   -0.0096032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.4235204   -0.9378539    0.0908132
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.2956559    0.1405981    0.4507136
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2400589    0.0671391    0.4129787
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.3758019   -0.4997023   -0.2519016
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.1090964   -0.2452137    0.0270209
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1226837   -0.2134485   -0.0319190
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1473952   -0.2379593   -0.0568310
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0680585   -0.2648340    0.1287170
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0391878   -0.2503563    0.1719808
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0116676   -0.0689992    0.0456639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0322697   -0.0913685    0.0268290
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0881037   -0.1777694    0.0015621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0557342   -0.1415852    0.0301168


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2844363   -0.5429403   -0.0259323
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0261278   -0.1680925    0.1158369
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0375696   -0.1370119    0.0618728
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0115024   -0.1176444    0.0946397
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0135037   -0.0845037    0.1115111
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1501462    0.0103648    0.2899276
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0186830   -0.0828415    0.0454754
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0243949   -0.0612111    0.1100009
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0724162   -0.1170913    0.2619236
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0005201   -0.0764812    0.0754409
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0616351   -0.0016773    0.1249475
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0004713   -0.0232737    0.0242163
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0145605   -0.1102980    0.0811769
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0793065   -0.3049714    0.1463585
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0530879   -0.3004546    0.1942788
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0652510   -0.2842513    0.1537492
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0120914   -0.1308134    0.1549961
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1494816   -0.4658344    0.1668712
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0766596   -0.0311253    0.1844445
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0613302   -0.1026113   -0.0200492
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0542744   -0.2458813    0.1373324
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0725776   -0.1878480    0.0426927
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0483217   -0.1461888    0.0495454
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0518998   -0.1662160    0.0624165
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0597999   -0.2155377    0.0959380
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0076986   -0.0428054    0.0582026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0032025   -0.1070448    0.1006397
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0330622   -0.1432799    0.2094044
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0451736   -0.1201599    0.0298128
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0059041   -0.0669580    0.0551498
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0629088   -0.0450716    0.1708891
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0377042   -0.0688565   -0.0065520
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1224507   -0.1942749   -0.0506266
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0989176   -0.3231364    0.1253012
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0465302   -0.2375490    0.1444886
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1930676   -0.4107432    0.0246079
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1027110   -0.0293877    0.2348097
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2226616   -0.4957847    0.0504616
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0425328   -0.1443219    0.0592564
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1116794   -0.2184939   -0.0048649
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1122073   -0.2263323    0.0019178
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0398931   -0.1279827    0.2077690
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0693736   -0.1758838    0.0371365
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4706308   -0.9691612    0.0278997
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2557804    0.1337150    0.3778458
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1473448   -0.2138546   -0.0808350
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0817401   -0.1331037   -0.0303765
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0334765   -0.1578021    0.0908491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0130540   -0.0523491    0.0262411
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0545289   -0.1159494    0.0068916

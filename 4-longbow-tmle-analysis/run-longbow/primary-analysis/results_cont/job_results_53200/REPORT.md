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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4049   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           7452   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5866   17367
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264
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
![](/tmp/8daa0c3b-e6b9-4945-bd2b-068d89473c36/54532ffd-bbe2-4ef1-98b4-f6f610189a94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8daa0c3b-e6b9-4945-bd2b-068d89473c36/54532ffd-bbe2-4ef1-98b4-f6f610189a94/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8daa0c3b-e6b9-4945-bd2b-068d89473c36/54532ffd-bbe2-4ef1-98b4-f6f610189a94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6828813   -0.9820639   -0.3836987
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2221663   -1.6545802   -0.7897524
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9883964   -1.2956044   -0.6811884
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0059203   -0.1589760    0.1708165
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0560841   -0.3247702    0.2126021
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0900357   -0.3707554    0.1906840
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6237173   -0.8332871   -0.4141475
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7313861   -0.9172795   -0.5454928
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6396875   -0.8334907   -0.4458844
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2915032   -1.4236191   -1.1593872
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.3155151   -1.4380717   -1.1929585
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.3080199   -1.4341700   -1.1818699
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2557029   -1.3825322   -1.1288736
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2826365   -1.4256638   -1.1396093
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2126625   -1.3694488   -1.0558761
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.2534748   -1.4113812   -1.0955685
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0160239   -1.1406692   -0.8913785
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1326533   -1.2713060   -0.9940005
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1218358   -1.3197093   -0.9239623
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1440400   -1.3948830   -0.8931970
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1434758   -1.3476849   -0.9392668
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5222540   -0.6113440   -0.4331641
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5056482   -0.5701283   -0.4411682
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5146821   -0.5443808   -0.4849834
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.1208802   -1.3368319   -0.9049286
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0280255   -1.1769520   -0.8790989
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0862251   -1.2496024   -0.9228479
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.9965351   -1.0962542   -0.8968161
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9359048   -1.0380994   -0.8337102
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -1.0748144   -1.1956120   -0.9540168
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.8122345   -0.8894636   -0.7350054
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6167047   -0.7012755   -0.5321339
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6988686   -0.7777237   -0.6200134
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7690602   -0.8043026   -0.7338178
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7792333   -0.8063403   -0.7521262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7761232   -0.8061449   -0.7461015
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.6574257   -0.7680318   -0.5468196
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.6830235   -0.7582141   -0.6078328
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.6911968   -0.7783903   -0.6040033
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2091715   -0.4818445    0.0635015
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.5003546   -0.7496344   -0.2510748
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.2339090   -0.6164644    0.1486464
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6112950   -0.8854061   -0.3371838
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.5860327   -0.8595749   -0.3124905
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8855155   -1.2532727   -0.5177583
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1256802   -0.1554939    0.4068543
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2351747   -0.6193339    0.1489845
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.2270656   -0.1540784    0.6082096
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.0556050    0.8675799    1.2436302
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.2958653    1.0203240    1.5714065
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 0.9342482    0.6690636    1.1994328
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5730373    0.1708669    0.9752076
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1442902   -0.2843934    0.5729738
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.4213408    0.0249249    0.8177566
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4701018    0.2802600    0.6599436
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5452072    0.2933993    0.7970151
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.1544017    0.6897937    1.6190098
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6032041   -0.7507645   -0.4556437
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7150126   -0.8570073   -0.5730179
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6529762   -0.8265998   -0.4793525
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.9744578   -1.2008879   -0.7480277
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.9296873   -1.1134492   -0.7459255
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.1284476   -1.3282936   -0.9286017
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1107785   -0.2528500    0.0312929
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2788036   -0.4270679   -0.1305394
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.2238337   -0.3600273   -0.0876400
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0997097   -0.0230547    0.2224741
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0225597   -0.1714959    0.1263766
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0110759   -0.1430763    0.1652280
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1183727   -0.0073028    0.2440483
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0827831    0.0134056    0.1521605
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0382924   -0.0669311    0.1435159
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5499524   -0.7337472   -0.3661577
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6356978   -0.7682806   -0.5031151
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.5906461   -0.7426677   -0.4386244
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5726578    0.4933893    0.6519264
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5886244    0.5199089    0.6573399
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5747570    0.5103575    0.6391566
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3088213    0.2002622    0.4173803
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.2042186    0.1301768    0.2782603
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3382750    0.3085385    0.3680115
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1713699   -0.0116286    0.3543684
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1387981    0.0320715    0.2455246
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1908784    0.0584907    0.3232661
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.6017613   -0.6985344   -0.5049883
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.6999650   -0.8066329   -0.5932971
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6597994   -0.7750224   -0.5445765
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2750135   -0.3453378   -0.2046893
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2735161   -0.3529087   -0.1941235
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.3085293   -0.3801756   -0.2368830
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.4130401    0.2840993    0.5419810
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.4774143    0.3583739    0.5964547
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.4287902    0.3025441    0.5550364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5480941   -0.5864645   -0.5097237
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6361915   -0.6670248   -0.6053583
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5743689   -0.6061611   -0.5425768
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2588324   -0.3442089   -0.1734559
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.4464064   -0.5054356   -0.3873773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.4051012   -0.4596113   -0.3505910
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8408290   -1.0969587   -0.5846993
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0569197   -1.3347289   -0.7791106
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.8764295   -1.2119485   -0.5409105
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9352901   -1.1416507   -0.7289296
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9474254   -1.1761450   -0.7187059
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0450974   -1.3597579   -0.7304369
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2320525   -0.5108830    0.0467781
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6605024   -0.9427536   -0.3782512
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5516778   -0.9546820   -0.1486737
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0570057   -0.1272495    0.2412609
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.3969854    0.1851386    0.6088321
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0227842   -0.2793368    0.3249052
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.6991877    0.3297944    1.0685810
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.4776367    0.1248144    0.8304589
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.1901100   -0.0829867    0.4632067
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1418140   -0.0369462    0.3205741
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0097630   -0.2708600    0.2513340
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.2089386   -0.1573322    0.5752095
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8177226   -0.9464617   -0.6889835
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0133514   -1.1430913   -0.8836115
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8815447   -1.0289814   -0.7341080
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.5111651   -0.6636473   -0.3586829
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8804270   -1.0327502   -0.7281038
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.5090906   -0.6838875   -0.3342936
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1770874   -1.3681124   -0.9860625
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0929854   -1.2240080   -0.9619628
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1599282   -1.3206734   -0.9991831
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7584296    0.6372968    0.8795624
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.7134508    0.5429414    0.8839602
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6399836    0.5361132    0.7438540
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.9531875   -1.4176765   -0.4886984
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3135076   -1.5514393   -1.0755759
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1440856   -1.2608619   -1.0273092
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.4885440   -0.6191316   -0.3579564
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2188270   -0.3042069   -0.1334470
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2968900   -0.4015499   -0.1922300
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4525642   -0.5338767   -0.3712516
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.8307423   -0.9238902   -0.7375943
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5790578   -0.6885473   -0.4695683
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5058344   -0.5671160   -0.4445528
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6743992   -0.7411094   -0.6076889
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6707240   -0.7377475   -0.6037005
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0214459   -0.1739153    0.1310235
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0800734   -0.2064857    0.0463390
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0264062   -0.1747557    0.1219432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2784473   -1.3253394   -1.2315553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2988740   -1.3354319   -1.2623161
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3219110   -1.3635383   -1.2802837
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1672257   -1.2403972   -1.0940542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2575532   -1.3097384   -1.2053679
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.2240702   -1.2717807   -1.1763597


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9483613   -1.1437809   -0.7529418
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7747631   -0.7940385   -0.7554876
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6831985   -0.7361386   -0.6302583
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.3007955   -0.4778591   -0.1237319
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7272766   -0.9000901   -0.5544630
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0334035   -0.1647857    0.2315927
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0860565    0.9516698    1.2204433
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3834783    0.1440275    0.6229290
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5904964   -0.6106039   -0.5703890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3852207   -0.4232704   -0.3471709
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9042735   -1.0737243   -0.7348227
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1321189   -0.0027984    0.2670362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3583333    0.1644154    0.5522513
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1084840   -0.0300100    0.2469780
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1331550   -1.2220936   -1.0442165
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6847249    0.5730773    0.7963725
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1889512   -1.2920613   -1.0858411
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0443153   -0.1269075    0.0382769
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2984354   -1.3225016   -1.2743692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2222794   -1.2547188   -1.1898401


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.5392850   -1.0644995   -0.0140705
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3055151   -0.7339493    0.1229191
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0620044   -0.3784443    0.2544355
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0959560   -0.4214654    0.2295534
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3174286   -1.0952008    0.4603437
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.5856667   -0.0599684    1.2313017
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1285236   -0.6581988    0.4011517
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5328226   -0.3650679    1.4307130
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1076689   -0.2215239    0.0061862
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0159703   -0.2086670    0.1767265
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0240119   -0.1987489    0.1507250
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0165168   -0.1935792    0.1605457
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0269336   -0.2133830    0.1595157
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0430404   -0.1541728    0.2402537
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.2374510    0.0448074    0.4300945
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.1208216   -0.0810522    0.3226953
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0222042   -0.1456767    0.1012682
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0216401   -0.0971434    0.0538633
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0166058   -0.0920593    0.1252709
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0075719   -0.0847629    0.0999067
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0928547   -0.1615012    0.3472106
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0346551   -0.2286950    0.2980051
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High               0.0606304   -0.0799096    0.2011703
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0782793   -0.2325776    0.0760191
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.1955298    0.0830194    0.3080402
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.1133659    0.0054228    0.2213091
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0101731   -0.0519103    0.0315642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0070630   -0.0494110    0.0352851
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0255978   -0.1599434    0.1087478
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0337711   -0.1712012    0.1036589
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2911831   -0.6599857    0.0776195
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0247375   -0.4959743    0.4464993
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0252623   -0.3633497    0.4138742
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2742206   -0.7314779    0.1830368
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3608549   -0.8384201    0.1167103
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High               0.1013854   -0.3729564    0.5757272
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.2402602   -0.0929808    0.5735013
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1213569   -0.4462442    0.2035305
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.4287471   -1.0119630    0.1544689
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1516965   -0.7167033    0.4133104
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0751054   -0.2428156    0.3930265
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6842999    0.1818693    1.1867305
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1118085   -0.1927747   -0.0308423
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0497721   -0.1316829    0.0321387
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.0447705   -0.2470771    0.3366181
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1539898   -0.4562876    0.1483080
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1680251   -0.3724393    0.0363891
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1130552   -0.3090606    0.0829503
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1222694   -0.3151255    0.0705868
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0886338   -0.2855453    0.1082776
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0355896   -0.1792946    0.1081153
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0800803   -0.2438392    0.0836786
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0857454   -0.3123936    0.1409028
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0406936   -0.2792149    0.1978276
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0159666   -0.0537584    0.0856916
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0020992   -0.0648817    0.0690801
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1046027   -0.2357491    0.0265437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0294537   -0.0828579    0.1417653
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0325719   -0.2443329    0.1791892
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0195085   -0.2066395    0.2456566
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.0982037   -0.2423062    0.0458989
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0580381   -0.2085508    0.0924747
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0014974   -0.1043606    0.1073555
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0335158   -0.1333685    0.0663370
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.0643742   -0.1111045    0.2398529
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High               0.0157501   -0.1647641    0.1962643
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0880974   -0.1358251   -0.0403697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0262748   -0.0731255    0.0205759
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.1875740   -0.2931795   -0.0819686
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1462688   -0.2429708   -0.0495668
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2160907   -0.5945419    0.1623605
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0356005   -0.4590601    0.3878592
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0121353   -0.3216965    0.2974259
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1098073   -0.4848047    0.2651902
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.4284500   -0.8261880   -0.0307119
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3196254   -0.8127089    0.1734582
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.3399797    0.0593771    0.6205823
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0342215   -0.3847554    0.3163124
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2215510   -0.7441449    0.3010428
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.5090777   -0.9841332   -0.0340221
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1515770   -0.4677341    0.1645802
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0671246   -0.3401702    0.4744195
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1956288   -0.3753493   -0.0159083
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0638221   -0.2553742    0.1277300
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3692619   -0.5844339   -0.1540899
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0020745   -0.2290785    0.2332276
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0841020   -0.1467265    0.3149306
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0171592   -0.2313778    0.2656962
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0449789   -0.2132071    0.1232494
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1184460   -0.2458226    0.0089306
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.3603201   -0.8830362    0.1623960
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1908981   -0.6695703    0.2877741
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.2697170    0.1128734    0.4265606
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1916540    0.0239653    0.3593427
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.3781781   -0.5019474   -0.2544088
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.1264936   -0.2628994    0.0099122
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1685647   -0.2591717   -0.0779578
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1648896   -0.2557448   -0.0740344
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0586275   -0.2558357    0.1385807
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0049603   -0.2165421    0.2066214
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0204267   -0.0765294    0.0356760
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0434636   -0.1027835    0.0158562
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0903275   -0.1801726   -0.0004823
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0568445   -0.1432571    0.0295681


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2654800   -0.5095360   -0.0214241
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0204992   -0.1612394    0.1202409
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0448295   -0.1425737    0.0529147
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0069555   -0.1161087    0.1021977
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0115515   -0.0854614    0.1085645
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1373186    0.0046955    0.2699417
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0178267   -0.0820214    0.0463679
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0129850   -0.0725284    0.0984983
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0732897   -0.1196860    0.2662654
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0055408   -0.0820659    0.0709843
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0903760    0.0302332    0.1505189
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0057029   -0.0350038    0.0235980
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0257728   -0.1226636    0.0711180
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0916240   -0.3193372    0.1360893
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1159816   -0.3592306    0.1272674
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0922767   -0.3223349    0.1377815
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0304515   -0.1098228    0.1707259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1895590   -0.5124131    0.1332951
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0635466   -0.0458781    0.1729713
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0609018   -0.0971817   -0.0246220
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0377001   -0.2332271    0.1578269
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0883121   -0.2018114    0.0251872
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0699475   -0.1687942    0.0288993
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0391945   -0.1523194    0.0739304
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0532388   -0.2142590    0.1077814
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0059439   -0.0472648    0.0591526
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0065634   -0.0983753    0.1115022
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0273704   -0.1400775    0.1948183
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0484986   -0.1243368    0.0273396
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0089794   -0.0666165    0.0486576
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0283761   -0.0788638    0.1356161
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0424023   -0.0748502   -0.0099544
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1263883   -0.1983013   -0.0544753
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0634445   -0.2889107    0.1620217
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0098614   -0.1992507    0.1795280
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2347607   -0.4544034   -0.0151181
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0751132   -0.0650365    0.2152630
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.3408544   -0.6311954   -0.0505133
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0333300   -0.1328076    0.0661476
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0751444   -0.1774820    0.0271932
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0991851   -0.2110291    0.0126589
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0439324   -0.1244403    0.2123051
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0737047   -0.1852848    0.0378753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.2357638   -0.6983916    0.2268641
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2223264    0.0988973    0.3457555
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1525891   -0.2180066   -0.0871717
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1097370   -0.1611692   -0.0583047
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0228694   -0.1477881    0.1020492
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0199881   -0.0588867    0.0189106
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0550537   -0.1169638    0.0068563

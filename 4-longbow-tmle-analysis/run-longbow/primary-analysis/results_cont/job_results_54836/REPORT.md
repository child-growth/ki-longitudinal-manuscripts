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

agecat      studyid                    country                        feducyrs    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            44     119  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             33     119  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          42     119  whz              
Birth       ki0047075b-MAL-ED          INDIA                          High             7      23  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Low             13      23  whz              
Birth       ki0047075b-MAL-ED          INDIA                          Medium           3      23  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          High             3       9  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Low              3       9  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           3       9  whz              
Birth       ki0047075b-MAL-ED          PERU                           High            84     190  whz              
Birth       ki0047075b-MAL-ED          PERU                           Low             56     190  whz              
Birth       ki0047075b-MAL-ED          PERU                           Medium          50     190  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            10      33  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             14      33  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           9      33  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            62      96  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             26      96  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           8      96  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           270    1101  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            476    1101  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         355    1101  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           161     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            185     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         186     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           277     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         201     707  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          High           162     640  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            266     640  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         212     640  whz              
Birth       ki1119695-PROBIT           BELARUS                        High          2051   13364  whz              
Birth       ki1119695-PROBIT           BELARUS                        Low           5297   13364  whz              
Birth       ki1119695-PROBIT           BELARUS                        Medium        6016   13364  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12573  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2091   12573  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12573  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      High           136     718  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Low            311     718  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         271     718  whz              
Birth       ki1135781-COHORTS          INDIA                          High           507    1291  whz              
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291  whz              
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4049   17367  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           7452   17367  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5866   17367  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           510    2323  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            913    2323  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         900    2323  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132  whz              
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138  whz              
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95  whz              
6 months    ki0047075b-MAL-ED          PERU                           High           107     224  whz              
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224  whz              
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           349    1331  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            548    1331  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         434    1331  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            208     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         186     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          High           137     563  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     563  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     563  whz              
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15208  whz              
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15208  whz              
6 months    ki1119695-PROBIT           BELARUS                        Medium        6738   15208  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           569    8266  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1433    8266  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6264    8266  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     905  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     905  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         334     905  whz              
6 months    ki1135781-COHORTS          INDIA                          High           544    1385  whz              
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385  whz              
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562  whz              
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812  whz              
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1098    4690  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1726    4690  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1866    4690  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117  whz              
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132  whz              
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91  whz              
24 months   ki0047075b-MAL-ED          PERU                           High            77     164  whz              
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164  whz              
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            198     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          High           113     486  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            218     486  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155     486  whz              
24 months   ki1119695-PROBIT           BELARUS                        High           620    3853  whz              
24 months   ki1119695-PROBIT           BELARUS                        Low           1489    3853  whz              
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3853  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     410  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            103     410  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         294     410  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      High           178    1002  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Low            465    1002  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         359    1002  whz              
24 months   ki1135781-COHORTS          INDIA                          High           536    1370  whz              
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370  whz              
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319  whz              
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555  whz              
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1092    4602  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1694    4602  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1816    4602  whz              


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
![](/tmp/a00efa1c-c94d-4474-b60a-5c2c81002251/023854f3-e375-4cc7-a92f-0487aad20f75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a00efa1c-c94d-4474-b60a-5c2c81002251/023854f3-e375-4cc7-a92f-0487aad20f75/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a00efa1c-c94d-4474-b60a-5c2c81002251/023854f3-e375-4cc7-a92f-0487aad20f75/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6881311   -1.0051676   -0.3710946
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2219062   -1.6333479   -0.8104646
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0028576   -1.3031102   -0.7026051
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0118105   -0.1545181    0.1781390
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.0600831   -0.3264654    0.2062992
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0773975   -0.3536569    0.1988618
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6237173   -0.8332871   -0.4141475
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7313861   -0.9172795   -0.5454928
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6396875   -0.8334907   -0.4458844
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2844346   -1.4145654   -1.1543038
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.3137248   -1.4371495   -1.1903000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.2907336   -1.4176863   -1.1637810
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2676793   -1.3920414   -1.1433173
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2776830   -1.4205671   -1.1347989
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2075402   -1.3666495   -1.0484310
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.2640627   -1.4253929   -1.1027325
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0099577   -1.1326085   -0.8873070
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1519868   -1.2899207   -1.0140529
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1308794   -1.3296673   -0.9320915
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1432591   -1.3941075   -0.8924107
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1461458   -1.3519764   -0.9403152
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5313277   -0.6208345   -0.4418208
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4975598   -0.5635794   -0.4315402
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5124043   -0.5420437   -0.4827649
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.1116242   -1.3336682   -0.8895802
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0170506   -1.1722100   -0.8618912
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0828596   -1.2447384   -0.9209807
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.9962145   -1.0962039   -0.8962250
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9255593   -1.0305168   -0.8206017
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -1.0731277   -1.1988870   -0.9473683
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.8122934   -0.8889613   -0.7356255
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6159931   -0.7003055   -0.5316808
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.7004442   -0.7797008   -0.6211876
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7681421   -0.8035941   -0.7326901
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7791894   -0.8058458   -0.7525331
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7765491   -0.8068155   -0.7462827
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.6665804   -0.7771815   -0.5559794
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.6852144   -0.7607230   -0.6097058
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.6951267   -0.7822862   -0.6079672
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2371363   -0.5035246    0.0292519
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.5261480   -0.7815897   -0.2707062
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.1973105   -0.5637023    0.1690812
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6527623   -0.9255221   -0.3800025
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6161007   -0.8896685   -0.3425330
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.9331765   -1.2939518   -0.5724011
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0561414   -0.2258076    0.3380903
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3019362   -0.6916995    0.0878272
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                 0.1438109   -0.2256415    0.5132634
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.0459029    0.8539601    1.2378456
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.2469197    0.9690224    1.5248170
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 0.8950677    0.6286301    1.1615053
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.6153914    0.2110718    1.0197109
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.1913968   -0.2574872    0.6402808
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.3487422   -0.0597964    0.7572808
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4648182    0.2771464    0.6524901
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5333057    0.2884657    0.7781458
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.1284001    0.6774972    1.5793029
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6032041   -0.7507645   -0.4556437
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7150126   -0.8570073   -0.5730179
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6529762   -0.8265998   -0.4793525
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.9546563   -1.1786690   -0.7306435
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.9173933   -1.0972744   -0.7375122
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.1247486   -1.3259616   -0.9235355
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1123744   -0.2535862    0.0288375
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2837495   -0.4335280   -0.1339710
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.2273247   -0.3637802   -0.0908692
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0861697   -0.0326687    0.2050082
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0095708   -0.1519599    0.1328183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.0216286   -0.1322188    0.1754760
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1157728   -0.0098615    0.2414071
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0888859    0.0197330    0.1580389
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0382238   -0.0671880    0.1436357
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5489211   -0.7271781   -0.3706641
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6384577   -0.7709231   -0.5059924
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.5929521   -0.7422333   -0.4436708
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5728823    0.4942687    0.6514960
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5815752    0.5095262    0.6536242
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5790756    0.5141372    0.6440140
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3404352    0.2292371    0.4516334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1796082    0.1067415    0.2524750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3382922    0.3087380    0.3678465
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2090097    0.0264622    0.3915572
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1302266    0.0218170    0.2386363
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.2011485    0.0698706    0.3324264
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.6062179   -0.7018994   -0.5105364
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.7042922   -0.8096903   -0.5988941
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6551425   -0.7688221   -0.5414629
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2723998   -0.3429165   -0.2018831
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2731931   -0.3526710   -0.1937152
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.3069718   -0.3780464   -0.2358973
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.3980613    0.2693250    0.5267976
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.4795981    0.3611903    0.5980060
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.4455849    0.3202592    0.5709107
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5512688   -0.5881217   -0.5144158
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6353753   -0.6660623   -0.6046883
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5755043   -0.6075754   -0.5434333
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2581139   -0.3435346   -0.1726932
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.4472036   -0.5059952   -0.3884120
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.4059142   -0.4607405   -0.3510879
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.7664415   -1.0218589   -0.5110241
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0409762   -1.3148077   -0.7671447
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.8958991   -1.2292758   -0.5625224
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9689976   -1.1790229   -0.7589722
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9375385   -1.1660979   -0.7089790
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0611814   -1.3805963   -0.7417664
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2054338   -0.4828449    0.0719773
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.5854997   -0.8442785   -0.3267210
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5144341   -0.9104557   -0.1184125
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0637958   -0.1172626    0.2448542
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.3790149    0.1658989    0.5921309
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0015076   -0.3016256    0.2986104
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.4563656    0.1068834    0.8058478
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.2985214   -0.0256337    0.6226764
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.0368493   -0.2298119    0.3035104
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1405915   -0.0385636    0.3197466
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0173300   -0.2794555    0.2447956
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.2490647   -0.0901129    0.5882424
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8180235   -0.9486572   -0.6873898
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0059964   -1.1383433   -0.8736495
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8604580   -1.0104303   -0.7104857
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.5088907   -0.6642066   -0.3535748
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8825678   -1.0366648   -0.7284708
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.4909002   -0.6579839   -0.3238165
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1632601   -1.3491002   -0.9774199
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1000682   -1.2321367   -0.9679998
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1582880   -1.3204175   -0.9961585
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7652623    0.6459982    0.8845264
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.7164637    0.5485684    0.8843590
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6357973    0.5247876    0.7468071
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.7077881   -1.2402213   -0.1753549
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2990469   -1.5340336   -1.0640601
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1446443   -1.2614596   -1.0278291
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.5458391   -0.6864799   -0.4051984
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2342700   -0.3259992   -0.1425407
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.3078987   -0.4131027   -0.2026947
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4620759   -0.5436386   -0.3805133
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.8314842   -0.9251203   -0.7378480
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5692936   -0.6793799   -0.4592073
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5200276   -0.5811932   -0.4588620
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.6606193   -0.7265468   -0.5946918
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6770708   -0.7417829   -0.6123588
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0066641   -0.1600105    0.1466824
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0888604   -0.2163037    0.0385829
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.0573465   -0.2052850    0.0905920
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2757105   -1.3229675   -1.2284535
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3016756   -1.3378588   -1.2654923
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3186384   -1.3607678   -1.2765089
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1660512   -1.2382421   -1.0938603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2570112   -1.3090234   -1.2049989
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.2245149   -1.2722525   -1.1767773


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.5337751   -1.0546139   -0.0129364
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3147265   -0.7538913    0.1244383
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              -0.0718936   -0.3872686    0.2434815
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0892080   -0.4118608    0.2334447
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
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0292902   -0.2030754    0.1444951
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0062990   -0.1822620    0.1696640
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0100037   -0.1939203    0.1739129
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0601391   -0.1369224    0.2572005
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.2541050    0.0606964    0.4475135
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.1120759   -0.0921328    0.3162847
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0123797   -0.1343818    0.1096225
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0152664   -0.0872014    0.0566686
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0337678   -0.0761501    0.1436858
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0189234   -0.0738086    0.1116553
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0945736   -0.1694039    0.3585511
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0287647   -0.2398936    0.2974230
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High               0.0706552   -0.0737376    0.2150480
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0769132   -0.2366775    0.0828511
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.1963002    0.0843141    0.3082863
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.1118492    0.0039127    0.2197856
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0110474   -0.0531119    0.0310172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0084070   -0.0512535    0.0344395
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0186340   -0.1532208    0.1159528
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0285463   -0.1660026    0.1089100
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2890116   -0.6588545    0.0808312
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0398258   -0.4141826    0.4938342
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0366616   -0.3504534    0.4237766
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2804142   -0.7335670    0.1727386
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3580775   -0.8371808    0.1210257
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High               0.0876696   -0.3681957    0.5435349
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.2010169   -0.1377146    0.5397484
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1508351   -0.4808676    0.1791974
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.4239946   -1.0286495    0.1806604
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2666492   -0.8427662    0.3094679
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0684875   -0.2405906    0.3775656
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6635818    0.1753127    1.1518510
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1118085   -0.1927747   -0.0308423
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0497721   -0.1316829    0.0321387
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               0.0372630   -0.2496666    0.3241926
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1700923   -0.4716854    0.1315008
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1713751   -0.3768216    0.0340713
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1149504   -0.3105779    0.0806771
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0957405   -0.2802296    0.0887486
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0645412   -0.2583497    0.1292673
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0268869   -0.1701666    0.1163929
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0775490   -0.2413787    0.0862807
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0895366   -0.3117358    0.1326625
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0440310   -0.2766158    0.1885539
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0086929   -0.0619449    0.0793307
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0061933   -0.0627968    0.0751833
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1608270   -0.2935258   -0.0281282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0021430   -0.1169864    0.1127004
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0787831   -0.2908548    0.1332887
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0078612   -0.2325396    0.2168171
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.0980743   -0.2404266    0.0442779
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.0489246   -0.1975057    0.0996564
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0007933   -0.1069081    0.1053214
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0345720   -0.1341711    0.0650271
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High               0.0815368   -0.0930031    0.2560767
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High               0.0475236   -0.1315731    0.2266204
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0841065   -0.1305624   -0.0376507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0242356   -0.0702565    0.0217853
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.1890897   -0.2945155   -0.0836639
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1478003   -0.2449714   -0.0506293
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2745347   -0.6496613    0.1005919
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1294576   -0.5527228    0.2938075
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               0.0314591   -0.2796677    0.3425859
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0921838   -0.4767715    0.2924039
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3800659   -0.7617400    0.0016082
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3090003   -0.7938933    0.1758927
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.3152191    0.0394414    0.5909968
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0653034   -0.4077313    0.2771244
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1578442   -0.6387700    0.3230815
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4195163   -0.8579033    0.0188706
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1579215   -0.4742231    0.1583801
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1084732   -0.2741158    0.4910622
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1879729   -0.3715002   -0.0044455
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0424345   -0.2377912    0.1529222
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3736771   -0.5915590   -0.1557951
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0179905   -0.2092678    0.2452488
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.0631918   -0.1647181    0.2911017
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0049720   -0.2416076    0.2515516
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0487986   -0.2134774    0.1158802
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1294650   -0.2603364    0.0014065
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.5912588   -1.1750107   -0.0075069
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.4368562   -0.9826225    0.1089100
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.3115692    0.1423821    0.4807563
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2379404    0.0615517    0.4143291
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.3694082   -0.4935792   -0.2452373
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.1072176   -0.2440800    0.0296448
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1405917   -0.2299038   -0.0512796
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.1570432   -0.2452098   -0.0688766
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0821963   -0.2800809    0.1156883
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0506824   -0.2625006    0.1611358
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0259650   -0.0816335    0.0297034
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0429279   -0.1033546    0.0174989
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0909600   -0.1798228   -0.0020971
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0584637   -0.1438808    0.0269535


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2602302   -0.5216360    0.0011755
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0263894   -0.1680014    0.1152225
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0448295   -0.1425737    0.0529147
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0140240   -0.1209305    0.0928824
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0235280   -0.0710215    0.1180774
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1479064    0.0121481    0.2836648
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0087831   -0.0707615    0.0531952
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0220586   -0.0638744    0.1079916
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0640337   -0.1348337    0.2629011
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0058615   -0.0832610    0.0715380
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0904349    0.0306748    0.1501950
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0066210   -0.0363164    0.0230745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0166180   -0.1134738    0.0802378
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0636591   -0.2876003    0.1602821
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0745143   -0.3174851    0.1684565
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0227379   -0.2483880    0.2029123
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0401537   -0.1044239    0.1847313
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2319131   -0.5587031    0.0948769
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0688302   -0.0391312    0.1767916
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0609018   -0.0971817   -0.0246220
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0575016   -0.2504204    0.1354172
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0867163   -0.1998728    0.0264402
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0564075   -0.1514496    0.0386346
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0365946   -0.1495502    0.0763611
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0542701   -0.2103513    0.1018110
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0057194   -0.0476183    0.0590571
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0250505   -0.1326273    0.0825263
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0102694   -0.1768529    0.1563141
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0440421   -0.1187361    0.0306520
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0115932   -0.0693277    0.0461413
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0433550   -0.0635607    0.1502706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0392277   -0.0701739   -0.0082815
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1271068   -0.1991257   -0.0550879
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1378320   -0.3659737    0.0903097
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0238461   -0.1705411    0.2182332
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2613794   -0.4821650   -0.0405937
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0683231   -0.0665374    0.2031836
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0980322   -0.3731459    0.1770814
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0321075   -0.1314669    0.0672518
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0748435   -0.1789230    0.0292360
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1014595   -0.2146647    0.0117458
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0301050   -0.1336719    0.1938820
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0805374   -0.1909175    0.0298426
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4811631   -1.0121741    0.0498478
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2796216    0.1449649    0.4142782
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1430773   -0.2086111   -0.0775436
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0955438   -0.1461845   -0.0449031
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0376512   -0.1629680    0.0876656
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0227249   -0.0618815    0.0164318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0562282   -0.1173178    0.0048613

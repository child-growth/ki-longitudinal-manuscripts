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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* single
* W_nrooms
* impsan
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_W_nrooms
* delta_impsan
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             64     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          59     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High            71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low             56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium          81     208
6 months    ki0047075b-MAL-ED          INDIA                          High            59     208
6 months    ki0047075b-MAL-ED          INDIA                          Low             72     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium          77     208
6 months    ki0047075b-MAL-ED          NEPAL                          High            53     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low             93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          75     221
6 months    ki0047075b-MAL-ED          PERU                           High            81     272
6 months    ki0047075b-MAL-ED          PERU                           Low             94     272
6 months    ki0047075b-MAL-ED          PERU                           Medium          97     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            127     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         132     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            104     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     368
6 months    ki1000108-IRC              INDIA                          High           124     408
6 months    ki1000108-IRC              INDIA                          Low            145     408
6 months    ki1000108-IRC              INDIA                          Medium         139     408
6 months    ki1000109-EE               PAKISTAN                       High            15     373
6 months    ki1000109-EE               PAKISTAN                       Low            325     373
6 months    ki1000109-EE               PAKISTAN                       Medium          33     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           289    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            596    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            194     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            180     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         199     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     560
6 months    ki1119695-PROBIT           BELARUS                        High          2656   15757
6 months    ki1119695-PROBIT           BELARUS                        Low           5642   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium        7459   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4465    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1717    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2069    8251
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         319     953
6 months    ki1135781-COHORTS          INDIA                          High           737    5407
6 months    ki1135781-COHORTS          INDIA                          Low           1774    5407
6 months    ki1135781-COHORTS          INDIA                          Medium        2896    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1015    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            824    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         867    2706
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5909   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5612   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5246   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            68    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1901    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          69    2038
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low             42     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          64     168
24 months   ki0047075b-MAL-ED          INDIA                          High            55     199
24 months   ki0047075b-MAL-ED          INDIA                          Low             69     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium          75     199
24 months   ki0047075b-MAL-ED          NEPAL                          High            48     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     213
24 months   ki0047075b-MAL-ED          PERU                           High            59     200
24 months   ki0047075b-MAL-ED          PERU                           Low             74     200
24 months   ki0047075b-MAL-ED          PERU                           Medium          67     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         114     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         109     372
24 months   ki1000108-IRC              INDIA                          High           124     409
24 months   ki1000108-IRC              INDIA                          Low            146     409
24 months   ki1000108-IRC              INDIA                          Medium         139     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            152     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            173     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         204     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            58     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            350     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          87     495
24 months   ki1119695-PROBIT           BELARUS                        High           654    3971
24 months   ki1119695-PROBIT           BELARUS                        Low           1381    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium        1936    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           180     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            114     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         129     423
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low            512    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         347    1068
24 months   ki1135781-COHORTS          INDIA                          High           601    4166
24 months   ki1135781-COHORTS          INDIA                          Low           1264    4166
24 months   ki1135781-COHORTS          INDIA                          Medium        2301    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High           911    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            748    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         790    2449
24 months   ki1148112-LCNI-5           MALAWI                         High           214     556
24 months   ki1148112-LCNI-5           MALAWI                         Low            172     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium         170     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2912    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           2999    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2681    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            71    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1855    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          74    2000


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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




# Results Detail

## Results Plots
![](/tmp/6f1c72d4-9d95-48e3-aab4-6df842940920/7747f424-2ebc-49ae-ae4d-b05f8b796572/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6f1c72d4-9d95-48e3-aab4-6df842940920/7747f424-2ebc-49ae-ae4d-b05f8b796572/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6f1c72d4-9d95-48e3-aab4-6df842940920/7747f424-2ebc-49ae-ae4d-b05f8b796572/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0241031   -0.2533805    0.2051744
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2331986   -0.5195673    0.0531701
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                 0.0332069   -0.2131267    0.2795406
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 1.1486126    0.8659618    1.4312635
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.6624130    0.3295278    0.9952983
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 1.0028188    0.7361472    1.2694904
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.7288439   -0.9635859   -0.4941020
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6973055   -0.9398927   -0.4547183
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.6508077   -0.8863234   -0.4152920
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4241961    0.1563851    0.6920070
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0763568   -0.1253487    0.2780622
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0283850   -0.2632758    0.2065058
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.1451920    0.9374864    1.3528975
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.0231860    0.8081225    1.2382495
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 1.0283509    0.8233703    1.2333315
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.6744830    0.4094193    0.9395467
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3970316    0.1661561    0.6279072
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.6761774    0.3326636    1.0196912
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5873656    0.3228299    0.8519012
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.4945202    0.3195483    0.6694921
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.4864799   -0.7172200   -0.2557398
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5115190   -0.7758448   -0.2471932
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4842417   -0.8007131   -0.1677703
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.4974794   -0.7428714   -0.2520874
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.5581576   -0.7783808   -0.3379344
6 months    ki1000108-IRC              INDIA                          Medium               NA                -0.7185683   -0.9681555   -0.4689811
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.7327213   -1.1558552   -0.3095874
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.7451233   -0.8702072   -0.6200393
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -0.5312551   -0.8793833   -0.1831270
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5539481   -0.6547570   -0.4531393
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7896282   -0.9401551   -0.6391013
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.5636190   -0.7651795   -0.3620585
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.7841618   -1.1051583   -0.4631653
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.0400782   -1.1698262   -0.9103301
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.0066430   -1.4489301   -0.5643560
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2822383   -0.4699574   -0.0945191
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.5682922   -0.7038667   -0.4327178
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.4496460   -0.6077907   -0.2915014
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1188992   -0.2631763    0.0253780
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3888342   -0.5485249   -0.2291436
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.1329112   -0.2769567    0.0111343
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0937535   -0.0331367    0.2206437
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1080193   -0.2402437    0.0242051
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.1313452   -0.0210381    0.2837285
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0763583   -0.0312189    0.1839356
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1488317   -0.0962737    0.3939371
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0805775    0.0177755    0.1433795
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.1067229   -0.2774226    0.0639768
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0799144   -0.1702136    0.3300425
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.1030426   -0.3153679    0.1092826
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2095088   -0.4981790    0.0791613
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6437151   -0.7434007   -0.5440295
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.6617086   -0.9003260   -0.4230912
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5554787    0.4852040    0.6257534
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5719117    0.4906065    0.6532169
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5877782    0.5224783    0.6530782
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3682738    0.3323796    0.4041680
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1502588    0.0858564    0.2146612
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2588467    0.2038132    0.3138803
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2198693    0.0216232    0.4181153
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.2480784    0.1474134    0.3487433
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1817542    0.0551539    0.3083546
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5480707   -0.6433042   -0.4528373
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.8263567   -0.8920089   -0.7607045
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6516349   -0.6964509   -0.6068189
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3118004   -0.3769155   -0.2466854
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3385924   -0.4214837   -0.2557012
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2717013   -0.3482268   -0.1951757
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5808489    0.4575715    0.7041264
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.3556489    0.2337029    0.4775950
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.3776068    0.2383181    0.5168955
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5521914   -0.5860936   -0.5182892
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6553086   -0.6910674   -0.6195498
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5822158   -0.6181559   -0.5462758
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.4696032   -0.6878698   -0.2513366
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.4018475   -0.4602096   -0.3434854
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.2789994   -0.5985904    0.0405916
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6263065   -0.8691662   -0.3834467
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9833540   -1.2236431   -0.7430649
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.7115812   -0.9441155   -0.4790468
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.5873408    0.2485108    0.9261707
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.1122416   -0.3545007    0.5789838
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.4150798    0.1076287    0.7225309
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9388365   -1.1590578   -0.7186152
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0634596   -1.2694783   -0.8574409
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8458222   -1.0634501   -0.6281942
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1260769   -0.3976400    0.1454861
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3900611   -0.5583385   -0.2217837
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.4619681   -0.6649509   -0.2589853
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1703843   -0.0289767    0.3697454
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.2107465    0.0036821    0.4178108
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0064207   -0.2196460    0.2068045
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.5195123    0.2703886    0.7686360
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3207911    0.1517150    0.4898673
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.5064302    0.2465812    0.7662791
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1777193    0.0177117    0.3377269
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.3864276   -0.5343471   -0.2385081
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7296757   -0.9256574   -0.5336941
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.6235497   -0.8357150   -0.4113844
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.6451734   -0.8153636   -0.4749832
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.7195446   -0.8798854   -0.5592037
24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.8625946   -1.0066320   -0.7185571
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.7299557   -0.9142535   -0.5456579
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.0555022   -1.2089479   -0.9020566
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.9030674   -1.0943520   -0.7117828
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8290463   -0.9611604   -0.6969321
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0172902   -1.1597846   -0.8747957
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8453900   -0.9992150   -0.6915650
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4754558   -0.6462599   -0.3046518
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8388962   -0.9964964   -0.6812961
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.5952248   -0.7618113   -0.4286383
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.0108409   -1.3032349   -0.7184469
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0972053   -1.2010287   -0.9933818
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2435625   -1.5094580   -0.9776670
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7463135    0.5968697    0.8957572
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.6717935    0.5114999    0.8320872
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6900134    0.5927345    0.7872922
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.1805877   -1.3375167   -1.0236587
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2687817   -1.4650084   -1.0725549
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1112771   -1.2777457   -0.9448086
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2838261   -0.4038403   -0.1638119
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2742585   -0.3513721   -0.1971449
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2536309   -0.3582005   -0.1490613
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.2658686   -0.3649168   -0.1668204
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.9595942   -1.0326853   -0.8865030
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5559633   -0.6011449   -0.5107817
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5397592   -0.6025585   -0.4769599
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7071128   -0.7775885   -0.6366370
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6333793   -0.7008079   -0.5659507
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2034144    0.0623606    0.3444682
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2660137   -0.4032107   -0.1288166
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.1242493   -0.2773291    0.0288306
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.3122444   -1.3655071   -1.2589818
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2858421   -1.3306771   -1.2410070
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3176864   -1.3635963   -1.2717766
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.2558152   -1.4549067   -1.0567236
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2315396   -1.2864054   -1.1766738
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.1429767   -1.3503374   -0.9356161


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0733121   -0.2158688    0.0692446
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9741026    0.8090337    1.1391714
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6803526   -0.8157896   -0.5449155
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1237029   -0.0091418    0.2565476
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0583824    0.9364872    1.1802775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5303612    0.3888640    0.6718585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7250670   -0.8391902   -0.6109438
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6097530   -0.6959927   -0.5235132
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3042510    0.2781512    0.3303508
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4400246    0.3684214    0.5116278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3995412   -0.4558989   -0.3431835
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.7642690   -0.9008595   -0.6276785
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4459226    0.2396905    0.6521548
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9446231   -1.0689273   -0.8203189
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3599765   -0.4780748   -0.2418783
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199500   -0.0005848    0.2404848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0858857   -0.0532969    0.2250684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1324444   -1.2201925   -1.0446964
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0442266   -0.1266703    0.0382171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2263000   -1.2784771   -1.1741229


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2090955   -0.5771930    0.1590019
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.0573100   -0.2804436    0.3950637
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4861996   -0.9235497   -0.0488495
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1457938   -0.5353520    0.2437644
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0315384   -0.3073073    0.3703842
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0780362   -0.2551082    0.4111806
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3478393   -0.6827064   -0.0129722
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.4525810   -0.8086298   -0.0965323
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.1220060   -0.4195367    0.1755248
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1168411   -0.4067643    0.1730822
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2774514   -0.6286657    0.0737630
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0016944   -0.4322776    0.4356663
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0759677   -0.6452182    0.4932827
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1688131   -0.7023693    0.3647430
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0250391   -0.3767986    0.3267205
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0022382   -0.3889208    0.3933971
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.0606782   -0.3912365    0.2698802
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.2210889   -0.5732693    0.1310915
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.0124020   -0.4537161    0.4289122
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.2014661   -0.3462344    0.7491667
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.2356801   -0.3718310   -0.0995291
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0096709   -0.1796531    0.1603114
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2559163   -0.6027270    0.0908943
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.2224812   -0.7702003    0.3252379
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2860540   -0.5180392   -0.0540688
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1674078   -0.4130831    0.0782676
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.2699351   -0.4841586   -0.0557116
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0140120   -0.2172702    0.1892461
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2017728   -0.3842331   -0.0193124
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0375918   -0.1601692    0.2353528
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0724734   -0.1952808    0.3402277
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0042192   -0.1199617    0.1284001
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High               0.1866373   -0.1173367    0.4906114
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High               0.0036803   -0.2697833    0.2771439
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4342063   -0.7397259   -0.1286866
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.4521998   -0.8262691   -0.0781305
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0164330   -0.0661624    0.0990285
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0322996   -0.0376773    0.1022764
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2180150   -0.2914984   -0.1445316
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1094271   -0.1749300   -0.0439241
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0282091   -0.1939236    0.2503417
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0381150   -0.2731335    0.1969034
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.2782859   -0.3934995   -0.1630724
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.1035641   -0.2082065    0.0010783
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0267920   -0.1319048    0.0783208
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0400992   -0.0600363    0.1402346
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.2252000   -0.3997577   -0.0506423
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2032422   -0.3897243   -0.0167600
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1031173   -0.1514537   -0.0547808
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0300245   -0.0780037    0.0179547
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0677557   -0.1563430    0.2918545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1906038   -0.1939087    0.5751164
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3570475   -0.7004088   -0.0136862
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0852747   -0.4227101    0.2521607
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4750992   -1.0461000    0.0959016
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1722610   -0.6245064    0.2799845
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1246231   -0.4262596    0.1770134
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               0.0930144   -0.2169175    0.4029462
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2639842   -0.5834288    0.0554605
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3358911   -0.6748360    0.0030538
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0403621   -0.2458958    0.3266201
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1768050   -0.4672033    0.1135932
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1987212   -0.4984550    0.1010126
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0130822   -0.3733740    0.3472096
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3305764   -0.1967864    0.8579393
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3432481   -0.5887883   -0.0977080
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2371221   -0.4948070    0.0205628
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.0743712   -0.3082761    0.1595336
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2174212   -0.4404695    0.0056272
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.3255465   -0.5659286   -0.0851644
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1731117   -0.4392807    0.0930573
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1882439   -0.3801077    0.0036199
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0163437   -0.2172419    0.1845545
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3634404   -0.5962799   -0.1306010
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1197690   -0.3576831    0.1181451
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.0863644   -0.3977652    0.2250365
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.2327216   -0.6301710    0.1647278
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0745200   -0.2192963    0.0702564
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0563001   -0.1847167    0.0721165
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0881940   -0.3403028    0.1639148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0693105   -0.1596243    0.2982453
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0095676   -0.1332273    0.1523625
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0301952   -0.1289537    0.1893441
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.6937256   -0.8174777   -0.5699735
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.2900947   -0.3992798   -0.1809096
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1673536   -0.2608770   -0.0738301
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0936201   -0.1848204   -0.0024198
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.4694281   -0.6662092   -0.2726470
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.3276637   -0.5358206   -0.1195067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               0.0264024   -0.0414930    0.0942977
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0054420   -0.0792420    0.0683579
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0242756   -0.1810023    0.2295535
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1128384   -0.1772124    0.4028892


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0492090   -0.2344692    0.1360512
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1745101   -0.4074506    0.0584304
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0484914   -0.1610679    0.2580507
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3004932   -0.5350170   -0.0659695
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0868096   -0.2643662    0.0907470
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1324095   -0.3701680    0.1053489
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1329721   -0.6345300    0.3685858
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0161967   -0.1936075    0.1612140
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1014503   -0.3107185    0.1078179
6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0076543   -0.4164576    0.4317661
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1117603   -0.2233807   -0.0001398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2279961   -0.5426292    0.0866371
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1566719   -0.3129102   -0.0004336
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0894714   -0.2068074    0.0278646
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0639912   -0.1718780    0.0438956
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0043640   -0.0885328    0.0972609
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0498396   -0.0851319    0.1848111
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.4002442   -0.6743122   -0.1261762
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0234846   -0.0346741    0.0816434
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0640228   -0.0901420   -0.0379036
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0225975   -0.2008134    0.1556184
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.1525599   -0.2447782   -0.0603416
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0179571   -0.0361851    0.0720994
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1408243   -0.2395737   -0.0420750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0410826   -0.0697029   -0.0124623
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0700620   -0.1465331    0.2866571
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1379626   -0.3274309    0.0515058
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1414182   -0.4091501    0.1263138
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0057866   -0.1995081    0.1879349
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2338996   -0.4688735    0.0010744
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0504343   -0.2280172    0.1271486
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0928106   -0.3032424    0.1176211
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2387429   -0.2629345    0.7404202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1707229   -0.2875290   -0.0539169
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1006416   -0.2418945    0.0406113
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1816234   -0.3368167   -0.0264301
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0588949   -0.1653146    0.0475249
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1348944   -0.2642103   -0.0055784
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1216035   -0.3995290    0.1563219
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0599700   -0.1649092    0.0449692
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0004053   -0.1174499    0.1166394
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0073186   -0.1019981    0.1166354
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3727920   -0.4697142   -0.2758699
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0702000   -0.1211342   -0.0192657
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2476410   -0.3555492   -0.1397328
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0147700   -0.0336777    0.0632178
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0295152   -0.1683718    0.2274021

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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     369
6 months    ki1000108-IRC              INDIA                          High           123     407
6 months    ki1000108-IRC              INDIA                          Low            146     407
6 months    ki1000108-IRC              INDIA                          Medium         138     407
6 months    ki1000109-EE               PAKISTAN                       High            15     369
6 months    ki1000109-EE               PAKISTAN                       Low            321     369
6 months    ki1000109-EE               PAKISTAN                       Medium          33     369
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           290    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            597    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            180     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         200     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     560
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15761
6 months    ki1119695-PROBIT           BELARUS                        Low           5644   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium        7460   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4483    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1719    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2080    8282
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         318     952
6 months    ki1135781-COHORTS          INDIA                          High           736    5413
6 months    ki1135781-COHORTS          INDIA                          Low           1777    5413
6 months    ki1135781-COHORTS          INDIA                          Medium        2900    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1014    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            826    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         868    2708
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5922   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5622   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5250   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            68    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1899    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          69    2036
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            153     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            173     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         203     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            58     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            350     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          88     496
24 months   ki1119695-PROBIT           BELARUS                        High           664    4035
24 months   ki1119695-PROBIT           BELARUS                        Low           1408    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium        1963    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           205     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            116     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         136     457
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low            508    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         343    1060
24 months   ki1135781-COHORTS          INDIA                          High           608    4201
24 months   ki1135781-COHORTS          INDIA                          Low           1274    4201
24 months   ki1135781-COHORTS          INDIA                          Medium        2319    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    High           914    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            744    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         787    2445
24 months   ki1148112-LCNI-5           MALAWI                         High           220     572
24 months   ki1148112-LCNI-5           MALAWI                         Low            177     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium         175     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2927    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3004    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2690    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            71    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1861    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          74    2006


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
![](/tmp/9db5f461-9c6b-45c8-a369-ee2fbceac40e/f4861b63-81ec-4503-9e22-527473bef3d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9db5f461-9c6b-45c8-a369-ee2fbceac40e/f4861b63-81ec-4503-9e22-527473bef3d4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9db5f461-9c6b-45c8-a369-ee2fbceac40e/f4861b63-81ec-4503-9e22-527473bef3d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0308174   -1.2273371   -0.8342977
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.3306419   -1.6292585   -1.0320252
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.2918527   -1.4967862   -1.0869192
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0908845   -0.1494134    0.3311824
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0734005   -0.2248351    0.3716362
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0657051   -0.1649584    0.2963686
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1433805   -1.3546749   -0.9320860
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.2144351   -1.4300136   -0.9988567
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1746322   -1.3836267   -0.9656377
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3632860   -0.5988133   -0.1277586
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6244393   -0.8030695   -0.4458090
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5388933   -0.7289691   -0.3488175
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3642403   -1.5538030   -1.1746776
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3374971   -1.5274965   -1.1474977
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2993788   -1.4836485   -1.1151091
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9634520   -1.2028622   -0.7240418
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.1522064   -1.3498590   -0.9545539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0339077   -1.2909738   -0.7768416
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2635215   -1.5158232   -1.0112198
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -1.2998900   -1.5184571   -1.0813229
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6322591   -1.8817473   -1.3827708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3764920   -1.6568601   -1.0961239
6 months    ki1000108-IRC              INDIA                          High                 NA                -1.1381568   -1.3602885   -0.9160251
6 months    ki1000108-IRC              INDIA                          Low                  NA                -1.2472723   -1.4755966   -1.0189481
6 months    ki1000108-IRC              INDIA                          Medium               NA                -1.3012335   -1.5272856   -1.0751814
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -1.9183983   -2.4143457   -1.4224509
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -2.2558086   -2.3893999   -2.1222173
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -1.8245007   -2.2314901   -1.4175113
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.0156274   -1.1773047   -0.8539502
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5931291   -1.6926301   -1.4936280
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3720865   -1.5104068   -1.2337662
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.6648715   -2.0236709   -1.3060722
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9398668   -2.0694144   -1.8103191
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.8487014   -2.1318203   -1.5655825
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.1577223   -1.3036508   -1.0117938
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.6072659   -1.7616553   -1.4528766
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4296976   -1.5768376   -1.2825576
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.9907014   -1.1130667   -0.8683362
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.1541764   -1.2957172   -1.0126356
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1351670   -1.2794896   -0.9908445
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0564363   -1.1856719   -0.9272006
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2451118   -1.3726307   -1.1175929
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2937169   -1.4217464   -1.1656875
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4815857   -0.5826776   -0.3804938
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5789439   -0.8349335   -0.3229543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5613137   -0.6171034   -0.5055239
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -1.5240889   -1.6990201   -1.3491577
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -1.6390597   -1.8694782   -1.4086412
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -1.5423403   -1.7556116   -1.3290690
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1261809   -1.3475565   -0.9048054
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4157658   -1.5118281   -1.3197034
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1905035   -1.3733518   -1.0076553
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2310291    0.1357604    0.3262977
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0027564   -0.1012529    0.1067658
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1612433    0.0580013    0.2644853
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8400693   -0.8747585   -0.8053800
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9113135   -0.9686681   -0.8539590
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9462346   -0.9987656   -0.8937036
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8413878   -1.9944457   -1.6883299
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.8792822   -1.9802607   -1.7783038
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.7309223   -1.8647611   -1.5970835
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5461277   -0.6510691   -0.4411862
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.3076641   -1.3810305   -1.2342977
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9640252   -1.0088762   -0.9191742
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9755371   -1.0430755   -0.9079988
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.2653312   -1.3467078   -1.1839546
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.2021750   -1.2813394   -1.1230107
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.4681598   -1.5839874   -1.3523321
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7880009   -1.9191165   -1.6568853
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6935269   -1.8137563   -1.5732974
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2512114   -1.2902240   -1.2121987
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3676605   -1.4065362   -1.3287848
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3427072   -1.3839216   -1.3014927
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.5570330   -1.8665330   -1.2475331
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.3276118   -1.3861020   -1.2691216
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3602760   -1.6014163   -1.1191356
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.8181644   -2.0676048   -1.5687240
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.9866892   -2.1859676   -1.7874107
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.8536462   -2.1016911   -1.6056013
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.2419432   -0.0149700    0.4988565
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.2732539   -0.6413323    0.0948246
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0133519   -0.2613082    0.2880121
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.5068590   -1.7331483   -1.2805697
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.7955314   -2.0237939   -1.5672688
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8375093   -2.0542976   -1.6207211
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0519656   -1.3378382   -0.7660930
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.3399857   -1.5317699   -1.1482015
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.2178823   -1.4180042   -1.0177605
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.5599259   -1.8028136   -1.3170382
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.8355799   -2.0288632   -1.6422966
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8537135   -2.0422478   -1.6651793
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4340028   -1.6958210   -1.1721847
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.6957235   -1.8918983   -1.4995486
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.7171938   -2.0518141   -1.3825735
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0800000   -2.6467745   -1.5132255
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8063889   -3.1015653   -2.5112125
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4212281   -2.5798306   -2.2626255
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -2.4544379   -2.6197982   -2.2890775
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -2.7036850   -2.8810411   -2.5263289
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5359144   -2.7225062   -2.3493226
24 months   ki1000108-IRC              INDIA                          High                 NA                -1.6450704   -1.8212963   -1.4688445
24 months   ki1000108-IRC              INDIA                          Low                  NA                -1.8447101   -2.0084555   -1.6809648
24 months   ki1000108-IRC              INDIA                          Medium               NA                -1.8377218   -1.9905799   -1.6848637
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.8104798   -1.9962669   -1.6246928
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -2.4438750   -2.5959263   -2.2918237
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -2.2672011   -2.4423355   -2.0920666
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.3037495   -1.4359297   -1.1715692
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.7968747   -1.9526230   -1.6411264
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.6612298   -1.8144070   -1.5080527
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.1617200   -1.2999412   -1.0234989
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.6251751   -1.7800472   -1.4703030
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.5901149   -1.7343098   -1.4459201
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.5093560   -1.7935408   -1.2251711
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9410686   -2.0388690   -1.8432682
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9013460   -2.1063395   -1.6963525
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0659980   -0.1550102    0.2870063
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2887863   -0.6485534    0.0709808
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0814509   -0.3816630    0.2187612
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -2.2310595   -2.4136792   -2.0484397
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -2.5064191   -2.7080521   -2.3047861
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -2.5564810   -2.7527529   -2.3602092
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.9677836   -3.1152825   -2.8202846
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -2.9462109   -3.0426704   -2.8497514
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.6787629   -2.7984086   -2.5591172
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.1942793   -1.3319126   -1.0566460
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.4678057   -2.5594269   -2.3761845
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -1.8770930   -1.9267141   -1.8274719
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0430340   -2.1205020   -1.9655660
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.6503723   -2.7335356   -2.5672091
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5202701   -2.6059665   -2.4345737
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.7626486   -1.8896510   -1.6356461
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.9316035   -2.0803235   -1.7828834
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9460346   -2.1081478   -1.7839213
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.9084013   -1.9532102   -1.8635924
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1084013   -2.1514644   -2.0653382
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0312616   -2.0754779   -1.9870452
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.9211789   -2.1881452   -1.6542125
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.7644003   -1.8189241   -1.7098764
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.7342897   -2.0154729   -1.4531064


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1935544   -1.3251572   -1.0619516
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0529327   -0.0917526    0.1976180
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1704327   -1.2921639   -1.0487015
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5483560   -0.6619002   -0.4348118
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3312377   -1.4396065   -1.2228689
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2832512   -1.4141440   -1.1523584
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.1956098   -2.3191627   -2.0720568
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3322083   -1.4107364   -1.2536803
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8916958   -0.9176814   -0.8657103
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3385142   -1.3948471   -1.2821814
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8744152   -2.0076626   -1.7411678
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0434524   -0.1247334    0.2116382
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.7845980   -1.9142624   -1.6549336
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2366901   -1.3594733   -1.1139070
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7521250   -1.8731109   -1.6311391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5264286   -2.6690955   -2.3837616
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8849429   -1.9699639   -1.7999219
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3994530   -2.5144490   -2.2844569
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8575660   -2.9223159   -2.7928162
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9615163   -1.9983763   -1.9246563
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8686713   -1.9502344   -1.7871083
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0124336   -2.0401325   -1.9847347
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7686889   -1.8213457   -1.7160321


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2998245   -0.6578388    0.0581899
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2610353   -0.5457391    0.0236685
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0174840   -0.3999950    0.3650270
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0251794   -0.3586474    0.3082885
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0710546   -0.3731285    0.2310192
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0312517   -0.3288439    0.2663405
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2611533   -0.5549968    0.0326902
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1756073   -0.4799643    0.1287496
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.0267432   -0.2414771    0.2949635
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0648615   -0.1994138    0.3291369
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1887544   -0.4988733    0.1213645
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0704557   -0.4225481    0.2816366
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0077808   -0.5041292    0.4885677
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3323691   -0.6632333   -0.0015049
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0766020   -0.4313525    0.2781484
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1091155   -0.4284470    0.2102159
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.1630767   -0.4787438    0.1525905
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.3374103   -0.8506015    0.1757808
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.0938976   -0.5494004    0.7371956
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.5775016   -0.8015506   -0.3534526
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.3564590   -0.4791455   -0.2337726
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2749953   -0.6563447    0.1063542
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1838299   -0.6401259    0.2724661
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.4495436   -0.6610070   -0.2380803
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.2719753   -0.4783498   -0.0656007
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1634750   -0.3507631    0.0238131
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1444656   -0.3337829    0.0448517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1886755   -0.3705704   -0.0067806
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2372807   -0.4196150   -0.0549463
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0973582   -0.3711866    0.1764702
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0797280   -0.1923006    0.0328446
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.1149708   -0.4048671    0.1749255
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0182514   -0.2945227    0.2580199
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.2895849   -0.5311542   -0.0480156
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0643226   -0.3515945    0.2229493
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2282727   -0.3249592   -0.1315861
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0697858   -0.1625428    0.0229712
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0712443   -0.1365118   -0.0059767
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1061653   -0.1672506   -0.0450801
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0378944   -0.2211330    0.1453442
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1104655   -0.0928315    0.3137625
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.7615364   -0.8904553   -0.6326175
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.4178975   -0.5324924   -0.3033026
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.2897941   -0.3955677   -0.1840204
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2266379   -0.3306210   -0.1226548
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.3198411   -0.4948220   -0.1448603
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2253671   -0.3925934   -0.0581408
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1164491   -0.1682855   -0.0646127
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0914958   -0.1443813   -0.0386103
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.2294213   -0.0856132    0.5444558
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1967571   -0.1955523    0.5890665
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1685247   -0.4824585    0.1454090
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0354818   -0.3872243    0.3162608
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.5151971   -0.9637831   -0.0666112
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2285913   -0.6031119    0.1459292
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.2886723   -0.6112162    0.0338715
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.3306503   -0.6468956   -0.0144050
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2880201   -0.6314160    0.0553757
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1659168   -0.5161333    0.1842998
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.2756540   -0.5874917    0.0361837
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.2937876   -0.6013229    0.0137477
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2617206   -0.5891006    0.0656593
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2831910   -0.7084617    0.1420798
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7263889   -1.3654213   -0.0873565
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3412281   -0.9297755    0.2473194
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2492471   -0.4927374   -0.0057568
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0814765   -0.3308395    0.1678865
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.1996397   -0.4406106    0.0413312
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.1926514   -0.4259775    0.0406747
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.6333952   -0.8719523   -0.3948380
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.4567212   -0.7097019   -0.2037406
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.4931252   -0.6971711   -0.2890794
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.3574804   -0.5593063   -0.1556545
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4634550   -0.6710510   -0.2558591
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.4283949   -0.6284906   -0.2282992
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4317126   -0.7321417   -0.1312835
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3919900   -0.7427920   -0.0411880
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.3547843   -0.7076873   -0.0018813
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1474489   -0.3710916    0.0761938
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2753596   -0.5468612   -0.0038580
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.3254215   -0.5924377   -0.0584054
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0215727   -0.1543544    0.1974997
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2890207    0.0993219    0.4787194
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -1.2735264   -1.4402024   -1.1068503
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.6828137   -0.8299405   -0.5356870
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6073383   -0.7216373   -0.4930394
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4772361   -0.5932767   -0.3611955
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1689549   -0.3647186    0.0268088
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1833860   -0.3894609    0.0226889
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2000000   -0.2575389   -0.1424611
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1228602   -0.1790303   -0.0666901
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.1567786   -0.1143922    0.4279494
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1868892   -0.2013368    0.5751152


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1627370   -0.3313538    0.0058797
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0379518   -0.2370957    0.1611921
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0270522   -0.2123516    0.1582471
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1850700   -0.3916393    0.0214993
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0330026   -0.1288028    0.1948079
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0999240   -0.3078622    0.1080142
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0275105   -0.4560406    0.4010196
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1235608   -0.2910991    0.0439775
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0962494   -0.2889267    0.0964279
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.2772115   -0.7699141    0.2154912
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.3862288   -0.5187966   -0.2536611
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2338127   -0.5773787    0.1097533
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2496598   -0.3766278   -0.1226917
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0964026   -0.1985224    0.0057171
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1422421   -0.2504144   -0.0340697
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0624251   -0.1469352    0.0220849
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0383479   -0.1743500    0.0976542
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2060274   -0.4165359    0.0044811
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1240305   -0.1984446   -0.0496163
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0516266   -0.0754913   -0.0277618
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0310517   -0.1097774    0.1718808
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4721801   -0.5747479   -0.3696123
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1650352   -0.2217570   -0.1083134
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1749891   -0.2692520   -0.0807261
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0619225   -0.0932219   -0.0306231
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2185188   -0.0862520    0.5232896
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0562508   -0.2413442    0.1288426
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1984909   -0.4117792    0.0147975
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.2777390   -0.4796386   -0.0758393
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1847246   -0.4324274    0.0629782
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.1921991   -0.3904985    0.0061003
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1888333   -0.4156369    0.0379703
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4464286   -1.0084682    0.1156110
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1049304   -0.2274491    0.0175883
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1374072   -0.2833220    0.0085076
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3703146   -0.5265477   -0.2140815
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2823684   -0.3933660   -0.1713708
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2678130   -0.3811545   -0.1544716
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3755869   -0.6431432   -0.1080306
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1974028   -0.4289595    0.0341539
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1683935   -0.2958493   -0.0409376
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1102175   -0.0234163    0.2438514
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.7672370   -0.9041045   -0.6303695
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3468310   -0.4115214   -0.2821407
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1060228   -0.2100842   -0.0019613
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1040323   -0.1400721   -0.0679924
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1524899   -0.1096005    0.4145804

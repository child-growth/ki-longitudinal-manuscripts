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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
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

agecat      studyid                    country                        single    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            241     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              0     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0            179     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1             30     209
6 months    ki0047075b-MAL-ED          INDIA                          0            234     234
6 months    ki0047075b-MAL-ED          INDIA                          1              0     234
6 months    ki0047075b-MAL-ED          NEPAL                          0            236     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              0     236
6 months    ki0047075b-MAL-ED          PERU                           0            240     273
6 months    ki0047075b-MAL-ED          PERU                           1             33     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            140     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1            114     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            239     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              8     247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1834    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2012
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15114   15757
6 months    ki1119695-PROBIT           BELARUS                        1            643   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7746    8234
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            488    8234
6 months    ki1135781-COHORTS          GUATEMALA                      0            827     894
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     894
6 months    ki1135781-COHORTS          INDIA                          0           4955    4964
6 months    ki1135781-COHORTS          INDIA                          1              9    4964
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2606    2674
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2674
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            212     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              0     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0            148     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1             21     169
24 months   ki0047075b-MAL-ED          INDIA                          0            225     225
24 months   ki0047075b-MAL-ED          INDIA                          1              0     225
24 months   ki0047075b-MAL-ED          NEPAL                          0            228     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              0     228
24 months   ki0047075b-MAL-ED          PERU                           0            176     201
24 months   ki0047075b-MAL-ED          PERU                           1             25     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            131     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1            107     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     214
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       6
24 months   ki1119695-PROBIT           BELARUS                        0           3829    3971
24 months   ki1119695-PROBIT           BELARUS                        1            142    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            379     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     422
24 months   ki1135781-COHORTS          GUATEMALA                      0            932    1021
24 months   ki1135781-COHORTS          GUATEMALA                      1             89    1021
24 months   ki1135781-COHORTS          INDIA                          0           3717    3726
24 months   ki1135781-COHORTS          INDIA                          1              9    3726
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2361    2420
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2420


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/4d0e5f06-79c2-4035-b3f6-aac01716446f/e080b077-b45b-4923-a86e-7a905d0b7991/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4d0e5f06-79c2-4035-b3f6-aac01716446f/e080b077-b45b-4923-a86e-7a905d0b7991/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4d0e5f06-79c2-4035-b3f6-aac01716446f/e080b077-b45b-4923-a86e-7a905d0b7991/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0119521    0.8359674    1.1879368
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.8925005    0.4229832    1.3620177
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0694292    0.9430338    1.1958246
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9335728    0.5253511    1.3417945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.5030504    0.0717537    0.9343471
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.7005894    0.4184197    0.9827592
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5145258    0.3853273    0.6437243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5925000   -0.4882365    1.6732365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0778640    0.0231385    0.1325895
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1178678   -0.0864685    0.3222040
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0323262   -0.1536680    0.0890155
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2226754   -0.6229365    0.1775857
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5762740    0.5158310    0.6367169
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.4544414    0.3855741    0.5233087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3114342    0.2845181    0.3383504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1603302    0.0448152    0.2758451
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1695062    0.0927191    0.2462932
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4832995    0.1776749    0.7889241
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.7098951   -0.7430287   -0.6767615
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0322222   -1.0700926   -0.9943519
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2878918   -0.3308336   -0.2449499
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5047667   -0.6570783   -0.3524552
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4371764    0.2254295    0.6489232
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.3073067   -0.4392963    1.0539098
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1325235    0.0086811    0.2563659
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0606342   -0.3514715    0.4727398
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4465868    0.2296198    0.6635539
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4984027    0.1960968    0.8007086
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0715385   -0.0529948    0.1960717
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6933333   -1.6135001    0.2268334
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6919572    0.5760904    0.8078239
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.2545234    0.0514854    0.4575614
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.1948610   -1.3029880   -1.0867339
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9903211   -1.2208257   -0.7598165
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2587928   -0.3159133   -0.2016722
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.6683200   -0.9032353   -0.4334048
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.6594835   -0.6934635   -0.6255034
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.6300000   -0.6887577   -0.5712423
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.6112385   -0.6489387   -0.5735382
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3271978   -0.4858748   -0.1685208


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797577    0.0268998    0.1326156
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3050103    0.2788985    0.3311222
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1920134    0.1173734    0.2666534
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7104795   -0.7428008   -0.6781581
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2936948   -0.3352840   -0.2521057
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1781043   -1.2781256   -1.0780830
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2796964   -0.3351582   -0.2242346
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6594122   -0.6925753   -0.6262491
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6100579   -0.6471813   -0.5729344


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1194516   -0.6205512    0.3816480
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1358564   -0.5633673    0.2916545
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1975390   -0.3164993    0.7115774
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0779742   -1.0104576    1.1664060
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0400038   -0.1714909    0.2514985
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.1903492   -0.6088920    0.2281936
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.1218325   -0.1928937   -0.0507714
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1511041   -0.2694679   -0.0327403
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.3137933   -0.0007833    0.6283699
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3223272   -0.3726461   -0.2720082
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.2168750   -0.3745043   -0.0592456
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1298696   -0.9083739    0.6486346
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.0718893   -0.5009773    0.3571986
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0518159   -0.3198521    0.4234839
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.7648718   -1.6934273    0.1636837
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.4374338   -0.6779323   -0.1969352
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2045399   -0.0497676    0.4588474
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.4095273   -0.6515370   -0.1675176
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0294835   -0.0383923    0.0973592
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.2840407    0.1214008    0.4466806


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0402296   -0.1134160    0.0329568
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0150336   -0.0659838    0.0359167
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0390231   -0.3385526    0.4165988
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0025255   -0.0327695    0.0378205
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018937   -0.0160616    0.0198490
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0245571   -0.0662858    0.0171717
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0026893   -0.0084116    0.0137903
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0064239   -0.0131108    0.0002630
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0225072   -0.0004753    0.0454898
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0005844   -0.0018989    0.0007302
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0058031   -0.0149892    0.0033831
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0094509   -0.0836099    0.1025116
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0126230   -0.0655419    0.0402958
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0198852   -0.1987749    0.1590045
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0214450   -0.0525145    0.0096245
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0056137   -0.0183156    0.0070883
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0167567   -0.0085407    0.0420541
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0209036   -0.0410448   -0.0007624
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0000712   -0.0016263    0.0017687
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011806   -0.0063141    0.0086754

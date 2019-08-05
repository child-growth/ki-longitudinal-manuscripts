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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1835    2013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            178    2013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            248     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1             29     277
6 months    ki1119695-PROBIT           BELARUS                        0          15118   15761
6 months    ki1119695-PROBIT           BELARUS                        1            643   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           7775    8265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            490    8265
6 months    ki1135781-COHORTS          GUATEMALA                      0            826     893
6 months    ki1135781-COHORTS          GUATEMALA                      1             67     893
6 months    ki1135781-COHORTS          INDIA                          0           4962    4971
6 months    ki1135781-COHORTS          INDIA                          1              9    4971
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2608    2676
6 months    ki1135781-COHORTS          PHILIPPINES                    1             68    2676
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
24 months   ki1119695-PROBIT           BELARUS                        0           3890    4035
24 months   ki1119695-PROBIT           BELARUS                        1            145    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            413     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             43     456
24 months   ki1135781-COHORTS          GUATEMALA                      0            926    1013
24 months   ki1135781-COHORTS          GUATEMALA                      1             87    1013
24 months   ki1135781-COHORTS          INDIA                          0           3747    3756
24 months   ki1135781-COHORTS          INDIA                          1              9    3756
24 months   ki1135781-COHORTS          PHILIPPINES                    0           2357    2416
24 months   ki1135781-COHORTS          PHILIPPINES                    1             59    2416


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
![](/tmp/c000c635-0fe3-4aec-8a80-21a969d29d7d/47ef5abd-5793-472e-9940-32d4a98e9291/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c000c635-0fe3-4aec-8a80-21a969d29d7d/47ef5abd-5793-472e-9940-32d4a98e9291/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c000c635-0fe3-4aec-8a80-21a969d29d7d/47ef5abd-5793-472e-9940-32d4a98e9291/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0631286   -0.0866593    0.2129165
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0077243   -0.4129734    0.3975249
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3143288   -1.4279853   -1.2006724
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.4552372   -1.8035914   -1.1068830
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9874117   -1.2051968   -0.7696266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3201832   -1.5342144   -1.1061519
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3537169   -1.4790610   -1.2283727
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5509933   -0.6023280   -0.4996585
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4971056   -0.6519777   -0.3422334
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5203368   -1.6426949   -1.3979787
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.9261527   -2.2638332   -1.5884721
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1040038    0.0075252    0.2004823
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0464646   -0.0322471    0.1251763
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8802957   -0.9069227   -0.8536687
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.0404179   -1.1493522   -0.9314835
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.7925722   -1.8658077   -1.7193367
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.1786440   -2.5735766   -1.7837114
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1443910   -1.1885939   -1.1001880
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9252584   -1.1353285   -0.7151883
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0774718   -0.0985775    0.2535210
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2072491   -0.7566117    0.3421136
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7209033   -1.8468976   -1.5949091
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.9501649   -2.3319559   -1.5683739
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5377160   -1.7386744   -1.3367575
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9020502   -2.0889352   -1.7151653
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5933173   -2.7301853   -2.4564493
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0416667   -3.6297264   -2.4536070
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1333282   -0.4427659    0.1761096
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0040729   -0.2850721    0.2769262
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -2.3461487   -2.4667375   -2.2255600
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8139844   -3.1128892   -2.5150797
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.8434454   -2.9128897   -2.7740011
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.1442163   -3.3849632   -2.9034694
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0012143   -2.0414003   -1.9610283
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.8522222   -1.9508516   -1.7535928
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3988990   -2.4455199   -2.3522781
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.1814435   -2.3844575   -1.9784295


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5457721   -0.5948454   -0.4966988
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8906213   -0.9166407   -0.8646018
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8089474   -1.8800645   -1.7378303
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0418789   -1.0745363   -1.0092215
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1414425   -1.1836656   -1.0992193
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3925000   -2.5069364   -2.2780636
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8644028   -2.9307312   -2.7980743
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0008573   -2.0401168   -1.9615978
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3962210   -2.4413335   -2.3511085


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.0708529   -0.5021199    0.3604142
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1409084   -0.5042890    0.2224723
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3327715   -0.6362735   -0.0292694
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1977415   -0.6193224    0.2238395
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0538877   -0.1084195    0.2161949
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.4058158   -0.7649286   -0.0467030
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0575391   -0.1460764    0.0309982
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1601222   -0.2710515   -0.0491929
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3860718   -0.7880982    0.0159546
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.2191326    0.0044685    0.4337967
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2847208   -0.8598123    0.2903706
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.2292616   -0.6291053    0.1705822
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3643343   -0.6375568   -0.0911117
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4483494   -1.0521267    0.1554280
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.1292552   -0.2796633    0.5381737
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4678357   -0.7880613   -0.1476101
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3007709   -0.5510585   -0.0504834
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.1489921    0.0424901    0.2554941
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.2174555    0.0091784    0.4257326


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0121079   -0.0829022    0.0586864
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0124721   -0.0542605    0.0293163
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0759643   -0.2716679    0.1197393
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0064046   -0.0207426    0.0079335
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0052212   -0.0088605    0.0193029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0421000   -0.0819136   -0.0022864
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0029949   -0.0171894    0.0231792
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0103256   -0.0167555   -0.0038957
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0163751   -0.0397084    0.0069581
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0029485   -0.0084000    0.0142970
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0356375   -0.1035910    0.0323161
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0291962   -0.0787411    0.0203488
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0851202   -0.2567303    0.0864899
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0125705   -0.0322012    0.0070601
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0019234   -0.0216636    0.0255103
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0463513   -0.0779775   -0.0147251
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0209574   -0.0414585   -0.0004562
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0003570   -0.0023157    0.0030297
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0026780   -0.0064611    0.0118171

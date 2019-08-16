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
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            257     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              0     257
Birth       ki0047075b-MAL-ED          BRAZIL                         0            166     191
Birth       ki0047075b-MAL-ED          BRAZIL                         1             25     191
Birth       ki0047075b-MAL-ED          INDIA                          0            205     205
Birth       ki0047075b-MAL-ED          INDIA                          1              0     205
Birth       ki0047075b-MAL-ED          NEPAL                          0            173     173
Birth       ki0047075b-MAL-ED          NEPAL                          1              0     173
Birth       ki0047075b-MAL-ED          PERU                           0            253     287
Birth       ki0047075b-MAL-ED          PERU                           1             34     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            146     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1            116     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            117     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6     123
Birth       ki1119695-PROBIT           BELARUS                        0          13343   13884
Birth       ki1119695-PROBIT           BELARUS                        1            541   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          12902   13772
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            870   13772
Birth       ki1135781-COHORTS          GUATEMALA                      0            719     767
Birth       ki1135781-COHORTS          GUATEMALA                      1             48     767
Birth       ki1135781-COHORTS          INDIA                          0           4771    4778
Birth       ki1135781-COHORTS          INDIA                          1              7    4778
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2936    3010
Birth       ki1135781-COHORTS          PHILIPPINES                    1             74    3010
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/93510d1e-999a-4ab4-92e1-5443e12faea7/093abc3a-755f-44a8-9c27-363347bf02c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/93510d1e-999a-4ab4-92e1-5443e12faea7/093abc3a-755f-44a8-9c27-363347bf02c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/93510d1e-999a-4ab4-92e1-5443e12faea7/093abc3a-755f-44a8-9c27-363347bf02c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.6863424   -0.8526414   -0.5200433
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -1.2479648   -1.6909001   -0.8050295
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.9038494   -1.0183697   -0.7893291
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -1.1447134   -1.6065082   -0.6829186
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6786241   -0.8906490   -0.4665992
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.7492655   -0.9810456   -0.5174854
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.9257265   -1.1481121   -0.7033409
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0916667   -1.5252286   -0.6581047
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3288908    1.1620816    1.4957001
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.9081067    0.8325744    0.9836389
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4975902   -0.5188520   -0.4763285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.5889789   -0.6843639   -0.4935939
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1743864    0.0831956    0.2655772
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4196950   -0.9874009    0.1480110
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.6778139   -0.7115208   -0.6441070
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4242857   -0.4784569   -0.3701145
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2539269   -0.2966477   -0.2112062
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.8730674   -0.9204207   -0.8257140
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0608874   -0.0914433    0.2132181
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1279525   -0.6401973    0.3842923
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3150923   -1.4277589   -1.2024257
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.3290477   -1.6985862   -0.9595092
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9527131   -1.1468151   -0.7586111
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.4172191   -1.6670391   -1.1673991
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3537169   -1.4790610   -1.2283727
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5514583   -1.9539746   -1.1489420
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5501233   -0.6015088   -0.4987379
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4925414   -0.6535106   -0.3315722
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5187556   -1.6412432   -1.3962680
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -1.9247132   -2.2595193   -1.5899071
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1048212    0.0092646    0.2003779
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0200589   -0.0645100    0.1046278
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.8787404   -0.9054899   -0.8519910
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.0978733   -1.2248714   -0.9708753
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.7804421   -1.8535675   -1.7073167
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.3405334   -2.7829829   -1.8980840
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -1.0423478   -1.0757913   -1.0089044
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.7833333   -0.8545896   -0.7120771
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1545196   -1.2124901   -1.0965490
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.7939155   -0.8560740   -0.7317570
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0657647   -0.1117323    0.2432616
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.3117262   -0.9370106    0.3135583
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.7257098   -1.8516099   -1.5998098
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -1.9110932   -2.3027259   -1.5194606
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.5340979   -1.7350220   -1.3331738
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.8106727   -2.0303580   -1.5909875
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5933173   -2.7301853   -2.4564493
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0416667   -3.6297264   -2.4536070
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1300131   -0.4378230    0.1777968
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0053630   -0.2912793    0.2805534
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -2.3395586   -2.4611359   -2.2179813
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.9038280   -3.2049394   -2.6027166
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.8506272   -2.9222358   -2.7790186
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.0721136   -3.3316938   -2.8125335
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0012143   -2.0414003   -1.9610283
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.8522222   -1.9508516   -1.7535928
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.4061059   -2.4642831   -2.3479286
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.4666954   -2.4897993   -2.4435914


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5014820   -0.5220753   -0.4808887
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1511213    0.0632481    0.2389944
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6774424   -0.7103357   -0.6445492
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2465548   -0.2856502   -0.2074594
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
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5616224   -1.0352031   -0.0880418
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.2408640   -0.7170005    0.2352726
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.0706414   -0.3851690    0.2438861
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1659402   -0.6532094    0.3213291
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -0.4207842   -0.5724373   -0.2691311
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0913887   -0.1890936    0.0063162
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.5940813   -1.1692633   -0.0188994
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2535282    0.1897264    0.3173300
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.6191404   -0.6825270   -0.5557538
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.1888399   -0.7245395    0.3468597
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0139554   -0.3990424    0.3711316
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4645060   -0.7811281   -0.1478839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1977415   -0.6193224    0.2238395
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0575819   -0.1107302    0.2258941
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.4059576   -0.7626605   -0.0492548
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -0.0847623   -0.1731693    0.0036446
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.2191329   -0.3485947   -0.0896711
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.5600913   -1.0087788   -0.1114038
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  0.2590145    0.1803003    0.3377287
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.3606040    0.2773354    0.4438727
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.3774909   -1.0308842    0.2759025
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.1853834   -0.5965816    0.2258147
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.2765749   -0.5725919    0.0194421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.4483494   -1.0521267    0.1554280
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.1246501   -0.2783586    0.5276589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.5642694   -0.8891174   -0.2394214
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2214865   -0.4906440    0.0476711
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.1489921    0.0424901    0.2554941
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.0605895   -0.1228266    0.0016476


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0746000   -0.1406244   -0.0085756
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0283806   -0.0837834    0.0270223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0479790   -0.2256992    0.1297412
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0080946   -0.0326956    0.0165063
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0034133   -0.0209231    0.0140965
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0038918   -0.0096028    0.0018193
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0232651   -0.0501792    0.0036490
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0003714   -0.0012471    0.0019900
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073721   -0.0080453    0.0227895
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0098667   -0.0812038    0.0614705
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0117087   -0.0548585    0.0314412
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1106629   -0.2748345    0.0535087
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0064046   -0.0207426    0.0079335
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0043513   -0.0098876    0.0185901
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0436812   -0.0835811   -0.0037814
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0021774   -0.0140674    0.0184222
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0118809   -0.0188298   -0.0049319
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0285053   -0.0528278   -0.0041827
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0004689   -0.0015226    0.0024605
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0130771   -0.0240888    0.0502431
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0239304   -0.0999531    0.0520923
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0243897   -0.0755802    0.0268008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0887383   -0.2560093    0.0785328
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0125705   -0.0322012    0.0070601
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0013917   -0.0225002    0.0197168
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0529414   -0.0864780   -0.0194047
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0137756   -0.0400293    0.0124781
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0003570   -0.0023157    0.0030297
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0098849   -0.0232912    0.0430609

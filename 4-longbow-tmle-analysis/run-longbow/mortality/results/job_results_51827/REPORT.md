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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        pers_wasted06    co_occurence   n_cell      n
-------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                           0      202    221
ki0047075b-MAL-ED          BANGLADESH                     0                           1       13    221
ki0047075b-MAL-ED          BANGLADESH                     1                           0        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                           1        1    221
ki0047075b-MAL-ED          BRAZIL                         0                           0      178    180
ki0047075b-MAL-ED          BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                           0        1    180
ki0047075b-MAL-ED          BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED          INDIA                          0                           0      199    228
ki0047075b-MAL-ED          INDIA                          0                           1       13    228
ki0047075b-MAL-ED          INDIA                          1                           0       12    228
ki0047075b-MAL-ED          INDIA                          1                           1        4    228
ki0047075b-MAL-ED          NEPAL                          0                           0      222    229
ki0047075b-MAL-ED          NEPAL                          0                           1        3    229
ki0047075b-MAL-ED          NEPAL                          1                           0        3    229
ki0047075b-MAL-ED          NEPAL                          1                           1        1    229
ki0047075b-MAL-ED          PERU                           0                           0      216    222
ki0047075b-MAL-ED          PERU                           0                           1        6    222
ki0047075b-MAL-ED          PERU                           1                           0        0    222
ki0047075b-MAL-ED          PERU                           1                           1        0    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           0      235    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           1        4    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        0    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           0      224    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                           0      308    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                           1        7    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           0       36    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           1       15    366
ki1000108-IRC              INDIA                          0                           0      325    405
ki1000108-IRC              INDIA                          0                           1       22    405
ki1000108-IRC              INDIA                          1                           0       55    405
ki1000108-IRC              INDIA                          1                           1        3    405
ki1000109-EE               PAKISTAN                       0                           0      263    350
ki1000109-EE               PAKISTAN                       0                           1       62    350
ki1000109-EE               PAKISTAN                       1                           0       12    350
ki1000109-EE               PAKISTAN                       1                           1       13    350
ki1000109-ResPak           PAKISTAN                       0                           0        7      9
ki1000109-ResPak           PAKISTAN                       0                           1        0      9
ki1000109-ResPak           PAKISTAN                       1                           0        2      9
ki1000109-ResPak           PAKISTAN                       1                           1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                           0     1052   1256
ki1000304b-SAS-CompFeed    INDIA                          0                           1       96   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           0       76   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           1       32   1256
ki1000304b-SAS-FoodSuppl   INDIA                          0                           0      218    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                           1       35    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           0       45    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           1       25    323
ki1017093-NIH-Birth        BANGLADESH                     0                           0      383    462
ki1017093-NIH-Birth        BANGLADESH                     0                           1       35    462
ki1017093-NIH-Birth        BANGLADESH                     1                           0       28    462
ki1017093-NIH-Birth        BANGLADESH                     1                           1       16    462
ki1017093b-PROVIDE         BANGLADESH                     0                           0      505    551
ki1017093b-PROVIDE         BANGLADESH                     0                           1       33    551
ki1017093b-PROVIDE         BANGLADESH                     1                           0       10    551
ki1017093b-PROVIDE         BANGLADESH                     1                           1        3    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                           0      592    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                           1       24    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           0       13    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           1        5    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      937    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       19    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       22    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        2    980
ki1101329-Keneba           GAMBIA                         0                           0     1628   1757
ki1101329-Keneba           GAMBIA                         0                           1       83   1757
ki1101329-Keneba           GAMBIA                         1                           0       32   1757
ki1101329-Keneba           GAMBIA                         1                           1       14   1757
ki1113344-GMS-Nepal        NEPAL                          0                           0      439    550
ki1113344-GMS-Nepal        NEPAL                          0                           1       44    550
ki1113344-GMS-Nepal        NEPAL                          1                           0       53    550
ki1113344-GMS-Nepal        NEPAL                          1                           1       14    550
ki1114097-CMIN             BANGLADESH                     0                           0      205    237
ki1114097-CMIN             BANGLADESH                     0                           1       23    237
ki1114097-CMIN             BANGLADESH                     1                           0        6    237
ki1114097-CMIN             BANGLADESH                     1                           1        3    237
ki1114097-CMIN             BRAZIL                         0                           0      112    115
ki1114097-CMIN             BRAZIL                         0                           1        0    115
ki1114097-CMIN             BRAZIL                         1                           0        3    115
ki1114097-CMIN             BRAZIL                         1                           1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                           0      507    542
ki1114097-CMIN             GUINEA-BISSAU                  0                           1       16    542
ki1114097-CMIN             GUINEA-BISSAU                  1                           0       18    542
ki1114097-CMIN             GUINEA-BISSAU                  1                           1        1    542
ki1114097-CMIN             PERU                           0                           0      366    375
ki1114097-CMIN             PERU                           0                           1        0    375
ki1114097-CMIN             PERU                           1                           0        9    375
ki1114097-CMIN             PERU                           1                           1        0    375
ki1114097-CONTENT          PERU                           0                           0      199    200
ki1114097-CONTENT          PERU                           0                           1        1    200
ki1114097-CONTENT          PERU                           1                           0        0    200
ki1114097-CONTENT          PERU                           1                           1        0    200
ki1119695-PROBIT           BELARUS                        0                           0     2083   2146
ki1119695-PROBIT           BELARUS                        0                           1        0   2146
ki1119695-PROBIT           BELARUS                        1                           0       63   2146
ki1119695-PROBIT           BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                           0     1512   1655
ki1126311-ZVITAMBO         ZIMBABWE                       0                           1       71   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                           0       57   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                           1       15   1655
ki1135781-COHORTS          GUATEMALA                      0                           0      706    774
ki1135781-COHORTS          GUATEMALA                      0                           1       31    774
ki1135781-COHORTS          GUATEMALA                      1                           0       30    774
ki1135781-COHORTS          GUATEMALA                      1                           1        7    774
ki1135781-COHORTS          PHILIPPINES                    0                           0     2191   2487
ki1135781-COHORTS          PHILIPPINES                    0                           1      154   2487
ki1135781-COHORTS          PHILIPPINES                    1                           0      109   2487
ki1135781-COHORTS          PHILIPPINES                    1                           1       33   2487
ki1148112-LCNI-5           MALAWI                         0                           0      667    693
ki1148112-LCNI-5           MALAWI                         0                           1       16    693
ki1148112-LCNI-5           MALAWI                         1                           0        9    693
ki1148112-LCNI-5           MALAWI                         1                           1        1    693
kiGH5241-JiVitA-4          BANGLADESH                     0                           0     3914   4527
kiGH5241-JiVitA-4          BANGLADESH                     0                           1      337   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           0      180   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           1       96   4527


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/bb151027-5066-4c11-81bb-b339222b906d/09b27288-1229-4076-9087-c311fac696c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb151027-5066-4c11-81bb-b339222b906d/09b27288-1229-4076-9087-c311fac696c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb151027-5066-4c11-81bb-b339222b906d/09b27288-1229-4076-9087-c311fac696c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb151027-5066-4c11-81bb-b339222b906d/09b27288-1229-4076-9087-c311fac696c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0222222   0.0059217   0.0385227
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.2941176   0.1688947   0.4193406
ki1000109-EE               PAKISTAN      0                    NA                0.1905262   0.1477606   0.2332918
ki1000109-EE               PAKISTAN      1                    NA                0.5310431   0.3148671   0.7472192
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0848814   0.0739285   0.0958342
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2574720   0.1894753   0.3254686
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1380230   0.0953461   0.1806998
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3537470   0.2368947   0.4705993
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0843481   0.0576746   0.1110217
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3488508   0.2028823   0.4948193
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0389610   0.0236683   0.0542538
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.2777778   0.0706975   0.4848581
ki1101329-Keneba           GAMBIA        0                    NA                0.0485894   0.0383954   0.0587834
ki1101329-Keneba           GAMBIA        1                    NA                0.2797234   0.1430345   0.4164124
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0908902   0.0651974   0.1165830
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2045167   0.1041477   0.3048856
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0449104   0.0346933   0.0551274
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2049203   0.1073200   0.3025206
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0420624   0.0275610   0.0565638
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1891892   0.0629088   0.3154696
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0653070   0.0552861   0.0753280
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2564872   0.1865772   0.3263972
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0808199   0.0716030   0.0900367
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3249603   0.2295419   0.4203787


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552077   0.0445257   0.0658898
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0519637   0.0412672   0.0626603
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0490956   0.0338639   0.0643273
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ---------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 13.235294   5.667550   30.908064
ki1000109-EE               PAKISTAN      0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                  2.787244   1.747105    4.446631
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  3.033316   2.296406    4.006698
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  2.562958   1.628280    4.034166
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  4.135845   2.450607    6.979989
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                  7.129630   3.070223   16.556328
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  5.756886   3.383474    9.795178
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  2.250151   1.276540    3.966331
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  4.562871   2.691034    7.736727
ki1135781-COHORTS          GUATEMALA     0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                  4.497820   2.121945    9.533891
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  3.927404   2.874928    5.365180
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  4.020797   2.951055    5.478316


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0378871   0.0178137   0.0579604
ki1000109-EE               PAKISTAN      0                    NA                0.0237595   0.0065903   0.0409287
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0170295   0.0109684   0.0230905
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0477356   0.0198144   0.0756567
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0260415   0.0104769   0.0416061
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0067803   0.0001243   0.0134362
ki1101329-Keneba           GAMBIA        0                    NA                0.0066184   0.0026602   0.0105766
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0145643   0.0018344   0.0272943
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0070534   0.0026410   0.0114657
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0070332   0.0005665   0.0134999
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0098839   0.0056005   0.0141674
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0148285   0.0099130   0.0197440


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.6303030   0.3262436   0.7971435
ki1000109-EE               PAKISTAN      0                    NA                0.1108776   0.0289261   0.1859131
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1671017   0.1101070   0.2204461
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2569764   0.0996416   0.3868175
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2359051   0.0943780   0.3553150
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.1482311   0.0002406   0.2743151
ki1101329-Keneba           GAMBIA        0                    NA                0.1198812   0.0488884   0.1855750
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1381102   0.0127804   0.2475290
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1357363   0.0511791   0.2127578
ki1135781-COHORTS          GUATEMALA     0                    NA                0.1432550   0.0090294   0.2593000
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1314512   0.0750747   0.1843914
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1550311   0.1065460   0.2008850

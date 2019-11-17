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
* brthmon
* single
* hhwealth_quart
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_brthmon
* delta_single
* delta_hhwealth_quart
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
ki0047075b-MAL-ED          INDIA                          0                           0      200    228
ki0047075b-MAL-ED          INDIA                          0                           1       13    228
ki0047075b-MAL-ED          INDIA                          1                           0       11    228
ki0047075b-MAL-ED          INDIA                          1                           1        4    228
ki0047075b-MAL-ED          NEPAL                          0                           0      222    229
ki0047075b-MAL-ED          NEPAL                          0                           1        4    229
ki0047075b-MAL-ED          NEPAL                          1                           0        3    229
ki0047075b-MAL-ED          NEPAL                          1                           1        0    229
ki0047075b-MAL-ED          PERU                           0                           0      216    222
ki0047075b-MAL-ED          PERU                           0                           1        6    222
ki0047075b-MAL-ED          PERU                           1                           0        0    222
ki0047075b-MAL-ED          PERU                           1                           1        0    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           0      235    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           1        3    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        1    241
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
ki1000109-EE               PAKISTAN                       0                           0      258    346
ki1000109-EE               PAKISTAN                       0                           1       63    346
ki1000109-EE               PAKISTAN                       1                           0       14    346
ki1000109-EE               PAKISTAN                       1                           1       11    346
ki1000109-ResPak           PAKISTAN                       0                           0        7      9
ki1000109-ResPak           PAKISTAN                       0                           1        0      9
ki1000109-ResPak           PAKISTAN                       1                           0        1      9
ki1000109-ResPak           PAKISTAN                       1                           1        1      9
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
ki1017093b-PROVIDE         BANGLADESH                     0                           0      516    563
ki1017093b-PROVIDE         BANGLADESH                     0                           1       34    563
ki1017093b-PROVIDE         BANGLADESH                     1                           0       10    563
ki1017093b-PROVIDE         BANGLADESH                     1                           1        3    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                           0      592    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                           1       24    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           0       13    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           1        5    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      937    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       19    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0       22    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        2    980
ki1101329-Keneba           GAMBIA                         0                           0     1629   1775
ki1101329-Keneba           GAMBIA                         0                           1       85   1775
ki1101329-Keneba           GAMBIA                         1                           0       46   1775
ki1101329-Keneba           GAMBIA                         1                           1       15   1775
ki1113344-GMS-Nepal        NEPAL                          0                           0      440    550
ki1113344-GMS-Nepal        NEPAL                          0                           1       47    550
ki1113344-GMS-Nepal        NEPAL                          1                           0       50    550
ki1113344-GMS-Nepal        NEPAL                          1                           1       13    550
ki1114097-CMIN             BANGLADESH                     0                           0      205    237
ki1114097-CMIN             BANGLADESH                     0                           1       23    237
ki1114097-CMIN             BANGLADESH                     1                           0        6    237
ki1114097-CMIN             BANGLADESH                     1                           1        3    237
ki1114097-CONTENT          PERU                           0                           0      199    200
ki1114097-CONTENT          PERU                           0                           1        1    200
ki1114097-CONTENT          PERU                           1                           0        0    200
ki1114097-CONTENT          PERU                           1                           1        0    200
ki1119695-PROBIT           BELARUS                        0                           0     2083   2146
ki1119695-PROBIT           BELARUS                        0                           1        0   2146
ki1119695-PROBIT           BELARUS                        1                           0       63   2146
ki1119695-PROBIT           BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                           0     1534   1680
ki1126311-ZVITAMBO         ZIMBABWE                       0                           1       73   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                           0       58   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                           1       15   1680
ki1135781-COHORTS          GUATEMALA                      0                           0      706    774
ki1135781-COHORTS          GUATEMALA                      0                           1       31    774
ki1135781-COHORTS          GUATEMALA                      1                           0       30    774
ki1135781-COHORTS          GUATEMALA                      1                           1        7    774
ki1135781-COHORTS          PHILIPPINES                    0                           0     2191   2487
ki1135781-COHORTS          PHILIPPINES                    0                           1      154   2487
ki1135781-COHORTS          PHILIPPINES                    1                           0      109   2487
ki1135781-COHORTS          PHILIPPINES                    1                           1       33   2487
ki1148112-LCNI-5           MALAWI                         0                           0      666    693
ki1148112-LCNI-5           MALAWI                         0                           1       17    693
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
![](/tmp/8de5bc73-6c46-48da-8fa3-2807a4378e2b/47514193-389c-415e-80e6-5cdf157b4ec2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8de5bc73-6c46-48da-8fa3-2807a4378e2b/47514193-389c-415e-80e6-5cdf157b4ec2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8de5bc73-6c46-48da-8fa3-2807a4378e2b/47514193-389c-415e-80e6-5cdf157b4ec2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8de5bc73-6c46-48da-8fa3-2807a4378e2b/47514193-389c-415e-80e6-5cdf157b4ec2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0222222   0.0059217   0.0385227
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.2941176   0.1688947   0.4193406
ki1000109-EE               PAKISTAN      0                    NA                0.1963471   0.1528059   0.2398883
ki1000109-EE               PAKISTAN      1                    NA                0.4574005   0.2584458   0.6563552
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0851274   0.0744427   0.0958120
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2599961   0.1845789   0.3354133
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1387334   0.0959249   0.1815418
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3519547   0.2375597   0.4663498
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0845619   0.0579225   0.1112013
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3451343   0.1981381   0.4921306
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0389610   0.0236683   0.0542538
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.2777778   0.0706975   0.4848581
ki1101329-Keneba           GAMBIA        0                    NA                0.0497257   0.0394305   0.0600209
ki1101329-Keneba           GAMBIA        1                    NA                0.2368470   0.1276001   0.3460938
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0966137   0.0703174   0.1229100
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1729159   0.0706079   0.2752239
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0454626   0.0352611   0.0556642
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2233887   0.1241834   0.3225939
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0420624   0.0275610   0.0565638
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1891892   0.0629088   0.3154696
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0655745   0.0555563   0.0755927
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2309959   0.1596057   0.3023862
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0794111   0.0703108   0.0885114
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3361529   0.2589456   0.4133603


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670676
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0490956   0.0338639   0.0643273
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 13.235294   5.6675503   30.908064
ki1000109-EE               PAKISTAN      0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                  2.329550   1.4264508    3.804411
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  3.054201   2.2553743    4.135963
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  2.536915   1.6209949    3.970362
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  4.081441   2.3970445    6.949457
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                  7.129630   3.0702229   16.556328
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  4.763068   2.8737594    7.894475
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  1.789766   0.9315601    3.438600
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  4.913677   2.9870373    8.082999
ki1135781-COHORTS          GUATEMALA     0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                  4.497820   2.1219446    9.533891
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  3.522650   2.4964936    4.970598
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  4.233071   3.2811481    5.461165


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0378871   0.0178137   0.0579604
ki1000109-EE               PAKISTAN      0                    NA                0.0175257   0.0013395   0.0337119
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0167835   0.0103961   0.0231708
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0470251   0.0191869   0.0748634
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0258277   0.0100616   0.0415939
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0067803   0.0001243   0.0134362
ki1101329-Keneba           GAMBIA        0                    NA                0.0066123   0.0025493   0.0106753
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0124772   0.0002184   0.0247360
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0069183   0.0025722   0.0112645
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0070332   0.0005665   0.0134999
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0096165   0.0053374   0.0138956
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0162372   0.0110021   0.0214723


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.6303030    0.3262436   0.7971435
ki1000109-EE               PAKISTAN      0                    NA                0.0819446    0.0041533   0.1536591
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1646877    0.1054461   0.2200060
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2531520    0.0960453   0.3829537
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2339688    0.0908541   0.3545548
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.1482311    0.0002406   0.2743151
ki1101329-Keneba           GAMBIA        0                    NA                0.1173686    0.0456660   0.1836838
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1143744   -0.0024438   0.2175794
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1320771    0.0493773   0.2075824
ki1135781-COHORTS          GUATEMALA     0                    NA                0.1432550    0.0090294   0.2593000
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1278946    0.0716087   0.1807680
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1697594    0.1185923   0.2179562

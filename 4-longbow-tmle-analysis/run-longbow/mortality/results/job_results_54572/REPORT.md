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

**Intervention Variable:** ever_wasted06

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

studyid                    country                        ever_wasted06    co_occurence   n_cell      n
-------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                           0      165    221
ki0047075b-MAL-ED          BANGLADESH                     0                           1        4    221
ki0047075b-MAL-ED          BANGLADESH                     1                           0       42    221
ki0047075b-MAL-ED          BANGLADESH                     1                           1       10    221
ki0047075b-MAL-ED          BRAZIL                         0                           0      166    180
ki0047075b-MAL-ED          BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                           0       13    180
ki0047075b-MAL-ED          BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED          INDIA                          0                           0      147    228
ki0047075b-MAL-ED          INDIA                          0                           1        4    228
ki0047075b-MAL-ED          INDIA                          1                           0       64    228
ki0047075b-MAL-ED          INDIA                          1                           1       13    228
ki0047075b-MAL-ED          NEPAL                          0                           0      181    229
ki0047075b-MAL-ED          NEPAL                          0                           1        2    229
ki0047075b-MAL-ED          NEPAL                          1                           0       44    229
ki0047075b-MAL-ED          NEPAL                          1                           1        2    229
ki0047075b-MAL-ED          PERU                           0                           0      208    222
ki0047075b-MAL-ED          PERU                           0                           1        5    222
ki0047075b-MAL-ED          PERU                           1                           0        8    222
ki0047075b-MAL-ED          PERU                           1                           1        1    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           0      212    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                           1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           0       25    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                           1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           0      211    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           0       13    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                           0      171    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                           1        4    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           0      173    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                           1       18    366
ki1000108-IRC              INDIA                          0                           0      175    405
ki1000108-IRC              INDIA                          0                           1       10    405
ki1000108-IRC              INDIA                          1                           0      205    405
ki1000108-IRC              INDIA                          1                           1       15    405
ki1000109-EE               PAKISTAN                       0                           0      190    346
ki1000109-EE               PAKISTAN                       0                           1       35    346
ki1000109-EE               PAKISTAN                       1                           0       82    346
ki1000109-EE               PAKISTAN                       1                           1       39    346
ki1000109-ResPak           PAKISTAN                       0                           0        4      9
ki1000109-ResPak           PAKISTAN                       0                           1        0      9
ki1000109-ResPak           PAKISTAN                       1                           0        4      9
ki1000109-ResPak           PAKISTAN                       1                           1        1      9
ki1000304b-SAS-CompFeed    INDIA                          0                           0      899   1256
ki1000304b-SAS-CompFeed    INDIA                          0                           1       72   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           0      229   1256
ki1000304b-SAS-CompFeed    INDIA                          1                           1       56   1256
ki1000304b-SAS-FoodSuppl   INDIA                          0                           0      218    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                           1       35    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           0       45    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                           1       25    323
ki1017093-NIH-Birth        BANGLADESH                     0                           0      281    462
ki1017093-NIH-Birth        BANGLADESH                     0                           1       14    462
ki1017093-NIH-Birth        BANGLADESH                     1                           0      130    462
ki1017093-NIH-Birth        BANGLADESH                     1                           1       37    462
ki1017093b-PROVIDE         BANGLADESH                     0                           0      398    563
ki1017093b-PROVIDE         BANGLADESH                     0                           1       23    563
ki1017093b-PROVIDE         BANGLADESH                     1                           0      128    563
ki1017093b-PROVIDE         BANGLADESH                     1                           1       14    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                           0      440    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                           1       14    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           0      165    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                           1       15    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           0      829    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                           1       14    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           0      130    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                           1        7    980
ki1101329-Keneba           GAMBIA                         0                           0     1218   1775
ki1101329-Keneba           GAMBIA                         0                           1       45   1775
ki1101329-Keneba           GAMBIA                         1                           0      457   1775
ki1101329-Keneba           GAMBIA                         1                           1       55   1775
ki1113344-GMS-Nepal        NEPAL                          0                           0      302    550
ki1113344-GMS-Nepal        NEPAL                          0                           1       28    550
ki1113344-GMS-Nepal        NEPAL                          1                           0      188    550
ki1113344-GMS-Nepal        NEPAL                          1                           1       32    550
ki1114097-CMIN             BANGLADESH                     0                           0      179    237
ki1114097-CMIN             BANGLADESH                     0                           1       17    237
ki1114097-CMIN             BANGLADESH                     1                           0       32    237
ki1114097-CMIN             BANGLADESH                     1                           1        9    237
ki1114097-CONTENT          PERU                           0                           0      196    200
ki1114097-CONTENT          PERU                           0                           1        1    200
ki1114097-CONTENT          PERU                           1                           0        3    200
ki1114097-CONTENT          PERU                           1                           1        0    200
ki1119695-PROBIT           BELARUS                        0                           0     1618   2146
ki1119695-PROBIT           BELARUS                        0                           1        0   2146
ki1119695-PROBIT           BELARUS                        1                           0      528   2146
ki1119695-PROBIT           BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                           0     1305   1680
ki1126311-ZVITAMBO         ZIMBABWE                       0                           1       56   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                           0      287   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                           1       32   1680
ki1135781-COHORTS          GUATEMALA                      0                           0      594    774
ki1135781-COHORTS          GUATEMALA                      0                           1       26    774
ki1135781-COHORTS          GUATEMALA                      1                           0      142    774
ki1135781-COHORTS          GUATEMALA                      1                           1       12    774
ki1135781-COHORTS          PHILIPPINES                    0                           0     1777   2487
ki1135781-COHORTS          PHILIPPINES                    0                           1      112   2487
ki1135781-COHORTS          PHILIPPINES                    1                           0      523   2487
ki1135781-COHORTS          PHILIPPINES                    1                           1       75   2487
ki1148112-LCNI-5           MALAWI                         0                           0      666    693
ki1148112-LCNI-5           MALAWI                         0                           1       17    693
ki1148112-LCNI-5           MALAWI                         1                           0        9    693
ki1148112-LCNI-5           MALAWI                         1                           1        1    693
kiGH5241-JiVitA-4          BANGLADESH                     0                           0     3657   4527
kiGH5241-JiVitA-4          BANGLADESH                     0                           1      288   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           0      437   4527
kiGH5241-JiVitA-4          BANGLADESH                     1                           1      145   4527


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
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/ac155f05-73c5-4bcb-a771-779dfca2b8db/f28b31ed-40c7-4c58-85ef-d880aa80dec2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac155f05-73c5-4bcb-a771-779dfca2b8db/f28b31ed-40c7-4c58-85ef-d880aa80dec2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ac155f05-73c5-4bcb-a771-779dfca2b8db/f28b31ed-40c7-4c58-85ef-d880aa80dec2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac155f05-73c5-4bcb-a771-779dfca2b8db/f28b31ed-40c7-4c58-85ef-d880aa80dec2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0557008   0.0231776   0.0882239
ki1000108-IRC              INDIA                          1                    NA                0.0700735   0.0366452   0.1035017
ki1000109-EE               PAKISTAN                       0                    NA                0.1518420   0.1051299   0.1985542
ki1000109-EE               PAKISTAN                       1                    NA                0.3196810   0.2343496   0.4050124
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0768070   0.0654555   0.0881586
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1826473   0.1378739   0.2274206
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1389246   0.0961334   0.1817158
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3511589   0.2368934   0.4654245
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0469525   0.0225906   0.0713143
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2154485   0.1518910   0.2790060
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0564762   0.0347126   0.0782399
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1000646   0.0505880   0.1495412
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0314503   0.0154855   0.0474151
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0796158   0.0392106   0.1200210
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0166074   0.0079762   0.0252385
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0510949   0.0142048   0.0879850
ki1101329-Keneba           GAMBIA                         0                    NA                0.0363421   0.0260861   0.0465981
ki1101329-Keneba           GAMBIA                         1                    NA                0.1002030   0.0743422   0.1260639
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0850717   0.0550138   0.1151295
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1471213   0.1006181   0.1936245
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0867347   0.0472496   0.1262198
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2195122   0.0925464   0.3464780
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0411934   0.0306378   0.0517490
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1054878   0.0725431   0.1384325
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0419496   0.0261077   0.0577915
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0758759   0.0332732   0.1184785
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0586506   0.0480419   0.0692594
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1288088   0.1025834   0.1550342
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0732182   0.0641615   0.0822749
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2449541   0.1995947   0.2903136


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0563380   0.0456085   0.0670675
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0523810   0.0417242   0.0630377
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0490956   0.0338639   0.0643273
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0956483   0.0855904   0.1057063


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.258035   0.5909956   2.677941
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.105352   1.3982219   3.170104
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.378001   1.7422374   3.245764
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.527695   1.6132549   3.960466
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.588652   2.5250205   8.338834
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.771801   0.9455719   3.319978
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.531477   1.2356816   5.186107
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 3.076642   1.2639518   7.488995
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.757218   1.8836859   4.035838
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.729381   1.0755682   2.780631
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.530846   1.2122647   5.283651
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.560797   1.7095096   3.836000
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.808738   0.9198909   3.556436
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.196205   1.6754593   2.878802
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.345534   2.6854367   4.167888


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0060276   -0.0193296   0.0313849
ki1000109-EE               PAKISTAN                       0                    NA                0.0620308    0.0274034   0.0966582
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0251038    0.0123912   0.0378164
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0468339    0.0189015   0.0747664
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0634371    0.0377699   0.0891044
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0092432   -0.0045156   0.0230019
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0142910    0.0018353   0.0267467
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048212   -0.0005279   0.0101703
ki1101329-Keneba           GAMBIA                         0                    NA                0.0199959    0.0116105   0.0283814
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0240192    0.0015797   0.0464588
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0229699   -0.0009080   0.0468479
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0111876    0.0045226   0.0178526
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0071460   -0.0019495   0.0162415
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0165404    0.0096879   0.0233928
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0224301    0.0163633   0.0284969


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0976479   -0.4185584   0.4260092
ki1000109-EE               PAKISTAN                       0                    NA                0.2900358    0.1168388   0.4292671
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2463309    0.1266753   0.3495923
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2521227    0.0946213   0.3822249
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5746659    0.3414695   0.7252837
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1406458   -0.0887591   0.3217144
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3124305    0.0128150   0.5211113
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2249901   -0.0446753   0.4250459
ki1101329-Keneba           GAMBIA                         0                    NA                0.3549280    0.2069485   0.4752953
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2201764   -0.0074830   0.3963920
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2093799   -0.0268154   0.3912439
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2135812    0.0836833   0.3250647
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1455525   -0.0551893   0.3081047
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2199778    0.1277654   0.3024416
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2345059    0.1758213   0.2890119

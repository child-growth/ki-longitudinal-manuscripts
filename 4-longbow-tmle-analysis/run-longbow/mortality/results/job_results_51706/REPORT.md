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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* single
* W_gagebrth
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_parity
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_sunderweight06    pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                                   0      211     240
ki0047075b-MAL-ED          BANGLADESH                     0                                   1       15     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   0       11     240
ki0047075b-MAL-ED          BANGLADESH                     1                                   1        3     240
ki0047075b-MAL-ED          BRAZIL                         0                                   0      205     207
ki0047075b-MAL-ED          BRAZIL                         0                                   1        2     207
ki0047075b-MAL-ED          BRAZIL                         1                                   0        0     207
ki0047075b-MAL-ED          BRAZIL                         1                                   1        0     207
ki0047075b-MAL-ED          INDIA                          0                                   0      189     235
ki0047075b-MAL-ED          INDIA                          0                                   1       17     235
ki0047075b-MAL-ED          INDIA                          1                                   0       18     235
ki0047075b-MAL-ED          INDIA                          1                                   1       11     235
ki0047075b-MAL-ED          NEPAL                          0                                   0      223     235
ki0047075b-MAL-ED          NEPAL                          0                                   1        1     235
ki0047075b-MAL-ED          NEPAL                          1                                   0       10     235
ki0047075b-MAL-ED          NEPAL                          1                                   1        1     235
ki0047075b-MAL-ED          PERU                           0                                   0      260     270
ki0047075b-MAL-ED          PERU                           0                                   1        2     270
ki0047075b-MAL-ED          PERU                           1                                   0        8     270
ki0047075b-MAL-ED          PERU                           1                                   1        0     270
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   0      248     259
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                   1        1     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   0        9     259
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                   1        1     259
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   0      237     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                   1        0     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   0        8     245
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                   1        0     245
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   0      285     373
ki1000108-CMC-V-BCS-2002   INDIA                          0                                   1       12     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   0       60     373
ki1000108-CMC-V-BCS-2002   INDIA                          1                                   1       16     373
ki1000108-IRC              INDIA                          0                                   0      307     410
ki1000108-IRC              INDIA                          0                                   1       37     410
ki1000108-IRC              INDIA                          1                                   0       55     410
ki1000108-IRC              INDIA                          1                                   1       11     410
ki1000109-EE               PAKISTAN                       0                                   0      211     375
ki1000109-EE               PAKISTAN                       0                                   1        8     375
ki1000109-EE               PAKISTAN                       1                                   0      119     375
ki1000109-EE               PAKISTAN                       1                                   1       37     375
ki1000109-ResPak           PAKISTAN                       0                                   0      156     230
ki1000109-ResPak           PAKISTAN                       0                                   1       33     230
ki1000109-ResPak           PAKISTAN                       1                                   0       27     230
ki1000109-ResPak           PAKISTAN                       1                                   1       14     230
ki1000304b-SAS-CompFeed    INDIA                          0                                   0     1039    1389
ki1000304b-SAS-CompFeed    INDIA                          0                                   1      130    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   0      119    1389
ki1000304b-SAS-CompFeed    INDIA                          1                                   1      101    1389
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   0      261     400
ki1000304b-SAS-FoodSuppl   INDIA                          0                                   1       31     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   0       63     400
ki1000304b-SAS-FoodSuppl   INDIA                          1                                   1       45     400
ki1017093-NIH-Birth        BANGLADESH                     0                                   0      428     541
ki1017093-NIH-Birth        BANGLADESH                     0                                   1       34     541
ki1017093-NIH-Birth        BANGLADESH                     1                                   0       53     541
ki1017093-NIH-Birth        BANGLADESH                     1                                   1       26     541
ki1017093b-PROVIDE         BANGLADESH                     0                                   0      546     615
ki1017093b-PROVIDE         BANGLADESH                     0                                   1       26     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   0       29     615
ki1017093b-PROVIDE         BANGLADESH                     1                                   1       14     615
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   0      646     730
ki1017093c-NIH-Crypto      BANGLADESH                     0                                   1       29     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   0       40     730
ki1017093c-NIH-Crypto      BANGLADESH                     1                                   1       15     730
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   0     1880    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                   1       76    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   0       36    2018
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                   1       26    2018
ki1101329-Keneba           GAMBIA                         0                                   0     1984    2271
ki1101329-Keneba           GAMBIA                         0                                   1      139    2271
ki1101329-Keneba           GAMBIA                         1                                   0       88    2271
ki1101329-Keneba           GAMBIA                         1                                   1       60    2271
ki1112895-Guatemala BSC    GUATEMALA                      0                                   0      260     274
ki1112895-Guatemala BSC    GUATEMALA                      0                                   1        2     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                   0       10     274
ki1112895-Guatemala BSC    GUATEMALA                      1                                   1        2     274
ki1113344-GMS-Nepal        NEPAL                          0                                   0      448     590
ki1113344-GMS-Nepal        NEPAL                          0                                   1       71     590
ki1113344-GMS-Nepal        NEPAL                          1                                   0       33     590
ki1113344-GMS-Nepal        NEPAL                          1                                   1       38     590
ki1114097-CMIN             BANGLADESH                     0                                   0      194     252
ki1114097-CMIN             BANGLADESH                     0                                   1       11     252
ki1114097-CMIN             BANGLADESH                     1                                   0       33     252
ki1114097-CMIN             BANGLADESH                     1                                   1       14     252
ki1114097-CMIN             BRAZIL                         0                                   0      116     119
ki1114097-CMIN             BRAZIL                         0                                   1        0     119
ki1114097-CMIN             BRAZIL                         1                                   0        3     119
ki1114097-CMIN             BRAZIL                         1                                   1        0     119
ki1114097-CMIN             GUINEA-BISSAU                  0                                   0      951    1018
ki1114097-CMIN             GUINEA-BISSAU                  0                                   1       41    1018
ki1114097-CMIN             GUINEA-BISSAU                  1                                   0       19    1018
ki1114097-CMIN             GUINEA-BISSAU                  1                                   1        7    1018
ki1114097-CMIN             PERU                           0                                   0      630     653
ki1114097-CMIN             PERU                           0                                   1        1     653
ki1114097-CMIN             PERU                           1                                   0       21     653
ki1114097-CMIN             PERU                           1                                   1        1     653
ki1114097-CONTENT          PERU                           0                                   0      212     215
ki1114097-CONTENT          PERU                           0                                   1        0     215
ki1114097-CONTENT          PERU                           1                                   0        3     215
ki1114097-CONTENT          PERU                           1                                   1        0     215
ki1119695-PROBIT           BELARUS                        0                                   0    16440   16596
ki1119695-PROBIT           BELARUS                        0                                   1       21   16596
ki1119695-PROBIT           BELARUS                        1                                   0      132   16596
ki1119695-PROBIT           BELARUS                        1                                   1        3   16596
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   0     9770   10693
ki1126311-ZVITAMBO         ZIMBABWE                       0                                   1      351   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   0      449   10693
ki1126311-ZVITAMBO         ZIMBABWE                       1                                   1      123   10693
ki1135781-COHORTS          GUATEMALA                      0                                   0      904    1023
ki1135781-COHORTS          GUATEMALA                      0                                   1       20    1023
ki1135781-COHORTS          GUATEMALA                      1                                   0       78    1023
ki1135781-COHORTS          GUATEMALA                      1                                   1       21    1023
ki1135781-COHORTS          INDIA                          0                                   0     5698    6897
ki1135781-COHORTS          INDIA                          0                                   1      423    6897
ki1135781-COHORTS          INDIA                          1                                   0      428    6897
ki1135781-COHORTS          INDIA                          1                                   1      348    6897
ki1135781-COHORTS          PHILIPPINES                    0                                   0     2460    2809
ki1135781-COHORTS          PHILIPPINES                    0                                   1      154    2809
ki1135781-COHORTS          PHILIPPINES                    1                                   0      123    2809
ki1135781-COHORTS          PHILIPPINES                    1                                   1       72    2809
ki1148112-LCNI-5           MALAWI                         0                                   0      771     796
ki1148112-LCNI-5           MALAWI                         0                                   1        7     796
ki1148112-LCNI-5           MALAWI                         1                                   0       13     796
ki1148112-LCNI-5           MALAWI                         1                                   1        5     796
kiGH5241-JiVitA-3          BANGLADESH                     0                                   0    12393   17274
kiGH5241-JiVitA-3          BANGLADESH                     0                                   1     2243   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                   0     1635   17274
kiGH5241-JiVitA-3          BANGLADESH                     1                                   1     1003   17274
kiGH5241-JiVitA-4          BANGLADESH                     0                                   0     4335    5263
kiGH5241-JiVitA-4          BANGLADESH                     0                                   1      403    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                   0      363    5263
kiGH5241-JiVitA-4          BANGLADESH                     1                                   1      162    5263


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
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: INDIA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/da5e476f-9d4d-454e-a679-f1416028325d/4c85e713-ff2f-4699-bce1-124f0dfe8a9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da5e476f-9d4d-454e-a679-f1416028325d/4c85e713-ff2f-4699-bce1-124f0dfe8a9c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da5e476f-9d4d-454e-a679-f1416028325d/4c85e713-ff2f-4699-bce1-124f0dfe8a9c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da5e476f-9d4d-454e-a679-f1416028325d/4c85e713-ff2f-4699-bce1-124f0dfe8a9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0801676   0.0423693   0.1179659
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5136889   0.3218250   0.7055528
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0397477   0.0172729   0.0622226
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2262170   0.1343317   0.3181022
ki1000108-IRC              INDIA                          0                    NA                0.1070828   0.0742941   0.1398715
ki1000108-IRC              INDIA                          1                    NA                0.1572597   0.0660232   0.2484963
ki1000109-EE               PAKISTAN                       0                    NA                0.0365297   0.0116498   0.0614095
ki1000109-EE               PAKISTAN                       1                    NA                0.2371795   0.1703427   0.3040162
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1726633   0.1184754   0.2268512
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3531440   0.2050867   0.5012013
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1137559   0.0971181   0.1303937
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4650547   0.4095840   0.5205254
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1053914   0.0698650   0.1409179
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4006663   0.3070559   0.4942767
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0734691   0.0494385   0.0974997
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3449336   0.2270049   0.4628624
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0453384   0.0282707   0.0624061
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3245583   0.1747034   0.4744133
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0433311   0.0280168   0.0586454
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2477514   0.1280034   0.3674993
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0388677   0.0303027   0.0474326
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4396151   0.3128181   0.5664120
ki1101329-Keneba           GAMBIA                         0                    NA                0.0684354   0.0573288   0.0795421
ki1101329-Keneba           GAMBIA                         1                    NA                0.3797078   0.2832029   0.4762127
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1383170   0.1086127   0.1680212
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5214605   0.3957864   0.6471347
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0537864   0.0229052   0.0846675
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3186091   0.1870983   0.4501199
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0413306   0.0289377   0.0537236
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2692308   0.0986511   0.4398105
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0590717   0.0506425   0.0675009
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3299922   0.2845594   0.3754250
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0219053   0.0124121   0.0313985
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2181772   0.1255269   0.3108275
ki1135781-COHORTS          INDIA                          0                    NA                0.0990276   0.0914881   0.1065671
ki1135781-COHORTS          INDIA                          1                    NA                0.4330344   0.3822868   0.4837821
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0672147   0.0579234   0.0765059
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3865591   0.2844271   0.4886911
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0089974   0.0023418   0.0156531
ki1148112-LCNI-5           MALAWI                         1                    NA                0.2777778   0.0904991   0.4650565
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1697181   0.1617203   0.1777159
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4749991   0.4378846   0.5121137
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0897492   0.0798018   0.0996966
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3926471   0.3132820   0.4720121


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0750670   0.0482904   0.1018437
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1200000   0.0870660   0.1529340
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2043478   0.1521230   0.2565727
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1109057   0.0844206   0.1373909
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0876266   0.0759950   0.0992582
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0471513   0.0341242   0.0601783
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0449980   0.0410967   0.0488994
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0150754   0.0066051   0.0235457
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  6.407687    3.5108329   11.694789
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  5.691320    2.8230838   11.473669
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.468580    0.7619481    2.830544
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  6.492788    3.1068548   13.568803
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.045275    1.2114574    3.452991
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.088182    3.3331653    5.014222
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.801696    2.5175507    5.740856
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.694949    2.9227785    7.541642
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.158574    3.9427529   12.997310
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  5.717633    3.1423891   10.403334
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.310551    7.8651333   16.265277
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.548410    4.1047129    7.499879
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.770040    2.7283858    5.209380
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.923602    2.9164123   12.031585
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.514071    3.2317093   13.130242
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.586298    4.5795735    6.814329
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  9.960008    5.4338325   18.256317
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.372865    3.8026465    5.028590
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.751113    4.2689735    7.747835
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 30.873016   11.3476420   83.994817
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.798753    2.5511537    3.070383
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  4.374935    3.4740323    5.509464


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0389813    0.0129204    0.0650423
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0353193    0.0146710    0.0559676
ki1000108-IRC              INDIA                          0                    NA                 0.0099903   -0.0056542    0.0256349
ki1000109-EE               PAKISTAN                       0                    NA                 0.0834703    0.0521549    0.1147857
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0316845    0.0028247    0.0605443
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0525508    0.0330698    0.0720318
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0846086    0.0542169    0.1150002
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0374366    0.0198459    0.0550274
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0197022    0.0083201    0.0310844
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0169429    0.0070287    0.0268570
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0116774    0.0069297    0.0164251
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0191912    0.0126568    0.0257256
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0464288    0.0286144    0.0642431
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0454200    0.0177007    0.0731393
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0058206    0.0009254    0.0107159
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0140737   -0.0219047   -0.0062427
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0181729    0.0096008    0.0267449
ki1135781-COHORTS          INDIA                          0                    NA                 0.0127601    0.0071687    0.0183515
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0132410    0.0076209    0.0188611
ki1148112-LCNI-5           MALAWI                         0                    NA                 0.0060779    0.0006315    0.0115244
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0181943    0.0119302    0.0244585
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0176040    0.0119984    0.0232095


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.3271647    0.0996896    0.4971653
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.4705037    0.1904353    0.6536826
ki1000108-IRC              INDIA                          0                    NA                 0.0853342   -0.0569901    0.2084944
ki1000109-EE               PAKISTAN                       0                    NA                 0.6955860    0.4387525    0.8348894
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1550519    0.0044837    0.2828472
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3159874    0.2088952    0.4085825
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.4453082    0.2859507    0.5691011
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3375537    0.1809536    0.4642123
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3029220    0.1326148    0.4397902
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2810975    0.1205699    0.4123231
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2310293    0.1422261    0.3106389
ki1101329-Keneba           GAMBIA                         0                    NA                 0.2190107    0.1461880    0.2856222
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.2513117    0.1560366    0.3358312
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.4578334    0.1736969    0.6442654
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1234459    0.0191191    0.2166765
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3127618   -0.5039921   -0.1458462
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.4534355    0.2571271    0.5978682
ki1135781-COHORTS          INDIA                          0                    NA                 0.1141459    0.0649991    0.1607095
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1645754    0.0978452    0.2263697
ki1148112-LCNI-5           MALAWI                         0                    NA                 0.4031705    0.0398585    0.6290074
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0968235    0.0634677    0.1289913
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1639819    0.1129196    0.2121049

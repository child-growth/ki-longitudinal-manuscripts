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

**Intervention Variable:** ever_co06

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

studyid                    country                        ever_co06    co_occurence   n_cell      n
-------------------------  -----------------------------  ----------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                       0      202    221
ki0047075b-MAL-ED          BANGLADESH                     0                       1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                       0        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                       1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                       0      179    180
ki0047075b-MAL-ED          BRAZIL                         0                       1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                       0        0    180
ki0047075b-MAL-ED          BRAZIL                         1                       1        0    180
ki0047075b-MAL-ED          INDIA                          0                       0      198    228
ki0047075b-MAL-ED          INDIA                          0                       1       13    228
ki0047075b-MAL-ED          INDIA                          1                       0       13    228
ki0047075b-MAL-ED          INDIA                          1                       1        4    228
ki0047075b-MAL-ED          NEPAL                          0                       0      220    229
ki0047075b-MAL-ED          NEPAL                          0                       1        3    229
ki0047075b-MAL-ED          NEPAL                          1                       0        5    229
ki0047075b-MAL-ED          NEPAL                          1                       1        1    229
ki0047075b-MAL-ED          PERU                           0                       0      216    222
ki0047075b-MAL-ED          PERU                           0                       1        5    222
ki0047075b-MAL-ED          PERU                           1                       0        0    222
ki0047075b-MAL-ED          PERU                           1                       1        1    222
ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      232    241
ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        4    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        5    241
ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      220    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        1    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        4    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    225
ki1000108-CMC-V-BCS-2002   INDIA                          0                       0      319    366
ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       16    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       25    366
ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        6    366
ki1000108-IRC              INDIA                          0                       0      362    404
ki1000108-IRC              INDIA                          0                       1       20    404
ki1000108-IRC              INDIA                          1                       0       17    404
ki1000108-IRC              INDIA                          1                       1        5    404
ki1000109-EE               PAKISTAN                       0                       0      247    350
ki1000109-EE               PAKISTAN                       0                       1       49    350
ki1000109-EE               PAKISTAN                       1                       0       28    350
ki1000109-EE               PAKISTAN                       1                       1       26    350
ki1000109-ResPak           PAKISTAN                       0                       0        7      9
ki1000109-ResPak           PAKISTAN                       0                       1        0      9
ki1000109-ResPak           PAKISTAN                       1                       0        2      9
ki1000109-ResPak           PAKISTAN                       1                       1        0      9
ki1000304b-SAS-CompFeed    INDIA                          0                       0     1069   1256
ki1000304b-SAS-CompFeed    INDIA                          0                       1       99   1256
ki1000304b-SAS-CompFeed    INDIA                          1                       0       59   1256
ki1000304b-SAS-CompFeed    INDIA                          1                       1       29   1256
ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      238    323
ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       47    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                       0       25    323
ki1000304b-SAS-FoodSuppl   INDIA                          1                       1       13    323
ki1017093-NIH-Birth        BANGLADESH                     0                       0      385    462
ki1017093-NIH-Birth        BANGLADESH                     0                       1       36    462
ki1017093-NIH-Birth        BANGLADESH                     1                       0       26    462
ki1017093-NIH-Birth        BANGLADESH                     1                       1       15    462
ki1017093b-PROVIDE         BANGLADESH                     0                       0      495    551
ki1017093b-PROVIDE         BANGLADESH                     0                       1       31    551
ki1017093b-PROVIDE         BANGLADESH                     1                       0       20    551
ki1017093b-PROVIDE         BANGLADESH                     1                       1        5    551
ki1017093c-NIH-Crypto      BANGLADESH                     0                       0      593    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                       1       20    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                       0       12    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                       1        9    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0      956    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1       18    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        3    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        3    980
ki1101329-Keneba           GAMBIA                         0                       0     1630   1757
ki1101329-Keneba           GAMBIA                         0                       1       80   1757
ki1101329-Keneba           GAMBIA                         1                       0       30   1757
ki1101329-Keneba           GAMBIA                         1                       1       17   1757
ki1113344-GMS-Nepal        NEPAL                          0                       0      481    550
ki1113344-GMS-Nepal        NEPAL                          0                       1       50    550
ki1113344-GMS-Nepal        NEPAL                          1                       0       11    550
ki1113344-GMS-Nepal        NEPAL                          1                       1        8    550
ki1114097-CMIN             BANGLADESH                     0                       0      204    237
ki1114097-CMIN             BANGLADESH                     0                       1       21    237
ki1114097-CMIN             BANGLADESH                     1                       0        7    237
ki1114097-CMIN             BANGLADESH                     1                       1        5    237
ki1114097-CMIN             BRAZIL                         0                       0      115    115
ki1114097-CMIN             BRAZIL                         0                       1        0    115
ki1114097-CMIN             BRAZIL                         1                       0        0    115
ki1114097-CMIN             BRAZIL                         1                       1        0    115
ki1114097-CMIN             GUINEA-BISSAU                  0                       0      520    541
ki1114097-CMIN             GUINEA-BISSAU                  0                       1       16    541
ki1114097-CMIN             GUINEA-BISSAU                  1                       0        4    541
ki1114097-CMIN             GUINEA-BISSAU                  1                       1        1    541
ki1114097-CMIN             PERU                           0                       0      371    375
ki1114097-CMIN             PERU                           0                       1        0    375
ki1114097-CMIN             PERU                           1                       0        4    375
ki1114097-CMIN             PERU                           1                       1        0    375
ki1114097-CONTENT          PERU                           0                       0      199    200
ki1114097-CONTENT          PERU                           0                       1        1    200
ki1114097-CONTENT          PERU                           1                       0        0    200
ki1114097-CONTENT          PERU                           1                       1        0    200
ki1119695-PROBIT           BELARUS                        0                       0     2145   2146
ki1119695-PROBIT           BELARUS                        0                       1        0   2146
ki1119695-PROBIT           BELARUS                        1                       0        1   2146
ki1119695-PROBIT           BELARUS                        1                       1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                       0     1548   1655
ki1126311-ZVITAMBO         ZIMBABWE                       0                       1       78   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                       0       21   1655
ki1126311-ZVITAMBO         ZIMBABWE                       1                       1        8   1655
ki1135781-COHORTS          GUATEMALA                      0                       0      723    774
ki1135781-COHORTS          GUATEMALA                      0                       1       35    774
ki1135781-COHORTS          GUATEMALA                      1                       0       13    774
ki1135781-COHORTS          GUATEMALA                      1                       1        3    774
ki1135781-COHORTS          PHILIPPINES                    0                       0     2265   2487
ki1135781-COHORTS          PHILIPPINES                    0                       1      168   2487
ki1135781-COHORTS          PHILIPPINES                    1                       0       35   2487
ki1135781-COHORTS          PHILIPPINES                    1                       1       19   2487
ki1148112-LCNI-5           MALAWI                         0                       0      674    693
ki1148112-LCNI-5           MALAWI                         0                       1       16    693
ki1148112-LCNI-5           MALAWI                         1                       0        2    693
ki1148112-LCNI-5           MALAWI                         1                       1        1    693
kiGH5241-JiVitA-4          BANGLADESH                     0                       0     4011   4523
kiGH5241-JiVitA-4          BANGLADESH                     0                       1      361   4523
kiGH5241-JiVitA-4          BANGLADESH                     1                       0       82   4523
kiGH5241-JiVitA-4          BANGLADESH                     1                       1       69   4523


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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/71e63e04-a188-4e0c-bdf8-ecaf8022dcf9/cccd88de-8f54-4ab5-a6e5-f5927b367644/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/71e63e04-a188-4e0c-bdf8-ecaf8022dcf9/cccd88de-8f54-4ab5-a6e5-f5927b367644/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/71e63e04-a188-4e0c-bdf8-ecaf8022dcf9/cccd88de-8f54-4ab5-a6e5-f5927b367644/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71e63e04-a188-4e0c-bdf8-ecaf8022dcf9/cccd88de-8f54-4ab5-a6e5-f5927b367644/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0477612   0.0248931   0.0706293
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1935484   0.0542823   0.3328144
ki1000108-IRC              INDIA         0                    NA                0.0523560   0.0299915   0.0747206
ki1000108-IRC              INDIA         1                    NA                0.2272727   0.0519405   0.4026049
ki1000109-EE               PAKISTAN      0                    NA                0.1656161   0.1231565   0.2080757
ki1000109-EE               PAKISTAN      1                    NA                0.4721027   0.3321301   0.6120753
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0850244   0.0753551   0.0946938
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3082002   0.2188939   0.3975064
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1663040   0.1230346   0.2095734
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3470977   0.1881982   0.5059972
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0861767   0.0591287   0.1132247
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3485597   0.1814635   0.5156559
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0589354   0.0387913   0.0790794
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2000000   0.0430604   0.3569396
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0326264   0.0185516   0.0467012
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.4285714   0.2167481   0.6403948
ki1101329-Keneba           GAMBIA        0                    NA                0.0468958   0.0368678   0.0569239
ki1101329-Keneba           GAMBIA        1                    NA                0.3410986   0.2057116   0.4764857
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0941620   0.0692986   0.1190253
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.4210526   0.1988474   0.6432578
ki1114097-CMIN             BANGLADESH    0                    NA                0.0933333   0.0552428   0.1314239
ki1114097-CMIN             BANGLADESH    1                    NA                0.4166667   0.1371367   0.6961967
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0479705   0.0375004   0.0584405
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2758621   0.1618116   0.3899125
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0692836   0.0591742   0.0793931
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.3186171   0.2066859   0.4305482
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0882058   0.0784451   0.0979665
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.5041408   0.4185794   0.5897022


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA         NA                   NA                0.0618812   0.0383576   0.0854048
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0653358   0.0446834   0.0859881
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552077   0.0445257   0.0658898
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0519637   0.0412672   0.0626603
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0950696   0.0850280   0.1051113


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ---------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                  4.052419   1.707496    9.617650
ki1000108-IRC              INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                  4.340909   1.797246   10.484651
ki1000109-EE               PAKISTAN      0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                  2.850585   1.924355    4.222627
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  3.624842   2.586935    5.079167
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  2.087128   1.232522    3.534300
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  4.044708   2.279849    7.175769
ki1017093b-PROVIDE         BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                  3.393548   1.441910    7.986748
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 13.135714   6.816156   25.314412
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  7.273536   4.637281   11.408480
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  4.471579   2.478449    8.067553
ki1114097-CMIN             BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                  4.464286   2.035729    9.790027
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  5.750663   3.603143    9.178133
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  4.598734   3.144146    6.726263
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  5.715504   4.676151    6.985873


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0123481   -0.0003102   0.0250064
ki1000108-IRC              INDIA         0                    NA                0.0095252   -0.0008508   0.0199011
ki1000109-EE               PAKISTAN      0                    NA                0.0486696    0.0238408   0.0734984
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0168864    0.0075463   0.0262264
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0194545   -0.0000546   0.0389637
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0242129    0.0088957   0.0395301
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0064004   -0.0011864   0.0139872
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0131149    0.0041754   0.0220544
ki1101329-Keneba           GAMBIA        0                    NA                0.0083119    0.0039694   0.0126544
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0112926    0.0020948   0.0204904
ki1114097-CMIN             BANGLADESH    0                    NA                0.0163713   -0.0005355   0.0332781
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0039933    0.0007878   0.0071987
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0059073    0.0027328   0.0090819
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0068638    0.0016629   0.0120647


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2054274   -0.0158579   0.3785099
ki1000108-IRC              INDIA         0                    NA                0.1539267   -0.0202056   0.2983375
ki1000109-EE               PAKISTAN      0                    NA                0.2271249    0.1083431   0.3300832
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1656976    0.0798642   0.2435242
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1047302   -0.0046751   0.2022217
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2193403    0.0788011   0.3384387
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0979616   -0.0218027   0.2036884
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.2867188    0.0962517   0.4370445
ki1101329-Keneba           GAMBIA        0                    NA                0.1505567    0.0735406   0.2211705
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1070849    0.0189153   0.1873307
ki1114097-CMIN             BANGLADESH    0                    NA                0.1492308   -0.0104896   0.2837053
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0768472    0.0146189   0.1351456
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0785645    0.0365641   0.1187340
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0721978    0.0178405   0.1235467

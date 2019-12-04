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

studyid                    country                        ever_co06    co_occurence   n_cell      n
-------------------------  -----------------------------  ----------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                     0                       0      202    221
ki0047075b-MAL-ED          BANGLADESH                     0                       1       12    221
ki0047075b-MAL-ED          BANGLADESH                     1                       0        5    221
ki0047075b-MAL-ED          BANGLADESH                     1                       1        2    221
ki0047075b-MAL-ED          BRAZIL                         0                       0      178    180
ki0047075b-MAL-ED          BRAZIL                         0                       1        1    180
ki0047075b-MAL-ED          BRAZIL                         1                       0        1    180
ki0047075b-MAL-ED          BRAZIL                         1                       1        0    180
ki0047075b-MAL-ED          INDIA                          0                       0      198    228
ki0047075b-MAL-ED          INDIA                          0                       1       12    228
ki0047075b-MAL-ED          INDIA                          1                       0       13    228
ki0047075b-MAL-ED          INDIA                          1                       1        5    228
ki0047075b-MAL-ED          NEPAL                          0                       0      219    229
ki0047075b-MAL-ED          NEPAL                          0                       1        3    229
ki0047075b-MAL-ED          NEPAL                          1                       0        6    229
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
ki1000109-EE               PAKISTAN                       0                       0      241    346
ki1000109-EE               PAKISTAN                       0                       1       50    346
ki1000109-EE               PAKISTAN                       1                       0       31    346
ki1000109-EE               PAKISTAN                       1                       1       24    346
ki1000109-ResPak           PAKISTAN                       0                       0        7      9
ki1000109-ResPak           PAKISTAN                       0                       1        0      9
ki1000109-ResPak           PAKISTAN                       1                       0        1      9
ki1000109-ResPak           PAKISTAN                       1                       1        1      9
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
ki1017093b-PROVIDE         BANGLADESH                     0                       0      506    563
ki1017093b-PROVIDE         BANGLADESH                     0                       1       32    563
ki1017093b-PROVIDE         BANGLADESH                     1                       0       20    563
ki1017093b-PROVIDE         BANGLADESH                     1                       1        5    563
ki1017093c-NIH-Crypto      BANGLADESH                     0                       0      593    634
ki1017093c-NIH-Crypto      BANGLADESH                     0                       1       20    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                       0       12    634
ki1017093c-NIH-Crypto      BANGLADESH                     1                       1        9    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0      956    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1       18    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        3    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        3    980
ki1101329-Keneba           GAMBIA                         0                       0     1644   1775
ki1101329-Keneba           GAMBIA                         0                       1       83   1775
ki1101329-Keneba           GAMBIA                         1                       0       31   1775
ki1101329-Keneba           GAMBIA                         1                       1       17   1775
ki1113344-GMS-Nepal        NEPAL                          0                       0      469    550
ki1113344-GMS-Nepal        NEPAL                          0                       1       52    550
ki1113344-GMS-Nepal        NEPAL                          1                       0       21    550
ki1113344-GMS-Nepal        NEPAL                          1                       1        8    550
ki1114097-CMIN             BANGLADESH                     0                       0      204    237
ki1114097-CMIN             BANGLADESH                     0                       1       21    237
ki1114097-CMIN             BANGLADESH                     1                       0        7    237
ki1114097-CMIN             BANGLADESH                     1                       1        5    237
ki1114097-CONTENT          PERU                           0                       0      199    200
ki1114097-CONTENT          PERU                           0                       1        1    200
ki1114097-CONTENT          PERU                           1                       0        0    200
ki1114097-CONTENT          PERU                           1                       1        0    200
ki1119695-PROBIT           BELARUS                        0                       0     2145   2146
ki1119695-PROBIT           BELARUS                        0                       1        0   2146
ki1119695-PROBIT           BELARUS                        1                       0        1   2146
ki1119695-PROBIT           BELARUS                        1                       1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                       0                       0     1571   1680
ki1126311-ZVITAMBO         ZIMBABWE                       0                       1       80   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                       0       21   1680
ki1126311-ZVITAMBO         ZIMBABWE                       1                       1        8   1680
ki1135781-COHORTS          GUATEMALA                      0                       0      723    774
ki1135781-COHORTS          GUATEMALA                      0                       1       35    774
ki1135781-COHORTS          GUATEMALA                      1                       0       13    774
ki1135781-COHORTS          GUATEMALA                      1                       1        3    774
ki1135781-COHORTS          PHILIPPINES                    0                       0     2265   2487
ki1135781-COHORTS          PHILIPPINES                    0                       1      168   2487
ki1135781-COHORTS          PHILIPPINES                    1                       0       35   2487
ki1135781-COHORTS          PHILIPPINES                    1                       1       19   2487
ki1148112-LCNI-5           MALAWI                         0                       0      673    693
ki1148112-LCNI-5           MALAWI                         0                       1       17    693
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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/cf3d2010-a617-4c7d-9e3e-ccfa6b71487e/ba0ba8f3-a64f-4bee-bf28-ab457e8886d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cf3d2010-a617-4c7d-9e3e-ccfa6b71487e/ba0ba8f3-a64f-4bee-bf28-ab457e8886d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cf3d2010-a617-4c7d-9e3e-ccfa6b71487e/ba0ba8f3-a64f-4bee-bf28-ab457e8886d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cf3d2010-a617-4c7d-9e3e-ccfa6b71487e/ba0ba8f3-a64f-4bee-bf28-ab457e8886d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0571429   0.0256801   0.0886056
ki0047075b-MAL-ED          INDIA         1                    NA                0.2777778   0.0704056   0.4851500
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0477612   0.0248931   0.0706293
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1935484   0.0542823   0.3328144
ki1000108-IRC              INDIA         0                    NA                0.0523560   0.0299915   0.0747206
ki1000108-IRC              INDIA         1                    NA                0.2272727   0.0519405   0.4026049
ki1000109-EE               PAKISTAN      0                    NA                0.1720410   0.1284845   0.2155976
ki1000109-EE               PAKISTAN      1                    NA                0.4386311   0.2993706   0.5778915
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0850244   0.0753551   0.0946938
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3082002   0.2188939   0.3975064
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1655657   0.1223774   0.2087540
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3426233   0.1860642   0.4991824
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0860471   0.0592403   0.1128540
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3667608   0.2103155   0.5232060
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0594796   0.0394758   0.0794833
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2000000   0.0430634   0.3569366
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0326264   0.0185516   0.0467012
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.4285714   0.2167481   0.6403948
ki1101329-Keneba           GAMBIA        0                    NA                0.0482240   0.0381108   0.0583371
ki1101329-Keneba           GAMBIA        1                    NA                0.3258867   0.1911659   0.4606074
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0998081   0.0740463   0.1255698
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2758621   0.1130446   0.4386795
ki1114097-CMIN             BANGLADESH    0                    NA                0.0933333   0.0552428   0.1314239
ki1114097-CMIN             BANGLADESH    1                    NA                0.4166667   0.1371367   0.6961967
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0484555   0.0380125   0.0588984
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2758621   0.1635093   0.3882148
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0693333   0.0592162   0.0794503
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.3229038   0.2133617   0.4324460
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0827639   0.0736822   0.0918457
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4524037   0.3340464   0.5707610


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000108-IRC              INDIA         NA                   NA                0.0618812   0.0383576   0.0854048
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1019108   0.0902026   0.1136190
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563380   0.0456085   0.0670675
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0523810   0.0417242   0.0630377
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0950696   0.0850280   0.1051113


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ---------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                  1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                  4.861111   1.922538   12.291252
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                  4.052419   1.707496    9.617650
ki1000108-IRC              INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                  4.340909   1.797246   10.484651
ki1000109-EE               PAKISTAN      0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                  2.549572   1.696535    3.831526
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  3.624842   2.586935    5.079167
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  2.069409   1.223627    3.499804
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  4.262323   2.509180    7.240374
ki1017093b-PROVIDE         BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                  3.362500   1.431850    7.896362
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 13.135714   6.816156   25.314412
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  6.757776   4.253317   10.736923
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  2.763926   1.451311    5.263712
ki1114097-CMIN             BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                  4.464286   2.035729    9.790027
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  5.693103   3.591141    9.025383
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  4.657270   3.219007    6.738154
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  5.466194   4.113909    7.262988


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0174185   -0.0008598   0.0356969
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0123481   -0.0003102   0.0250064
ki1000108-IRC              INDIA         0                    NA                0.0095252   -0.0008508   0.0199011
ki1000109-EE               PAKISTAN      0                    NA                0.0418318    0.0173035   0.0663600
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0168864    0.0075463   0.0262264
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0201928    0.0008105   0.0395750
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0243425    0.0091176   0.0395673
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0062398   -0.0011818   0.0136614
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0131149    0.0041754   0.0220544
ki1101329-Keneba           GAMBIA        0                    NA                0.0081141    0.0038186   0.0124095
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0092828   -0.0000111   0.0185768
ki1114097-CMIN             BANGLADESH    0                    NA                0.0163713   -0.0005355   0.0332781
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0039255    0.0007688   0.0070822
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0058577    0.0026821   0.0090333
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0123057    0.0073647   0.0172467


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.2336134   -0.0261772   0.4276346
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2054274   -0.0158579   0.3785099
ki1000108-IRC              INDIA         0                    NA                0.1539267   -0.0202056   0.2983375
ki1000109-EE               PAKISTAN      0                    NA                0.1955919    0.0769191   0.2990078
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1656976    0.0798642   0.2435242
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1087044    0.0000411   0.2055596
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2205141    0.0818470   0.3382385
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0949462   -0.0214436   0.1980739
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.2867188    0.0962517   0.4370445
ki1101329-Keneba           GAMBIA        0                    NA                0.1440248    0.0692026   0.2128325
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0850928   -0.0021055   0.1647035
ki1114097-CMIN             BANGLADESH    0                    NA                0.1492308   -0.0104896   0.2837053
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0749408    0.0141286   0.1320019
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0779044    0.0358661   0.1181098
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1294389    0.0804051   0.1758581

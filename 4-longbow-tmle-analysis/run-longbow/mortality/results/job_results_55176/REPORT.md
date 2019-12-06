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

studyid                    country                        ever_co06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  ----------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                       0      202    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                       1       12    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                       0        5    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                       1        2    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                       0      178    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                       1        1    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                       0        1    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                       1        0    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                       0      198    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                       1       12    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                       0       13    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                       1        5    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                       0      219    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                       1        3    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                       0        6    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                       1        1    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                       0      216    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                       1        5    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                       0        0    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                       1        1    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      232    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1        4    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        5    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      220    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1        1    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        4    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                       0      319    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       16    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       25    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        6    366  co_occurence     
ki1000108-IRC              INDIA                          0                       0      362    404  co_occurence     
ki1000108-IRC              INDIA                          0                       1       20    404  co_occurence     
ki1000108-IRC              INDIA                          1                       0       17    404  co_occurence     
ki1000108-IRC              INDIA                          1                       1        5    404  co_occurence     
ki1000109-EE               PAKISTAN                       0                       0      241    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                       1       50    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                       0       31    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                       1       24    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                       0        7      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                       1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                       0        1      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                       1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                       0     1069   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                       1       99   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                       0       59   1256  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                       1       29   1256  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      238    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                       1       47    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                       0       25    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                       1       13    323  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                       0      385    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                       1       36    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                       0       26    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                       1       15    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                       0      506    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                       1       32    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                       0       20    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                       1        5    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                       0      593    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                       1       20    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                       0       12    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                       1        9    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0      956    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1       18    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0        3    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        3    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                       0     1644   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         0                       1       83   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         1                       0       31   1775  co_occurence     
ki1101329-Keneba           GAMBIA                         1                       1       17   1775  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                       0      469    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                       1       52    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                       0       21    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                       1        8    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                       0      204    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                       1       21    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                       0        7    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                       1        5    237  co_occurence     
ki1114097-CONTENT          PERU                           0                       0      199    200  co_occurence     
ki1114097-CONTENT          PERU                           0                       1        1    200  co_occurence     
ki1114097-CONTENT          PERU                           1                       0        0    200  co_occurence     
ki1114097-CONTENT          PERU                           1                       1        0    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                       0     2145   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                       1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                       0        1   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                       1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                       0     1571   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                       1       80   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                       0       21   1680  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                       1        8   1680  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                       0      723    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                       1       35    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                       0       13    774  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                       1        3    774  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                       0     2265   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                       1      168   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                       0       35   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                       1       19   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                       0      673    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                       1       17    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                       0        2    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                       1        1    693  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                       0     4011   4523  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                       1      361   4523  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                       0       82   4523  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                       1       69   4523  co_occurence     


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
![](/tmp/92c12c9d-4211-404d-8018-d877e212ca0f/9c34c25c-ba6b-43c1-9dca-e1d7dc788a94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92c12c9d-4211-404d-8018-d877e212ca0f/9c34c25c-ba6b-43c1-9dca-e1d7dc788a94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92c12c9d-4211-404d-8018-d877e212ca0f/9c34c25c-ba6b-43c1-9dca-e1d7dc788a94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92c12c9d-4211-404d-8018-d877e212ca0f/9c34c25c-ba6b-43c1-9dca-e1d7dc788a94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
ki1000109-EE               PAKISTAN      0                    NA                0.1718146   0.1283341   0.2152951
ki1000109-EE               PAKISTAN      1                    NA                0.4289239   0.2917788   0.5660691
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0850244   0.0753551   0.0946938
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3082002   0.2188939   0.3975064
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1655298   0.1223350   0.2087246
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3266797   0.1689366   0.4844228
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0856331   0.0588270   0.1124391
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3715959   0.2165652   0.5266266
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0594796   0.0394758   0.0794833
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2000000   0.0430634   0.3569366
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0326264   0.0185516   0.0467012
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.4285714   0.2167481   0.6403948
ki1101329-Keneba           GAMBIA        0                    NA                0.0482118   0.0380992   0.0583245
ki1101329-Keneba           GAMBIA        1                    NA                0.3193088   0.1886313   0.4499862
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0998081   0.0740463   0.1255698
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2758621   0.1130446   0.4386795
ki1114097-CMIN             BANGLADESH    0                    NA                0.0933333   0.0552428   0.1314239
ki1114097-CMIN             BANGLADESH    1                    NA                0.4166667   0.1371367   0.6961967
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0484555   0.0380125   0.0588984
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2758621   0.1635093   0.3882148
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0693394   0.0592152   0.0794636
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.3220680   0.2107142   0.4334218
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0827724   0.0736902   0.0918547
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.4415263   0.3338122   0.5492405


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
ki1000109-EE               PAKISTAN      1                    0                  2.496435   1.658121    3.758585
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  3.624842   2.586935    5.079167
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  1.973540   1.140075    3.416318
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  4.339397   2.570628    7.325200
ki1017093b-PROVIDE         BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                  3.362500   1.431850    7.896362
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 13.135714   6.816156   25.314412
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  6.623037   4.184517   10.482599
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  2.763926   1.451311    5.263712
ki1114097-CMIN             BANGLADESH    0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                  4.464286   2.035729    9.790027
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  5.693103   3.591141    9.025383
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  4.644807   3.191214    6.760509
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  5.334220   4.084040    6.967096


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0174185   -0.0008598   0.0356969
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0123481   -0.0003102   0.0250064
ki1000108-IRC              INDIA         0                    NA                0.0095252   -0.0008508   0.0199011
ki1000109-EE               PAKISTAN      0                    NA                0.0420583    0.0175826   0.0665339
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0168864    0.0075463   0.0262264
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0202287    0.0007727   0.0396847
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0247565    0.0094639   0.0400492
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0062398   -0.0011818   0.0136614
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0131149    0.0041754   0.0220544
ki1101329-Keneba           GAMBIA        0                    NA                0.0081262    0.0038315   0.0124209
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0092828   -0.0000111   0.0185768
ki1114097-CMIN             BANGLADESH    0                    NA                0.0163713   -0.0005355   0.0332781
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0039255    0.0007688   0.0070822
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0058516    0.0026769   0.0090263
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0122972    0.0073723   0.0172221


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.2336134   -0.0261772   0.4276346
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2054274   -0.0158579   0.3785099
ki1000108-IRC              INDIA         0                    NA                0.1539267   -0.0202056   0.2983375
ki1000109-EE               PAKISTAN      0                    NA                0.1966508    0.0783309   0.2997813
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1656976    0.0798642   0.2435242
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1088979   -0.0001829   0.2060821
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2242651    0.0848915   0.3424117
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0949462   -0.0214436   0.1980739
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.2867188    0.0962517   0.4370445
ki1101329-Keneba           GAMBIA        0                    NA                0.1442399    0.0694328   0.2130334
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0850928   -0.0021055   0.1647035
ki1114097-CMIN             BANGLADESH    0                    NA                0.1492308   -0.0104896   0.2837053
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0749408    0.0141286   0.1320019
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0778235    0.0357726   0.1180406
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1293496    0.0804828   0.1756194

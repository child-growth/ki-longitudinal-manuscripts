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

**Intervention Variable:** ever_stunted06

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

studyid                    country                        ever_stunted06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  ---------------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                            0      141    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                            1        5    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                            0       66    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                            1        9    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                            0      142    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                            1        0    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                            0       37    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                            1        1    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                            0      138    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                            1        6    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                            0       73    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                            1       11    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                            0      186    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                            1        1    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                            0       39    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                            1        3    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                            0      116    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                            1        0    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                            0      100    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                            1        6    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            0      140    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                            1        2    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            0       97    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                            1        2    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            0      131    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                            1        0    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            0       93    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                            1        1    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                            0      171    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                            1        7    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                            0      173    366  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                            1       15    366  co_occurence     
ki1000108-IRC              INDIA                          0                            0      228    405  co_occurence     
ki1000108-IRC              INDIA                          0                            1        3    405  co_occurence     
ki1000108-IRC              INDIA                          1                            0      152    405  co_occurence     
ki1000108-IRC              INDIA                          1                            1       22    405  co_occurence     
ki1000109-EE               PAKISTAN                       0                            0       80    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                            1        8    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                            0      192    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                            1       66    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                            0        2      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                            1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                            0        6      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                            1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                            0      685   1259  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                            1       36   1259  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                            0      446   1259  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                            1       92   1259  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                            0      145    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                            1       25    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                            0      118    323  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                            1       35    323  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                            0      255    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                            1       19    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                            0      156    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                            1       32    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                            0      398    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                            1       20    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                            0      128    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                            1       17    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                            0      408    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                            1        7    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                            0      197    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                            1       22    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            0      756    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                            1        4    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            0      203    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                            1       17    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                            0     1166   1776  co_occurence     
ki1101329-Keneba           GAMBIA                         0                            1       40   1776  co_occurence     
ki1101329-Keneba           GAMBIA                         1                            0      510   1776  co_occurence     
ki1101329-Keneba           GAMBIA                         1                            1       60   1776  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                            0      341    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                            1       29    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                            0      149    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                            1       31    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                            0       95    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                            1        5    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                            0      116    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                            1       21    237  co_occurence     
ki1114097-CONTENT          PERU                           0                            0      155    200  co_occurence     
ki1114097-CONTENT          PERU                           0                            1        0    200  co_occurence     
ki1114097-CONTENT          PERU                           1                            0       44    200  co_occurence     
ki1114097-CONTENT          PERU                           1                            1        1    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                            0     1905   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                            1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                            0      241   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                            1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                            0      960   1691  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                            1       29   1691  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                            0      641   1691  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                            1       61   1691  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                            0      419    778  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                            1       12    778  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                            0      321    778  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                            1       26    778  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                            0     1694   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                            1       92   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                            0      606   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                            1       95   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                            0      443    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                            1        4    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                            0      232    693  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                            1       14    693  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                            0     2692   4541  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                            1      113   4541  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                            0     1413   4541  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                            1      323   4541  co_occurence     


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/f7382b32-848e-4b55-8049-06d0c8626492/a6220eb3-a037-452d-9eb8-498820bf7459/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7382b32-848e-4b55-8049-06d0c8626492/a6220eb3-a037-452d-9eb8-498820bf7459/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7382b32-848e-4b55-8049-06d0c8626492/a6220eb3-a037-452d-9eb8-498820bf7459/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7382b32-848e-4b55-8049-06d0c8626492/a6220eb3-a037-452d-9eb8-498820bf7459/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.0342466   0.0046802   0.0638130
ki0047075b-MAL-ED          BANGLADESH    1                    NA                0.1200000   0.0462887   0.1937113
ki0047075b-MAL-ED          INDIA         0                    NA                0.0416667   0.0089572   0.0743762
ki0047075b-MAL-ED          INDIA         1                    NA                0.1309524   0.0586519   0.2032529
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0393258   0.0107329   0.0679188
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.0797872   0.0410013   0.1185732
ki1000109-EE               PAKISTAN      0                    NA                0.0909091   0.0307581   0.1510601
ki1000109-EE               PAKISTAN      1                    NA                0.2558140   0.2024965   0.3091314
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0515240   0.0398788   0.0631693
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1630779   0.1288344   0.1973214
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1448845   0.0918533   0.1979156
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2310161   0.1627894   0.2992428
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0704039   0.0400930   0.1007147
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.1723191   0.1147042   0.2299339
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0502832   0.0293003   0.0712661
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.1067815   0.0541684   0.1593946
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0168675   0.0044682   0.0292668
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1004566   0.0606121   0.1403012
ki1101329-Keneba           GAMBIA        0                    NA                0.0348950   0.0245272   0.0452629
ki1101329-Keneba           GAMBIA        1                    NA                0.0975500   0.0719174   0.1231827
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0786541   0.0512093   0.1060989
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1744271   0.1189509   0.2299032
ki1114097-CMIN             BANGLADESH    0                    NA                0.0500000   0.0071932   0.0928068
ki1114097-CMIN             BANGLADESH    1                    NA                0.1532847   0.0928308   0.2137385
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0299004   0.0192651   0.0405356
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0858876   0.0651081   0.1066670
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0280797   0.0119516   0.0442078
ki1135781-COHORTS          GUATEMALA     1                    NA                0.0752955   0.0462399   0.1043511
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0574714   0.0462021   0.0687407
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1227547   0.0965004   0.1490090
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0412456   0.0330484   0.0494429
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.1821559   0.1599020   0.2044097


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403898   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0601093   0.0357249   0.0844936
ki1000109-EE               PAKISTAN      NA                   NA                0.2138728   0.1706052   0.2571404
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1016680   0.0902317   0.1131043
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0563063   0.0455826   0.0670300
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1090909   0.0830130   0.1351688
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0532229   0.0425206   0.0639253
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0488432   0.0336878   0.0639985
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0960141   0.0859500   0.1060782


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH    1                    0                 3.504000   1.2145141   10.109406
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 3.142857   1.2036922    8.206042
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 2.028875   0.8460862    4.865149
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.813953   1.4061838    5.631080
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.165086   2.1084417    4.751267
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.594485   0.9956551    2.553476
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.447580   1.4188927    4.222059
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 2.123601   1.1136727    4.049378
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 5.955642   2.5832748   13.730507
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 2.795528   1.8826674    4.151014
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 2.217647   1.3831130    3.555718
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.065693   1.1944241    7.868626
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 2.872460   1.8671495    4.419050
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 2.681488   1.3420142    5.357899
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 2.135927   1.5988665    2.853387
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.416366   3.5027588    5.568265


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.0291018    0.0016205   0.0565832
ki0047075b-MAL-ED          INDIA         0                    NA                0.0328947    0.0031265   0.0626629
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0207834   -0.0040547   0.0456216
ki1000109-EE               PAKISTAN      0                    NA                0.1229637    0.0625503   0.1833772
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0501440    0.0321285   0.0681594
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0408740    0.0001772   0.0815708
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0399858    0.0141058   0.0658657
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0154361    0.0005552   0.0303171
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0288739    0.0141307   0.0436170
ki1101329-Keneba           GAMBIA        0                    NA                0.0214113    0.0124625   0.0303601
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0304368    0.0099148   0.0509588
ki1114097-CMIN             BANGLADESH    0                    NA                0.0597046    0.0163932   0.1030160
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0233226    0.0134670   0.0331782
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0207635    0.0059273   0.0355996
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0177196    0.0093035   0.0261358
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0547685    0.0457125   0.0638244


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH    0                    NA                0.4593933   -0.0739341   0.7278645
ki0047075b-MAL-ED          INDIA         0                    NA                0.4411764   -0.0445806   0.7010439
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3457610   -0.1889189   0.6399849
ki1000109-EE               PAKISTAN      0                    NA                0.5749385    0.2100556   0.7712785
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.4932131    0.3337557   0.6145063
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2200386   -0.0280373   0.4082512
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.3622239    0.1045128   0.5457687
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.2348798   -0.0117766   0.4214049
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.6312422    0.3025665   0.8050247
ki1101329-Keneba           GAMBIA        0                    NA                0.3802645    0.2214117   0.5067070
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.2790041    0.0771261   0.4367214
ki1114097-CMIN             BANGLADESH    0                    NA                0.5442308    0.0218796   0.7876278
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.4382055    0.2481216   0.5802339
ki1135781-COHORTS          GUATEMALA     0                    NA                0.4251044    0.0717594   0.6439447
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.2356614    0.1208251   0.3354980
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.5704209    0.4911922   0.6373126

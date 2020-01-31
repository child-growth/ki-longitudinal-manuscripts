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

**Intervention Variable:** ever_underweight06

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

studyid                    country                        ever_underweight06    co_occurence   n_cell      n  outcome_variable 
-------------------------  -----------------------------  -------------------  -------------  -------  -----  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                                0      147    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     0                                1        3    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                                0       60    221  co_occurence     
ki0047075b-MAL-ED          BANGLADESH                     1                                1       11    221  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                                0      168    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         0                                1        0    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                                0       11    180  co_occurence     
ki0047075b-MAL-ED          BRAZIL                         1                                1        1    180  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                                0      130    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          0                                1        0    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                                0       81    228  co_occurence     
ki0047075b-MAL-ED          INDIA                          1                                1       17    228  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                                0      190    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          0                                1        0    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                                0       35    229  co_occurence     
ki0047075b-MAL-ED          NEPAL                          1                                1        4    229  co_occurence     
ki0047075b-MAL-ED          PERU                           0                                0      180    222  co_occurence     
ki0047075b-MAL-ED          PERU                           0                                1        1    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                                0       36    222  co_occurence     
ki0047075b-MAL-ED          PERU                           1                                1        5    222  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                0      199    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                1        2    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                0       38    241  co_occurence     
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                1        2    241  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                0      187    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                1        0    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                0       37    225  co_occurence     
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                1        1    225  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                                0      188    369  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          0                                1        1    369  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                                0      159    369  co_occurence     
ki1000108-CMC-V-BCS-2002   INDIA                          1                                1       21    369  co_occurence     
ki1000108-IRC              INDIA                          0                                0      209    405  co_occurence     
ki1000108-IRC              INDIA                          0                                1        2    405  co_occurence     
ki1000108-IRC              INDIA                          1                                0      171    405  co_occurence     
ki1000108-IRC              INDIA                          1                                1       23    405  co_occurence     
ki1000109-EE               PAKISTAN                       0                                0       94    346  co_occurence     
ki1000109-EE               PAKISTAN                       0                                1        4    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                                0      178    346  co_occurence     
ki1000109-EE               PAKISTAN                       1                                1       70    346  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                                0        3      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       0                                1        0      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                                0        5      9  co_occurence     
ki1000109-ResPak           PAKISTAN                       1                                1        1      9  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                                0      716   1260  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          0                                1       18   1260  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                                0      416   1260  co_occurence     
ki1000304b-SAS-CompFeed    INDIA                          1                                1      110   1260  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                                0      144    321  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          0                                1       10    321  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                                0      117    321  co_occurence     
ki1000304b-SAS-FoodSuppl   INDIA                          1                                1       50    321  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                                0      248    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     0                                1        6    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                                0      163    462  co_occurence     
ki1017093-NIH-Birth        BANGLADESH                     1                                1       45    462  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                                0      369    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     0                                1       12    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                                0      157    563  co_occurence     
ki1017093b-PROVIDE         BANGLADESH                     1                                1       25    563  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                                0      419    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     0                                1        5    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                                0      186    634  co_occurence     
ki1017093c-NIH-Crypto      BANGLADESH                     1                                1       24    634  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                0      867    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                1        7    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                0       92    980  co_occurence     
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                1       14    980  co_occurence     
ki1101329-Keneba           GAMBIA                         0                                0     1427   1863  co_occurence     
ki1101329-Keneba           GAMBIA                         0                                1       39   1863  co_occurence     
ki1101329-Keneba           GAMBIA                         1                                0      327   1863  co_occurence     
ki1101329-Keneba           GAMBIA                         1                                1       70   1863  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                                0      283    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          0                                1       12    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                                0      207    550  co_occurence     
ki1113344-GMS-Nepal        NEPAL                          1                                1       48    550  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                                0      109    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     0                                1        2    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                                0      102    237  co_occurence     
ki1114097-CMIN             BANGLADESH                     1                                1       24    237  co_occurence     
ki1114097-CONTENT          PERU                           0                                0      187    200  co_occurence     
ki1114097-CONTENT          PERU                           0                                1        0    200  co_occurence     
ki1114097-CONTENT          PERU                           1                                0       12    200  co_occurence     
ki1114097-CONTENT          PERU                           1                                1        1    200  co_occurence     
ki1119695-PROBIT           BELARUS                        0                                0     1980   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        0                                1        0   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                                0      166   2146  co_occurence     
ki1119695-PROBIT           BELARUS                        1                                1        0   2146  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                                0     1258   1692  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       0                                1       37   1692  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                                0      343   1692  co_occurence     
ki1126311-ZVITAMBO         ZIMBABWE                       1                                1       54   1692  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                                0      554    779  co_occurence     
ki1135781-COHORTS          GUATEMALA                      0                                1       11    779  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                                0      187    779  co_occurence     
ki1135781-COHORTS          GUATEMALA                      1                                1       27    779  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                                0     1871   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    0                                1       77   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                                0      429   2487  co_occurence     
ki1135781-COHORTS          PHILIPPINES                    1                                1      110   2487  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                                0      606    692  co_occurence     
ki1148112-LCNI-5           MALAWI                         0                                1        5    692  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                                0       68    692  co_occurence     
ki1148112-LCNI-5           MALAWI                         1                                1       13    692  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                                0     2944   4547  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     0                                1       70   4547  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                                0     1166   4547  co_occurence     
kiGH5241-JiVitA-4          BANGLADESH                     1                                1      367   4547  co_occurence     


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
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/32ef8962-ecaa-4281-b4b7-07b84513fd54/47b6742e-5cad-4bb2-8837-d382307065b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/32ef8962-ecaa-4281-b4b7-07b84513fd54/47b6742e-5cad-4bb2-8837-d382307065b9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/32ef8962-ecaa-4281-b4b7-07b84513fd54/47b6742e-5cad-4bb2-8837-d382307065b9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/32ef8962-ecaa-4281-b4b7-07b84513fd54/47b6742e-5cad-4bb2-8837-d382307065b9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0245232   0.0164102   0.0326362
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2084687   0.1847544   0.2321829
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0661108   0.0266246   0.1055969
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2958367   0.2260616   0.3656119
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0236220   0.0049252   0.0423189
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2163462   0.1603287   0.2723636
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0336747   0.0155116   0.0518378
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1308318   0.0801163   0.1815473
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0117925   0.0015091   0.0220758
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1142857   0.0712208   0.1573507
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080092   0.0020968   0.0139215
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1320755   0.0675890   0.1965620
ki1101329-Keneba           GAMBIA                         0                    NA                0.0271859   0.0188178   0.0355541
ki1101329-Keneba           GAMBIA                         1                    NA                0.1577121   0.1206999   0.1947243
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0411884   0.0184735   0.0639032
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1896169   0.1415044   0.2377294
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0287261   0.0196466   0.0378056
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1314429   0.0976062   0.1652796
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0200281   0.0083834   0.0316728
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1288490   0.0832497   0.1744483
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0413907   0.0324300   0.0503514
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1771732   0.1442598   0.2100865
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0081833   0.0010347   0.0153319
ki1148112-LCNI-5           MALAWI                         1                    NA                0.1604938   0.0804992   0.2404884
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0235557   0.0167364   0.0303750
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2351177   0.2105086   0.2597269


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1015873   0.0902183   0.1129563
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1103896   0.0817833   0.1389959
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0657194   0.0452330   0.0862057
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0585078   0.0478474   0.0691682
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1090909   0.0830130   0.1351688
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0537825   0.0430304   0.0645346
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0487805   0.0336441   0.0639169
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0751910   0.0648251   0.0855569
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0260116   0.0141438   0.0378793
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0961073   0.0860713   0.1061434


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.500884   5.627663   12.841040
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.474865   2.351941    8.513995
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  9.158654   3.982549   21.062122
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.885165   1.998042    7.554647
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  9.691429   3.748225   25.058208
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.490566   6.805473   39.958836
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.801239   3.943421    8.534311
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.603650   2.509802    8.444328
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.575732   3.043317    6.879771
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  6.433401   3.253177   12.722532
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.280506   3.219911    5.690446
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000   1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 19.612346   7.173595   53.619434
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  9.981344   7.332488   13.587098


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0770641   0.0615188   0.0926094
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1208051   0.0771705   0.1644398
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0867676   0.0587762   0.1147589
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0320447   0.0142038   0.0498855
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0339489   0.0188096   0.0490881
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0134194   0.0060109   0.0208280
ki1101329-Keneba           GAMBIA                         0                    NA                0.0313218   0.0226749   0.0399688
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0679025   0.0424562   0.0933489
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0250564   0.0165849   0.0335280
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0287524   0.0156188   0.0418859
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0338003   0.0256472   0.0419534
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0178283   0.0077434   0.0279131
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0725516   0.0632433   0.0818599


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7586000   0.6487436   0.8340985
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6463074   0.3944011   0.7934302
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7860120   0.5519125   0.8978082
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4875983   0.2047449   0.6698475
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7421926   0.4316899   0.8830486
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6262395   0.3184894   0.7950187
ki1101329-Keneba           GAMBIA                         0                    NA                0.5353449   0.4070067   0.6359076
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6224398   0.3842628   0.7684861
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4658842   0.3202522   0.5803154
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5894234   0.3315334   0.7478212
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4495257   0.3514021   0.5328047
ki1148112-LCNI-5           MALAWI                         0                    NA                0.6853973   0.3407366   0.8498706
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.7549020   0.6819092   0.8111450

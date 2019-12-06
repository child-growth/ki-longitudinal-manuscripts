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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* single
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_parity
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_wasted06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  --------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                             0      180     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                             1        4     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                             0       43     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                             1       13     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                             0      191     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                             1        1     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                             0       14     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                             1        1     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                             0      151     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                             1        6     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                             0       56     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                             1       22     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                             0      188     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                             1        0     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                             0       45     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                             1        2     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                             0      258     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                             1        2     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                             0        9     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                             1        1     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             0      230     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                             1        0     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             0       27     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                             1        2     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             0      231     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             0       14     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                             0      175     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                             1        3     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                             0      167     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                             1       25     370  pers_wasted624   
ki1000108-IRC              INDIA                          0                             0      179     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                             1        6     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                             0      183     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                             1       42     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                             0      234     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                             1       12     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                             0       91     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                             1       37     374  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                             0      126     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                             1       15     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                             0       61     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                             1       32     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                             0      957    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                             1      107    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                             0      199    1384  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                             1      121    1384  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                             0      281     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                             1       25     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                             0       45     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                             1       51     402  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                             0      329     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                             1       14     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                             0      152     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                             1       47     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                             0      438     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                             1       19     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                             0      137     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                             1       21     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                             0      517     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                             1       17     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                             0      169     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                             1       27     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             0     1669    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                             1       30    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             0      247    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                             1       72    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                             0     1576    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                             1       76    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                             0      519    2298  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                             1      127    2298  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                             0      263     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                             1        3     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                             0        7     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                             1        1     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                             0      319     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                             1       34     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                             0      162     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                             1       75     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                             0      196     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                             1       11     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                             0       31     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                             1       14     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                             0      211     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                             1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                             0        4     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                             1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                             0    12381   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                             1        3   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                             0     4191   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                             1       21   16596  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                             0     8482   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                             1      217   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                             0     1792   10731  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                             1      240   10731  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                             0      786    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                             1       25    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                             0      190    1017  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                             1       16    1017  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                             0     4756    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                             1      113    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                             0     1366    6892  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                             1      657    6892  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                             0     2013    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                             1       98    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                             0      569    2808  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                             1      128    2808  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                             0      776     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                             1        8     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                             0        8     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                             1        5     797  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                             0    12238   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                             1     1503   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                             0     1777   17260  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                             1     1742   17260  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                             0     4245    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                             1      304    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                             0      432    5239  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                             1      258    5239  pers_wasted624   


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
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/bfa532b0-3017-4964-a777-5de3f17c4a68/b853bf0d-fc24-417e-a954-062d28fd7965/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bfa532b0-3017-4964-a777-5de3f17c4a68/b853bf0d-fc24-417e-a954-062d28fd7965/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bfa532b0-3017-4964-a777-5de3f17c4a68/b853bf0d-fc24-417e-a954-062d28fd7965/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bfa532b0-3017-4964-a777-5de3f17c4a68/b853bf0d-fc24-417e-a954-062d28fd7965/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0382166   0.0081635   0.0682696
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2820513   0.1819735   0.3821290
ki1000108-IRC              INDIA                          0                    NA                0.0324324   0.0068747   0.0579902
ki1000108-IRC              INDIA                          1                    NA                0.1866667   0.1356920   0.2376414
ki1000109-EE               PAKISTAN                       0                    NA                0.0485855   0.0215694   0.0756015
ki1000109-EE               PAKISTAN                       1                    NA                0.2843565   0.2047346   0.3639785
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1074771   0.0557964   0.1591578
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3483978   0.2530150   0.4437806
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1021704   0.0843724   0.1199684
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3593707   0.3112161   0.4075253
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0818586   0.0510914   0.1126258
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5258219   0.4242113   0.6274325
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0411276   0.0202670   0.0619882
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2457332   0.1868148   0.3046516
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0418730   0.0234407   0.0603054
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1302711   0.0765943   0.1839478
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0321714   0.0173139   0.0470288
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1367600   0.0877287   0.1857913
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176479   0.0113676   0.0239281
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2226241   0.1759454   0.2693027
ki1101329-Keneba           GAMBIA                         0                    NA                0.0458892   0.0357719   0.0560065
ki1101329-Keneba           GAMBIA                         1                    NA                0.1967557   0.1662380   0.2272733
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0976881   0.0667892   0.1285870
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3188199   0.2599380   0.3777018
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0526915   0.0221171   0.0832660
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3150329   0.1696319   0.4604339
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0251253   0.0218430   0.0284076
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1145346   0.1006896   0.1283796
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0313987   0.0193483   0.0434490
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0813700   0.0432989   0.1194411
ki1135781-COHORTS          INDIA                          0                    NA                0.0235400   0.0192890   0.0277909
ki1135781-COHORTS          INDIA                          1                    NA                0.3165535   0.2964613   0.3366456
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0460124   0.0370634   0.0549614
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1879061   0.1595316   0.2162806
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0102041   0.0031022   0.0173060
ki1148112-LCNI-5           MALAWI                         1                    NA                0.3846154   0.2119598   0.5572710
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1096226   0.1041420   0.1151032
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4922202   0.4741547   0.5102857
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0670691   0.0579058   0.0762324
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3724399   0.3272967   0.4175831


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1310160   0.0967738   0.1652583
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1647399   0.1451050   0.1843747
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0883377   0.0767324   0.0999430
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0425869   0.0387663   0.0464075
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0403147   0.0282199   0.0524094
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117237   0.1042858   0.1191617
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804843   0.0704205   0.0905481
ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0163112   0.0075116   0.0251108
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1880070   0.1814627   0.1945512
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072724   0.0967392   0.1178055


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  7.380342    3.114563   17.488630
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  5.755556    2.499673   13.252299
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.852709    3.140637   10.906769
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.241601    1.863273    5.639525
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.517367    2.827626    4.375355
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.423538    4.207447    9.806859
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.974899    3.404486   10.485992
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.111096    1.703023    5.683378
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.250987    2.368459    7.629808
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 12.614788    8.345112   19.068991
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  4.287628    3.276295    5.611143
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.263651    2.265537    4.701499
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.978818    2.845113   12.564091
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.558539    3.816566    5.444758
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.591512    1.417852    4.736694
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 13.447492   11.110689   16.275771
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.083818    3.197079    5.216503
ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
ki1148112-LCNI-5           MALAWI                         1                    0                 37.692308   16.465322   86.284983
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.490135    4.230263    4.765971
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.553077    4.642103    6.642823


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0809324   0.0432584   0.1186063
ki1000108-IRC              INDIA                          0                    NA                0.0846407   0.0524758   0.1168057
ki1000109-EE               PAKISTAN                       0                    NA                0.0824306   0.0516799   0.1131813
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0933776   0.0471258   0.1396294
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0625695   0.0492147   0.0759243
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1071961   0.0759558   0.1384365
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0714185   0.0470701   0.0957669
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0231676   0.0084143   0.0379210
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0281026   0.0141435   0.0420617
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0328972   0.0248592   0.0409353
ki1101329-Keneba           GAMBIA                         0                    NA                0.0424485   0.0329874   0.0519096
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0870577   0.0589714   0.1151439
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0465148   0.0188216   0.0742081
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0174616   0.0146625   0.0202607
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0089160   0.0010129   0.0168191
ki1135781-COHORTS          INDIA                          0                    NA                0.0881838   0.0812836   0.0950840
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0344720   0.0267673   0.0421767
ki1148112-LCNI-5           MALAWI                         0                    NA                0.0061071   0.0006741   0.0115401
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0783844   0.0738591   0.0829096
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0402033   0.0334763   0.0469303


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6792539   0.3611538   0.8389627
ki1000108-IRC              INDIA                          0                    NA                0.7229730   0.4236989   0.8668336
ki1000109-EE               PAKISTAN                       0                    NA                0.6291640   0.4027075   0.7697622
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4649013   0.2122097   0.6365396
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3798079   0.3036285   0.4476537
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.5670110   0.4161561   0.6788877
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6345712   0.4322699   0.7647857
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3562021   0.1178880   0.5301325
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4662480   0.2364865   0.6268681
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6508491   0.5301416   0.7405466
ki1101329-Keneba           GAMBIA                         0                    NA                0.4805257   0.3832301   0.5624729
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4712296   0.3174010   0.5903918
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4688696   0.1863681   0.6532836
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4100231   0.3522544   0.4626397
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2211599   0.0124694   0.3857488
ki1135781-COHORTS          INDIA                          0                    NA                0.7893020   0.7514926   0.8213589
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4283066   0.3402623   0.5046010
ki1148112-LCNI-5           MALAWI                         0                    NA                0.3744113   0.0387300   0.5928707
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4169227   0.3966392   0.4365242
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3747776   0.3181939   0.4266653

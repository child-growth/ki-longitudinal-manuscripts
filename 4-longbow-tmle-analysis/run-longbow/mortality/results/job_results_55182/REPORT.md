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

**Intervention Variable:** ever_sstunted06

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

studyid                    country                        ever_sstunted06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  ----------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                               0      207     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                               1       15     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                               0       16     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                               1        2     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                               0      188     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                               1        2     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                               0       17     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                               1        0     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                               0      193     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                               1       22     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                               0       14     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                               1        6     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                               0      224     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                               1        1     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                               0        9     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                               1        1     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                               0      234     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                               1        1     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                               0       33     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                               1        2     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                               0      230     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                               1        2     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                               0       27     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                               1        0     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                               0      208     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                               0       37     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                               0      260     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                               1       16     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                               0       82     370  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                               1       12     370  pers_wasted624   
ki1000108-IRC              INDIA                          0                               0      310     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                               1       38     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                               0       52     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                               1       10     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                               0      188     373  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                               1       24     373  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                               0      136     373  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                               1       25     373  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                               0      114     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                               1       32     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                               0       73     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                               1       15     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                               0     1018    1388  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                               1      163    1388  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                               0      140    1388  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                               1       67    1388  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                               0      283     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                               1       55     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                               0       43     402  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                               1       21     402  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                               0      427     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                               1       48     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                               0       54     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                               1       13     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                               0      549     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                               1       37     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                               0       26     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                               1        3     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                               0      641     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                               1       36     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                               0       45     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                               1        8     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               0     1828    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                               1       90    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               0       88    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                               1       12    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                               0     1862    2299  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                               1      164    2299  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                               0      234    2299  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                               1       39    2299  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                               0      246     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                               1        2     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                               0       24     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                               1        2     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                               0      454     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                               1       88     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                               0       27     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                               1       21     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                               0      181     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                               1       12     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                               0       46     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                               1       13     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                               0      206     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                               1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                               0        9     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                               1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                               0    16190   16595  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                               1       23   16595  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                               0      381   16595  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                               1        1   16595  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                               0     9267   10802  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                               1      375   10802  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                               0     1068   10802  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                               1       92   10802  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                               0      843    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                               1       24    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                               0      139    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                               1       17    1023  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                               0     5774    6893  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                               1      648    6893  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                               0      348    6893  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                               1      123    6893  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                               0     2411    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                               1      184    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                               0      172    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                               1       42    2809  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                               0      720     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                               1       10     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                               0       64     797  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                               1        3     797  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                               0    12183   17265  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                               1     2582   17265  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                               0     1840   17265  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                               1      660   17265  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                               0     4209    5257  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                               1      449    5257  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                               0      484    5257  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                               1      115    5257  pers_wasted624   


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/236b4561-7522-44ea-8da7-98021f19c9c5/e1269748-373c-44de-ac91-aa5246d6993c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/236b4561-7522-44ea-8da7-98021f19c9c5/e1269748-373c-44de-ac91-aa5246d6993c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/236b4561-7522-44ea-8da7-98021f19c9c5/e1269748-373c-44de-ac91-aa5246d6993c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/236b4561-7522-44ea-8da7-98021f19c9c5/e1269748-373c-44de-ac91-aa5246d6993c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1023256   0.0617274   0.1429237
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3000000   0.0987348   0.5012652
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0575688   0.0297908   0.0853467
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1218560   0.0536809   0.1900311
ki1000108-IRC              INDIA                          0                    NA                0.1107233   0.0773688   0.1440778
ki1000108-IRC              INDIA                          1                    NA                0.1507382   0.0561218   0.2453546
ki1000109-EE               PAKISTAN                       0                    NA                0.1111987   0.0681744   0.1542230
ki1000109-EE               PAKISTAN                       1                    NA                0.1478488   0.0919819   0.2037156
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2198908   0.1526234   0.2871581
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1717465   0.0927164   0.2507766
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1436339   0.1206548   0.1666129
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2799046   0.1968329   0.3629762
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1630511   0.1235549   0.2025474
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3234403   0.2036326   0.4432479
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1014482   0.0743174   0.1285790
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2081387   0.1117821   0.3044954
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0531758   0.0362619   0.0700896
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1509434   0.0544976   0.2473892
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469028   0.0374361   0.0563696
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1137010   0.0487696   0.1786324
ki1101329-Keneba           GAMBIA                         0                    NA                0.0818141   0.0698639   0.0937642
ki1101329-Keneba           GAMBIA                         1                    NA                0.1332039   0.0927812   0.1736266
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1617271   0.1306777   0.1927766
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4479785   0.3038139   0.5921430
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0620626   0.0279182   0.0962071
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2177520   0.1109239   0.3245800
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0395075   0.0356141   0.0434009
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0727179   0.0569695   0.0884664
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0278200   0.0168096   0.0388304
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1224889   0.0651666   0.1798112
ki1135781-COHORTS          INDIA                          0                    NA                0.1021261   0.0946960   0.1095561
ki1135781-COHORTS          INDIA                          1                    NA                0.2240040   0.1839009   0.2641071
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0720407   0.0620613   0.0820201
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2084492   0.1472252   0.2696732
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1764421   0.1694820   0.1834021
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2574621   0.2366892   0.2782349
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0969994   0.0859591   0.1080397
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1854338   0.1476826   0.2231849


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1191489   0.0776405   0.1606574
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0756757   0.0486905   0.1026609
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1313673   0.0970401   0.1656945
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1657061   0.1471754   0.1842367
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1890547   0.1507312   0.2273783
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0882993   0.0766987   0.0998998
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432327   0.0393972   0.0470683
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0400782   0.0280529   0.0521035
ki1135781-COHORTS          INDIA                          NA                   NA                0.1118526   0.1044114   0.1192938
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1877787   0.1812440   0.1943134
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1072855   0.0967458   0.1178252


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 2.9318182   1.3447391   6.391989
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 2.1167023   1.0083403   4.443369
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.3613955   0.6781160   2.733157
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.3295909   0.7725042   2.288417
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.7810537   0.4504103   1.354421
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.9487365   1.2936787   2.935485
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.9836742   1.2735205   3.089831
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 2.0516753   1.2020280   3.501892
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.8385744   1.3903512   5.795302
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.4241812   1.3227508   4.442752
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.6281292   1.1638907   2.277538
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.7699647   1.9056141   4.026368
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.5085840   1.6767558   7.341654
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8406113   1.4511623   2.334577
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 4.4029068   2.3899578   8.111268
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.1934071   1.8083806   2.660410
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.8934914   2.0917421   4.002546
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4591877   1.3347507   1.595226
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.9117002   1.5091418   2.421640


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0168234   -0.0020257   0.0356724
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0181069   -0.0007895   0.0370033
ki1000108-IRC              INDIA                          0                    NA                 0.0063499   -0.0088403   0.0215400
ki1000109-EE               PAKISTAN                       0                    NA                 0.0201686   -0.0105727   0.0509099
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0190361   -0.0579739   0.0199018
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0220722    0.0037418   0.0404026
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0260036    0.0056549   0.0463523
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0110979   -0.0013366   0.0235324
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0070982   -0.0002455   0.0144419
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0036422    0.0003708   0.0069136
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0064852    0.0013194   0.0116510
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0230186    0.0098448   0.0361924
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0371437    0.0097971   0.0644904
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0037252    0.0019855   0.0054650
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0122582    0.0044086   0.0201078
ki1135781-COHORTS          INDIA                          0                    NA                 0.0097265    0.0068251   0.0126280
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0084150    0.0041080   0.0127219
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0113367    0.0083583   0.0143151
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0102861    0.0058550   0.0147173


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1411960   -0.0253403   0.2806834
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2392696   -0.0398275   0.4434550
ki1000108-IRC              INDIA                          0                    NA                 0.0542385   -0.0841942   0.1749957
ki1000109-EE               PAKISTAN                       0                    NA                 0.1535284   -0.1137309   0.3566542
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0947752   -0.3060520   0.0823238
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1332008    0.0178675   0.2349903
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1375455    0.0253754   0.2368058
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0986079   -0.0166105   0.2007680
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1177655   -0.0080550   0.2278818
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0720593    0.0064171   0.1333648
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0734456    0.0137947   0.1294886
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1245962    0.0522535   0.1914168
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.3744087    0.0765861   0.5761765
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0861671    0.0458189   0.1248091
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3058569    0.1069205   0.4604795
ki1135781-COHORTS          INDIA                          0                    NA                 0.0869586    0.0611713   0.1120376
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1045913    0.0509828   0.1551715
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0603726    0.0444070   0.0760715
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0958761    0.0534241   0.1364242

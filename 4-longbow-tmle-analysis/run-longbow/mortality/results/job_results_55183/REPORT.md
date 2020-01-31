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

**Intervention Variable:** ever_underweight06

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

studyid                    country                        ever_underweight06    pers_wasted624   n_cell       n  outcome_variable 
-------------------------  -----------------------------  -------------------  ---------------  -------  ------  -----------------
ki0047075b-MAL-ED          BANGLADESH                     0                                  0      158     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     0                                  1        3     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                                  0       65     240  pers_wasted624   
ki0047075b-MAL-ED          BANGLADESH                     1                                  1       14     240  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                                  0      191     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         0                                  1        2     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                                  0       14     207  pers_wasted624   
ki0047075b-MAL-ED          BRAZIL                         1                                  1        0     207  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                                  0      133     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          0                                  1        1     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                                  0       74     235  pers_wasted624   
ki0047075b-MAL-ED          INDIA                          1                                  1       27     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                                  0      195     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          0                                  1        0     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                                  0       38     235  pers_wasted624   
ki0047075b-MAL-ED          NEPAL                          1                                  1        2     235  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                                  0      222     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           0                                  1        1     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                                  0       45     270  pers_wasted624   
ki0047075b-MAL-ED          PERU                           1                                  1        2     270  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  0      215     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   0                                  1        0     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  0       42     259  pers_wasted624   
ki0047075b-MAL-ED          SOUTH AFRICA                   1                                  1        2     259  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  0      203     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                                  1        0     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  0       42     245  pers_wasted624   
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                                  1        0     245  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  0      186     373  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          0                                  1        4     373  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  0      159     373  pers_wasted624   
ki1000108-CMC-V-BCS-2002   INDIA                          1                                  1       24     373  pers_wasted624   
ki1000108-IRC              INDIA                          0                                  0      199     410  pers_wasted624   
ki1000108-IRC              INDIA                          0                                  1       12     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                                  0      163     410  pers_wasted624   
ki1000108-IRC              INDIA                          1                                  1       36     410  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                                  0      101     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       0                                  1        1     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                                  0      224     374  pers_wasted624   
ki1000109-EE               PAKISTAN                       1                                  1       48     374  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                                  0      125     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       0                                  1       17     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                                  0       62     234  pers_wasted624   
ki1000109-ResPak           PAKISTAN                       1                                  1       30     234  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                                  0      760    1389  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          0                                  1       46    1389  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                                  0      398    1389  pers_wasted624   
ki1000304b-SAS-CompFeed    INDIA                          1                                  1      185    1389  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  0      180     400  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          0                                  1        8     400  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  0      144     400  pers_wasted624   
ki1000304b-SAS-FoodSuppl   INDIA                          1                                  1       68     400  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                                  0      289     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     0                                  1        9     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                                  0      192     542  pers_wasted624   
ki1017093-NIH-Birth        BANGLADESH                     1                                  1       52     542  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                                  0      406     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     0                                  1        8     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                                  0      169     615  pers_wasted624   
ki1017093b-PROVIDE         BANGLADESH                     1                                  1       32     615  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  0      489     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     0                                  1       10     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  0      197     730  pers_wasted624   
ki1017093c-NIH-Crypto      BANGLADESH                     1                                  1       34     730  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  0     1740    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                                  1       31    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  0      176    2018  pers_wasted624   
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                                  1       71    2018  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                                  0     1854    2441  pers_wasted624   
ki1101329-Keneba           GAMBIA                         0                                  1       78    2441  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                                  0      370    2441  pers_wasted624   
ki1101329-Keneba           GAMBIA                         1                                  1      139    2441  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                                  0      216     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      0                                  1        0     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                                  0       54     274  pers_wasted624   
ki1112895-Guatemala BSC    GUATEMALA                      1                                  1        4     274  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                                  0      302     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          0                                  1       17     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                                  0      179     590  pers_wasted624   
ki1113344-GMS-Nepal        NEPAL                          1                                  1       92     590  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                                  0      118     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     0                                  1        1     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                                  0      109     252  pers_wasted624   
ki1114097-CMIN             BANGLADESH                     1                                  1       24     252  pers_wasted624   
ki1114097-CONTENT          PERU                           0                                  0      200     215  pers_wasted624   
ki1114097-CONTENT          PERU                           0                                  1        0     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                                  0       15     215  pers_wasted624   
ki1114097-CONTENT          PERU                           1                                  1        0     215  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                                  0    15356   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        0                                  1       12   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                                  0     1216   16596  pers_wasted624   
ki1119695-PROBIT           BELARUS                        1                                  1       12   16596  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  0     8705   10814  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       0                                  1      206   10814  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  0     1641   10814  pers_wasted624   
ki1126311-ZVITAMBO         ZIMBABWE                       1                                  1      262   10814  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                                  0      731    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      0                                  1        4    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                                  0      251    1023  pers_wasted624   
ki1135781-COHORTS          GUATEMALA                      1                                  1       37    1023  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                                  0     4367    6897  pers_wasted624   
ki1135781-COHORTS          INDIA                          0                                  1      112    6897  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                                  0     1759    6897  pers_wasted624   
ki1135781-COHORTS          INDIA                          1                                  1      659    6897  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                                  0     2080    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    0                                  1       73    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                                  0      503    2809  pers_wasted624   
ki1135781-COHORTS          PHILIPPINES                    1                                  1      153    2809  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                                  0      683     796  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         0                                  1        2     796  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                                  0      100     796  pers_wasted624   
ki1148112-LCNI-5           MALAWI                         1                                  1       11     796  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                                  0     8696   17274  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     0                                  1      842   17274  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                                  0     5332   17274  pers_wasted624   
kiGH5241-JiVitA-3          BANGLADESH                     1                                  1     2404   17274  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                                  0     3354    5263  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     0                                  1      124    5263  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                                  0     1344    5263  pers_wasted624   
kiGH5241-JiVitA-4          BANGLADESH                     1                                  1      441    5263  pers_wasted624   


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/570355c8-e4de-460b-af4b-1b8a1152a6b8/d8362637-57e0-426a-8bee-4259effd11b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/570355c8-e4de-460b-af4b-1b8a1152a6b8/d8362637-57e0-426a-8bee-4259effd11b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/570355c8-e4de-460b-af4b-1b8a1152a6b8/d8362637-57e0-426a-8bee-4259effd11b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/570355c8-e4de-460b-af4b-1b8a1152a6b8/d8362637-57e0-426a-8bee-4259effd11b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0579319   0.0260125   0.0898513
ki1000108-IRC              INDIA                          1                    NA                0.1806852   0.1263927   0.2349777
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1213380   0.0673823   0.1752938
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3300377   0.2338617   0.4262138
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0603340   0.0448969   0.0757711
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2960405   0.2720234   0.3200576
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0425532   0.0136640   0.0714424
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3207547   0.2578442   0.3836653
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0302013   0.0107524   0.0496502
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2131148   0.1616847   0.2645448
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0193237   0.0060525   0.0325948
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1592040   0.1085836   0.2098244
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0206206   0.0082207   0.0330205
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1422397   0.0961345   0.1883450
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176066   0.0114636   0.0237497
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2868058   0.2285389   0.3450726
ki1101329-Keneba           GAMBIA                         0                    NA                0.0407633   0.0319463   0.0495804
ki1101329-Keneba           GAMBIA                         1                    NA                0.2500553   0.2111226   0.2889879
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0532103   0.0285043   0.0779162
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3411722   0.2846543   0.3976900
ki1119695-PROBIT           BELARUS                        0                    NA                0.0008023   0.0000534   0.0015512
ki1119695-PROBIT           BELARUS                        1                    NA                0.0093767   0.0053896   0.0133639
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0234001   0.0202711   0.0265291
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1264077   0.1111733   0.1416421
ki1135781-COHORTS          INDIA                          0                    NA                0.0258123   0.0210908   0.0305338
ki1135781-COHORTS          INDIA                          1                    NA                0.2598421   0.2421636   0.2775206
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0353089   0.0274515   0.0431663
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2166949   0.1839096   0.2494802
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0880859   0.0815258   0.0946460
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3120577   0.3008367   0.3232787
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0359586   0.0274258   0.0444914
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2461591   0.2233009   0.2690173


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2008547   0.1494120   0.2522974
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1663067   0.1478935   0.1847199
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1900000   0.1515071   0.2284929
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1125461   0.0859151   0.1391771
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0650407   0.0455353   0.0845460
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602740   0.0429977   0.0775502
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0505451   0.0409848   0.0601054
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0888980   0.0776057   0.1001903
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1847458   0.1534039   0.2160876
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0014461   0.0004206   0.0024716
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0432772   0.0394419   0.0471125
ki1135781-COHORTS          INDIA                          NA                   NA                0.1117877   0.1043506   0.1192249
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0804557   0.0703953   0.0905161
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1879125   0.1813641   0.1944608
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073532   0.0971813   0.1175251


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  3.118924    1.662980    5.849554
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.719986    1.600848    4.621501
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.906696    3.860396    6.236578
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  7.537735    3.718279   15.280577
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.056466    3.547479   14.036366
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.238806    3.865305   17.560819
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.897949    3.483658   13.658546
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 16.289652   10.876118   24.397744
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.134318    4.700541    8.005431
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.411773    3.917447   10.494291
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 11.687611    5.203168   26.253286
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  5.402019    4.512939    6.466253
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 10.066587    8.282881   12.234412
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.137117    4.691332    8.028468
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  3.542653    3.266352    3.842326
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  6.845628    5.318778    8.810788


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.0591413   0.0280396   0.0902429
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0795167   0.0345856   0.1244477
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1059727   0.0905171   0.1214284
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1474468   0.1083088   0.1865848
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0823448   0.0564310   0.1082586
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0457170   0.0278436   0.0635904
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0396534   0.0240583   0.0552484
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0329385   0.0249813   0.0408956
ki1101329-Keneba           GAMBIA                         0                    NA                0.0481347   0.0390665   0.0572029
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1315355   0.1009869   0.1620841
ki1119695-PROBIT           BELARUS                        0                    NA                0.0006439   0.0002324   0.0010553
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0198771   0.0169856   0.0227687
ki1135781-COHORTS          INDIA                          0                    NA                0.0859754   0.0789374   0.0930134
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0451468   0.0367585   0.0535350
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0998266   0.0939779   0.1056752
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0713946   0.0625245   0.0802648


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC              INDIA                          0                    NA                0.5051651   0.2059379   0.6916342
ki1000109-ResPak           PAKISTAN                       0                    NA                0.3958915   0.1481144   0.5716008
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6372126   0.5525539   0.7058535
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7760358   0.5768128   0.8814710
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.7316536   0.5158152   0.8512763
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7028985   0.4528294   0.8386805
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6578857   0.4216911   0.7976131
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6516650   0.5349188   0.7391053
ki1101329-Keneba           GAMBIA                         0                    NA                0.5414594   0.4563759   0.6132264
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7119811   0.5611889   0.8109554
ki1119695-PROBIT           BELARUS                        0                    NA                0.4452229   0.2040829   0.6133044
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4592979   0.4030393   0.5102546
ki1135781-COHORTS          INDIA                          0                    NA                0.7690951   0.7269091   0.8047644
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5611384   0.4743469   0.6335996
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.5312398   0.5021011   0.5586733
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6650443   0.5908794   0.7257646

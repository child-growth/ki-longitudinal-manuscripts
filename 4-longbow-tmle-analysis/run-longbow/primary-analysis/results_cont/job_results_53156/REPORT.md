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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            361    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            289    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+           602    1252
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            206     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2            183     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+           150     539
Birth       ki1101329-Keneba           GAMBIA                         1            156    1407
Birth       ki1101329-Keneba           GAMBIA                         2            146    1407
Birth       ki1101329-Keneba           GAMBIA                         3+          1105    1407
Birth       ki1113344-GMS-Nepal        NEPAL                          1            211     696
Birth       ki1113344-GMS-Nepal        NEPAL                          2            180     696
Birth       ki1113344-GMS-Nepal        NEPAL                          3+           305     696
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5989   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           4144   13874
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3741   13874
Birth       ki1135781-COHORTS          GUATEMALA                      1            112     852
Birth       ki1135781-COHORTS          GUATEMALA                      2            137     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+           603     852
Birth       ki1135781-COHORTS          INDIA                          1            696    4122
Birth       ki1135781-COHORTS          INDIA                          2           1037    4122
Birth       ki1135781-COHORTS          INDIA                          3+          2389    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1            675    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2            687    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1688    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           7456   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           7615   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          7384   22455
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            304    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             72     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           301     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            218     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            222     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           164     604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995
6 months    ki1101329-Keneba           GAMBIA                         1            194    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1265    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           262     564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3466    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2638    8668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2564    8668
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     961
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+           690     961
6 months    ki1135781-COHORTS          INDIA                          1            740    4291
6 months    ki1135781-COHORTS          INDIA                          2           1096    4291
6 months    ki1135781-COHORTS          INDIA                          3+          2455    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2            606    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1528    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6396   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5700   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4715   16811
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           154     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            130     488
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     488
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           228     488
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            640    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            507    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           492    1639
24 months   ki1135781-COHORTS          GUATEMALA                      1            166    1064
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1064
24 months   ki1135781-COHORTS          GUATEMALA                      3+           747    1064
24 months   ki1135781-COHORTS          INDIA                          1            564    3380
24 months   ki1135781-COHORTS          INDIA                          2            848    3380
24 months   ki1135781-COHORTS          INDIA                          3+          1968    3380
24 months   ki1135781-COHORTS          PHILIPPINES                    1            524    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1377    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3173    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2923    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2536    8632


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/62d84f24-b8f2-4d95-93e5-fc5a62e6cedb/6dba8e22-775a-454f-9c93-a8fd1e5a8d21/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/62d84f24-b8f2-4d95-93e5-fc5a62e6cedb/6dba8e22-775a-454f-9c93-a8fd1e5a8d21/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/62d84f24-b8f2-4d95-93e5-fc5a62e6cedb/6dba8e22-775a-454f-9c93-a8fd1e5a8d21/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.6272884   -1.8867179   -1.3678588
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.4340575   -1.6050029   -1.2631121
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.3472804   -1.4803919   -1.2141690
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0262621   -1.1885006   -0.8640236
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8245597   -0.9993763   -0.6497432
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.6312117   -0.8208979   -0.4415254
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.1537613   -0.3620025    0.0544799
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                 0.3076616    0.1334388    0.4818844
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                 0.1136229    0.0098023    0.2174435
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0699929   -1.3060537   -0.8339320
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0662511   -1.3737647   -0.7587375
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.7347869   -0.8916996   -0.5778741
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.4697702   -0.5338244   -0.4057159
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.5112009   -0.5658022   -0.4565995
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.5964955   -0.6500345   -0.5429566
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3418880   -0.6093057   -0.0744703
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.0482931   -0.4032191    0.4998052
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.2291141    0.1186751    0.3395530
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7811575   -0.8930524   -0.6692627
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.6045650   -0.6878623   -0.5212676
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.6779491   -0.7300504   -0.6258477
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3210023   -0.4518447   -0.1901599
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.1801413   -0.3156279   -0.0446546
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.2498095   -0.3100406   -0.1895785
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8039349   -1.8536344   -1.7542353
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5219261   -1.5626506   -1.4812016
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.4478232   -1.4919844   -1.4036620
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2918226   -1.4248149   -1.1588303
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3043865   -1.4805032   -1.1282698
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.4632648   -1.5652944   -1.3612352
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2005149   -1.3464857   -1.0545441
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.9895869   -1.1449105   -0.8342634
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.7289353   -0.9043417   -0.5535290
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5465594   -0.6465549   -0.4465639
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5657016   -0.6845619   -0.4468413
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6664261   -0.7617166   -0.5711356
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.5880318   -0.6928160   -0.4832477
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.5597552   -0.8256183   -0.2938922
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.9565222   -1.0367295   -0.8763149
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3271166   -1.6574626   -0.9967707
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.4015620   -1.7351833   -1.0679406
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.2849563   -1.4165809   -1.1533318
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7932313   -0.8552512   -0.7312114
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8555626   -0.9260056   -0.7851196
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.0044256   -1.0753240   -0.9335271
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.8343531   -2.1372664   -1.5314398
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.7395696   -2.1099146   -1.3692246
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.8259365   -1.9266773   -1.7251957
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8356400   -0.9393143   -0.7319658
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.8721609   -0.9544245   -0.7898974
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -1.1262584   -1.1763328   -1.0761840
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9067156   -1.0316499   -0.7817813
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.9842155   -1.1221604   -0.8462705
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -1.2712617   -1.3355685   -1.2069550
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3535073   -1.4056194   -1.3013952
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2397426   -1.2803764   -1.1991088
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.3148505   -1.3641680   -1.2655330
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5529108   -1.7287317   -1.3770899
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.5887409   -1.7704941   -1.4069878
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.5398252   -1.7373649   -1.3422856
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.4012893   -1.6295273   -1.1730512
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.2036086   -1.4612382   -0.9459790
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -1.6172109   -1.6907022   -1.5437196
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.7262637   -2.0199478   -1.4325796
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.9014029   -2.2639354   -1.5388704
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.9749453   -2.1009442   -1.8489464
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.4042270   -1.5691055   -1.2393485
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.5744727   -1.7246724   -1.4242729
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.7670025   -1.9171929   -1.6168120
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.8999840   -3.1001233   -2.6998447
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -2.9818088   -3.3013356   -2.6622820
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -3.0439629   -3.1452682   -2.9426575
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.8061625   -1.9635355   -1.6487895
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.9722630   -2.0858247   -1.8587012
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -2.4247898   -2.4824798   -2.3670998
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.8901429   -2.0352329   -1.7450529
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -2.2624900   -2.4447312   -2.0802489
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -2.7071888   -2.7748104   -2.6395672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8517620   -1.9143809   -1.7891431
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9796901   -2.0353520   -1.9240282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -2.1234296   -2.1829089   -2.0639503


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0483298   -0.0182746    0.1149342
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5003222   -0.5208673   -0.4797770
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5432778   -0.5926218   -0.4939338
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9239386   -0.9768148   -0.8710623
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679886   -0.8935535   -0.8424236
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0455022   -1.0805318   -1.0104727
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5883084   -1.6443765   -1.5322402
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059640   -1.6629797   -1.5489484
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2397574   -2.2808841   -2.1986307
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1932308   -0.0948833    0.4813450
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.2800079   -0.0433476    0.6033635
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2017024   -0.0366622    0.4400669
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.3950504    0.1459900    0.6441108
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.4614229    0.1905968    0.7322491
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  0.2673842    0.0349612    0.4998072
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0037418   -0.3820095    0.3894931
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.3352060    0.0511623    0.6192496
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0414307   -0.1255256    0.0426642
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1267254   -0.2101164   -0.0433343
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.3901811   -0.1350936    0.9154557
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5710021    0.2814294    0.8605747
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1765926    0.0373780    0.3158071
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.1032084   -0.0199165    0.2263334
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.1408610   -0.0472477    0.3289698
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.0711928   -0.0724686    0.2148541
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2820088    0.2190034    0.3450141
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.3561117    0.2902249    0.4219985
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0125639   -0.1927519    0.1676242
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1714422   -0.3025153   -0.0403690
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2109279   -0.0023972    0.4242530
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.4715796    0.2430827    0.7000764
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0191422   -0.1738178    0.1355334
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.1198667   -0.2572479    0.0175144
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0282766   -0.2573601    0.3139132
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.3684904   -0.5001102   -0.2368705
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0744453   -0.5433332    0.3944425
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0421603   -0.3131379    0.3974585
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0623313   -0.1558011    0.0311385
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.2111943   -0.3049731   -0.1174155
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0947835   -0.3837709    0.5733380
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0084166   -0.3108160    0.3276491
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0365209   -0.1681782    0.0951364
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2906183   -0.4052192   -0.1760174
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0774998   -0.2627651    0.1077654
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.3645461   -0.5044228   -0.2246694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1137647    0.0511233    0.1764061
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0386568   -0.0312354    0.1085490
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0358302   -0.2883670    0.2167067
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0130855   -0.2511667    0.2773378
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1976807   -0.1459299    0.5412913
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2159217   -0.4546921    0.0228487
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1751392   -0.6414416    0.2911633
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.2486816   -0.5681382    0.0707751
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.1702457   -0.3918392    0.0513478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.3627755   -0.5846875   -0.1408635
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0818248   -0.4587255    0.2950759
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1439789   -0.3680622    0.0801045
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.1661005   -0.3600047    0.0278038
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.6186273   -0.7860280   -0.4512266
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.3723471   -0.6048756   -0.1398185
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.8170459   -0.9768147   -0.6572771
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.1279281   -0.2062832   -0.0495731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.2716676   -0.3538367   -0.1894985


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1958666   -0.0396944    0.4314277
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1411601   -0.0046716    0.2869917
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.2020911   -0.0051524    0.4093346
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0151652   -0.2404655    0.2101352
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0305520   -0.0905223    0.0294183
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4716180    0.2080330    0.7352031
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.1038334   -0.0028030    0.2104698
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0719531   -0.0531805    0.1970868
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2145200    0.1678714    0.2611687
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1100337   -0.1832323   -0.0368350
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1088234   -0.0233780    0.2410247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0032816   -0.0861325    0.0926957
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.3359067   -0.4440740   -0.2277394
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0237226   -0.3401718    0.2927266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0747573   -0.1315038   -0.0180108
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0186195   -0.2782570    0.3154959
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2098622   -0.3084137   -0.1113107
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2338568   -0.3539041   -0.1138094
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0404141   -0.0067732    0.0876014
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0495114   -0.2077933    0.1087706
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1870191   -0.4122830    0.0382447
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1611543   -0.4432909    0.1209823
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2017370   -0.3519604   -0.0515136
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0906081   -0.2873990    0.1061827
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4335949   -0.5850351   -0.2821547
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5239716   -0.6645586   -0.3833846
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1618861   -0.2193706   -0.1044016

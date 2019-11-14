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
Birth       ki1101329-Keneba           GAMBIA                         1              2      10
Birth       ki1101329-Keneba           GAMBIA                         2              2      10
Birth       ki1101329-Keneba           GAMBIA                         3+             6      10
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           9915   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           8878   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          7874   26667
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6364   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4704   16753
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3140    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2905    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2520    8565


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

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/caf44ddb-5192-4f27-a0cd-190eaa82dcf6/422c08b0-ade7-4b5c-8909-d0fd3b708695/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/caf44ddb-5192-4f27-a0cd-190eaa82dcf6/422c08b0-ade7-4b5c-8909-d0fd3b708695/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/caf44ddb-5192-4f27-a0cd-190eaa82dcf6/422c08b0-ade7-4b5c-8909-d0fd3b708695/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.6475504   -1.9020576   -1.3930432
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.4594677   -1.6158250   -1.3031104
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.3618263   -1.4952331   -1.2284194
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0652680   -1.2221567   -0.9083794
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8559049   -1.0378553   -0.6739545
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.6100530   -0.7726585   -0.4474475
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1234832   -1.3673927   -0.8795738
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0208480   -1.2984029   -0.7432932
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.8081240   -0.9613714   -0.6548765
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.4611255   -0.5242094   -0.3980415
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.5182281   -0.5702255   -0.4662308
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.5867745   -0.6377933   -0.5357558
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3331438   -0.6121220   -0.0541656
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.0892589   -0.3461466    0.5246644
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.2311563    0.1125161    0.3497964
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7646591   -0.8762950   -0.6530231
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.6045432   -0.6893851   -0.5197013
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.6740832   -0.7253687   -0.6227978
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3092897   -0.4417379   -0.1768415
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.1880255   -0.3202942   -0.0557569
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.2521419   -0.3131286   -0.1911553
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.1143412   -1.1931979   -1.0354845
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.1726896   -1.2229109   -1.1224683
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.2641205   -1.3178167   -1.2104243
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2820579   -1.4376939   -1.1264219
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3068335   -1.4698446   -1.1438224
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.4796875   -1.5877851   -1.3715900
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2416956   -1.3943681   -1.0890231
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0022620   -1.1481126   -0.8564114
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.6927556   -0.8650279   -0.5204833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5463899   -0.6452746   -0.4475051
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5612491   -0.6824166   -0.4400816
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6726094   -0.7703616   -0.5748572
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.6822993   -0.8064846   -0.5581140
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.5478204   -0.7937294   -0.3019115
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.9337707   -1.0101217   -0.8574197
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.4024327   -1.6996787   -1.1051867
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3702493   -1.7703302   -0.9701683
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.2979516   -1.4330382   -1.1628651
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7904005   -0.8528086   -0.7279923
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8556641   -0.9215685   -0.7897598
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.9886414   -1.0586069   -0.9186758
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.8563229   -2.1712925   -1.5413534
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.7593400   -2.0952556   -1.4234243
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.8273188   -1.9302041   -1.7244335
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8317654   -0.9373028   -0.7262280
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.8700737   -0.9520062   -0.7881413
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -1.1304809   -1.1798925   -1.0810694
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9253148   -1.0548732   -0.7957564
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.9906875   -1.1349032   -0.8464718
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -1.2732839   -1.3380859   -1.2084819
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3690216   -1.4222350   -1.3158082
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2572298   -1.2974600   -1.2169996
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.3473832   -1.3975495   -1.2972169
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.4982312   -1.6897124   -1.3067500
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.5729770   -1.7443900   -1.4015639
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.4648772   -1.6377307   -1.2920237
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.3020099   -1.5496518   -1.0543681
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.2026056   -1.4510997   -0.9541115
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -1.6170140   -1.6909516   -1.5430765
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.7201551   -2.0051693   -1.4351409
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.9244631   -2.2831635   -1.5657627
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -2.0478796   -2.1867309   -1.9090283
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.3942186   -1.5527783   -1.2356589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.5583551   -1.7096759   -1.4070343
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.7541004   -1.9086671   -1.5995337
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.8961680   -3.1075605   -2.6847755
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -2.9794248   -3.2763279   -2.6825216
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -3.0289982   -3.1331569   -2.9248394
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.8105863   -1.9579768   -1.6631959
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.9647014   -2.0720964   -1.8573064
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -2.4271944   -2.4838234   -2.3705654
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.9137826   -2.0722220   -1.7553432
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -2.2785850   -2.4622901   -2.0948800
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -2.6941723   -2.7631558   -2.6251889
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8741012   -1.9366268   -1.8115756
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9944704   -2.0496174   -1.9393234
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -2.1385712   -2.2001718   -2.0769706


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5003222   -0.5208673   -0.4797770
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729576   -1.2009629   -1.1449523
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3355900   -1.3586765   -1.3125035
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5883084   -1.6443765   -1.5322402
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059640   -1.6629797   -1.5489484
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2397574   -2.2808841   -2.1986307
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0195844   -2.0472504   -1.9919183


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.1880827   -0.0826288    0.4587943
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.2857242   -0.0378354    0.6092838
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2093632   -0.0301410    0.4488673
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.4552151    0.2309875    0.6794427
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.1026352   -0.2653302    0.4706005
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.3153592    0.0272069    0.6035116
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0571027   -0.1387690    0.0245636
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1256491   -0.2066638   -0.0446343
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.4224027   -0.0953157    0.9401211
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5643001    0.2608237    0.8677764
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1601159    0.0202070    0.3000248
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.0905758   -0.0319778    0.2131295
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.1212642   -0.0657158    0.3082441
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.0571478   -0.0883429    0.2026385
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0583484   -0.1497065    0.0330097
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1497793   -0.2439658   -0.0555928
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0247756   -0.1808347    0.1312835
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1976296   -0.3508743   -0.0443850
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2394335    0.0283570    0.4505101
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.5489400    0.3183278    0.7795521
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0148592   -0.1706630    0.1409445
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.1262195   -0.2644187    0.0119797
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.1344789   -0.1407405    0.4096982
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2514714   -0.3974040   -0.1055388
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0321834   -0.4666960    0.5310629
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1044811   -0.2221088    0.4310710
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0652637   -0.1556004    0.0250731
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1982409   -0.2915813   -0.1049005
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0969830   -0.3635744    0.5575403
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0290041   -0.3023667    0.3603750
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0383083   -0.1712171    0.0946004
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2987155   -0.4147382   -0.1826929
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0653727   -0.2583980    0.1276525
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.3479691   -0.4922537   -0.2036845
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1117918    0.0484551    0.1751285
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0216384   -0.0491222    0.0923990
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0747458   -0.3312496    0.1817580
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0333540   -0.2243078    0.2910157
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0994043   -0.2503807    0.4491894
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.3150041   -0.5726025   -0.0574057
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.2043080   -0.6620285    0.2534126
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.3277244   -0.6452010   -0.0102478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.1641365   -0.3818643    0.0535913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.3598818   -0.5803898   -0.1393738
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0832568   -0.4471891    0.2806756
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1328302   -0.3680773    0.1024170
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.1541151   -0.3365029    0.0282728
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.6166081   -0.7743433   -0.4588729
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.3648024   -0.6070581   -0.1225468
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.7803897   -0.9529503   -0.6078292
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.1203692   -0.1970723   -0.0436662
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.2644700   -0.3489629   -0.1799771


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2161287   -0.0168922    0.4491496
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1801660    0.0393843    0.3209477
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0383252   -0.1937640    0.2704144
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0391967   -0.0981661    0.0197726
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4628739    0.1879278    0.7378199
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.0873350   -0.0191031    0.1937730
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0602405   -0.0665078    0.1869888
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0586164   -0.1285754    0.0113427
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1197984   -0.2219444   -0.0176524
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1500041    0.0116928    0.2883154
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0031121   -0.0854606    0.0916849
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2416393   -0.3682704   -0.1150081
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0515935   -0.2340918    0.3372787
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0775881   -0.1347406   -0.0204357
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0405893   -0.2685783    0.3497569
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2137368   -0.3141402   -0.1133335
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2152576   -0.3399319   -0.0905832
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0334316   -0.0146687    0.0815318
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1041910   -0.2787372    0.0703553
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2862985   -0.5305147   -0.0420822
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1672629   -0.4412656    0.1067398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2117454   -0.3556495   -0.0678413
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0944241   -0.3019661    0.1131179
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4291711   -0.5707044   -0.2876377
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5003319   -0.6541859   -0.3464780
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1454832   -0.2024092   -0.0885571

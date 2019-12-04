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

agecat      studyid                    country                        parity    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  -------  ------  -----------------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            361    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            289    1252  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+           602    1252  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            206     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     2            183     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+           150     539  haz              
Birth       ki1101329-Keneba           GAMBIA                         1            156    1407  haz              
Birth       ki1101329-Keneba           GAMBIA                         2            146    1407  haz              
Birth       ki1101329-Keneba           GAMBIA                         3+          1105    1407  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1            211     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          2            180     696  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          3+           305     696  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5989   13874  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           4144   13874  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3741   13874  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      1            112     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      2            137     852  haz              
Birth       ki1135781-COHORTS          GUATEMALA                      3+           603     852  haz              
Birth       ki1135781-COHORTS          INDIA                          1            696    4122  haz              
Birth       ki1135781-COHORTS          INDIA                          2           1037    4122  haz              
Birth       ki1135781-COHORTS          INDIA                          3+          2389    4122  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    1            675    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    2            687    3050  haz              
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1688    3050  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           7456   22455  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           7615   22455  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          7384   22455  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            304    1336  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1336  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              7     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             72     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           301     380  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            218     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            222     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           164     604  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995  haz              
6 months    ki1101329-Keneba           GAMBIA                         1            194    1623  haz              
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623  haz              
6 months    ki1101329-Keneba           GAMBIA                         3+          1265    1623  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     564  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           262     564  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3466    8668  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2638    8668  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2564    8668  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     961  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     961  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      3+           690     961  haz              
6 months    ki1135781-COHORTS          INDIA                          1            740    4291  haz              
6 months    ki1135781-COHORTS          INDIA                          2           1096    4291  haz              
6 months    ki1135781-COHORTS          INDIA                          3+          2455    4291  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    2            606    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1528    2708  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6396   16811  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5700   16811  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4715   16811  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           154     578  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376  haz              
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376  haz              
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1            130     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     488  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           228     488  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            640    1639  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            507    1639  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           492    1639  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      1            166    1064  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1064  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      3+           747    1064  haz              
24 months   ki1135781-COHORTS          INDIA                          1            564    3380  haz              
24 months   ki1135781-COHORTS          INDIA                          2            848    3380  haz              
24 months   ki1135781-COHORTS          INDIA                          3+          1968    3380  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    1            524    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1377    2445  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3173    8632  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2923    8632  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2536    8632  haz              


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
![](/tmp/0de24725-e9c8-42c8-a484-3268000a7099/6b834405-ae2a-4021-abb0-eb25046c7069/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0de24725-e9c8-42c8-a484-3268000a7099/6b834405-ae2a-4021-abb0-eb25046c7069/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0de24725-e9c8-42c8-a484-3268000a7099/6b834405-ae2a-4021-abb0-eb25046c7069/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.6272884   -1.8867179   -1.3678588
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.4340575   -1.6050029   -1.2631121
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.3472804   -1.4803919   -1.2141690
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0633983   -1.2138784   -0.9129181
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8344761   -1.0284944   -0.6404578
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.5621423   -0.7290737   -0.3952109
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.1275591   -0.3377997    0.0826815
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                 0.3165914    0.1469172    0.4862656
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                 0.1169684    0.0158617    0.2180751
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0917395   -1.3462395   -0.8372394
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0318240   -1.3249329   -0.7387151
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.7820244   -0.9216941   -0.6423547
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.4637800   -0.5271426   -0.4004174
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.5204185   -0.5744609   -0.4663762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.6057464   -0.6563858   -0.5551069
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3651783   -0.6204682   -0.1098883
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.0558709   -0.4146974    0.5264392
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.2042618    0.0824447    0.3260790
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7865450   -0.8981159   -0.6749741
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.6048772   -0.6888531   -0.5209014
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.6784346   -0.7305534   -0.6263158
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3159404   -0.4411548   -0.1907259
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.1823429   -0.3171217   -0.0475642
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.2461734   -0.3067134   -0.1856333
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8192651   -1.8720493   -1.7664808
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5257112   -1.5669629   -1.4844595
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.4594431   -1.5048498   -1.4140365
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2918226   -1.4248149   -1.1588303
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3043865   -1.4805032   -1.1282698
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.4632648   -1.5652944   -1.3612352
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.7371429   -3.8398050   -1.6344807
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -1.7179167   -1.9871634   -1.4486700
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.9224252   -2.0438733   -1.8009772
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2168018   -1.3661759   -1.0674278
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0103874   -1.1705360   -0.8502388
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.6840081   -0.8741084   -0.4939078
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5380959   -0.6369208   -0.4392709
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5568160   -0.6814909   -0.4321411
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6884506   -0.7813358   -0.5955653
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.6951889   -0.8167649   -0.5736130
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.5627861   -0.8130326   -0.3125395
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.9405855   -1.0168441   -0.8643270
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.3981751   -1.6944766   -1.1018736
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3744103   -1.7589904   -0.9898302
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.2644684   -1.3853426   -1.1435942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7892448   -0.8535618   -0.7249277
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8474255   -0.9116573   -0.7831936
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.0012196   -1.0721536   -0.9302856
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.8742541   -2.1774192   -1.5710890
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.8000052   -2.1601624   -1.4398480
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.8209167   -1.9129384   -1.7288949
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8266468   -0.9286130   -0.7246806
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.8774925   -0.9586479   -0.7963371
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -1.1260729   -1.1754102   -1.0767357
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9093532   -1.0330081   -0.7856982
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.9560396   -1.0961161   -0.8159631
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -1.2752423   -1.3410192   -1.2094654
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3408088   -1.3939442   -1.2876734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2386876   -1.2798950   -1.1974801
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.3264554   -1.3759367   -1.2769741
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5258956   -1.6905012   -1.3612899
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.5729205   -1.7560584   -1.3897825
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.5496767   -1.7453336   -1.3540197
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.3800817   -1.6129223   -1.1472410
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.2246017   -1.4726627   -0.9765407
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -1.6093902   -1.6832520   -1.5355284
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.7161262   -1.9736566   -1.4585957
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.9181904   -2.2691734   -1.5672073
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.9795265   -2.1055415   -1.8535116
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.4407227   -1.6010360   -1.2804094
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.5749604   -1.7257473   -1.4241735
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.7403334   -1.8935805   -1.5870863
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.8061970   -3.0363203   -2.5760738
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -2.9396148   -3.2327703   -2.6464594
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -3.0835509   -3.1879381   -2.9791638
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.8121200   -1.9645700   -1.6596699
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.9832853   -2.0958201   -1.8707505
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -2.4270488   -2.4843269   -2.3697707
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.8816902   -2.0395347   -1.7238457
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -2.2660031   -2.4442027   -2.0878036
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -2.6995737   -2.7659864   -2.6331609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8596145   -1.9217872   -1.7974418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9783776   -2.0384868   -1.9182684
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -2.1112173   -2.1715483   -2.0508863


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
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2289222   -0.0163195    0.4741638
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.5012560    0.2766023    0.7259096
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.4441505    0.1747908    0.7135102
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  0.2445275    0.0115083    0.4775467
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0599155   -0.3265040    0.4463350
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.3097151    0.0190983    0.6003318
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0566386   -0.1398277    0.0265505
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1419664   -0.2229458   -0.0609871
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.4210492   -0.1149825    0.9570809
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5694401    0.2861505    0.8527298
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1816677    0.0423021    0.3210333
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.1081104   -0.0147915    0.2310122
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.1335974   -0.0501048    0.3172997
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.0697670   -0.0689631    0.2084971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2935538    0.2280141    0.3590935
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.3598219    0.2911625    0.4284813
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0125639   -0.1927519    0.1676242
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1714422   -0.3025153   -0.0403690
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                  1.0192262   -0.1158322    2.1542846
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                  0.8147176   -0.2946126    1.9240478
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.2064145   -0.0126229    0.4254518
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.5327937    0.2910061    0.7745814
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0187202   -0.1773033    0.1398630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.1503547   -0.2853471   -0.0153622
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.1324029   -0.1455218    0.4103275
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2453966   -0.3890596   -0.1017336
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0237648   -0.4622553    0.5097848
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1337067   -0.1862519    0.4536652
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0581807   -0.1486386    0.0322772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.2119749   -0.3073110   -0.1166387
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0742488   -0.3965908    0.5450885
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0533374   -0.2634987    0.3701735
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0508457   -0.1804617    0.0787703
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2994261   -0.4122174   -0.1866348
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0466864   -0.2326448    0.1392719
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.3658891   -0.5053204   -0.2264579
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1021212    0.0387361    0.1655063
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0143534   -0.0562359    0.0849428
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0470249   -0.2927031    0.1986532
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0237811   -0.2790625    0.2315003
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1554800   -0.1841197    0.4950797
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2293086   -0.4727716    0.0141544
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.2020642   -0.6371347    0.2330062
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.2634004   -0.5499086    0.0231079
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.1342377   -0.3537802    0.0853049
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.2996107   -0.5208846   -0.0783368
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1334178   -0.5058617    0.2390261
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.2773539   -0.5296337   -0.0250742
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.1711653   -0.3605211    0.0181904
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.6149288   -0.7775567   -0.4523010
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.3843129   -0.6221088   -0.1465171
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.8178834   -0.9888440   -0.6469229
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.1187630   -0.1994980   -0.0380281
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.2516027   -0.3351028   -0.1681027


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1958666   -0.0396944    0.4314277
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1782962    0.0431597    0.3134327
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.1758889   -0.0334776    0.3852554
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0065814   -0.2358841    0.2490470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0365422   -0.0958296    0.0227451
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4949083    0.2414536    0.7483630
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.1092209    0.0029336    0.2155081
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0668912   -0.0526897    0.1864720
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2298502    0.1802188    0.2794816
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1100337   -0.1832323   -0.0368350
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.8384586   -0.2422291    1.9191464
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1251103   -0.0103722    0.2605928
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0051819   -0.0937483    0.0833844
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2287496   -0.3532194   -0.1042798
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0473358   -0.2365791    0.3312508
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0787438   -0.1378138   -0.0196739
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0585205   -0.2386144    0.3556553
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2188554   -0.3156900   -0.1220207
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2312192   -0.3502155   -0.1122229
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0277156   -0.0204153    0.0758465
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0765266   -0.2233714    0.0703182
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2082267   -0.4380470    0.0215935
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1712919   -0.4173540    0.0747702
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1652413   -0.3107700   -0.0197126
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1843951   -0.4101764    0.0413862
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4276374   -0.5742115   -0.2810633
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5324243   -0.6859198   -0.3789288
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1540335   -0.2110990   -0.0969681

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

**Outcome Variable:** whz

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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            304    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            258    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+           541    1103
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            202     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2            182     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+           148     532
Birth       ki1101329-Keneba           GAMBIA                         1            146    1338
Birth       ki1101329-Keneba           GAMBIA                         2            142    1338
Birth       ki1101329-Keneba           GAMBIA                         3+          1050    1338
Birth       ki1113344-GMS-Nepal        NEPAL                          1            185     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2            169     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3+           287     641
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3473   12916
Birth       ki1135781-COHORTS          GUATEMALA                      1             94     756
Birth       ki1135781-COHORTS          GUATEMALA                      2            118     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+           544     756
Birth       ki1135781-COHORTS          INDIA                          1            641    3855
Birth       ki1135781-COHORTS          INDIA                          2            982    3855
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           5520   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           6303   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          6191   18014
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            302    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             72     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           301     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            218     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            222     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           163     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           262     564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3392    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2587    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2525    8504
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     963
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+           692     963
6 months    ki1135781-COHORTS          INDIA                          1            741    4285
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6398   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4701   16784
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           155     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            130     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           227     487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            161     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            123     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           148     432
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+           758    1076
24 months   ki1135781-COHORTS          INDIA                          1            561    3354
24 months   ki1135781-COHORTS          INDIA                          2            837    3354
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3166    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2909    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2528    8603


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
![](/tmp/bad1d1b1-8b0d-4f0c-8984-4d02a882d9c2/bcdced5b-c8b4-480b-af75-1a93343cf4ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bad1d1b1-8b0d-4f0c-8984-4d02a882d9c2/bcdced5b-c8b4-480b-af75-1a93343cf4ec/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bad1d1b1-8b0d-4f0c-8984-4d02a882d9c2/bcdced5b-c8b4-480b-af75-1a93343cf4ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.0304662   -1.1664017   -0.8945307
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.7429214   -0.9341577   -0.5516851
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.5406136   -0.7288012   -0.3524261
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3755060   -1.5298428   -1.2211693
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.2413965   -1.4162774   -1.0665156
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.3008482   -1.5034371   -1.0982594
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -2.4015693   -2.7024149   -2.1007236
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                -1.3114447   -1.5025277   -1.1203617
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                -1.2274001   -1.3190931   -1.1357071
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2444161   -1.4640429   -1.0247893
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1438796   -1.4429052   -0.8448540
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.1259591   -1.2762746   -0.9756436
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7028731   -0.7697676   -0.6359785
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.4141790   -0.4905553   -0.3378027
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3251998   -0.3989393   -0.2514604
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6084053   -1.9796435   -1.2371672
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.2763506   -1.6966222   -0.8560790
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.0826114   -1.2279681   -0.9372548
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.1532132   -1.2664847   -1.0399418
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9706626   -1.0611973   -0.8801278
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.8937536   -0.9475497   -0.8399574
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.1684163   -1.3098250   -1.0270076
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.8375966   -1.0004011   -0.6747921
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.5909535   -0.6635902   -0.5183169
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.9968464   -1.0499689   -0.9437239
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7321691   -0.7740653   -0.6902729
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.6493609   -0.6903883   -0.6083334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.6096059   -0.7550978   -0.4641140
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.6953372   -0.8929263   -0.4977482
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.6804155   -0.8579299   -0.5029011
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1514831   -0.3407857    0.0378194
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1513016   -0.3345016    0.0318984
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.4546192   -0.6232235   -0.2860149
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0207193   -0.0967743    0.1382129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0694546   -0.0486946    0.1876039
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0563568   -0.0521328    0.1648463
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0877781   -0.2239730    0.0484167
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                 0.1272568   -0.1491253    0.4036388
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.1353173   -0.2133073   -0.0573273
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2377303   -0.5338167    0.0583561
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.5945428   -1.0888143   -0.1002713
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.6774026   -0.8087098   -0.5460953
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3844753    0.3308306    0.4381200
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.3037197    0.2352705    0.3721689
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                 0.2877308    0.2018653    0.3735963
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2764839    0.0636470    0.4893207
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.3284389    0.0281639    0.6287139
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.1988132    0.0992158    0.2984107
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.5892036   -0.6874208   -0.4909863
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6023517   -0.6885698   -0.5161336
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.8093044   -0.8613072   -0.7573016
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2651831   -0.3803490   -0.1500171
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.2536216   -0.3824979   -0.1247453
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.3405206   -0.4193603   -0.2616809
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5856386   -0.6391677   -0.5321095
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5685536   -0.6083908   -0.5287163
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.5697575   -0.6160394   -0.5234756
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8952075   -1.0533746   -0.7370403
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.9211009   -1.0976975   -0.7445044
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.9580849   -1.1640717   -0.7520981
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.7721895   -0.9490925   -0.5952865
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.8683658   -1.1204352   -0.6162964
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.7577893   -0.8285693   -0.6870093
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0968190   -1.4956124   -0.6980256
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0805188   -1.4616427   -0.6993948
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.9184748   -1.0525113   -0.7844382
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9798596   -1.1458715   -0.8138478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -1.0052828   -1.1958317   -0.8147338
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.4611149   -1.6978311   -1.2243986
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2461141   -0.4388584   -0.0533698
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.2477260   -0.5141607    0.0187087
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.2760614   -0.3504988   -0.2016241
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.5137860   -0.6215230   -0.4060491
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5111477   -0.5994745   -0.4228208
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.7404755   -0.7909653   -0.6899858
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4050925   -0.5357001   -0.2744849
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.5919288   -0.7257057   -0.4581520
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.7030838   -0.7686644   -0.6375032
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2470271   -1.3067376   -1.1873167
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3011604   -1.3567517   -1.2455690
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.2738967   -1.3359212   -1.2118722


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2037220   -1.2694226   -1.1380213
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5156349   -0.5414936   -0.4897762
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1873900   -0.2456638   -0.1291162
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3106432    0.2849661    0.3363203
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1817824   -1.2809226   -1.0826422
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2875448    0.0903485    0.4847411
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.4898525    0.2825262    0.6971789
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.1341095   -0.0991488    0.3673679
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0746578   -0.1801408    0.3294565
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  1.0901245    0.7339646    1.4462845
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  1.1741692    0.8588901    1.4894483
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.1005365   -0.2704803    0.4715533
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1184569   -0.1484029    0.3853168
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.2886941    0.1872051    0.3901830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.3776732    0.2781601    0.4771864
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.3320547   -0.2273341    0.8914435
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5257939    0.1267822    0.9248057
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1825507    0.0374039    0.3276975
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.2594597    0.1340411    0.3848783
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.3308197    0.1151604    0.5464789
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.5774627    0.4182586    0.7366669
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2646773    0.1981014    0.3312532
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.3474855    0.2820038    0.4129672
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0857313   -0.2638188    0.0923562
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0708096   -0.2356438    0.0940245
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0001815   -0.2633601    0.2637231
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.3031361   -0.5565489   -0.0497233
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0487353   -0.1177034    0.2151741
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0356374   -0.1246077    0.1958826
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.2150349   -0.0931514    0.5232213
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0475392   -0.2038658    0.1087875
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.3568125   -0.9355654    0.2219405
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.4396722   -0.7633227   -0.1160218
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0807556   -0.1674786    0.0059675
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0967444   -0.1979171    0.0044283
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0519550   -0.3154895    0.4193996
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0776707   -0.3120936    0.1567523
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0131481   -0.1436865    0.1173903
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2201009   -0.3311653   -0.1090364
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.0115614   -0.1611766    0.1842995
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0753375   -0.2147769    0.0641019
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0170851   -0.0488096    0.0829797
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0158812   -0.0518230    0.0835853
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0258935   -0.2613605    0.2095735
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0628774   -0.3206174    0.1948625
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0961763   -0.4043308    0.2119783
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0144002   -0.1761592    0.2049596
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0163002   -0.5349500    0.5675505
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1783443   -0.2434933    0.6001818
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0254232   -0.2774302    0.2265839
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.4812552   -0.7691541   -0.1933564
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0016119   -0.3304425    0.3272187
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0299473   -0.2366032    0.1767086
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0026384   -0.1365401    0.1418168
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.2266895   -0.3457396   -0.1076393
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.1868363   -0.3738060    0.0001334
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.2979913   -0.4440335   -0.1519491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0541333   -0.1343762    0.0261097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0268696   -0.1121030    0.0583638


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3604208    0.1734122    0.5474295
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0770474   -0.0609455    0.2150403
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 1.1978473    0.9008537    1.4948409
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1279730   -0.0801011    0.3360471
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1872382    0.1254311    0.2490453
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.5462625    0.1809806    0.9115444
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.2034052    0.0957342    0.3110762
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4256912    0.2894835    0.5618990
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2190192    0.1676336    0.2704047
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0561025   -0.1660071    0.0538021
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0476075   -0.2160724    0.1208573
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0589986   -0.0445241    0.1625213
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0996119   -0.2381348    0.0389110
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3661113   -0.6530152   -0.0792073
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0738320   -0.1229352   -0.0247289
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0824029   -0.2912991    0.1264933
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1176576   -0.2110970   -0.0242181
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0286602   -0.1390651    0.0817446
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0078775   -0.0567396    0.0409846
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0023404   -0.1373257    0.1420066
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0112183   -0.1877870    0.1653503
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0394917   -0.4243361    0.3453526
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2019228   -0.3486745   -0.0551710
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0352614   -0.2224662    0.1519435
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1426868   -0.2456785   -0.0396952
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2048666   -0.3302031   -0.0795302
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0507760   -0.1068923    0.0053403

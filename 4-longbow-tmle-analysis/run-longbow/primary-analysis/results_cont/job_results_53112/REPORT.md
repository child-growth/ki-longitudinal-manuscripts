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
Birth       ki1101329-Keneba           GAMBIA                         1              2      10
Birth       ki1101329-Keneba           GAMBIA                         2              2      10
Birth       ki1101329-Keneba           GAMBIA                         3+             6      10
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           7896   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           7519   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          6668   22083
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6366   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5670   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4690   16726
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3134    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2892    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2512    8538


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
![](/tmp/dba5d88e-96ec-4304-859b-cd6bff23b3fd/8ef010e1-c980-4c29-91db-457a7c9d5690/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dba5d88e-96ec-4304-859b-cd6bff23b3fd/8ef010e1-c980-4c29-91db-457a7c9d5690/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dba5d88e-96ec-4304-859b-cd6bff23b3fd/8ef010e1-c980-4c29-91db-457a7c9d5690/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.9865964   -1.1353300   -0.8378628
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.7492612   -0.9088426   -0.5896798
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.5388823   -0.7275149   -0.3502498
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3608557   -1.5215663   -1.2001452
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.2211237   -1.4067811   -1.0354664
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.2511150   -1.4406128   -1.0616172
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2387463   -1.4805202   -0.9969724
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.1559727   -1.4945723   -0.8173731
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.0493666   -1.1985714   -0.9001618
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.7065280   -0.7746529   -0.6384031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.4257279   -0.4971145   -0.3543413
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.3258366   -0.3980246   -0.2536487
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.7071862   -2.0473726   -1.3669997
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.1763856   -1.5827825   -0.7699887
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.0808005   -1.2191397   -0.9424613
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.1703942   -1.2836801   -1.0571083
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.9794581   -1.0736630   -0.8852532
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.8998470   -0.9546237   -0.8450703
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.1812021   -1.3241208   -1.0382835
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.8605591   -1.0168850   -0.7042332
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.5877423   -0.6624594   -0.5130252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.9334501   -0.9744846   -0.8924157
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.7060326   -0.7428390   -0.6692262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.6449884   -0.6871558   -0.6028210
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5978411   -0.7453443   -0.4503379
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.6965423   -0.8804496   -0.5126350
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.6808644   -0.8528508   -0.5088780
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.9457143   -2.3960187   -1.4954099
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.7120833   -0.9054564   -0.5187103
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.0622259   -1.1982227   -0.9262292
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1589831   -0.3468215    0.0288552
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1924838   -0.3660272   -0.0189405
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.4579577   -0.6356025   -0.2803130
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0123712   -0.1102021    0.1349446
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0573279   -0.0614439    0.1760997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                 0.0326547   -0.0813497    0.1466590
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1423186   -0.2790917   -0.0055455
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0198825   -0.3327969    0.2930320
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.1420032   -0.2187009   -0.0653054
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2682440   -0.5057005   -0.0307875
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.5982406   -1.1339844   -0.0624969
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.6703729   -0.8195223   -0.5212236
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3852564    0.3307772    0.4397356
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.3098829    0.2406472    0.3791185
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                 0.2808161    0.1987050    0.3629272
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.3145710    0.1123524    0.5167896
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.3255747    0.0277482    0.6234011
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.1887900    0.0827991    0.2947808
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.5810432   -0.6888361   -0.4732503
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.6042344   -0.6880301   -0.5204388
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.8161185   -0.8693234   -0.7629136
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2457999   -0.3579540   -0.1336458
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.2307431   -0.3442228   -0.1172633
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.3512252   -0.4357068   -0.2667436
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5733469   -0.6266855   -0.5200084
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.5622160   -0.6035213   -0.5209107
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.5668197   -0.6159348   -0.5177046
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9091348   -1.0720912   -0.7461785
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.8790056   -1.0483937   -0.7096176
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.9408634   -1.1516495   -0.7300773
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.7750542   -0.9537632   -0.5963452
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.7813559   -1.0225249   -0.5401869
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.7564912   -0.8264233   -0.6865591
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0842737   -1.4738706   -0.6946769
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.0894121   -1.4676573   -0.7111669
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.8879214   -1.0213899   -0.7544529
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.9613852   -1.1221877   -0.8005828
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.9875354   -1.1785006   -0.7965702
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.4949434   -1.7333259   -1.2565610
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3207753   -0.5096729   -0.1318777
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.3047680   -0.6204701    0.0109342
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.2808372   -0.3555012   -0.2061732
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.5202970   -0.6255958   -0.4149982
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.5018979   -0.5919850   -0.4118107
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.7440728   -0.7938773   -0.6942682
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4154883   -0.5508446   -0.2801320
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.5743734   -0.7050574   -0.4436895
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.7064984   -0.7717160   -0.6412807
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2541659   -1.3155605   -1.1927713
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.3100747   -1.3649716   -1.2551777
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.2734763   -1.3397591   -1.2071936


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5156349   -0.5414936   -0.4897762
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7501567   -0.7680049   -0.7323085
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930207   -0.6125866   -0.5734549
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1817824   -1.2809226   -1.0826422
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2994214   -1.3227674   -1.2760754


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.2373352    0.0674894    0.4071811
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.4477141    0.2512572    0.6441709
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.1397320   -0.1056542    0.3851182
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.1097407   -0.1387306    0.3582121
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0827736   -0.3334261    0.4989733
Birth       ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1893797   -0.0949315    0.4736910
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.2808001    0.1821822    0.3794180
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.3806914    0.2814878    0.4798951
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.5308006    0.0016069    1.0599942
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.6263857    0.2589960    0.9937754
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1909361    0.0435577    0.3383145
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.2705473    0.1446902    0.3964043
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.3206430    0.1086679    0.5326181
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.5934598    0.4319314    0.7549882
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2274175    0.1734089    0.2814262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.2884618    0.2302054    0.3467181
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0987012   -0.2700008    0.0725983
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0830233   -0.2794597    0.1134130
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                  1.2336310    0.7435624    1.7236995
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                  0.8834884    0.4130958    1.3538809
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0335007   -0.2893520    0.2223507
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.2989746   -0.5573745   -0.0405747
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0449567   -0.1257300    0.2156433
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0202834   -0.1475060    0.1880728
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.1224361   -0.2191390    0.4640112
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                  0.0003154   -0.1558079    0.1564388
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.3299967   -0.9181722    0.2581789
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.4021290   -0.6824943   -0.1217637
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0753735   -0.1632766    0.0125295
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1044403   -0.2028869   -0.0059936
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0110037   -0.3490159    0.3710233
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1257810   -0.3538643    0.1023022
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0231912   -0.1596689    0.1132865
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2350753   -0.3552859   -0.1148646
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.0150569   -0.1444600    0.1745738
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.1054253   -0.2457936    0.0349431
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0111309   -0.0556755    0.0779373
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0065272   -0.0642940    0.0773484
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0301292   -0.2044113    0.2646697
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0317286   -0.2976199    0.2341627
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0063017   -0.3064776    0.2938743
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0185630   -0.1733335    0.2104595
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0051383   -0.5475823    0.5373057
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.1963523   -0.2165961    0.6093007
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0261502   -0.2747122    0.2224118
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.5335582   -0.8195274   -0.2475890
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0160074   -0.3519897    0.3840044
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0399381   -0.1631927    0.2430690
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                  0.0183991   -0.1199938    0.1567921
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.2237757   -0.3402707   -0.1072807
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.1588851   -0.3469871    0.0292169
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.2910101   -0.4410835   -0.1409367
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0559088   -0.1368642    0.0250467
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0193104   -0.1089719    0.0703511


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3165511    0.1508399    0.4822623
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0623971   -0.0809623    0.2057565
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1223033   -0.1085644    0.3531710
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1908932    0.1278497    0.2539367
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.6450433    0.3102050    0.9798817
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.2205862    0.1128639    0.3283085
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4384770    0.3011713    0.5757827
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1832934    0.1439290    0.2226579
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0678673   -0.1969835    0.0612489
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.9335564    0.4796129    1.3874999
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0401075   -0.2056131    0.1253981
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0673467   -0.0412471    0.1759404
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0450714   -0.1841914    0.0940486
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3355976   -0.5654760   -0.1057193
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0746132   -0.1245948   -0.0246315
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1204900   -0.3183262    0.0773462
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1258179   -0.2290396   -0.0225963
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0480434   -0.1554037    0.0593169
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0196738   -0.0682862    0.0289385
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0162678   -0.1276763    0.1602119
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0083536   -0.1868234    0.1701162
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0520370   -0.4278015    0.3237275
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2203972   -0.3638398   -0.0769545
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0393999   -0.1439190    0.2227187
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1361758   -0.2367501   -0.0356016
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1944709   -0.3245698   -0.0643720
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0452555   -0.1032204    0.0127094

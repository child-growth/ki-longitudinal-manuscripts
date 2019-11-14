---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2556c7a4-44eb-44c3-8356-dbc704adfde7/c87f8416-b673-4ad2-a6bb-13c788ff316b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3328737   -1.4504364   -1.2153111
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5954620   -0.7789169   -0.4120071
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.3328223    0.2251774    0.4404672
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.8252648   -1.0592331   -0.5912965
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5275347   -0.5812784   -0.4737910
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0745285   -0.1606056    0.3096626
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.7038638   -0.7715920   -0.6361355
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2333096   -0.3743677   -0.0922515
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0972960   -1.1559237   -1.0386683
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3407071   -1.4788010   -1.2026133
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -2.0515090   -2.9584787   -1.1445394
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0646876   -1.2421161   -0.8872590
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5912825   -0.6931553   -0.4894098
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7196243   -0.9280483   -0.5112003
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2435036   -1.4685103   -1.0184969
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8694890   -0.9423913   -0.7965868
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.9418963   -2.2801115   -1.6036811
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9734899   -1.0703142   -0.8766656
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0013840   -1.1237059   -0.8790620
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2824496   -1.3283175   -1.2365816
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6640639   -1.8490988   -1.4790289
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4262284   -1.6810293   -1.1714275
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.7461442   -1.9598386   -1.5324497
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5782533   -1.7494444   -1.4070621
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9349717   -3.2228716   -2.6470718
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9342663   -2.1082461   -1.7602865
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0006915   -2.1605106   -1.8408725
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9554063   -2.0263865   -1.8844260


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0483298   -0.0182746    0.1149342
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5003222   -0.5208673   -0.4797770
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6773241   -0.7124609   -0.6421873
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729576   -1.2009629   -1.1449523
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5432778   -0.5926218   -0.4939338
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9239386   -0.9768148   -0.8710623
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679886   -0.8935535   -0.8424236
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0455022   -1.0805318   -1.0104727
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3355900   -1.3586765   -1.3125035
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5883084   -1.6443765   -1.5322402
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6059640   -1.6629797   -1.5489484
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2397574   -2.2808841   -2.1986307
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0195844   -2.0472504   -1.9919183


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0985480   -0.1923205   -0.0047755
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2896400   -0.4569355   -0.1223446
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2844925   -0.3834265   -0.1855586
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2598933   -0.4832739   -0.0365126
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0272126   -0.0223480    0.0767731
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0552015   -0.1618343    0.2722374
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0265397   -0.0322442    0.0853235
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0157396   -0.1494645    0.1179854
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0756616   -0.1290624   -0.0222608
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0611492   -0.1638626    0.0415643
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1528248   -0.7211707    1.0268204
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0270039   -0.1889206    0.1349127
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0480048   -0.0394262    0.1354357
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2043142   -0.4085411   -0.0000873
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1073356   -0.3190800    0.1044088
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0015005   -0.0663556    0.0693565
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1261627   -0.2006374    0.4529628
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0720123   -0.1631138    0.0190893
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1391884   -0.2546744   -0.0237024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0531405   -0.0942904   -0.0119906
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0616417   -0.1028028    0.2260862
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1620800   -0.4129038    0.0887439
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1412738   -0.3403894    0.0578417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0277107   -0.1856378    0.1302163
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0556204   -0.3323414    0.2211006
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3054911   -0.4739237   -0.1370584
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4134230   -0.5686148   -0.2582311
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0641781   -0.1294098    0.0010536

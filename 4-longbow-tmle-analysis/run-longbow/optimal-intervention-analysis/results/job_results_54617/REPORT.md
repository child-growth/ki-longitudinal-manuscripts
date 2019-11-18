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




# Results Detail

## Results Plots
![](/tmp/ed33da4a-2225-4532-9ee1-4f12b0831e11/7a34dbe3-0f5c-4d21-863b-1fe24541f0b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4354096   -1.5855803   -1.2852389
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6156711   -0.8057612   -0.4255811
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.3516874    0.2508907    0.4524842
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7788884   -0.9153749   -0.6424018
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5210481   -0.5833080   -0.4587881
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2213437    0.1024211    0.3402663
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6107802   -0.6972271   -0.5243333
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1899975   -0.3172469   -0.0627481
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4432029   -1.4856339   -1.4007719
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3036403   -1.4787485   -1.1285322
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7244204   -1.9991821   -1.4496586
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6738625   -0.7935164   -0.5542086
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6098719   -0.7020927   -0.5176512
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6363062   -0.8309959   -0.4416165
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2343906   -1.4153995   -1.0533817
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7901841   -0.8588294   -0.7215389
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8018528   -2.0878897   -1.5158158
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.8491072   -0.9475882   -0.7506263
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9468280   -1.0864800   -0.8071761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2361040   -1.2771244   -1.1950835
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5652243   -1.7655382   -1.3649103
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4204295   -1.7026735   -1.1381855
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8025309   -2.1195047   -1.4855570
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5442293   -1.7144761   -1.3739825
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -3.0213648   -3.2514722   -2.7912573
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.7947938   -1.9387736   -1.6508141
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0862615   -2.2909912   -1.8815318
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8853882   -1.9501417   -1.8206347


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5883084   -1.6443765   -1.5322402
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6059640   -1.6629797   -1.5489484
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2397574   -2.2808841   -2.1986307
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0039879   -0.1060058    0.1139815
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2694309   -0.4390224   -0.0998395
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3033576   -0.3939730   -0.2127422
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3062697   -0.4363345   -0.1762048
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0207259   -0.0374311    0.0788829
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0916137   -0.1835084    0.0002811
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0665439   -0.1456582    0.0125703
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0590517   -0.1788955    0.0607921
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1462119   -0.1857050   -0.1067188
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0982160   -0.2415265    0.0450946
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1742638   -0.4199947    0.0714671
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4178290   -0.5285746   -0.3070833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0665941   -0.0131105    0.1462987
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2876324   -0.4794408   -0.0958239
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1164486   -0.2890860    0.0561887
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0778044   -0.1412715   -0.0143374
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0138809   -0.2902204    0.2624587
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1963950   -0.2899786   -0.1028113
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1937443   -0.3260637   -0.0614250
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0769893   -0.1125664   -0.0414122
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0371979   -0.2167511    0.1423553
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1678789   -0.4444439    0.1086861
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0848872   -0.3880195    0.2182452
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0617347   -0.2179909    0.0945215
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0307727   -0.1916335    0.2531788
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4449636   -0.5837076   -0.3062196
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3278530   -0.5266467   -0.1290592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1282598   -0.1881524   -0.0683673

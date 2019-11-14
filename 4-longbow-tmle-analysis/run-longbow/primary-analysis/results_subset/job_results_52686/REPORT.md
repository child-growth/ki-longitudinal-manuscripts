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
![](/tmp/63e23a2c-c92f-4966-be50-2b50ed2923b1/bd53fda6-be1c-4e51-9c92-68552a87e2df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5281265   -0.7161870   -0.3400660
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4859419   -1.6520448   -1.3198390
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2727717   -1.3851141   -1.1604294
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9081090   -1.0538928   -0.7623253
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3014947   -0.3735874   -0.2294020
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.3696957   -1.6498423   -1.0895491
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9127192   -0.9947844   -0.8306541
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5805555   -0.6579718   -0.5031391
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6265348   -0.6666844   -0.5863853
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5968064   -0.7444934   -0.4491194
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7157927   -0.9124523   -0.5191331
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1857305   -0.3870453    0.0155842
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1022332   -0.0085404    0.2130068
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0280507   -0.2259141    0.2820155
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2045174   -0.4571512    0.0481164
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3347043    0.2731653    0.3962432
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0305433   -0.2481452    0.3092317
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6139326   -0.7292880   -0.4985771
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2485711   -0.3737202   -0.1234220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6155495   -0.6640951   -0.5670040
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9885110   -1.1453043   -0.8317177
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7698965   -0.9742080   -0.5655850
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1366854   -1.4752041   -0.7981668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9552612   -1.1042156   -0.8063069
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4007459   -0.6252988   -0.1761930
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5166458   -0.6144891   -0.4188025
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4709536   -0.5963371   -0.3455701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2513251   -1.3192638   -1.1833864


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2037220   -1.2694226   -1.1380213
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5156349   -0.5414936   -0.4897762
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7501567   -0.7680049   -0.7323085
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1873900   -0.2456638   -0.1291162
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3106432    0.2849661    0.3363203
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5930207   -0.6125866   -0.5734549
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1817824   -1.2809226   -1.0826422
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2994214   -1.3227674   -1.2760754


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1419188   -0.2438022   -0.0400355
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1874833    0.0396619    0.3353046
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0690498   -0.0260645    0.1641640
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2083340   -0.3305174   -0.0861507
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2141402   -0.2829826   -0.1452977
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3075528    0.0428130    0.5722927
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0370888   -0.1089537    0.0347761
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1621696   -0.2264011   -0.0979382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1236218   -0.1618524   -0.0853913
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0689020   -0.1989556    0.0611516
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2963652   -0.4905999   -0.1021305
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0133601   -0.1827782    0.1560579
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0225153   -0.1198318    0.0748012
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2154407   -0.4648062    0.0339247
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3993242   -0.6448581   -0.1537903
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0240610   -0.0814435    0.0333215
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1635377   -0.1091043    0.4361798
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0929286   -0.2029332    0.0170760
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0452722   -0.1639587    0.0734143
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0225288   -0.0219288    0.0669864
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0956440   -0.0465565    0.2378445
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0135113   -0.2112118    0.1841892
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0003747   -0.3247224    0.3254717
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2265212   -0.3675384   -0.0855039
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1193705   -0.0982866    0.3370275
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1398271   -0.2320267   -0.0476274
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1390056   -0.2584667   -0.0195445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0480963   -0.1116166    0.0154240

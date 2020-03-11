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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      High           155     804
Birth       COHORTS          GUATEMALA                      Low            355     804
Birth       COHORTS          GUATEMALA                      Medium         294     804
Birth       COHORTS          INDIA                          High           527    1354
Birth       COHORTS          INDIA                          Low            439    1354
Birth       COHORTS          INDIA                          Medium         388    1354
Birth       COHORTS          PHILIPPINES                    High          1027    2873
Birth       COHORTS          PHILIPPINES                    Low            827    2873
Birth       COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       GMS-Nepal        NEPAL                          High           172     694
Birth       GMS-Nepal        NEPAL                          Low            296     694
Birth       GMS-Nepal        NEPAL                          Medium         226     694
Birth       JiVitA-3         BANGLADESH                     High          4726   21624
Birth       JiVitA-3         BANGLADESH                     Low           9468   21624
Birth       JiVitA-3         BANGLADESH                     Medium        7430   21624
Birth       JiVitA-4         BANGLADESH                     High           582    2740
Birth       JiVitA-4         BANGLADESH                     Low           1102    2740
Birth       JiVitA-4         BANGLADESH                     Medium        1056    2740
Birth       MAL-ED           BANGLADESH                     High            47     129
Birth       MAL-ED           BANGLADESH                     Low             36     129
Birth       MAL-ED           BANGLADESH                     Medium          46     129
Birth       MAL-ED           INDIA                          High             7      24
Birth       MAL-ED           INDIA                          Low             14      24
Birth       MAL-ED           INDIA                          Medium           3      24
Birth       MAL-ED           NEPAL                          High             3      10
Birth       MAL-ED           NEPAL                          Low              4      10
Birth       MAL-ED           NEPAL                          Medium           3      10
Birth       MAL-ED           PERU                           High            86     194
Birth       MAL-ED           PERU                           Low             58     194
Birth       MAL-ED           PERU                           Medium          50     194
Birth       MAL-ED           SOUTH AFRICA                   High            10      33
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            66     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             27     103
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          10     103
Birth       NIH-Crypto       BANGLADESH                     High           284     732
Birth       NIH-Crypto       BANGLADESH                     Low            235     732
Birth       NIH-Crypto       BANGLADESH                     Medium         213     732
Birth       PROBIT           BELARUS                        High          2059   13424
Birth       PROBIT           BELARUS                        Low           5320   13424
Birth       PROBIT           BELARUS                        Medium        6045   13424
Birth       PROVIDE          BANGLADESH                     High           163     539
Birth       PROVIDE          BANGLADESH                     Low            187     539
Birth       PROVIDE          BANGLADESH                     Medium         189     539
Birth       SAS-CompFeed     INDIA                          High           299    1249
Birth       SAS-CompFeed     INDIA                          Low            543    1249
Birth       SAS-CompFeed     INDIA                          Medium         407    1249
Birth       ZVITAMBO         ZIMBABWE                       High           982   13501
Birth       ZVITAMBO         ZIMBABWE                       Low           2281   13501
Birth       ZVITAMBO         ZIMBABWE                       Medium       10238   13501
6 months    COHORTS          GUATEMALA                      High           165     904
6 months    COHORTS          GUATEMALA                      Low            406     904
6 months    COHORTS          GUATEMALA                      Medium         333     904
6 months    COHORTS          INDIA                          High           544    1385
6 months    COHORTS          INDIA                          Low            450    1385
6 months    COHORTS          INDIA                          Medium         391    1385
6 months    COHORTS          PHILIPPINES                    High           891    2564
6 months    COHORTS          PHILIPPINES                    Low            746    2564
6 months    COHORTS          PHILIPPINES                    Medium         927    2564
6 months    GMS-Nepal        NEPAL                          High           137     563
6 months    GMS-Nepal        NEPAL                          Low            243     563
6 months    GMS-Nepal        NEPAL                          Medium         183     563
6 months    JiVitA-3         BANGLADESH                     High          4279   16132
6 months    JiVitA-3         BANGLADESH                     Low           6304   16132
6 months    JiVitA-3         BANGLADESH                     Medium        5549   16132
6 months    JiVitA-4         BANGLADESH                     High          1099    4689
6 months    JiVitA-4         BANGLADESH                     Low           1725    4689
6 months    JiVitA-4         BANGLADESH                     Medium        1865    4689
6 months    LCNI-5           MALAWI                         High           251     812
6 months    LCNI-5           MALAWI                         Low            290     812
6 months    LCNI-5           MALAWI                         Medium         271     812
6 months    MAL-ED           BANGLADESH                     High            50     132
6 months    MAL-ED           BANGLADESH                     Low             36     132
6 months    MAL-ED           BANGLADESH                     Medium          46     132
6 months    MAL-ED           INDIA                          High            43     138
6 months    MAL-ED           INDIA                          Low             54     138
6 months    MAL-ED           INDIA                          Medium          41     138
6 months    MAL-ED           NEPAL                          High            40      95
6 months    MAL-ED           NEPAL                          Low             27      95
6 months    MAL-ED           NEPAL                          Medium          28      95
6 months    MAL-ED           PERU                           High           107     224
6 months    MAL-ED           PERU                           Low             60     224
6 months    MAL-ED           PERU                           Medium          57     224
6 months    MAL-ED           SOUTH AFRICA                   High            33      92
6 months    MAL-ED           SOUTH AFRICA                   Low             35      92
6 months    MAL-ED           SOUTH AFRICA                   Medium          24      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    NIH-Crypto       BANGLADESH                     High           279     715
6 months    NIH-Crypto       BANGLADESH                     Low            223     715
6 months    NIH-Crypto       BANGLADESH                     Medium         213     715
6 months    PROBIT           BELARUS                        High          2513   15210
6 months    PROBIT           BELARUS                        Low           5961   15210
6 months    PROBIT           BELARUS                        Medium        6736   15210
6 months    PROVIDE          BANGLADESH                     High           209     604
6 months    PROVIDE          BANGLADESH                     Low            209     604
6 months    PROVIDE          BANGLADESH                     Medium         186     604
6 months    SAS-CompFeed     INDIA                          High           348    1333
6 months    SAS-CompFeed     INDIA                          Low            550    1333
6 months    SAS-CompFeed     INDIA                          Medium         435    1333
6 months    SAS-FoodSuppl    INDIA                          High           101     380
6 months    SAS-FoodSuppl    INDIA                          Low            132     380
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ZVITAMBO         ZIMBABWE                       High           586    8429
6 months    ZVITAMBO         ZIMBABWE                       Low           1459    8429
6 months    ZVITAMBO         ZIMBABWE                       Medium        6384    8429
24 months   COHORTS          GUATEMALA                      High           177     992
24 months   COHORTS          GUATEMALA                      Low            462     992
24 months   COHORTS          GUATEMALA                      Medium         353     992
24 months   COHORTS          INDIA                          High           539    1380
24 months   COHORTS          INDIA                          Low            450    1380
24 months   COHORTS          INDIA                          Medium         391    1380
24 months   COHORTS          PHILIPPINES                    High           798    2314
24 months   COHORTS          PHILIPPINES                    Low            692    2314
24 months   COHORTS          PHILIPPINES                    Medium         824    2314
24 months   GMS-Nepal        NEPAL                          High           113     487
24 months   GMS-Nepal        NEPAL                          Low            219     487
24 months   GMS-Nepal        NEPAL                          Medium         155     487
24 months   JiVitA-3         BANGLADESH                     High          2070    8293
24 months   JiVitA-3         BANGLADESH                     Low           3379    8293
24 months   JiVitA-3         BANGLADESH                     Medium        2844    8293
24 months   JiVitA-4         BANGLADESH                     High          1096    4619
24 months   JiVitA-4         BANGLADESH                     Low           1703    4619
24 months   JiVitA-4         BANGLADESH                     Medium        1820    4619
24 months   LCNI-5           MALAWI                         High           173     571
24 months   LCNI-5           MALAWI                         Low            203     571
24 months   LCNI-5           MALAWI                         Medium         195     571
24 months   MAL-ED           BANGLADESH                     High            40     117
24 months   MAL-ED           BANGLADESH                     Low             35     117
24 months   MAL-ED           BANGLADESH                     Medium          42     117
24 months   MAL-ED           INDIA                          High            42     132
24 months   MAL-ED           INDIA                          Low             51     132
24 months   MAL-ED           INDIA                          Medium          39     132
24 months   MAL-ED           NEPAL                          High            38      91
24 months   MAL-ED           NEPAL                          Low             27      91
24 months   MAL-ED           NEPAL                          Medium          26      91
24 months   MAL-ED           PERU                           High            77     164
24 months   MAL-ED           PERU                           Low             44     164
24 months   MAL-ED           PERU                           Medium          43     164
24 months   MAL-ED           SOUTH AFRICA                   High            34      91
24 months   MAL-ED           SOUTH AFRICA                   Low             34      91
24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   NIH-Crypto       BANGLADESH                     High           211     514
24 months   NIH-Crypto       BANGLADESH                     Low            144     514
24 months   NIH-Crypto       BANGLADESH                     Medium         159     514
24 months   PROBIT           BELARUS                        High           627    3913
24 months   PROBIT           BELARUS                        Low           1516    3913
24 months   PROBIT           BELARUS                        Medium        1770    3913
24 months   PROVIDE          BANGLADESH                     High           202     578
24 months   PROVIDE          BANGLADESH                     Low            197     578
24 months   PROVIDE          BANGLADESH                     Medium         179     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ZVITAMBO         ZIMBABWE                       High            96    1594
24 months   ZVITAMBO         ZIMBABWE                       Low            298    1594
24 months   ZVITAMBO         ZIMBABWE                       Medium        1200    1594


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/acde65e6-8d1e-4829-b506-c0c1b83a8ed4/76835391-a3a0-4edb-962d-094c8af041f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.2578500    0.0625700    0.4531299
Birth       COHORTS          INDIA                          optimal              observed          -0.5999475   -0.7080035   -0.4918915
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1981468   -0.2886869   -0.1076067
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0350954   -1.2017099   -0.8684809
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5587759   -1.6034234   -1.5141285
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.3842846   -1.5163450   -1.2522242
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.8058487   -1.0768996   -0.5347977
Birth       MAL-ED           PERU                           optimal              observed          -1.0285469   -1.2140786   -0.8430152
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.7291263   -1.1557753   -0.3024773
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1367501   -1.4368663   -0.8366340
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8491677   -0.9782511   -0.7200843
Birth       PROBIT           BELARUS                        optimal              observed           1.3338820    1.1565271    1.5112369
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8829575   -0.9989115   -0.7670035
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.4859708   -1.6504612   -1.3214803
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4732843   -0.5420200   -0.4045486
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.7397785   -1.9383613   -1.5411956
6 months    COHORTS          INDIA                          optimal              observed          -0.8118472   -0.9176834   -0.7060110
6 months    COHORTS          PHILIPPINES                    optimal              observed          -1.0521483   -1.1428246   -0.9614719
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.3111575   -1.4678787   -1.1544364
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2343926   -1.2995679   -1.1692172
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2130677   -1.3202320   -1.1059034
6 months    LCNI-5           MALAWI                         optimal              observed          -1.6609568   -1.7843932   -1.5375204
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.1844321   -1.4012922   -0.9675721
6 months    MAL-ED           INDIA                          optimal              observed          -1.1917720   -1.4289009   -0.9546430
6 months    MAL-ED           NEPAL                          optimal              observed          -0.7241294   -1.0261692   -0.4220896
6 months    MAL-ED           PERU                           optimal              observed          -1.3252570   -1.5465689   -1.1039452
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.8811426   -1.2571764   -0.5051089
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4342107   -1.6456178   -1.2228037
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1361763   -1.2614267   -1.0109259
6 months    PROBIT           BELARUS                        optimal              observed           0.1949003    0.1008957    0.2889049
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.9401684   -1.0692633   -0.8110736
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.2914052   -1.4753093   -1.1075011
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -1.8525796   -2.0721974   -1.6329619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3413352   -0.4711702   -0.2115002
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8911727   -0.9718554   -0.8104899
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.8964690   -3.1029665   -2.6899715
24 months   COHORTS          INDIA                          optimal              observed          -1.8636212   -1.9693682   -1.7578742
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.1613212   -2.2556319   -2.0670104
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7132759   -1.9114055   -1.5151462
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9955737   -2.0702250   -1.9209224
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.6613628   -1.7433551   -1.5793706
24 months   LCNI-5           MALAWI                         optimal              observed          -1.7941984   -1.9296109   -1.6587859
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.6477856   -1.8787044   -1.4168668
24 months   MAL-ED           INDIA                          optimal              observed          -1.9565156   -2.2147916   -1.6982395
24 months   MAL-ED           NEPAL                          optimal              observed          -1.1566869   -1.4761088   -0.8372651
24 months   MAL-ED           PERU                           optimal              observed          -1.5077160   -1.7454221   -1.2700099
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.4665932   -1.8044241   -1.1287623
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6648079   -3.0720371   -2.2575787
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.2988240   -1.4477884   -1.1498597
24 months   PROBIT           BELARUS                        optimal              observed           0.0021478   -0.2712251    0.2755208
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.3375812   -1.4763719   -1.1987904
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3482530   -1.5665917   -1.1299142


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed           0.1369030    0.0500914    0.2237146
Birth       COHORTS          INDIA                          observed             observed          -0.6011965   -0.6594222   -0.5429708
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2407379   -0.2807613   -0.2007145
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0885159   -1.1686181   -1.0084136
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5843618   -1.6039583   -1.5647653
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5242226   -1.5742923   -1.4741529
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1609302   -1.3461119   -0.9757486
Birth       MAL-ED           PERU                           observed             observed          -0.8645361   -0.9887014   -0.7403707
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5575758   -0.8541170   -0.2610345
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.0906796   -1.3207118   -0.8606474
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3196253    1.1597759    1.4794747
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4300160   -1.5090211   -1.3510109
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4977261   -0.5185420   -0.4769102
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8074115   -1.8776669   -1.7371562
6 months    COHORTS          INDIA                          observed             observed          -0.9755018   -1.0332483   -0.9177553
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1419345   -1.1847445   -1.0991244
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3525459   -1.4308373   -1.2742545
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3073109   -1.3309979   -1.2836240
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3420154   -1.3798750   -1.3041557
6 months    LCNI-5           MALAWI                         observed             observed          -1.6442734   -1.7137349   -1.5748119
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.0786869   -1.2229595   -0.9344142
6 months    MAL-ED           INDIA                          observed             observed          -1.0820652   -1.2263805   -0.9377499
6 months    MAL-ED           NEPAL                          observed             observed          -0.6179474   -0.8011766   -0.4347182
6 months    MAL-ED           PERU                           observed             observed          -1.3208519   -1.4383850   -1.2033189
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -0.9829167   -1.1753367   -0.7904967
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3283002   -1.4654809   -1.1911194
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.1078936    0.0168981    0.1988891
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442042   -0.5932639   -0.4951446
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8606958   -0.8865994   -0.8347923
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9834879   -3.0503374   -2.9166384
24 months   COHORTS          INDIA                          observed             observed          -2.1479058   -2.2089283   -2.0868833
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4268626   -2.4728444   -2.3808807
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8889117   -1.9744778   -1.8033456
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0070517   -2.0348225   -1.9792810
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7817125   -1.8182569   -1.7451681
24 months   LCNI-5           MALAWI                         observed             observed          -1.8787566   -1.9605168   -1.7969964
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.8767521   -2.0339896   -1.7195147
24 months   MAL-ED           INDIA                          observed             observed          -1.8269318   -1.9896129   -1.6642507
24 months   MAL-ED           NEPAL                          observed             observed          -1.3417582   -1.5289233   -1.1545932
24 months   MAL-ED           PERU                           observed             observed          -1.7589939   -1.8878675   -1.6301203
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6565385   -1.8628022   -1.4502747
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5846893   -2.7309103   -2.4384682
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1374857   -0.4188811    0.1439096
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.5903795   -1.6477380   -1.5330211


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.1209470   -0.3004534    0.0585594
Birth       COHORTS          INDIA                          optimal              observed          -0.0012490   -0.0895038    0.0870059
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0425911   -0.1231236    0.0379413
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0534204   -0.2025318    0.0956909
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0255859   -0.0653478    0.0141761
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.1399380   -0.2630388   -0.0168372
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.3550816   -0.6005447   -0.1096184
Birth       MAL-ED           PERU                           optimal              observed           0.1640108    0.0258969    0.3021248
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.1715506   -0.2028163    0.5459174
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0460705   -0.2286955    0.3208365
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0603269   -0.1667867    0.0461330
Birth       PROBIT           BELARUS                        optimal              observed          -0.0142567   -0.1070569    0.0785436
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0021445   -0.0944514    0.0901623
Birth       SAS-CompFeed     INDIA                          optimal              observed           0.0559548   -0.0723884    0.1842979
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0244418   -0.0901067    0.0412231
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0676330   -0.2530907    0.1178246
6 months    COHORTS          INDIA                          optimal              observed          -0.1636546   -0.2535792   -0.0737300
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.0897862   -0.1707548   -0.0088176
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0413884   -0.1786804    0.0959037
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0729184   -0.1337432   -0.0120935
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.1289477   -0.2279495   -0.0299459
6 months    LCNI-5           MALAWI                         optimal              observed           0.0166834   -0.0867248    0.1200915
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.1057453   -0.0768500    0.2883405
6 months    MAL-ED           INDIA                          optimal              observed           0.1097067   -0.0797484    0.2991619
6 months    MAL-ED           NEPAL                          optimal              observed           0.1061820   -0.1703171    0.3826811
6 months    MAL-ED           PERU                           optimal              observed           0.0044051   -0.1909319    0.1997421
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1017740   -0.3798478    0.1762997
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1059106   -0.0360443    0.2478654
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0625020   -0.1677878    0.0427837
6 months    PROBIT           BELARUS                        optimal              observed          -0.0870067   -0.1448316   -0.0291818
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1515231   -0.2620379   -0.0410082
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.1092325   -0.2503812    0.0319162
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.0461046   -0.2302815    0.1380724
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2028691   -0.3259792   -0.0797590
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.0304768   -0.0462702    0.1072239
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0870189   -0.2833006    0.1092628
24 months   COHORTS          INDIA                          optimal              observed          -0.2842846   -0.3755236   -0.1930457
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.2655414   -0.3507582   -0.1803247
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.1756359   -0.3500662   -0.0012055
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0114780   -0.0802988    0.0573427
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.1203497   -0.1955217   -0.0451777
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0845582   -0.1954387    0.0263223
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.2289666   -0.4368507   -0.0210824
24 months   MAL-ED           INDIA                          optimal              observed           0.1295837   -0.0940195    0.3531870
24 months   MAL-ED           NEPAL                          optimal              observed          -0.1850713   -0.4250983    0.0549557
24 months   MAL-ED           PERU                           optimal              observed          -0.2512779   -0.4394685   -0.0630873
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1899452   -0.4648525    0.0849620
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0801186   -0.3088683    0.4691056
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.1424405   -0.2614854   -0.0233956
24 months   PROBIT           BELARUS                        optimal              observed          -0.1396336   -0.4221425    0.1428754
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.2648410   -0.3872034   -0.1424785
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2421266   -0.4541487   -0.0301045

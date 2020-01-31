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

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            47     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             36     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          46     129
Birth       ki0047075b-MAL-ED          INDIA                          High             7      24
Birth       ki0047075b-MAL-ED          INDIA                          Low             14      24
Birth       ki0047075b-MAL-ED          INDIA                          Medium           3      24
Birth       ki0047075b-MAL-ED          NEPAL                          High             3      10
Birth       ki0047075b-MAL-ED          NEPAL                          Low              4      10
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           3      10
Birth       ki0047075b-MAL-ED          PERU                           High            86     194
Birth       ki0047075b-MAL-ED          PERU                           Low             58     194
Birth       ki0047075b-MAL-ED          PERU                           Medium          50     194
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           9      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            66     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             27     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          10     103
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           299    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            543    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         407    1249
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           163     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            187     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         189     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           284     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            235     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High           172     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            296     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         226     694
Birth       ki1119695-PROBIT           BELARUS                        High          2059   13421
Birth       ki1119695-PROBIT           BELARUS                        Low           5319   13421
Birth       ki1119695-PROBIT           BELARUS                        Medium        6043   13421
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           982   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2281   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium       10238   13501
Birth       ki1135781-COHORTS          GUATEMALA                      High           155     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low            355     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         294     804
Birth       ki1135781-COHORTS          INDIA                          High           527    1354
Birth       ki1135781-COHORTS          INDIA                          Low            439    1354
Birth       ki1135781-COHORTS          INDIA                          Medium         388    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1027    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            827    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4726   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           9468   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        7430   21624
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           582    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low           1102    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium        1056    2740
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          46     132
6 months    ki0047075b-MAL-ED          INDIA                          High            43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low             54     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium          41     138
6 months    ki0047075b-MAL-ED          NEPAL                          High            40      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low             27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          28      95
6 months    ki0047075b-MAL-ED          PERU                           High           107     224
6 months    ki0047075b-MAL-ED          PERU                           Low             60     224
6 months    ki0047075b-MAL-ED          PERU                           Medium          57     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low             35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          24      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           348    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            550    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         435    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            209     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         186     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High           137     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     563
6 months    ki1119695-PROBIT           BELARUS                        High          2513   15211
6 months    ki1119695-PROBIT           BELARUS                        Low           5962   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium        6736   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           586    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1459    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6384    8429
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         333     904
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           891    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            746    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         927    2564
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4279   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6304   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5549   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1099    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1725    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1865    4689
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          42     117
24 months   ki0047075b-MAL-ED          INDIA                          High            42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low             51     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium          39     132
24 months   ki0047075b-MAL-ED          NEPAL                          High            38      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low             27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          26      91
24 months   ki0047075b-MAL-ED          PERU                           High            77     164
24 months   ki0047075b-MAL-ED          PERU                           Low             44     164
24 months   ki0047075b-MAL-ED          PERU                           Medium          43     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low             34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          23      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            197     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           113     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            219     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155     487
24 months   ki1119695-PROBIT           BELARUS                        High           627    3913
24 months   ki1119695-PROBIT           BELARUS                        Low           1516    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium        1770    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            96    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            298    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium        1200    1594
24 months   ki1135781-COHORTS          GUATEMALA                      High           177     992
24 months   ki1135781-COHORTS          GUATEMALA                      Low            462     992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         353     992
24 months   ki1135781-COHORTS          INDIA                          High           539    1380
24 months   ki1135781-COHORTS          INDIA                          Low            450    1380
24 months   ki1135781-COHORTS          INDIA                          Medium         391    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            692    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         824    2314
24 months   ki1148112-LCNI-5           MALAWI                         High           173     571
24 months   ki1148112-LCNI-5           MALAWI                         Low            203     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium         195     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2070    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3379    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2844    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1096    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1703    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1820    4619


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/37adbd1f-a120-4055-ade4-15095ce760e2/1089c177-6f4d-4893-ab38-821531ed58a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8493306   -1.1707041   -0.5279571
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9895844   -1.2006362   -0.7785327
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5759627   -1.0105382   -0.1413872
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0074798   -1.2587406   -0.7562190
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3795721   -1.5425683   -1.2165759
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8582360   -0.9895395   -0.7269324
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8316043   -0.9404989   -0.7227098
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9984601   -1.1595974   -0.8373228
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3582187    1.1895726    1.5268648
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4548309   -0.5337202   -0.3759416
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2640327    0.0927663    0.4352990
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5526603   -0.6488599   -0.4564606
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1693533   -0.2394380   -0.0992687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5653270   -1.5970693   -1.5335846
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3868210   -1.4875090   -1.2861331
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9993432   -1.2009365   -0.7977500
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1449604   -1.4164382   -0.8734826
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6046827   -0.8415824   -0.3677829
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2403734   -1.4752478   -1.0054991
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1694895   -1.4695475   -0.8694315
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2828247   -1.4495515   -1.1160980
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2528766   -1.4165709   -1.0891822
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7012469   -1.9031249   -1.4993689
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8926648   -1.0161660   -0.7691636
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0693760   -1.1822441   -0.9565079
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4050267   -0.5145150   -0.2955383
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2013041   -1.3615109   -1.0410972
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2518184    0.1656383    0.3379985
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8066000   -0.9014971   -0.7117029
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7108443   -1.8870082   -1.5346804
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7595112   -0.8497220   -0.6693003
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9579907   -1.0349903   -0.8809910
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6882094   -1.8161529   -1.5602658
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1696412   -1.2112621   -1.1280203
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1461284   -1.2269960   -1.0652609
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5977074   -1.8110621   -1.3843527
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.8396345   -2.1210675   -1.5582016
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1266819   -1.4390153   -0.8143485
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5597675   -1.7923727   -1.3271624
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4720503   -1.8155225   -1.1285780
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5366859   -2.9526884   -2.1206835
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2831607   -1.4111677   -1.1551537
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2214781   -1.3534033   -1.0895529
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6474388   -1.8473229   -1.4475548
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0360358   -0.2257184    0.2977900
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2448648   -1.5185137   -0.9712158
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9424917   -3.0935681   -2.7914153
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.7743232   -1.8691960   -1.6794504
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0455702   -2.1263339   -1.9648066
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8238788   -1.9580095   -1.6897481
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8522106   -1.9027903   -1.8016309
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.5451014   -1.6150304   -1.4751725


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1609302   -1.3461119   -0.9757486
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8645361   -0.9887014   -0.7403707
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5575758   -0.8541170   -0.2610345
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.0906796   -1.3207118   -0.8606474
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4300160   -1.5090211   -1.3510109
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0885159   -1.1686181   -1.0084136
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3357134    1.1759964    1.4954304
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4977261   -0.5185420   -0.4769102
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1369030    0.0500914    0.2237146
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6011965   -0.6594222   -0.5429708
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2407379   -0.2807613   -0.2007145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5843618   -1.6039583   -1.5647653
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5242226   -1.5742923   -1.4741529
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0786869   -1.2229595   -0.9344142
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0820652   -1.2263805   -0.9377499
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6179474   -0.8011766   -0.4347182
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3208519   -1.4383850   -1.2033189
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9829167   -1.1753367   -0.7904967
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3283002   -1.4654809   -1.1911194
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442042   -0.5932639   -0.4951446
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3525459   -1.4308373   -1.2742545
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1181349    0.0244298    0.2118400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8606958   -0.8865994   -0.8347923
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8074115   -1.8776669   -1.7371562
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9755018   -1.0332483   -0.9177553
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1419345   -1.1847445   -1.0991244
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6442734   -1.7137349   -1.5748119
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3073109   -1.3309979   -1.2836240
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3420154   -1.3798750   -1.3041557
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8767521   -2.0339896   -1.7195147
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8269318   -1.9896129   -1.6642507
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3417582   -1.5289233   -1.1545932
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7589939   -1.8878675   -1.6301203
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6565385   -1.8628022   -1.4502747
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5846893   -2.7309103   -2.4384682
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8889117   -1.9744778   -1.8033456
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.5903795   -1.6477380   -1.5330211
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9834879   -3.0503374   -2.9166384
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1479058   -2.2089283   -2.0868833
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4268626   -2.4728444   -2.3808807
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8787566   -1.9605168   -1.7969964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0070517   -2.0348225   -1.9792810
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7817125   -1.8182569   -1.7451681


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3115997   -0.5848756   -0.0383237
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1250484   -0.0268760    0.2769727
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0183869   -0.3439911    0.3807650
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0831998   -0.3082282    0.1418286
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0504439   -0.1913690    0.0904812
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0268660   -0.1264018    0.0726697
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0778902   -0.1647805    0.0090000
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0900557   -0.2282656    0.0481542
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0225052   -0.1167365    0.0717260
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0428952   -0.1188550    0.0330646
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1271297   -0.2786580    0.0243986
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0485362   -0.1240435    0.0269711
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0713846   -0.1291026   -0.0136666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0190349   -0.0466312    0.0085615
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1374016   -0.2270981   -0.0477051
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0793436   -0.2557801    0.0970929
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0628952   -0.1387837    0.2645741
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0132647   -0.2388045    0.2122751
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0804785   -0.2873852    0.1264282
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1865728   -0.0602971    0.4334428
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0454754   -0.1524762    0.0615254
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1477611   -0.2734229   -0.0220993
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1974373   -0.3764193   -0.0184553
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1990267   -0.3003344   -0.0977190
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1293023   -0.2202693   -0.0383353
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1391776   -0.2361059   -0.0422493
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1512418   -0.2906074   -0.0118762
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1336835   -0.1843542   -0.0830128
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0540958   -0.1450438    0.0368522
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0965672   -0.2547290    0.0615945
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2159906   -0.2888234   -0.1431579
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1839438   -0.2490319   -0.1188557
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0439360   -0.0596057    0.1474776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1376697   -0.1723759   -0.1029635
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1958869   -0.2616866   -0.1300872
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2790447   -0.4733741   -0.0847154
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0127027   -0.2188650    0.2442705
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2150764   -0.4471116    0.0169589
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1992264   -0.3807565   -0.0176963
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1844882   -0.4655836    0.0966072
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0480033   -0.4513356    0.3553290
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3192614   -0.4281334   -0.2103895
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2197865   -0.3204051   -0.1191679
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2414729   -0.4122457   -0.0707000
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1609051   -0.4392578    0.1174476
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3455148   -0.6106401   -0.0803895
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0409962   -0.1746612    0.0926688
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3735826   -0.4508789   -0.2962863
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3812923   -0.4500053   -0.3125794
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0548777   -0.1643842    0.0546287
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1548411   -0.1972722   -0.1124100
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2366111   -0.2948074   -0.1784147

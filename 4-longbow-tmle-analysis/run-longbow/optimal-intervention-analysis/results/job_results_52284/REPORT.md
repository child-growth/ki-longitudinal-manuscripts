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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          6333   25693
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low          10593   25693
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        8767   25693
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4267   16075
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6282   16075
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5526   16075
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2054    8228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3355    8228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2819    8228
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7dc3b1cf-cefe-4372-be01-e41799626217/0ea3e736-603d-4cfe-80c1-24ff5451a3f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8213315   -1.1231324   -0.5195306
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.9672518   -1.1623256   -0.7721780
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6596331   -1.0357155   -0.2835507
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0126808   -1.3516301   -0.6737314
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4899159   -1.6617408   -1.3180910
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8486097   -0.9660139   -0.7312055
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8715058   -1.0026409   -0.7403706
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1743032   -1.3594743   -0.9891320
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3334597    1.1757656    1.4911537
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4983445   -0.5818505   -0.4148385
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1572439   -0.0039692    0.3184570
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5873298   -0.6882906   -0.4863690
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2359833   -0.3253851   -0.1465815
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1242221   -1.1881271   -1.0603171
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3907782   -1.5238938   -1.2576625
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0958176   -1.3153377   -0.8762975
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2240220   -1.4685658   -0.9794782
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7675084   -1.0058670   -0.5291499
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3902852   -1.6380479   -1.1425225
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1886320   -1.5078711   -0.8693930
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6054498   -1.8289467   -1.3819528
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2906114   -1.4219472   -1.1592756
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7142152   -1.9201942   -1.5082362
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9698806   -1.1024409   -0.8373203
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1536504   -1.2814168   -1.0258839
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3647999   -0.4981273   -0.2314725
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3387736   -1.4995682   -1.1779791
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2038368    0.1194409    0.2882328
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8160503   -0.9202584   -0.7118423
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.5700334   -1.7223413   -1.4177256
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7915296   -0.8860711   -0.6969880
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0778700   -1.1717838   -0.9839562
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6739793   -1.8002694   -1.5476892
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2739176   -1.3402928   -1.2075424
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2314765   -1.3411635   -1.1217894
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6151996   -1.8368414   -1.3935577
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9660468   -2.2233353   -1.7087582
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1893835   -1.5424282   -0.8363387
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5473461   -1.7977981   -1.2968941
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4809355   -1.8100387   -1.1518323
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6876482   -3.0443012   -2.3309952
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3520557   -1.4848311   -1.2192802
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2731967   -1.4274481   -1.1189453
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6785436   -1.8593073   -1.4977799
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0266983   -0.3317670    0.2783704
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2383008   -1.5278996   -0.9487020
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8831820   -3.0555783   -2.7107858
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.8396461   -1.9453128   -1.7339794
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.1819948   -2.2782826   -2.0857069
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8304462   -1.9631679   -1.6977245
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -2.0170503   -2.0922923   -1.9418082
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6632267   -1.7431086   -1.5833449


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1656619   -1.1941706   -1.1371531
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5242226   -1.5742923   -1.4741529
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0793561   -1.2238184   -0.9348937
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0814372   -1.2260563   -0.9368181
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6134211   -0.7965750   -0.4302671
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3245982   -1.4425874   -1.2066090
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9833877   -1.1756113   -0.7911640
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3298034   -1.3534367   -1.3061701
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3420154   -1.3798750   -1.3041557
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8775641   -2.0346758   -1.7204524
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8269318   -1.9896129   -1.6642507
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3417582   -1.5289233   -1.1545932
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7614634   -1.8900568   -1.6328700
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6659341   -1.8736055   -1.4582627
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5842090   -2.7302958   -2.4381223
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8889117   -1.9744778   -1.8033456
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.5903795   -1.6477380   -1.5330211
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9834879   -3.0503374   -2.9166384
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1479058   -2.2089283   -2.0868833
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4268626   -2.4728444   -2.3808807
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8787566   -1.9605168   -1.7969964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0128026   -2.0405337   -1.9850716
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7817125   -1.8182569   -1.7451681


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3395988   -0.6079913   -0.0712062
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1027157   -0.0340296    0.2394611
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1020574   -0.2589023    0.4630171
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0779989   -0.3778708    0.2218731
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0598999   -0.0751354    0.1949352
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0364924   -0.1297354    0.0567507
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0379887   -0.1442926    0.0683151
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0857873   -0.0742840    0.2458586
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0022538   -0.0845151    0.0890226
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0006184   -0.0802970    0.0815338
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0203409   -0.1627154    0.1220336
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0138667   -0.0942667    0.0665334
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0047546   -0.0830098    0.0735007
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0414398   -0.0982656    0.0153861
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1334445   -0.2563619   -0.0105270
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0164616   -0.1689358    0.2018589
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1425848   -0.0464590    0.3316286
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1540874   -0.0733088    0.3814835
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0656870   -0.1444808    0.2758548
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2052443   -0.0514887    0.4619773
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2771496    0.1060487    0.4482505
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1100263   -0.2077723   -0.0122802
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1844690   -0.3682776   -0.0006604
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1218109   -0.2360789   -0.0075429
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0450279   -0.1526223    0.0625665
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1794044   -0.3051126   -0.0536962
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0137722   -0.1532566    0.1257121
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0857019   -0.1366164   -0.0347874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0446455   -0.1454395    0.0561486
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2373781   -0.3753597   -0.0993964
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1839723   -0.2633826   -0.1045619
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0640644   -0.1480113    0.0198824
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0297059   -0.0741961    0.1336079
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0558858   -0.1178622    0.0060906
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1105389   -0.2104553   -0.0106224
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2623645   -0.4601588   -0.0645703
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1391149   -0.0764029    0.3546328
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1523748   -0.4264494    0.1216999
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2141173   -0.4115710   -0.0166637
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1849986   -0.4522180    0.0822209
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1034391   -0.2419068    0.4487851
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2503665   -0.3677584   -0.1329745
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1680679   -0.2924999   -0.0436358
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2103681   -0.3696438   -0.0510925
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0981709   -0.3665344    0.1701925
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3520788   -0.6334194   -0.0707381
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1003059   -0.2609197    0.0603079
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3082597   -0.3986209   -0.2178985
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2448678   -0.3320022   -0.1577333
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0483104   -0.1581693    0.0615485
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0042476   -0.0651171    0.0736123
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1184858   -0.1911578   -0.0458138

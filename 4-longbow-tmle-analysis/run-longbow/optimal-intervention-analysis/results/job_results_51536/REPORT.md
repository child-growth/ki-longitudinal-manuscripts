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
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            52     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             38     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          54     144
Birth       ki0047075b-MAL-ED          INDIA                          High            38     123
Birth       ki0047075b-MAL-ED          INDIA                          Low             50     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium          35     123
Birth       ki0047075b-MAL-ED          NEPAL                          High            27      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low             19      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          21      67
Birth       ki0047075b-MAL-ED          PERU                           High           116     236
Birth       ki0047075b-MAL-ED          PERU                           Low             65     236
Birth       ki0047075b-MAL-ED          PERU                           Medium          55     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            65     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             29     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           7     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             79     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          74     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           7      27
Birth       ki1119695-PROBIT           BELARUS                        High          2058   13416
Birth       ki1119695-PROBIT           BELARUS                        Low           5316   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium        6042   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           976   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2276   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium       10208   13460
Birth       ki1135781-COHORTS          GUATEMALA                      High           155     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low            355     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         294     804
Birth       ki1135781-COHORTS          INDIA                          High           527    1354
Birth       ki1135781-COHORTS          INDIA                          Low            439    1354
Birth       ki1135781-COHORTS          INDIA                          Medium         388    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1027    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            827    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium        1019    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          3844   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8468   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6551   18863
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            53     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            333     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          65     451
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            201     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1083    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2513   15211
6 months    ki1119695-PROBIT           BELARUS                        Low           5962   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium        6736   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           556    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1404    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6103    8063
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1994    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         406    2746
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            196     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            221     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     498
24 months   ki1119695-PROBIT           BELARUS                        High           627    3913
24 months   ki1119695-PROBIT           BELARUS                        Low           1516    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium        1770    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            19     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            105     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         310     434
24 months   ki1135781-COHORTS          GUATEMALA                      High           177     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low            464     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         354     995
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
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1963    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         398    2694


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/7700aa1b-2f09-4aaa-b3c3-70801bd87dca/06c97bf5-c207-44f3-9c57-d39a64e701b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3654832   -1.7010275   -1.0299389
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7780676   -1.0516961   -0.5044391
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9528758   -1.3487633   -0.5569883
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0265609   -1.2269191   -0.8262027
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6305915   -0.9081585   -0.3530245
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8298319   -1.1242050   -0.5354587
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2516377   -1.5177812   -0.9854941
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4906399   -2.0132737   -0.9680061
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3619870    1.1927884    1.5311855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4555528   -0.5355978   -0.3755078
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2279795    0.0537326    0.4022263
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6113410   -0.7081007   -0.5145814
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1286021   -0.1931723   -0.0640319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5255234   -1.5621829   -1.4888640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7418870   -1.9650423   -1.5187317
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4046488   -1.6987770   -1.1105206
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3356313   -1.5758740   -1.0953886
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6509752   -0.8819881   -0.4199623
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2532582   -1.4843493   -1.0221670
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9673262   -1.2872605   -0.6473918
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3985894   -1.5660488   -1.2311300
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2140708   -1.3947201   -1.0334215
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7060341   -1.9084745   -1.5035938
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8799268   -1.0072180   -0.7526356
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0820981   -1.1939473   -0.9702489
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3984073   -0.5027356   -0.2940791
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1346688   -1.3032232   -0.9661144
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2480376    0.1555210    0.3405542
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8557624   -0.9408544   -0.7706705
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6361378   -1.8013595   -1.4709161
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.7726961   -0.8623931   -0.6829991
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9490196   -1.0224189   -0.8756203
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6987197   -1.8224938   -1.5749455
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1781184   -1.2206466   -1.1355903
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3481421   -1.4444026   -1.2518815
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5921630   -1.8133087   -1.3710172
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6945572   -1.9527094   -1.4364049
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1125902   -1.4273431   -0.7978372
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5095632   -1.7145845   -1.3045419
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4609362   -1.7905660   -1.1313064
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6823706   -3.0099841   -2.3547572
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2028425   -1.3320225   -1.0736626
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2168613   -1.3495283   -1.0841943
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.5998421   -1.7883072   -1.4113769
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0399653   -0.2234985    0.3034291
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4123394   -2.0326672   -0.7920117
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.7776152   -2.9251499   -2.6300805
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.5438152   -1.6370332   -1.4505972
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0108356   -2.0887865   -1.9328848
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8206798   -1.9516550   -1.6897047
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8467133   -1.8962517   -1.7971749
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7242865   -1.8148730   -1.6337001


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1090972   -1.2821831   -0.9360114
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.8941463   -1.0718260   -0.7164667
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6823881   -0.9646995   -0.4000766
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9057627   -1.0235263   -0.7879991
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7639560   -0.9583680   -0.5695441
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9225743   -1.1664549   -0.6786936
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3343977    1.1746915    1.4941040
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4982987   -0.5191445   -0.4774528
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1369030    0.0500914    0.2237146
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6011965   -0.6594222   -0.5429708
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2407379   -0.2807613   -0.2007145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5685983   -1.5887531   -1.5484435
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5193126   -1.6248757   -1.4137496
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0801894   -1.2248166   -0.9355622
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0957005   -1.2405754   -0.9508256
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6134211   -0.7965750   -0.4302671
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3230208   -1.4411177   -1.2049240
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.9833877   -1.1756113   -0.7911640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3177032   -1.4548809   -1.1805254
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442042   -0.5932639   -0.4951446
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3338820   -1.4121646   -1.2555993
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1181349    0.0244298    0.2118400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8840215   -0.9103442   -0.8576988
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8074115   -1.8776669   -1.7371562
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9755018   -1.0332483   -0.9177553
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1419345   -1.1847445   -1.0991244
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6442734   -1.7137349   -1.5748119
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3073109   -1.3309979   -1.2836240
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3498252   -1.3977574   -1.3018930
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.8419658   -1.9985654   -1.6853663
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.7871970   -1.9519446   -1.6224494
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3050000   -1.4938380   -1.1161620
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7560976   -1.8841319   -1.6280632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6331868   -1.8397539   -1.4266197
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5456780   -2.6911200   -2.4002359
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8850636   -1.9697435   -1.8003837
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3650922   -2.4839447   -2.2462396
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8522915   -2.9193797   -2.7852032
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.9321014   -1.9930806   -1.8711223
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4020743   -2.4479290   -2.3562197
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8678984   -1.9495904   -1.7862065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0060871   -2.0338879   -1.9782862
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7501299   -1.7959342   -1.7043256


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2563860   -0.0134789    0.5262509
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1160787   -0.3125638    0.0804064
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2704877   -0.0949115    0.6358870
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1207982   -0.0445123    0.2861087
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1333646   -0.3376065    0.0708773
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0927424   -0.2840494    0.0985647
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1430147   -0.3205021    0.0344726
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.3806399   -0.0914375    0.8527173
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0275892   -0.1255766    0.0703981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0427458   -0.1198270    0.0343353
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0910765   -0.2427032    0.0605503
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0101446   -0.0627687    0.0830579
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1121358   -0.1644552   -0.0598165
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0430749   -0.0743612   -0.0117885
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.2225744    0.0271407    0.4180081
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.3244594    0.0908742    0.5580445
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2399308    0.0465263    0.4333353
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0375541   -0.1866129    0.2617212
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0697627   -0.2737023    0.1341770
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0160615   -0.2707455    0.2386225
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0808862   -0.0360366    0.1978090
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1865669   -0.3272980   -0.0458357
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1926501   -0.3722480   -0.0130522
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2071772   -0.3105843   -0.1037702
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1165802   -0.2062208   -0.0269396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1457969   -0.2382986   -0.0532952
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1992132   -0.3454402   -0.0529861
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1299027   -0.1791245   -0.0806809
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0282590   -0.1094984    0.0529803
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1712737   -0.3187296   -0.0238179
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2028057   -0.2753107   -0.1303008
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1929149   -0.2535800   -0.1322497
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0544463   -0.0440360    0.1529285
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1291925   -0.1646236   -0.0937615
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0016831   -0.0953650    0.0919987
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2498029   -0.4490540   -0.0505517
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0926398   -0.3183988    0.1331192
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1924098   -0.4205524    0.0357327
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2465344   -0.4271641   -0.0659047
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1722506   -0.4393254    0.0948241
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1366927   -0.1705569    0.4439422
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3832753   -0.4915157   -0.2750349
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2126718   -0.3134153   -0.1119282
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2852215   -0.4485606   -0.1218824
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1648346   -0.4453036    0.1156345
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9527527   -1.5573580   -0.3481474
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0746763   -0.2041557    0.0548032
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3882863   -0.4646190   -0.3119535
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3912387   -0.4559703   -0.3265071
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0472186   -0.1535244    0.0590872
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1593738   -0.2000934   -0.1186541
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0258434   -0.1105709    0.0588841

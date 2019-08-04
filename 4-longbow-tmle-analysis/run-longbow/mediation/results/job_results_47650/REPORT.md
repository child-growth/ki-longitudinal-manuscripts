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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* single
* impsan
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_impsan
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
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




# Results Detail

## Results Plots
![](/tmp/98c35ae6-4e4a-48a2-86f8-6dcc28f056a5/c92499c5-9f96-46e1-be65-b358741bb30c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/98c35ae6-4e4a-48a2-86f8-6dcc28f056a5/c92499c5-9f96-46e1-be65-b358741bb30c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/98c35ae6-4e4a-48a2-86f8-6dcc28f056a5/c92499c5-9f96-46e1-be65-b358741bb30c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0352388   -1.2487897   -0.8216879
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1500415   -1.4731457   -0.8269373
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0807578   -1.3372902   -0.8242254
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0876030   -1.3345105   -0.8406956
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0493171   -1.3111412   -0.7874929
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1223233   -1.3761622   -0.8684844
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5911512   -0.8356193   -0.3466831
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6509614   -0.9812266   -0.3206962
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.8203166   -1.2390674   -0.4015658
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3278160   -1.4998625   -1.1557696
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.4041284   -1.6404762   -1.1677807
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2989756   -1.5240666   -1.0738846
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.8395324   -1.1399458   -0.5391190
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.8311558   -1.1798372   -0.4824744
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0855498   -1.4077455   -0.7633541
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2596658   -1.4322755   -1.0870560
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.3918525   -1.6450110   -1.1386940
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.4786508   -2.0254353   -0.9318662
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.1772039   -1.3801595   -0.9742484
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.6122820   -1.6958427   -1.5287214
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3168504   -1.4520595   -1.1816414
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.7358501   -1.9365015   -1.5351988
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9122035   -2.0968415   -1.7275656
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -2.0057988   -2.1986713   -1.8129263
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8909034   -1.0209572   -0.7608496
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2751072   -1.4139573   -1.1362571
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1022514   -1.2367313   -0.9677716
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0846514   -1.1939282   -0.9753746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2714169   -1.4064588   -1.1363749
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2865808   -1.4230121   -1.1501494
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4050050   -0.5157087   -0.2943013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5897979   -0.6545524   -0.5250433
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5305432   -0.6198008   -0.4412856
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1326238   -1.3010785   -0.9641692
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4800230   -1.6013762   -1.3586697
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2925421   -1.4194067   -1.1656775
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2567240    0.1572985    0.3561494
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0175436   -0.0840705    0.1191578
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1598248    0.0693288    0.2503209
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8107655   -0.9110952   -0.7104358
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.9980072   -1.0625686   -0.9334458
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.8677327   -0.8977157   -0.8377497
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8306402   -2.0148676   -1.6464128
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.7524494   -1.8637234   -1.6411754
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.8288427   -1.9552067   -1.7024788
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.7631745   -0.8522076   -0.6741414
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.2140179   -1.3154832   -1.1125525
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9964111   -1.1122836   -0.8805386
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9538512   -1.0299496   -0.8777527
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.3203371   -1.4004408   -1.2402333
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1714984   -1.2491813   -1.0938154
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.6168433   -1.7507767   -1.4829099
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.6366169   -1.7549712   -1.5182626
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6777161   -1.7883526   -1.5670797
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.1770828   -1.2195301   -1.1346355
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3872069   -1.4209020   -1.3535118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3296773   -1.3654489   -1.2939057
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.3500418   -1.4786425   -1.2214411
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.3482795   -1.4045322   -1.2920269
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3553558   -1.4724010   -1.2383105
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.6291422   -1.8668638   -1.3914206
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -2.0118024   -2.2834331   -1.7401716
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9528168   -2.2720612   -1.6335724
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.6854460   -1.9403805   -1.4305116
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8083425   -2.1161133   -1.5005717
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8484340   -2.1158386   -1.5810295
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.1129427   -1.4214464   -0.8044391
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.4918202   -1.7528816   -1.2307588
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.5112467   -1.8993323   -1.1231610
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.7234427   -1.9264177   -1.5204677
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.7373468   -1.9887955   -1.4858981
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8071633   -2.0159403   -1.5983863
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.5134322   -1.8386331   -1.1882314
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.6758197   -2.0165448   -1.3350946
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.9935025   -2.4184098   -1.5685951
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.5086708   -2.6963193   -2.3210222
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.6218760   -2.8883383   -2.3554137
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.3399140   -2.7775465   -1.9022816
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2061049   -1.3344118   -1.0777980
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8577237   -1.9909144   -1.7245330
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.7140009   -1.8597610   -1.5682409
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2253826   -1.3598826   -1.0908825
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.6843222   -1.8287597   -1.5398846
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.4809460   -1.6370181   -1.3248740
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.6100100   -1.8002986   -1.4197214
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9707481   -2.0897513   -1.8517449
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.9717997   -2.1325705   -1.8110288
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0414934   -0.2233571    0.3063439
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2135698   -0.7495807    0.3224411
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.1071006   -0.4195364    0.2053353
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.3594300   -2.0094821   -0.7093779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -2.6207561   -2.8559956   -2.3855166
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -2.3305298   -2.4702362   -2.1908234
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -2.8285944   -3.0113957   -2.6457932
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -2.9137849   -3.0185865   -2.8089832
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.8060864   -2.9194754   -2.6926975
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.5484412   -1.6428940   -1.4539883
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.3517488   -2.4559521   -2.2475456
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -1.9669064   -2.0810815   -1.8527313
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0347981   -2.1155973   -1.9539990
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.7048876   -2.7866412   -2.6231341
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5086437   -2.5893716   -2.4279158
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.8592166   -2.0095282   -1.7089051
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7897804   -1.9236922   -1.6558686
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9438489   -2.0865621   -1.8011358
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8487869   -1.8987580   -1.7988159
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1127612   -2.1510055   -2.0745168
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0192128   -2.0630469   -1.9753786
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.7234131   -1.8459670   -1.6008593
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.7456931   -1.7978197   -1.6935666
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8006333   -1.9068983   -1.6943683


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0801894   -1.2248166   -0.9355622
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0957005   -1.2405754   -0.9508256
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6134211   -0.7965750   -0.4302671
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3230208   -1.4411177   -1.2049240
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.9833877   -1.1756113   -0.7911640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3177032   -1.4548809   -1.1805254
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006377   -1.4802862   -1.3209891
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442042   -0.5932639   -0.4951446
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3338820   -1.4121646   -1.2555993
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1181349    0.0244298    0.2118400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8840215   -0.9103442   -0.8576988
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8074115   -1.8776669   -1.7371562
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9755018   -1.0332483   -0.9177553
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1419345   -1.1847445   -1.0991244
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6442734   -1.7137349   -1.5748119
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3073109   -1.3309979   -1.2836240
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3498252   -1.3977574   -1.3018930
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8419658   -1.9985654   -1.6853663
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.7871970   -1.9519446   -1.6224494
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3050000   -1.4938380   -1.1161620
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7560976   -1.8841319   -1.6280632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6331868   -1.8397539   -1.4266197
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5456780   -2.6911200   -2.4002359
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8850636   -1.9697435   -1.8003837
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1248692   -0.4220079    0.1722694
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.3650922   -2.4839447   -2.2462396
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8522915   -2.9193797   -2.7852032
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.9321014   -1.9930806   -1.8711223
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4020743   -2.4479290   -2.3562197
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8678984   -1.9495904   -1.7862065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0060871   -2.0338879   -1.9782862
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7501299   -1.7959342   -1.7043256


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1148027   -0.5043362    0.2747308
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0455190   -0.3850967    0.2940587
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0382860   -0.3222000    0.3987720
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0347203   -0.3903932    0.3209526
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.0598102   -0.4742290    0.3546086
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2291655   -0.7125879    0.2542569
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.0763124   -0.3692899    0.2166652
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0288405   -0.2543856    0.3120666
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0083766   -0.4527573    0.4695104
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2460174   -0.6868448    0.1948099
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1321867   -0.4385233    0.1741498
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.2189850   -0.7918275    0.3538575
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.4350781   -0.6225453   -0.2476109
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.1396465   -0.4099368    0.1306438
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.1763534   -0.4483501    0.0956433
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.2699487   -0.5499569    0.0100595
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3842038   -0.5747921   -0.1936155
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.2113481   -0.3985404   -0.0241558
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1867654   -0.3594047   -0.0141261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2019293   -0.3757187   -0.0281399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1847929   -0.3108556   -0.0587302
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1255382   -0.2656755    0.0145991
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3473991   -0.5548795   -0.1399188
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1599183   -0.3705751    0.0507386
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2391803   -0.3222867   -0.1560739
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0968991   -0.1677456   -0.0260527
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1872417   -0.3054869   -0.0689964
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0569672   -0.1604585    0.0465241
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0781908   -0.1368715    0.2932531
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0017975   -0.2215688    0.2251637
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.4508434   -0.5861280   -0.3155588
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.2332366   -0.3794991   -0.0869741
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3664859   -0.4773152   -0.2556566
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2176472   -0.3266343   -0.1086602
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.0197736   -0.1985896    0.1590424
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0608729   -0.2346421    0.1128964
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2101241   -0.2621412   -0.1581070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1525945   -0.2049503   -0.1002388
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0017623   -0.1384694    0.1419941
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0053139   -0.1781582    0.1675304
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3826601   -0.7441331   -0.0211872
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.3236746   -0.7260901    0.0787409
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1228965   -0.5183632    0.2725703
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1629880   -0.5281197    0.2021438
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3788775   -0.7800120    0.0222570
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3983039   -0.8917206    0.0951128
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0139041   -0.3374954    0.3096871
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.0837206   -0.3733108    0.2058696
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1623875   -0.6313467    0.3065718
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.4800702   -1.0099412    0.0498008
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1132053   -0.4379316    0.2115210
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.1687567   -0.3060123    0.6435257
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.6516188   -0.8350223   -0.4682153
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.5078960   -0.7002361   -0.3155559
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4589396   -0.6557884   -0.2620908
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2555635   -0.4613935   -0.0497335
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.3607381   -0.5853813   -0.1360949
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3617897   -0.6110146   -0.1125648
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.2550631   -0.8209230    0.3107967
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1485940   -0.4148899    0.1177019
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -1.2613261   -1.9498378   -0.5728145
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.9710999   -1.6358527   -0.3063471
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0851904   -0.2949293    0.1245485
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0225080   -0.1916757    0.2366917
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.8033077   -0.9445242   -0.6620911
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.4184652   -0.5670982   -0.2698322
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6700895   -0.7856949   -0.5544841
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4738456   -0.5884688   -0.3592223
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               0.0694362   -0.1321749    0.2710474
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.0846323   -0.2920686    0.1228040
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2639742   -0.3218823   -0.2060662
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1704258   -0.2326120   -0.1082396
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0222800   -0.1517770    0.1072170
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0772201   -0.2379886    0.0835483


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0449506   -0.2323880    0.1424868
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0080974   -0.2208184    0.2046235
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0222699   -0.2319380    0.1873982
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0047952   -0.1200553    0.1296457
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1438553   -0.4027633    0.1150527
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0580374   -0.1630315    0.0469567
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2234337   -0.3826353   -0.0642322
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1628341   -0.3423879    0.0167197
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1962007   -0.3021102   -0.0902912
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1140269   -0.2010524   -0.0270013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1391993   -0.2380426   -0.0403560
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2012581   -0.3473557   -0.0551606
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1385891   -0.1941500   -0.0830281
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0732559   -0.1700051    0.0234932
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0232287   -0.1476471    0.1941045
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2123273   -0.2840000   -0.1406546
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1880833   -0.2521768   -0.1239899
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0274301   -0.1357378    0.0808776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1302282   -0.1657265   -0.0947298
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0002166   -0.1205253    0.1209586
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.2128236   -0.4293412    0.0036940
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1017509   -0.3237018    0.1201999
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1920573   -0.4178362    0.0337216
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0326549   -0.1708181    0.1055084
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1197546   -0.3821424    0.1426332
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0370072   -0.1434700    0.0694556
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3800129   -0.4866455   -0.2733804
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2041505   -0.3070585   -0.1012425
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2750536   -0.4405033   -0.1096038
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1663626   -0.4472709    0.1145456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.0056622   -1.6400844   -0.3712400
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0236970   -0.1959235    0.1485294
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3836603   -0.4607856   -0.3065349
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3672762   -0.4358025   -0.2987499
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0086818   -0.1342052    0.1168416
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1573001   -0.1985535   -0.1160467
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0267168   -0.1391468    0.0857133

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

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      High           136     718
Birth       COHORTS          GUATEMALA                      Low            311     718
Birth       COHORTS          GUATEMALA                      Medium         271     718
Birth       COHORTS          INDIA                          High           507    1291
Birth       COHORTS          INDIA                          Low            414    1291
Birth       COHORTS          INDIA                          Medium         370    1291
Birth       COHORTS          PHILIPPINES                    High           994    2728
Birth       COHORTS          PHILIPPINES                    Low            773    2728
Birth       COHORTS          PHILIPPINES                    Medium         961    2728
Birth       GMS-Nepal        NEPAL                          High           162     640
Birth       GMS-Nepal        NEPAL                          Low            266     640
Birth       GMS-Nepal        NEPAL                          Medium         212     640
Birth       JiVitA-3         BANGLADESH                     High          4049   17367
Birth       JiVitA-3         BANGLADESH                     Low           7452   17367
Birth       JiVitA-3         BANGLADESH                     Medium        5866   17367
Birth       JiVitA-4         BANGLADESH                     High           510    2323
Birth       JiVitA-4         BANGLADESH                     Low            913    2323
Birth       JiVitA-4         BANGLADESH                     Medium         900    2323
Birth       MAL-ED           BANGLADESH                     High            44     119
Birth       MAL-ED           BANGLADESH                     Low             33     119
Birth       MAL-ED           BANGLADESH                     Medium          42     119
Birth       MAL-ED           INDIA                          High             7      23
Birth       MAL-ED           INDIA                          Low             13      23
Birth       MAL-ED           INDIA                          Medium           3      23
Birth       MAL-ED           NEPAL                          High             3       9
Birth       MAL-ED           NEPAL                          Low              3       9
Birth       MAL-ED           NEPAL                          Medium           3       9
Birth       MAL-ED           PERU                           High            84     190
Birth       MAL-ED           PERU                           Low             56     190
Birth       MAL-ED           PERU                           Medium          50     190
Birth       MAL-ED           SOUTH AFRICA                   High            10      33
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            62      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             26      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           8      96
Birth       NIH-Crypto       BANGLADESH                     High           277     707
Birth       NIH-Crypto       BANGLADESH                     Low            229     707
Birth       NIH-Crypto       BANGLADESH                     Medium         201     707
Birth       PROBIT           BELARUS                        High          2047   13350
Birth       PROBIT           BELARUS                        Low           5292   13350
Birth       PROBIT           BELARUS                        Medium        6011   13350
Birth       PROVIDE          BANGLADESH                     High           161     532
Birth       PROVIDE          BANGLADESH                     Low            185     532
Birth       PROVIDE          BANGLADESH                     Medium         186     532
Birth       SAS-CompFeed     INDIA                          High           270    1101
Birth       SAS-CompFeed     INDIA                          Low            476    1101
Birth       SAS-CompFeed     INDIA                          Medium         355    1101
Birth       ZVITAMBO         ZIMBABWE                       High           914   12573
Birth       ZVITAMBO         ZIMBABWE                       Low           2091   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium        9568   12573
6 months    COHORTS          GUATEMALA                      High           165     905
6 months    COHORTS          GUATEMALA                      Low            406     905
6 months    COHORTS          GUATEMALA                      Medium         334     905
6 months    COHORTS          INDIA                          High           544    1385
6 months    COHORTS          INDIA                          Low            450    1385
6 months    COHORTS          INDIA                          Medium         391    1385
6 months    COHORTS          PHILIPPINES                    High           892    2562
6 months    COHORTS          PHILIPPINES                    Low            744    2562
6 months    COHORTS          PHILIPPINES                    Medium         926    2562
6 months    GMS-Nepal        NEPAL                          High           137     563
6 months    GMS-Nepal        NEPAL                          Low            243     563
6 months    GMS-Nepal        NEPAL                          Medium         183     563
6 months    JiVitA-3         BANGLADESH                     High          4271   16105
6 months    JiVitA-3         BANGLADESH                     Low           6291   16105
6 months    JiVitA-3         BANGLADESH                     Medium        5543   16105
6 months    JiVitA-4         BANGLADESH                     High          1098    4690
6 months    JiVitA-4         BANGLADESH                     Low           1726    4690
6 months    JiVitA-4         BANGLADESH                     Medium        1866    4690
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
6 months    PROBIT           BELARUS                        High          2512   15207
6 months    PROBIT           BELARUS                        Low           5957   15207
6 months    PROBIT           BELARUS                        Medium        6738   15207
6 months    PROVIDE          BANGLADESH                     High           209     603
6 months    PROVIDE          BANGLADESH                     Low            208     603
6 months    PROVIDE          BANGLADESH                     Medium         186     603
6 months    SAS-CompFeed     INDIA                          High           349    1331
6 months    SAS-CompFeed     INDIA                          Low            548    1331
6 months    SAS-CompFeed     INDIA                          Medium         434    1331
6 months    SAS-FoodSuppl    INDIA                          High           101     380
6 months    SAS-FoodSuppl    INDIA                          Low            132     380
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ZVITAMBO         ZIMBABWE                       High           569    8266
6 months    ZVITAMBO         ZIMBABWE                       Low           1433    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium        6264    8266
24 months   COHORTS          GUATEMALA                      High           178    1002
24 months   COHORTS          GUATEMALA                      Low            465    1002
24 months   COHORTS          GUATEMALA                      Medium         359    1002
24 months   COHORTS          INDIA                          High           536    1370
24 months   COHORTS          INDIA                          Low            448    1370
24 months   COHORTS          INDIA                          Medium         386    1370
24 months   COHORTS          PHILIPPINES                    High           798    2319
24 months   COHORTS          PHILIPPINES                    Low            693    2319
24 months   COHORTS          PHILIPPINES                    Medium         828    2319
24 months   GMS-Nepal        NEPAL                          High           113     486
24 months   GMS-Nepal        NEPAL                          Low            218     486
24 months   GMS-Nepal        NEPAL                          Medium         155     486
24 months   JiVitA-3         BANGLADESH                     High          2055    8264
24 months   JiVitA-3         BANGLADESH                     Low           3371    8264
24 months   JiVitA-3         BANGLADESH                     Medium        2838    8264
24 months   JiVitA-4         BANGLADESH                     High          1092    4602
24 months   JiVitA-4         BANGLADESH                     Low           1694    4602
24 months   JiVitA-4         BANGLADESH                     Medium        1816    4602
24 months   LCNI-5           MALAWI                         High           170     555
24 months   LCNI-5           MALAWI                         Low            194     555
24 months   LCNI-5           MALAWI                         Medium         191     555
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
24 months   PROBIT           BELARUS                        High           620    3851
24 months   PROBIT           BELARUS                        Low           1488    3851
24 months   PROBIT           BELARUS                        Medium        1743    3851
24 months   PROVIDE          BANGLADESH                     High           202     579
24 months   PROVIDE          BANGLADESH                     Low            198     579
24 months   PROVIDE          BANGLADESH                     Medium         179     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ZVITAMBO         ZIMBABWE                       High            13     410
24 months   ZVITAMBO         ZIMBABWE                       Low            103     410
24 months   ZVITAMBO         ZIMBABWE                       Medium         294     410


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
![](/tmp/d123e24b-3dc5-4b3c-8826-e43363fe96b1/92806e02-982d-4f63-9127-164f0c2616ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed          -1.0580437   -1.2289627   -0.8871247
Birth       COHORTS          INDIA                          optimal              observed          -0.9559711   -1.0742479   -0.8376942
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.6235081   -0.7194401   -0.5275761
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0414623   -1.1677745   -0.9151501
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7703856   -0.8141545   -0.7266168
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.7579131   -0.8831216   -0.6327046
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.6725381   -0.9908609   -0.3542153
Birth       MAL-ED           PERU                           optimal              observed           0.0666556   -0.1793403    0.3126515
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed           0.8685716    0.2450430    1.4921003
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.2275911    0.1418758    2.3133064
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.2980363   -1.4730541   -1.1230184
Birth       PROBIT           BELARUS                        optimal              observed          -1.0922257   -1.2913834   -0.8930680
Birth       PROVIDE          BANGLADESH                     optimal              observed          -1.2874244   -1.4281177   -1.1467311
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.7087390   -0.9785419   -0.4389361
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4237360   -0.5020990   -0.3453731
6 months    COHORTS          GUATEMALA                      optimal              observed           0.2400296   -0.0155744    0.4956336
6 months    COHORTS          INDIA                          optimal              observed          -0.6402777   -0.7583387   -0.5222166
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.2873040   -0.3681678   -0.2064401
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.7522503   -0.9077188   -0.5967818
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.6006048   -0.6518499   -0.5493597
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.3322492   -0.4301758   -0.2343226
6 months    LCNI-5           MALAWI                         optimal              observed           0.4669621    0.3380460    0.5958783
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2856821   -0.5664738   -0.0048905
6 months    MAL-ED           INDIA                          optimal              observed          -0.7184716   -1.0198180   -0.4171252
6 months    MAL-ED           NEPAL                          optimal              observed          -0.2159114   -0.4695442    0.0377214
6 months    MAL-ED           PERU                           optimal              observed           1.2216755    0.9441823    1.4991687
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed           0.6121343    0.2096648    1.0146037
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0625454    0.6184655    1.5066252
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0480758   -0.0844883    0.1806399
6 months    PROBIT           BELARUS                        optimal              observed           0.5986546    0.5300132    0.6672961
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0522245   -0.2008139    0.0963650
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5938443   -0.7810984   -0.4065902
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.9491459   -1.1244636   -0.7738282
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0191364   -0.1369282    0.1752010
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed           0.3233615    0.2503301    0.3963929
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.2040245   -0.3300707   -0.0779783
24 months   COHORTS          INDIA                          optimal              observed          -0.5236507   -0.6163347   -0.4309668
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.5966803   -0.6654555   -0.5279051
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.0345930   -1.1768366   -0.8923494
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2761198   -1.3670577   -1.1851818
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.2291704   -1.3026698   -1.1556709
24 months   LCNI-5           MALAWI                         optimal              observed           0.0266303   -0.1191854    0.1724460
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.9373540   -1.2001537   -0.6745543
24 months   MAL-ED           INDIA                          optimal              observed          -1.0478975   -1.2602332   -0.8355617
24 months   MAL-ED           NEPAL                          optimal              observed          -0.3589249   -0.6739849   -0.0438648
24 months   MAL-ED           PERU                           optimal              observed           0.3938547    0.1689140    0.6187953
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.6507980    0.2773695    1.0242265
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1943672   -0.1870161    0.5757506
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.6222691   -0.8063452   -0.4381930
24 months   PROBIT           BELARUS                        optimal              observed           0.7187558    0.5897760    0.8477356
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.8316117   -0.9745947   -0.6886287
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3941350   -1.6706067   -1.1176634


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      observed             observed          -1.0475905   -1.1510656   -0.9441155
Birth       COHORTS          INDIA                          observed             observed          -1.0020759   -1.0646599   -0.9394920
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.7218585   -0.7694262   -0.6742908
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.1161562   -1.2038617   -1.0284508
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7747631   -0.7940385   -0.7554876
Birth       JiVitA-4         BANGLADESH                     observed             observed          -0.6831985   -0.7361386   -0.6302583
Birth       MAL-ED           BANGLADESH                     observed             observed          -0.9483613   -1.1437809   -0.7529418
Birth       MAL-ED           PERU                           observed             observed          -0.0145789   -0.1426994    0.1135416
Birth       MAL-ED           SOUTH AFRICA                   observed             observed           0.3060606   -0.0577506    0.6698718
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7542708    0.5468640    0.9616776
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        observed             observed          -1.1437060   -1.3543158   -0.9330962
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          observed             observed          -0.6685468   -0.8459689   -0.4911247
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5092691   -0.5354330   -0.4831051
6 months    COHORTS          GUATEMALA                      observed             observed           0.1987403    0.1250477    0.2724329
6 months    COHORTS          INDIA                          observed             observed          -0.6502599   -0.7103477   -0.5901722
6 months    COHORTS          PHILIPPINES                    observed             observed          -0.2839930   -0.3263706   -0.2416154
6 months    GMS-Nepal        NEPAL                          observed             observed          -0.6031912   -0.6894381   -0.5169444
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5904964   -0.6106039   -0.5703890
6 months    JiVitA-4         BANGLADESH                     observed             observed          -0.3852207   -0.4232704   -0.3471709
6 months    LCNI-5           MALAWI                         observed             observed           0.4414163    0.3697939    0.5130386
6 months    MAL-ED           BANGLADESH                     observed             observed          -0.3007955   -0.4778591   -0.1237319
6 months    MAL-ED           INDIA                          observed             observed          -0.7272766   -0.9000901   -0.5544630
6 months    MAL-ED           NEPAL                          observed             observed           0.0334035   -0.1647857    0.2315927
6 months    MAL-ED           PERU                           observed             observed           1.0860565    0.9516698    1.2204433
6 months    MAL-ED           SOUTH AFRICA                   observed             observed           0.3834783    0.1440275    0.6229290
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5336484    0.3899788    0.6773181
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        observed             observed           0.5730055    0.5136977    0.6323133
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0791782    0.0263777    0.1319787
6 months    ZVITAMBO         ZIMBABWE                       observed             observed           0.3153847    0.2894045    0.3413649
24 months   COHORTS          GUATEMALA                      observed             observed          -0.2662176   -0.3220630   -0.2103721
24 months   COHORTS          INDIA                          observed             observed          -0.6051533   -0.6581071   -0.5521995
24 months   COHORTS          PHILIPPINES                    observed             observed          -0.6155714   -0.6532287   -0.5779140
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.1331550   -1.2220936   -1.0442165
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2984354   -1.3225016   -1.2743692
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.2222794   -1.2547188   -1.1898401
24 months   LCNI-5           MALAWI                         observed             observed          -0.0443153   -0.1269075    0.0382769
24 months   MAL-ED           BANGLADESH                     observed             observed          -0.9042735   -1.0737243   -0.7348227
24 months   MAL-ED           INDIA                          observed             observed          -0.9451515   -1.0860650   -0.8042380
24 months   MAL-ED           NEPAL                          observed             observed          -0.4668132   -0.6466833   -0.2869431
24 months   MAL-ED           PERU                           observed             observed           0.1321189   -0.0027984    0.2670362
24 months   MAL-ED           SOUTH AFRICA                   observed             observed           0.3583333    0.1644154    0.5522513
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1084840   -0.0300100    0.2469780
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        observed             observed           0.6953371    0.5818973    0.8087769
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.1889512   -1.2920613   -1.0858411


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      optimal              observed           0.0104532   -0.1247631    0.1456695
Birth       COHORTS          INDIA                          optimal              observed          -0.0461048   -0.1493362    0.0571265
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0983504   -0.1829808   -0.0137201
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0746940   -0.1717143    0.0223264
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0043774   -0.0449372    0.0361824
Birth       JiVitA-4         BANGLADESH                     optimal              observed           0.0747147   -0.0316688    0.1810981
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.2758232   -0.5342489   -0.0173976
Birth       MAL-ED           PERU                           optimal              observed          -0.0812346   -0.2854125    0.1229434
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.5625110   -1.1526271    0.0276050
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4733203   -1.5054677    0.5588271
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.0538849   -0.0955297    0.2032995
Birth       PROBIT           BELARUS                        optimal              observed          -0.0514803   -0.1206765    0.0177160
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0110342   -0.1221654    0.1000969
Birth       SAS-CompFeed     INDIA                          optimal              observed           0.0401922   -0.0742477    0.1546321
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0855330   -0.1598038   -0.0112623
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.0412893   -0.2800534    0.1974748
6 months    COHORTS          INDIA                          optimal              observed          -0.0099823   -0.1091245    0.0891599
6 months    COHORTS          PHILIPPINES                    optimal              observed           0.0033110   -0.0665306    0.0731527
6 months    GMS-Nepal        NEPAL                          optimal              observed           0.1490591    0.0103353    0.2877828
6 months    JiVitA-3         BANGLADESH                     optimal              observed           0.0101084   -0.0368973    0.0571141
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0529715   -0.1417524    0.0358095
6 months    LCNI-5           MALAWI                         optimal              observed          -0.0255459   -0.1296452    0.0785534
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.0151133   -0.2616191    0.2313925
6 months    MAL-ED           INDIA                          optimal              observed          -0.0088049   -0.2494798    0.2318699
6 months    MAL-ED           NEPAL                          optimal              observed           0.2493150    0.0066432    0.4919867
6 months    MAL-ED           PERU                           optimal              observed          -0.1356190   -0.3605354    0.0892975
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2286560   -0.5552935    0.0979815
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5288970   -0.9559738   -0.1018202
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0183136   -0.1302558    0.0936287
6 months    PROBIT           BELARUS                        optimal              observed          -0.0256491   -0.0681568    0.0168586
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1468662   -0.2741942   -0.0195382
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.0702617   -0.1702199    0.0296966
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -0.0630120   -0.2184032    0.0923793
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0600419   -0.0876956    0.2077794
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0079768   -0.0759164    0.0599628
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0621930   -0.1731141    0.0487280
24 months   COHORTS          INDIA                          optimal              observed          -0.0815025   -0.1593454   -0.0036596
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0188910   -0.0767801    0.0389980
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0985620   -0.2111494    0.0140254
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0223156   -0.1105172    0.0658859
24 months   JiVitA-4         BANGLADESH                     optimal              observed           0.0068909   -0.0597303    0.0735121
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0709456   -0.1875646    0.0456734
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.0330805   -0.1888934    0.2550543
24 months   MAL-ED           INDIA                          optimal              observed           0.1027459   -0.0807954    0.2862873
24 months   MAL-ED           NEPAL                          optimal              observed          -0.1078883   -0.3503473    0.1345706
24 months   MAL-ED           PERU                           optimal              observed          -0.2617358   -0.4710301   -0.0524414
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2924647   -0.5735046   -0.0114247
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0858832   -0.4303040    0.2585376
24 months   NIH-Crypto       BANGLADESH                     optimal              observed           0.0119189   -0.1401804    0.1640183
24 months   PROBIT           BELARUS                        optimal              observed          -0.0234186   -0.1261250    0.0792877
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0612553   -0.1832065    0.0606959
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed           0.2051838   -0.0647448    0.4751124

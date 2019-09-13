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
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
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
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            49     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             35     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          50     134
Birth       ki0047075b-MAL-ED          INDIA                          High            38     121
Birth       ki0047075b-MAL-ED          INDIA                          Low             48     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium          35     121
Birth       ki0047075b-MAL-ED          NEPAL                          High            27      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low             18      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          19      64
Birth       ki0047075b-MAL-ED          PERU                           High           112     230
Birth       ki0047075b-MAL-ED          PERU                           Low             63     230
Birth       ki0047075b-MAL-ED          PERU                           Medium          55     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            63      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             27      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           6      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            33     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             68     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          65     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             7      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           5      23
Birth       ki1119695-PROBIT           BELARUS                        High          2050   13359
Birth       ki1119695-PROBIT           BELARUS                        Low           5294   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium        6015   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2090   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12572
Birth       ki1135781-COHORTS          GUATEMALA                      High           136     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low            311     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         271     718
Birth       ki1135781-COHORTS          INDIA                          High           507    1291
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          3267   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6675   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5185   15127
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High            44     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            280     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium          55     379
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           349    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            548    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         434    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High           101     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            132     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium         147     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            200     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         179     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High           136     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     562
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15207
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium        6737   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           552    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1398    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6082    8032
6 months    ki1135781-COHORTS          GUATEMALA                      High           165     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low            406     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         334     905
6 months    ki1135781-COHORTS          INDIA                          High           544    1385
6 months    ki1135781-COHORTS          INDIA                          Low            450    1385
6 months    ki1135781-COHORTS          INDIA                          Medium         391    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High           892    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            744    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         926    2562
6 months    ki1148112-LCNI-5           MALAWI                         High           251     812
6 months    ki1148112-LCNI-5           MALAWI                         Low            290     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium         271     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High           346    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1995    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium         405    2746
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
24 months   ki1113344-GMS-Nepal        NEPAL                          High           116     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            220     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         161     497
24 months   ki1119695-PROBIT           BELARUS                        High           620    3852
24 months   ki1119695-PROBIT           BELARUS                        Low           1488    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            100     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         287     400
24 months   ki1135781-COHORTS          GUATEMALA                      High           178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low            465    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         359    1002
24 months   ki1135781-COHORTS          INDIA                          High           536    1370
24 months   ki1135781-COHORTS          INDIA                          Low            448    1370
24 months   ki1135781-COHORTS          INDIA                          Medium         386    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High           798    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            693    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         828    2319
24 months   ki1148112-LCNI-5           MALAWI                         High           170     555
24 months   ki1148112-LCNI-5           MALAWI                         Low            194     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium         191     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High           333    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1955    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium         395    2683


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
![](/tmp/a2ed5a29-2bfd-490c-863a-e1a5a667ab07/5f0aea7f-e125-45ff-aa85-91455511e20e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7000890   -1.0173784   -0.3827997
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8615545   -1.2143400   -0.5087689
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2773175   -0.6937177    0.1390827
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2237326   -0.4735832    0.0261179
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2951683   -0.0535115    0.6438481
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1023809    0.2680885    1.9366734
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.4029282   -0.8861945    0.0803380
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7838867   -1.6332600    0.0654866
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1321202   -1.3263968   -0.9378436
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5143991   -0.5911283   -0.4376699
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1232504   -1.3106450   -0.9358558
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9294071   -1.0349476   -0.8238666
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6445288   -0.7282020   -0.5608557
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7031754   -0.7378151   -0.6685358
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4402252   -0.6890966   -0.1913538
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4211041   -0.7429610   -0.0992472
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8045489   -1.0599593   -0.5491385
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0027435   -0.3634824    0.3579953
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2690765    1.0077777    1.5303753
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4040379    0.1078187    0.7002570
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0324979    0.5895805    1.4754153
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5789834   -0.7312222   -0.4267445
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.0499809   -1.2549882   -0.8449737
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0787831   -0.2261164    0.0685501
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0165109   -0.1124184    0.1454402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1449838    0.0342472    0.2557203
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4950247   -0.6541319   -0.3359175
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5693040    0.5061916    0.6324163
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3079569    0.2211748    0.3947389
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2795936    0.1312982    0.4278890
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6198775   -0.7244147   -0.5153404
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2791620   -0.3524721   -0.2058519
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5133342    0.3840565    0.6426118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5635535   -0.6005675   -0.5265395
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.4206769   -0.4976776   -0.3436762
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0269015   -1.2931588   -0.7606442
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1130142   -1.3035097   -0.9225187
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2744143   -0.5221411   -0.0266875
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3836842    0.1281183    0.6392501
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5845347    0.2432976    0.9257718
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0320582   -0.2694399    0.3335563
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7719828   -0.9118966   -0.6320690
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4128868   -0.5804651   -0.2453084
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9539353   -1.1112572   -0.7966134
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6406446    0.4800840    0.8012052
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3088953   -1.6327377   -0.9850529
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1796977   -0.2704863   -0.0889091
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4590471   -0.5403961   -0.3776982
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5346302   -0.5940119   -0.4752486
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0786662   -0.0629886    0.2203210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2985831   -1.3440955   -1.2530707
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2250280   -1.3328135   -1.1172425


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9578358   -1.1387078   -0.7769639
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9940496   -1.1654347   -0.8226645
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.6120312   -0.8275323   -0.3965302
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0617391   -0.1779184    0.0544402
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.1956044   -0.0084906    0.3996994
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7337500    0.5184571    0.9490429
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1411895   -1.3517005   -0.9306784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5089119   -0.5350685   -0.4827552
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0475905   -1.1510656   -0.9441155
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0020759   -1.0646599   -0.9394920
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7218585   -0.7694262   -0.6742908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7212256   -0.7411702   -0.7012810
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3724538   -0.4743874   -0.2705203
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.3053662   -0.4828374   -0.1278949
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7164734   -0.8860809   -0.5468660
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0866741    0.9521834    1.2211648
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5218823    0.3795317    0.6642328
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6041489   -0.6904591   -0.5178387
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5783110    0.5188487    0.6377732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3096296    0.2832594    0.3359998
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1987403    0.1250477    0.2724329
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4414655    0.3698299    0.5131012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5904964   -0.6106039   -0.5703890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3829461   -0.4315670   -0.3343252
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1412500    0.0103684    0.2721316
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1027966   -0.0354562    0.2410495
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1284909   -1.2160945   -1.0408874
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6836046    0.5719211    0.7952881
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1874750   -1.2917540   -1.0831960
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0443964   -0.1269881    0.0381953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2984354   -1.3225016   -1.2743692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2260902   -1.2680212   -1.1841592


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2577468   -0.5110024   -0.0044911
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1324951   -0.4359193    0.1709291
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3347138   -0.6597941   -0.0096335
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1619935   -0.0408220    0.3648090
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0995639   -0.4136503    0.2145225
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3686309   -1.1872364    0.4499745
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.1331692   -0.2100220    0.4763603
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0330171   -0.7308265    0.7968607
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0090693   -0.0645918    0.0464532
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0054873   -0.0659717    0.0769463
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0756598   -0.0672311    0.2185508
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0726688   -0.1626291    0.0172915
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0773297   -0.1465492   -0.0081101
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0180502   -0.0464516    0.0103512
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0677714   -0.1461905    0.2817333
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1157380   -0.1291361    0.3606120
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0880755   -0.1261424    0.3022933
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0340593   -0.2621423    0.3302609
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1824024   -0.4045151    0.0397103
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0209944   -0.3108046    0.2688158
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5106156   -0.9362027   -0.0850286
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0851226   -0.1166572   -0.0535880
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0378230   -0.1336188    0.2092649
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1295874   -0.2487295   -0.0104454
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0132514   -0.0880398    0.1145426
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0658055   -0.1602792    0.0286681
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1091242   -0.2422956    0.0240472
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0090070   -0.0202518    0.0382658
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0016727   -0.0799296    0.0832750
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0808533   -0.2130496    0.0513430
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0303824   -0.1157101    0.0549453
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0048309   -0.0661731    0.0565113
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0718686   -0.1751202    0.0313829
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0269429   -0.0576550    0.0037691
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0377308   -0.0201594    0.0956210
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1236536   -0.1019696    0.3492768
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1678627   -0.0044891    0.3402144
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1923989   -0.4033072    0.0185094
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2424342   -0.4627492   -0.0221193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2131611   -0.4778741    0.0515520
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0707384   -0.2332776    0.3747544
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1159584   -0.2282704   -0.0036464
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1974634   -0.3277149   -0.0672119
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1745556   -0.3057707   -0.0433406
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0429600   -0.0624077    0.1483277
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1214203   -0.1949103    0.4377510
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0865199   -0.1626688   -0.0103709
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1461061   -0.2113452   -0.0808671
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0809411   -0.1304854   -0.0313968
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1230626   -0.2424520   -0.0036731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0001477   -0.0377615    0.0380569
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0010622   -0.1026091    0.1004847

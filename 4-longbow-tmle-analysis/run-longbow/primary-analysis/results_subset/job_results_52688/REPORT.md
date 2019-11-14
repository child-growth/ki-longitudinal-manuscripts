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
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            44     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             33     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          42     119
Birth       ki0047075b-MAL-ED          INDIA                          High             7      23
Birth       ki0047075b-MAL-ED          INDIA                          Low             13      23
Birth       ki0047075b-MAL-ED          INDIA                          Medium           3      23
Birth       ki0047075b-MAL-ED          NEPAL                          High             3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Low              3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           3       9
Birth       ki0047075b-MAL-ED          PERU                           High            84     190
Birth       ki0047075b-MAL-ED          PERU                           Low             56     190
Birth       ki0047075b-MAL-ED          PERU                           Medium          50     190
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           9      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High            62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             26      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           8      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           270    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            476    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         355    1101
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           161     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            185     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         186     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           277     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         201     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High           162     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            266     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         212     640
Birth       ki1119695-PROBIT           BELARUS                        High          2051   13364
Birth       ki1119695-PROBIT           BELARUS                        Low           5297   13364
Birth       ki1119695-PROBIT           BELARUS                        Medium        6016   13364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High           914   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2091   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        9568   12573
Birth       ki1135781-COHORTS          GUATEMALA                      High           136     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low            311     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         271     718
Birth       ki1135781-COHORTS          INDIA                          High           507    1291
Birth       ki1135781-COHORTS          INDIA                          Low            414    1291
Birth       ki1135781-COHORTS          INDIA                          Medium         370    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High           994    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            773    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         961    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          5654   21305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8510   21305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        7141   21305
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           510    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            913    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         900    2323
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            208     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         186     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         213     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High           137     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            243     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium         183     563
6 months    ki1119695-PROBIT           BELARUS                        High          2512   15208
6 months    ki1119695-PROBIT           BELARUS                        Low           5958   15208
6 months    ki1119695-PROBIT           BELARUS                        Medium        6738   15208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High           569    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1433    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        6264    8266
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4259   16048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6269   16048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5520   16048
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1098    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1726    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1866    4690
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           202     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            198     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         179     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           211     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            144     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         159     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High           113     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            218     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium         155     486
24 months   ki1119695-PROBIT           BELARUS                        High           620    3853
24 months   ki1119695-PROBIT           BELARUS                        Low           1489    3853
24 months   ki1119695-PROBIT           BELARUS                        Medium        1744    3853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High            13     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            103     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         294     410
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2039    8201
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3348    8201
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2814    8201
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1092    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1694    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1816    4602


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
![](/tmp/f23f826c-85aa-4f50-b876-7e8d0da68f55/3d7f218c-0120-4972-895c-fd2ca7af6352/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6869072   -1.0000799   -0.3737346
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0951144   -0.3008402    0.1106115
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.9008776    0.2819199    1.5198352
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.2772314    0.3208579    2.2336049
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7105740   -0.9400164   -0.4811316
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2463225   -1.3777490   -1.1148959
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2668815   -1.4189352   -1.1148277
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0382956   -1.1799214   -0.8966697
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1164822   -1.3215456   -0.9114189
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5446867   -0.6132360   -0.4761374
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0567149   -1.2364306   -0.8769993
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9360542   -1.0435960   -0.8285123
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6393048   -0.7223135   -0.5562960
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7444551   -0.7718224   -0.7170878
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6771034   -0.7725929   -0.5816138
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4629728   -0.7869271   -0.1390185
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5208487   -0.8006426   -0.2410549
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0457696   -0.2642763    0.3558155
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1880877    0.8996017    1.4765737
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6145092    0.2093329    1.0196855
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0742279    0.6405553    1.5079004
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6092528   -0.7742787   -0.4442268
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.1390214   -1.3296601   -0.9483828
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1261609   -0.2739394    0.0216175
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1490318    0.0190115    0.2790520
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0829462   -0.0375649    0.2034573
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.6897034   -0.8620286   -0.5173783
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5713532    0.5058144    0.6368920
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3366718    0.3068933    0.3664503
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2022398    0.0406612    0.3638184
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6434715   -0.7452554   -0.5416876
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2519123   -0.3263743   -0.1774504
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4732737    0.3508223    0.5957251
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5680024   -0.6045917   -0.5314130
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2625066   -0.3467099   -0.1783033
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0050019   -1.2682000   -0.7418037
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3223025   -1.5711720   -1.0734330
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3080567   -0.6158787   -0.0002346
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3222971    0.1220472    0.5225471
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6020357    0.2354099    0.9686614
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2124159   -0.0900102    0.5148419
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8490093   -0.9829051   -0.7151135
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5594379   -0.7249670   -0.3939087
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1629876   -1.3164945   -1.0094806
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7052398    0.5767290    0.8337506
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5230087   -1.7595112   -1.2865061
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2031413   -0.3151342   -0.0911484
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4530541   -0.5356432   -0.3704650
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5358347   -0.5965454   -0.4751239
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0300389   -0.1230574    0.1831353
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3307980   -1.3782804   -1.2833155
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1743862   -1.2454138   -1.1033585


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9478151   -1.1432411   -0.7523892
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0145789   -0.1426994    0.1135416
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3060606   -0.0577506    0.6698718
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7542708    0.5468640    0.9616776
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6685468   -0.8459689   -0.4911247
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1161562   -1.2038617   -1.0284508
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1396625   -1.3498047   -0.9295204
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5092691   -0.5354330   -0.4831051
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0475905   -1.1510656   -0.9441155
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -1.0020759   -1.0646599   -0.9394920
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7218585   -0.7694262   -0.6742908
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7487472   -0.7666369   -0.7308576
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6831985   -0.7361386   -0.6302583
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.3028662   -0.4799359   -0.1257965
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7276329   -0.9005415   -0.5547242
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0313158   -0.1673661    0.2299977
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0897247    0.9553803    1.2240691
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3830435    0.1435272    0.6225598
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5336484    0.3899788    0.6773181
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6641059   -0.8040033   -0.5242086
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0791782    0.0263777    0.1319787
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6031912   -0.6894381   -0.5169444
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5786017    0.5191854    0.6380180
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3153847    0.2894045    0.3413649
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1987403    0.1250477    0.2724329
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6502599   -0.7103477   -0.5901722
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2839930   -0.3263706   -0.2416154
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4414163    0.3697939    0.5130386
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5899623   -0.6100932   -0.5698314
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3852207   -0.4232704   -0.3471709
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9032479   -1.0730238   -0.7334719
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1419207    0.0110291    0.2728124
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3713736    0.1781064    0.5646408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1074576   -0.0311240    0.2460393
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1331550   -1.2220936   -1.0442165
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6847249    0.5730773    0.7963725
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1889512   -1.2920613   -1.0858411
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0443153   -0.1269075    0.0382769
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2997171   -1.3237968   -1.2756375
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2222794   -1.2547188   -1.1898401


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2609079   -0.5153597   -0.0064562
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0805354   -0.0917111    0.2527819
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5948170   -1.1821581   -0.0074759
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5229606   -1.4277739    0.3818526
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0420272   -0.0310289    0.1150834
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0521362   -0.1551341    0.0508618
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0227301   -0.1031861    0.1486464
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0778607   -0.1806300    0.0249086
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0231803   -0.0898463    0.0434857
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0354177   -0.0278933    0.0987286
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0091244   -0.1357405    0.1539893
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0660217   -0.1569188    0.0248754
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0825537   -0.1534977   -0.0116098
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0042921   -0.0254343    0.0168500
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0060951   -0.0849196    0.0727294
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1601066   -0.0920574    0.4122707
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2067841   -0.4343755    0.0208073
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0144538   -0.2891686    0.2602611
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0983630   -0.3340041    0.1372782
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2314657   -0.5589839    0.0960525
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5405794   -0.9580792   -0.1230797
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0548532   -0.1123584    0.0026521
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1268635   -0.0364835    0.2902105
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0729297   -0.1932078    0.0473484
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1192695   -0.2277768   -0.0107622
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0037680   -0.1097788    0.1022428
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0865122   -0.0598427    0.2328670
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0072485   -0.0274073    0.0419043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0212871   -0.0372070   -0.0053671
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0034995   -0.1447584    0.1377595
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0067884   -0.0897846    0.0762078
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0320806   -0.0933958    0.0292345
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0318574   -0.1315245    0.0678097
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0219599   -0.0522897    0.0083698
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1227141   -0.1943508   -0.0510773
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1017540   -0.1240862    0.3275943
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.3771510    0.1783678    0.5759342
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1587565   -0.3983860    0.0808729
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1803764   -0.3663607    0.0056080
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2306620   -0.5124128    0.0510887
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1049582   -0.3816838    0.1717673
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0438577   -0.1515209    0.0638055
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0509123   -0.1848642    0.0830396
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0298326   -0.0813722    0.1410373
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0205149   -0.1262735    0.0852437
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3340574    0.1020277    0.5660871
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0630763   -0.1556320    0.0294795
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1520992   -0.2187488   -0.0854496
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0797367   -0.1311865   -0.0282869
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0743543   -0.1964247    0.0477162
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0310809   -0.0073502    0.0695120
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0478933   -0.1081158    0.0123293

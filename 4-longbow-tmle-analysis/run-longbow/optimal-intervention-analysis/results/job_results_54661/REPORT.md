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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4049   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           7452   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5866   17367
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          4271   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           6291   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5543   16105
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2055    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3371    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2838    8264
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
![](/tmp/5c012d9c-8ca2-4af5-b496-a50b5c7bd30e/b886c48f-c91b-4ea9-9827-018f03f9517a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6620838   -0.9739818   -0.3501859
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1763605   -0.4026978    0.0499768
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.8784082    0.2424979    1.5143185
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1296176    0.0988226    2.1604126
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6506162   -0.8320916   -0.4691408
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2055990   -1.3382627   -1.0729354
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2218419   -1.3822462   -1.0614377
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1018682   -1.2419704   -0.9617661
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1101849   -1.3046776   -0.9156921
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5619729   -0.6351803   -0.4887656
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0923301   -1.2664156   -0.9182445
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9240251   -1.0260696   -0.8219807
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5683050   -0.6506515   -0.4859586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7694487   -0.8028910   -0.7360064
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6643056   -0.7565039   -0.5721073
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3538573   -0.6999295   -0.0077851
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6680393   -0.9320256   -0.4040529
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2125466   -0.1605046    0.5855978
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1795843    0.8851756    1.4739929
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2845531   -0.0039165    0.5730228
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0649956    0.6201587    1.5098324
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6029188   -0.7507175   -0.4551201
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.0875360   -1.2753898   -0.8996823
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1787280   -0.3165770   -0.0408790
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1478367    0.0198306    0.2758428
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1124990   -0.0030767    0.2280747
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7143456   -0.8904304   -0.5382609
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5904327    0.5227340    0.6581314
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3379463    0.3083115    0.3675811
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2084502    0.0477823    0.3691181
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6175281   -0.7214023   -0.5136538
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2840883   -0.3571319   -0.2110447
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4408332    0.3240509    0.5576154
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5681726   -0.6058423   -0.5305030
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2413764   -0.3243101   -0.1584428
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8845807   -1.1442812   -0.6248802
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0089503   -1.2158265   -0.8020741
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2436221   -0.5189431    0.0316989
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.3171553    0.1129913    0.5213193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7448266    0.4302474    1.0594059
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1296403   -0.1456281    0.4049087
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7809312   -0.9175786   -0.6442837
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6090200   -0.7663873   -0.4516528
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0955209   -1.2285049   -0.9625368
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6990975    0.5602167    0.8379782
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3902132   -1.6576542   -1.1227722
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2478508   -0.3632353   -0.1324664
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4602777   -0.5408920   -0.3796633
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5054113   -0.5666754   -0.4441471
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0023692   -0.1488355    0.1440970
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3045333   -1.3499797   -1.2590870
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1458179   -1.2178015   -1.0738343


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9483613   -1.1437809   -0.7529418
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7747631   -0.7940385   -0.7554876
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6831985   -0.7361386   -0.6302583
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.3007955   -0.4778591   -0.1237319
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7272766   -0.9000901   -0.5544630
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.0334035   -0.1647857    0.2315927
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0860565    0.9516698    1.2204433
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3834783    0.1440275    0.6229290
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5904964   -0.6106039   -0.5703890
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3852207   -0.4232704   -0.3471709
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9042735   -1.0737243   -0.7348227
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9451515   -1.0860650   -0.8042380
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.4668132   -0.6466833   -0.2869431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1321189   -0.0027984    0.2670362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3583333    0.1644154    0.5522513
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.1084840   -0.0300100    0.2469780
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1331550   -1.2220936   -1.0442165
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6847249    0.5730773    0.7963725
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1889512   -1.2920613   -1.0858411
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2662176   -0.3220630   -0.2103721
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6051533   -0.6581071   -0.5521995
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6155714   -0.6532287   -0.5779140
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0443153   -0.1269075    0.0382769
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2984354   -1.3225016   -1.2743692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2222794   -1.2547188   -1.1898401


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2862775   -0.5395019   -0.0330531
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1617816   -0.0266451    0.3502082
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5723476   -1.1712247    0.0265296
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3753468   -1.3540700    0.6033765
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0179306   -0.1016397    0.0657785
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0928596   -0.1960998    0.0103806
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0223094   -0.1568640    0.1122451
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0142880   -0.1185550    0.0899790
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0294777   -0.0903648    0.0314094
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0527039   -0.0153876    0.1207954
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0447395   -0.0888058    0.1782849
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0780508   -0.1649114    0.0088098
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1535535   -0.2223240   -0.0847829
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0053144   -0.0329848    0.0223560
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0188928   -0.0956449    0.0578592
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0530618   -0.2038772    0.3100008
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0592373   -0.2804145    0.1619399
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1791431   -0.4866049    0.1283188
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0935277   -0.3270470    0.1399915
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0989251   -0.1894292    0.3872795
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5313472   -0.9592846   -0.1034097
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0611871   -0.0976459   -0.0247284
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0753781   -0.0856349    0.2363912
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0203627   -0.1327691    0.0920438
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1180745   -0.2224984   -0.0136506
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0333208   -0.1366388    0.0699973
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1111544   -0.0390892    0.2613980
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0118310   -0.0420916    0.0184297
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0225616   -0.0383292   -0.0067940
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0097099   -0.1483404    0.1289207
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0327319   -0.1179796    0.0525159
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0000953   -0.0608933    0.0610840
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0005831   -0.0969555    0.0981217
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0223238   -0.0542938    0.0096463
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1438442   -0.2134538   -0.0742347
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0196928   -0.2444950    0.2051094
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0637988   -0.1145733    0.2421710
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2231911   -0.4388464   -0.0075358
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1850364   -0.3769877    0.0069148
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3864933   -0.6382477   -0.1347389
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0211563   -0.2804344    0.2381218
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1119358   -0.2216797   -0.0021920
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0013302   -0.1295324    0.1268721
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0376342   -0.1365487    0.0612804
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0143726   -0.1102235    0.0814784
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2012620   -0.0622755    0.4647994
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0183667   -0.1156493    0.0789158
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1448756   -0.2095470   -0.0802042
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1101601   -0.1606276   -0.0596926
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0419461   -0.1616452    0.0777530
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0060980   -0.0316550    0.0438509
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0764615   -0.1372579   -0.0156652

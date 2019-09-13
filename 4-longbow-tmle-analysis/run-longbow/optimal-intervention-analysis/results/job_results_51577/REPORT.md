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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
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

agecat      studyid                    country                        meducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            72     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             63     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          60     195
Birth       ki0047075b-MAL-ED          BRAZIL                         High            63     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             51     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          68     182
Birth       ki0047075b-MAL-ED          INDIA                          High            51     180
Birth       ki0047075b-MAL-ED          INDIA                          Low             60     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium          69     180
Birth       ki0047075b-MAL-ED          NEPAL                          High            37     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low             65     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium          53     155
Birth       ki0047075b-MAL-ED          PERU                           High            82     278
Birth       ki0047075b-MAL-ED          PERU                           Low             98     278
Birth       ki0047075b-MAL-ED          PERU                           Medium          98     278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            72     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low            129     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             34     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          65     103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            48      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             16      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          24      88
Birth       ki1000108-IRC              INDIA                          High           101     343
Birth       ki1000108-IRC              INDIA                          Low            126     343
Birth       ki1000108-IRC              INDIA                          Medium         116     343
Birth       ki1000109-EE               PAKISTAN                       High             0       1
Birth       ki1000109-EE               PAKISTAN                       Low              1       1
Birth       ki1000109-EE               PAKISTAN                       Medium           0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          High            29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low             74     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium          63     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low             14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium          10      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low             11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           6      23
Birth       ki1119695-PROBIT           BELARUS                        High          2240   13824
Birth       ki1119695-PROBIT           BELARUS                        Low           4942   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium        6642   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7015   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2696   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3185   12896
Birth       ki1135781-COHORTS          GUATEMALA                      High           157     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low            344     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         247     748
Birth       ki1135781-COHORTS          INDIA                          High           656    4879
Birth       ki1135781-COHORTS          INDIA                          Low           1602    4879
Birth       ki1135781-COHORTS          INDIA                          Medium        2621    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1128    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            838    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         933    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          4648   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6207   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        4830   15685
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             4     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            293     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           3     300
6 months    ki0047075b-MAL-ED          BANGLADESH                     High            73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low             64     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium          59     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High            71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low             56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium          81     208
6 months    ki0047075b-MAL-ED          INDIA                          High            59     208
6 months    ki0047075b-MAL-ED          INDIA                          Low             72     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium          77     208
6 months    ki0047075b-MAL-ED          NEPAL                          High            53     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low             93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium          75     221
6 months    ki0047075b-MAL-ED          PERU                           High            81     272
6 months    ki0047075b-MAL-ED          PERU                           Low             94     272
6 months    ki0047075b-MAL-ED          PERU                           Medium          97     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High            70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low            127     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          57     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         132     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            104     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     368
6 months    ki1000108-IRC              INDIA                          High           124     408
6 months    ki1000108-IRC              INDIA                          Low            145     408
6 months    ki1000108-IRC              INDIA                          Medium         139     408
6 months    ki1000109-EE               PAKISTAN                       High            15     373
6 months    ki1000109-EE               PAKISTAN                       Low            325     373
6 months    ki1000109-EE               PAKISTAN                       Medium          33     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           289    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            596    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            194     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           203     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            180     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         199     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     560
6 months    ki1119695-PROBIT           BELARUS                        High          2656   15757
6 months    ki1119695-PROBIT           BELARUS                        Low           5642   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium        7459   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4465    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1717    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2069    8251
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         319     953
6 months    ki1135781-COHORTS          INDIA                          High           737    5407
6 months    ki1135781-COHORTS          INDIA                          Low           1774    5407
6 months    ki1135781-COHORTS          INDIA                          Medium        2896    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1015    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            824    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         867    2706
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5909   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5612   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5246   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High            68    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1901    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium          69    2038
24 months   ki0047075b-MAL-ED          BANGLADESH                     High            64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low             59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium          48     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High            62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low             42     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium          64     168
24 months   ki0047075b-MAL-ED          INDIA                          High            55     199
24 months   ki0047075b-MAL-ED          INDIA                          Low             69     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium          75     199
24 months   ki0047075b-MAL-ED          NEPAL                          High            48     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low             91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium          74     213
24 months   ki0047075b-MAL-ED          PERU                           High            59     200
24 months   ki0047075b-MAL-ED          PERU                           Low             74     200
24 months   ki0047075b-MAL-ED          PERU                           Medium          67     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High            67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low            120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          51     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium         114     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         109     372
24 months   ki1000108-IRC              INDIA                          High           124     409
24 months   ki1000108-IRC              INDIA                          Low            146     409
24 months   ki1000108-IRC              INDIA                          Medium         139     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            152     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            173     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         204     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            58     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            350     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          87     495
24 months   ki1119695-PROBIT           BELARUS                        High           654    3971
24 months   ki1119695-PROBIT           BELARUS                        Low           1381    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium        1936    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           180     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            114     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         129     423
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low            512    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         347    1068
24 months   ki1135781-COHORTS          INDIA                          High           601    4166
24 months   ki1135781-COHORTS          INDIA                          Low           1264    4166
24 months   ki1135781-COHORTS          INDIA                          Medium        2301    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High           911    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            748    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         790    2449
24 months   ki1148112-LCNI-5           MALAWI                         High           214     556
24 months   ki1148112-LCNI-5           MALAWI                         Low            172     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium         170     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2912    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           2999    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2681    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High            71    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1855    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium          74    2000


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/e4f69f33-0cbc-4f52-841f-14f75c720a13/83069fe2-37b4-4470-81ed-c8658c86ea28/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0406604   -1.2705981   -0.8107228
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7780349    0.4408651    1.1152046
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1079580   -1.3252254   -0.8906907
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6994491   -0.8963216   -0.5025765
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1732431   -0.0203787    0.3668649
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0282552   -0.2623812    0.3188917
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6064695   -1.0398865   -0.1730524
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9004793   -1.1954124   -0.6055463
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1412077   -0.4474541    0.1650387
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.9356068   -2.6794938   -1.1917198
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1482491   -1.3461778   -0.9503204
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5084771   -0.5592048   -0.4577494
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0093434   -1.2343621   -0.7843246
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8963819   -0.9672365   -0.8255272
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6943019   -0.7785036   -0.6101003
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7223504   -0.7583356   -0.6863653
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1343135   -0.3831754    0.1145485
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9271325    0.6954876    1.1587775
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6711042   -0.8878684   -0.4543401
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3988329    0.1154268    0.6822390
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2094717    0.9940291    1.4249143
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4611889    0.2003328    0.7220450
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1963913   -0.2114750    0.6042576
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6049621   -0.8819651   -0.3279591
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4293068   -0.6775353   -0.1810783
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.6866113   -1.0239469   -0.3492756
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6270466   -0.8030411   -0.4510520
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7081772   -1.0215653   -0.3947890
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2792586   -0.4582538   -0.1002634
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0629710   -0.2050755    0.0791335
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1138943   -0.0141377    0.2419263
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0051120   -0.2091252    0.2193493
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0493055   -0.2033459    0.3019569
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1794376   -0.4531418    0.0942665
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5554277    0.4845730    0.6262825
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3665692    0.3299065    0.4032319
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3156788    0.1869605    0.4443972
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4709457   -0.5525766   -0.3893148
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3233152   -0.3996902   -0.2469402
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5589052    0.4373333    0.6804771
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5640631   -0.5973414   -0.5307847
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2936947   -0.6054453    0.0180559
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6833705   -0.9350381   -0.4317030
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6320128    0.2909007    0.9731249
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8442355   -1.0637344   -0.6247365
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1232968   -0.4028275    0.1562339
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.2971592    0.0898306    0.5044878
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3907579    0.1689852    0.6125305
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1765861    0.0151216    0.3380506
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3903274   -0.5425335   -0.2381214
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6207922   -0.7880860   -0.4534984
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7500567   -0.9424126   -0.5577008
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7698322   -0.9179500   -0.6217143
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3898599   -0.5487561   -0.2309638
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1296142   -1.4179433   -0.8412850
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7562299    0.5979664    0.9144933
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1575900   -1.3159297   -0.9992503
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1942289   -0.3079602   -0.0804976
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2593519   -0.3537014   -0.1650025
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5423305   -0.6049868   -0.4796742
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.2012254    0.0549144    0.3475364
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3180120   -1.3599503   -1.2760736
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.1415140   -1.3537362   -0.9292919


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9540000   -1.1046669   -0.8033331
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3973626    0.2226221    0.5721032
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0810556   -1.2311524   -0.9309587
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9362581   -1.0768107   -0.7957054
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0762230   -0.1865335    0.0340875
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5149449   -0.5408131   -0.4890768
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0590508   -1.1604735   -0.9576281
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7242308   -0.7440729   -0.7043887
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0733121   -0.2158688    0.0692446
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9741026    0.8090337    1.1391714
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6803526   -0.8157896   -0.5449155
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1237029   -0.0091418    0.2565476
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0583824    0.9364872    1.1802775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5303612    0.3888640    0.6718585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7250670   -0.8391902   -0.6109438
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6097530   -0.6959927   -0.5235132
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3042510    0.2781512    0.3303508
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4400246    0.3684214    0.5116278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3995412   -0.4558989   -0.3431835
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7642690   -0.9008595   -0.6276785
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4459226    0.2396905    0.6521548
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9446231   -1.0689273   -0.8203189
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3599765   -0.4780748   -0.2418783
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199500   -0.0005848    0.2404848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0858857   -0.0532969    0.2250684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1324444   -1.2201925   -1.0446964
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0442266   -0.1266703    0.0382171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2263000   -1.2784771   -1.1741229


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0866604   -0.1200215    0.2933424
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3806722   -0.6580442   -0.1033003
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0269025   -0.1698874    0.2236924
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2368090   -0.4024082   -0.0712097
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2494661   -0.4032154   -0.0957169
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0845343   -0.3336111    0.1645425
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0210305   -0.3717847    0.3297236
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1101038   -0.3398892    0.1196816
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1285513   -0.3455099    0.0884073
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           1.1847372    0.4748400    1.8946345
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0019022   -0.0567303    0.0605346
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0064678   -0.0495582    0.0366225
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0497074   -0.2474097    0.1479948
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0867458   -0.1506974   -0.0227942
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0484231   -0.1195387    0.0226924
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0018804   -0.0315079    0.0277472
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0610014   -0.1508643    0.2728671
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0469700   -0.1607579    0.2546979
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0092483   -0.1920381    0.1735415
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2751300   -0.5225533   -0.0277067
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1510894   -0.3270370    0.0248583
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0808846   -0.1564067    0.3181759
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3339700   -0.0715051    0.7394450
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1022855   -0.1264505    0.3310214
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1696229   -0.3760273    0.0367815
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0384558   -0.3647525    0.2878410
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0386618   -0.1203054    0.0429817
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.3039807   -0.6113064    0.0033449
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1596516   -0.3079806   -0.0113226
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1453996   -0.2614432   -0.0293560
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0841320   -0.1904603    0.0221962
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0756103   -0.1351757    0.2863963
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1061887   -0.3191532    0.1067757
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4303153   -0.6905248   -0.1701059
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0235356   -0.0089745    0.0560457
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0623182   -0.0893246   -0.0353118
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1184071   -0.2322176   -0.0045965
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.2296850   -0.3077395   -0.1516305
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0294719   -0.0317399    0.0906837
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1188806   -0.2165486   -0.0212126
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0292109   -0.0567176   -0.0017043
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1058465   -0.4106947    0.1990017
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0808985   -0.2708634    0.1090664
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1860902   -0.4585464    0.0863660
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1003877   -0.2678798    0.0671045
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2366797   -0.4791467    0.0057872
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1772092   -0.3477357   -0.0066826
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0359438   -0.1641735    0.2360612
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0907004   -0.1993553    0.0179545
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1668231   -0.2868449   -0.0468013
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1250228   -0.2625192    0.0124736
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1615224   -0.3232290    0.0001843
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1181090   -0.2321338   -0.0040842
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2204903   -0.3449522   -0.0960283
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0028303   -0.2718403    0.2661797
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0698864   -0.1782442    0.0384714
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0234029   -0.1568475    0.1100416
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0822786   -0.1781519    0.0135947
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3793087   -0.4704890   -0.2881283
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0676286   -0.1183799   -0.0168774
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2454520   -0.3586050   -0.1322990
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0205376   -0.0149815    0.0560567
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0847860   -0.2944689    0.1248969

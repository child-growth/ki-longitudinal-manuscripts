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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8a6c01b6-703e-4ef9-829c-aa430761d0ac/d9d1a282-86df-41d4-bb8a-f61ea5dfdd54/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8a6c01b6-703e-4ef9-829c-aa430761d0ac/d9d1a282-86df-41d4-bb8a-f61ea5dfdd54/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8a6c01b6-703e-4ef9-829c-aa430761d0ac/d9d1a282-86df-41d4-bb8a-f61ea5dfdd54/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8873069   -1.0889658   -0.6856480
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9566770   -1.2655197   -0.6478343
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0271371   -1.3283143   -0.7259599
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.4624573    0.1940706    0.7308440
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.7346670    0.4087308    1.0606031
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0898913   -0.1716869    0.3514694
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9994937   -1.2139005   -0.7850868
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0513224   -1.2850427   -0.8176022
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1006353   -1.3686442   -0.8326264
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.4081527   -1.6728619   -1.1434434
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.7237671   -0.9199082   -0.5276260
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.8671001   -1.1590373   -0.5751630
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.1778781   -0.3502810   -0.0054752
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1267956   -0.0703770    0.3239682
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.2253822   -0.4169765   -0.0337880
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1410798   -0.3805990    0.0984395
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.0355828   -0.2485671    0.1774016
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.0411291   -0.2967821    0.3790404
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1024323   -0.5328404    0.3279758
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.9507781   -1.6968870   -0.2046692
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.1399054   -1.7752287   -0.5045821
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.8654153   -1.1554013   -0.5754292
Birth       ki1000108-IRC              INDIA                          Low                  NA                -1.0174357   -1.2956786   -0.7391928
Birth       ki1000108-IRC              INDIA                          Medium               NA                -1.1316530   -1.4024567   -0.8608493
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0039830   -0.4346385    0.4426044
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.2110656   -0.5951336    0.1730023
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.3476179   -0.7588663    0.0636306
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.7300000   -1.6319051    0.1719051
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.7454545   -1.3698103   -0.1210988
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.7816667   -1.9358697    0.3725363
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1399064   -1.3348638   -0.9449490
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1427405   -1.4006527   -0.8848282
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1574209   -1.3645413   -0.9503004
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5289762   -0.5641383   -0.4938141
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5020295   -0.5579350   -0.4461240
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5176489   -0.5680394   -0.4672583
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.0887260   -1.3278405   -0.8496115
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0786346   -1.2195570   -0.9377122
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0717806   -1.2533534   -0.8902078
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.9110092   -0.9897436   -0.8322748
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9875102   -1.0416349   -0.9333854
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.9773631   -1.0218735   -0.9328527
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.7871174   -0.8615879   -0.7126468
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7151301   -0.8033986   -0.6268616
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.7231338   -0.8084404   -0.6378273
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7247576   -0.7577758   -0.6917394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7437157   -0.7749951   -0.7124364
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7120123   -0.7454632   -0.6785615
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0008226   -0.2509442    0.2492990
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2217681   -0.5305394    0.0870032
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0088715   -0.2585119    0.2407689
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 1.1335159    0.8550378    1.4119940
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.6711957    0.3398330    1.0025584
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 1.0158186    0.7511068    1.2805303
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.7011993   -0.9202415   -0.4821570
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6907761   -0.9275068   -0.4540455
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.6526805   -0.8913615   -0.4139996
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4368413    0.1548044    0.7188781
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0900734   -0.1102851    0.2904319
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0181584   -0.2459186    0.2096017
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.1724051    0.9595845    1.3852257
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.0173500    0.8043772    1.2303228
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 1.0302439    0.8222785    1.2382092
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.6612846    0.3890550    0.9335142
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.4185881    0.1757969    0.6613794
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.6249590    0.2624348    0.9874831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5873656    0.3228299    0.8519012
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.4945202    0.3195483    0.6694921
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.4675855   -0.7046992   -0.2304717
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5527071   -0.8212085   -0.2842056
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4854956   -0.7943503   -0.1766410
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.4734824   -0.7135472   -0.2334176
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.5884446   -0.8112753   -0.3656140
6 months    ki1000108-IRC              INDIA                          Medium               NA                -0.7550341   -1.0041397   -0.5059285
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.6451590   -1.0891200   -0.2011979
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.7426687   -0.8678372   -0.6175002
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -0.5517479   -0.8854568   -0.2180390
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5504932   -0.6476171   -0.4533694
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7878693   -0.9361462   -0.6395923
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.5665668   -0.7680398   -0.3650938
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.7930109   -1.1009111   -0.4851107
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.0526121   -1.1825886   -0.9226355
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.0947730   -1.4971242   -0.6924218
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2889954   -0.4705621   -0.1074288
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.5539614   -0.6934955   -0.4144274
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.4388343   -0.5935212   -0.2841473
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1333155   -0.2780665    0.0114356
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3981747   -0.5515917   -0.2447578
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.1221403   -0.2640242    0.0197436
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0743551   -0.0555230    0.2042332
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1307897   -0.2671745    0.0055950
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.1371189   -0.0033093    0.2775470
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0806901   -0.0254663    0.1868464
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1616706   -0.0848128    0.4081540
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0797119    0.0169437    0.1424802
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0899861   -0.2627349    0.0827626
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0728539   -0.1734776    0.3191855
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.1124251   -0.3223859    0.0975357
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1508731   -0.4093847    0.1076386
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6375761   -0.7410103   -0.5341418
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.6068076   -0.8673634   -0.3462519
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5457366    0.4742392    0.6172339
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5772133    0.4971829    0.6572436
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5856467    0.5221336    0.6491597
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3654116    0.3294910    0.4013321
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1550014    0.0906854    0.2193175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2540773    0.1985364    0.3096183
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2191129    0.0265902    0.4116357
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.2401581    0.1388270    0.3414892
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1893330    0.0597962    0.3188697
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4642992   -0.5480326   -0.3805657
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.8549221   -0.9138006   -0.7960436
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6480218   -0.6922926   -0.6037509
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3081098   -0.3736744   -0.2425452
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3353667   -0.4203703   -0.2503631
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2736106   -0.3501140   -0.1971072
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5984985    0.4765984    0.7203986
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.3349068    0.2080677    0.4617459
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.3791287    0.2422020    0.5160555
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5488406   -0.5817155   -0.5159657
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6577220   -0.6914539   -0.6239902
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5856286   -0.6199967   -0.5512604
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.4150286   -0.6357021   -0.1943552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.4026528   -0.4610505   -0.3442551
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.2708729   -0.5619482    0.0202025
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6481222   -0.8878892   -0.4083551
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9976185   -1.2385064   -0.7567306
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.7146073   -0.9461659   -0.4830488
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.5443941    0.1942400    0.8945483
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.1749931   -0.2887600    0.6387462
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.4277990    0.1223902    0.7332079
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9263044   -1.1437167   -0.7088920
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0486461   -1.2556776   -0.8416146
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8346017   -1.0531648   -0.6160386
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1693030   -0.4418548    0.1032489
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3864128   -0.5504375   -0.2223881
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.4526536   -0.6528055   -0.2525018
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1868713   -0.0128988    0.3866413
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.2189128    0.0166927    0.4211330
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -0.0089644   -0.2153059    0.1973771
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.4796217    0.2466985    0.7125450
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3184652    0.1470410    0.4898894
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.5049789    0.2420299    0.7679279
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1777193    0.0177117    0.3377269
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.3843216   -0.5332550   -0.2353882
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7558895   -0.9456659   -0.5661131
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.6016563   -0.8014177   -0.4018950
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.6438848   -0.8132806   -0.4744890
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.7279389   -0.8886681   -0.5672096
24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.8592753   -1.0041185   -0.7144320
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.7508381   -0.9471677   -0.5545085
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.0035155   -1.1604821   -0.8465489
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.8866426   -1.0943349   -0.6789504
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8256257   -0.9579013   -0.6933500
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.0179077   -1.1571004   -0.8787151
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8388342   -0.9878978   -0.6897706
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4220710   -0.5943136   -0.2498284
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8298497   -0.9754446   -0.6842549
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.6205227   -0.7767378   -0.4643077
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9045240   -1.1927337   -0.6163142
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1219763   -1.2253040   -1.0186486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2060970   -1.4638456   -0.9483485
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7367301    0.5845665    0.8888937
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.6730569    0.5151142    0.8309996
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6863609    0.5860146    0.7867072
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.1733399   -1.3270490   -1.0196308
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2593176   -1.4575548   -1.0610804
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1390052   -1.3139201   -0.9640904
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2991702   -0.4255070   -0.1728333
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2831428   -0.3599933   -0.2062923
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2579527   -0.3610505   -0.1548549
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.2322584   -0.3231873   -0.1413296
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.9745501   -1.0394472   -0.9096530
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5475266   -0.5906845   -0.5043687
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5460060   -0.6089727   -0.4830393
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7153642   -0.7856664   -0.6450620
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6279865   -0.6986675   -0.5573055
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2151336    0.0706154    0.3596519
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2584673   -0.3948786   -0.1220560
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.1536444   -0.3072495   -0.0000393
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.3023538   -1.3513832   -1.2533244
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2905708   -1.3304586   -1.2506830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3207465   -1.3665681   -1.2749249
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.2244038   -1.4238997   -1.0249080
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2316794   -1.2864650   -1.1768938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.1206673   -1.3313822   -0.9099523


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9540000   -1.1046669   -0.8033331
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.3973626    0.2226221    0.5721032
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0810556   -1.2311524   -0.9309587
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9362581   -1.0768107   -0.7957054
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0762230   -0.1865335    0.0340875
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5149449   -0.5408131   -0.4890768
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0590508   -1.1604735   -0.9576281
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7242308   -0.7440729   -0.7043887
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0733121   -0.2158688    0.0692446
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9741026    0.8090337    1.1391714
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6803526   -0.8157896   -0.5449155
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1237029   -0.0091418    0.2565476
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0583824    0.9364872    1.1802775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5303612    0.3888640    0.6718585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7250670   -0.8391902   -0.6109438
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6097530   -0.6959927   -0.5235132
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3042510    0.2781512    0.3303508
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4400246    0.3684214    0.5116278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3995412   -0.4558989   -0.3431835
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.7642690   -0.9008595   -0.6276785
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4459226    0.2396905    0.6521548
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9446231   -1.0689273   -0.8203189
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3599765   -0.4780748   -0.2418783
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199500   -0.0005848    0.2404848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0858857   -0.0532969    0.2250684
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1324444   -1.2201925   -1.0446964
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1809929   -1.2809380   -1.0810478
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0442266   -0.1266703    0.0382171
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2263000   -1.2784771   -1.1741229


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.0693701   -0.4385784    0.2998383
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1398301   -0.5022867    0.2226264
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.2722097   -0.1407167    0.6851360
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.3725660   -0.7362419   -0.0088901
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0518287   -0.3556049    0.2519474
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.1011416   -0.4315672    0.2292840
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High               0.6843856    0.3503733    1.0183979
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High               0.5410525    0.1382959    0.9438091
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.3046737    0.0424205    0.5669268
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0475041   -0.3044594    0.2094511
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.1054970   -0.2161514    0.4271454
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.1822089   -0.2322176    0.5966353
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.8483458   -1.7551715    0.0584799
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -1.0374731   -1.8587492   -0.2161969
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High              -0.1520204   -0.5191859    0.2151450
Birth       ki1000108-IRC              INDIA                          Medium               High              -0.2662377   -0.6285320    0.0960566
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.2150486   -0.7711714    0.3410742
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.3516008   -1.0358492    0.3326475
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0154545   -1.1123834    1.0814743
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0516667   -1.5164593    1.4131259
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0028341   -0.1174112    0.1117430
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0175145   -0.0923896    0.0573606
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0269467   -0.0365153    0.0904088
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0113273   -0.0473115    0.0699661
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0100914   -0.2591479    0.2793307
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0169454   -0.2748951    0.3087859
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.0765009   -0.1683356    0.0153338
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0663539   -0.1528301    0.0201223
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0719873   -0.0413910    0.1853655
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0639835   -0.0470096    0.1749767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0189581   -0.0613479    0.0234317
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               0.0127453   -0.0290894    0.0545800
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2209455   -0.6228147    0.1809236
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0080489   -0.3656651    0.3495672
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4623202   -0.8971674   -0.0274730
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1176973   -0.5033872    0.2679927
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0104232   -0.3074244    0.3282707
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0485187   -0.2769968    0.3740343
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3467678   -0.6929805   -0.0005552
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.4549997   -0.8166290   -0.0933704
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.1550552   -0.4537840    0.1436736
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.1421613   -0.4364911    0.1521686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2426964   -0.6071581    0.1217652
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0363256   -0.4895179    0.4168667
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0759677   -0.6452182    0.4932827
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1688131   -0.7023693    0.3647430
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0851216   -0.4446115    0.2743684
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0179102   -0.4075759    0.3717556
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1149623   -0.4443714    0.2144468
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.2815517   -0.6295173    0.0664139
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.0975097   -0.5589679    0.3639485
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.0934110   -0.4618568    0.6486789
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.2373761   -0.3652093   -0.1095429
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0160736   -0.1780867    0.1459395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.2596012   -0.5940741    0.0748717
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3017621   -0.8097820    0.2062578
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2649660   -0.4942297   -0.0357023
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1498388   -0.3887797    0.0891021
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.2648592   -0.4751105   -0.0546079
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0111752   -0.1910362    0.2133865
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2051448   -0.3920581   -0.0182316
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0627637   -0.1284938    0.2540213
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0809805   -0.1873952    0.3493563
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0009781   -0.1238172    0.1218609
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High               0.1628401   -0.1385247    0.4642048
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0224390   -0.2947941    0.2499161
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4867030   -0.7652513   -0.2081548
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.4559346   -0.8225560   -0.0893132
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0314767   -0.0496661    0.1126195
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0399101   -0.0272544    0.1070745
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.2104101   -0.2838395   -0.1369808
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1113342   -0.1772809   -0.0453876
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0210452   -0.1967896    0.2388799
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0297800   -0.2615034    0.2019435
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.3906229   -0.4931069   -0.2881389
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.1837226   -0.2785805   -0.0888647
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0272569   -0.1344719    0.0799582
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0344992   -0.0658176    0.1348160
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.2635917   -0.4408929   -0.0862906
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2193698   -0.4032360   -0.0355036
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1088814   -0.1559156   -0.0618472
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0367879   -0.0829101    0.0093343
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.0123758   -0.2141746    0.2389261
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1441558   -0.2187455    0.5070570
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3494964   -0.6913976   -0.0075952
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0664852   -0.4016487    0.2686784
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.3694011   -0.9524471    0.2136450
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1165951   -0.5783063    0.3451161
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1223418   -0.4225080    0.1778245
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               0.0917026   -0.2176683    0.4010736
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2171098   -0.5342758    0.1000561
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2833506   -0.6212017    0.0545005
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0320416   -0.2485988    0.3126820
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1958357   -0.4769921    0.0853207
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1611565   -0.4505960    0.1282829
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0253572   -0.3256685    0.3763828
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3305764   -0.1967864    0.8579393
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3715679   -0.6135720   -0.1295638
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2173347   -0.4669335    0.0322640
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.0840541   -0.3179469    0.1498388
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2153905   -0.4384618    0.0076809
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2526775   -0.5051231   -0.0002318
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1358045   -0.4224801    0.1508710
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1922821   -0.3819700   -0.0025941
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0132086   -0.2109204    0.1845033
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4077788   -0.6327785   -0.1827790
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1984517   -0.4307227    0.0338192
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.2174523   -0.5237578    0.0888531
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3015731   -0.6892632    0.0861171
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.0636733   -0.2027326    0.0753861
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.0503692   -0.1828997    0.0821613
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0859777   -0.3369474    0.1649920
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0343347   -0.1978528    0.2665222
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0160274   -0.1318765    0.1639313
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0412175   -0.1218892    0.2043241
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.7422916   -0.8542318   -0.6303514
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.3152682   -0.4161618   -0.2143745
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1693582   -0.2629062   -0.0758102
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0819805   -0.1757229    0.0117618
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.4736009   -0.6736655   -0.2735364
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.3687781   -0.5804173   -0.1571388
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               0.0117830   -0.0497278    0.0732937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0183927   -0.0887700    0.0519846
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0072755   -0.2132749    0.1987238
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.1037366   -0.1868498    0.3943230


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0666931   -0.2440476    0.1106615
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0650947   -0.2853485    0.1551592
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0815619   -0.2761135    0.1129897
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4718946    0.2238598    0.7199294
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.1016551   -0.0545494    0.2578596
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0848007   -0.1279160    0.2975174
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.5250677   -0.9902041   -0.0599313
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.1451678   -0.3713482    0.0810125
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2737420   -0.7564543    0.2089703
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0208696   -0.8109829    0.7692437
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0064405   -0.0651984    0.0523173
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0140312   -0.0096274    0.0376899
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0296752   -0.1811854    0.2405357
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0721185   -0.1453836    0.0011466
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0443923   -0.0140152    0.1027998
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0005268   -0.0253069    0.0263605
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0724895   -0.2779029    0.1329239
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1594133   -0.3905780    0.0717514
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0208467   -0.1746242    0.2163176
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3131384   -0.5596849   -0.0665919
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.1140228   -0.2950714    0.0670259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1192111   -0.3626502    0.1242281
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1329721   -0.6345300    0.3685858
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0350911   -0.2178132    0.1476309
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1254474   -0.3305252    0.0796305
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.0799081   -0.5242087    0.3643926
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1152152   -0.2212569   -0.0091735
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2191470   -0.5219988    0.0837048
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1499147   -0.2999444    0.0001150
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0750551   -0.1923897    0.0422795
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0445929   -0.1532389    0.0640532
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0000323   -0.0915325    0.0915971
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0331028   -0.1032873    0.1694930
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.4588799   -0.7050939   -0.2126659
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0332267   -0.0236106    0.0900640
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0611606   -0.0873203   -0.0350008
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0218412   -0.1942389    0.1505566
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2363315   -0.3168736   -0.1557894
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0142665   -0.0402687    0.0688016
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1584739   -0.2563587   -0.0605892
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0444334   -0.0719961   -0.0168706
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0154874   -0.2036316    0.2346064
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1161469   -0.3023406    0.0700469
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0984715   -0.3791254    0.1821824
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0183188   -0.2098125    0.1731750
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1906735   -0.4257021    0.0443551
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0669213   -0.2418294    0.1079869
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0529200   -0.2507138    0.1448737
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2387429   -0.2629345    0.7404202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1728289   -0.2907404   -0.0549174
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1019302   -0.2427789    0.0389185
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1607410   -0.3283462    0.0068643
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0623155   -0.1691030    0.0444720
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1882792   -0.3178184   -0.0587400
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2279205   -0.5013023    0.0454614
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0503866   -0.1533688    0.0525956
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0076530   -0.1228525    0.1075465
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0226627   -0.0922074    0.1375328
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.4064021   -0.4941828   -0.3186215
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0639532   -0.1149611   -0.0129453
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2593603   -0.3707904   -0.1479302
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0048794   -0.0385753    0.0483341
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0018962   -0.2005347    0.1967424

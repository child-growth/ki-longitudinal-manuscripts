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
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            64     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             60     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          51     175
Birth       ki0047075b-MAL-ED          BRAZIL                         High            18      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             17      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          27      62
Birth       ki0047075b-MAL-ED          INDIA                          High             8      38
Birth       ki0047075b-MAL-ED          INDIA                          Low             18      38
Birth       ki0047075b-MAL-ED          INDIA                          Medium          12      38
Birth       ki0047075b-MAL-ED          NEPAL                          High             5      24
Birth       ki0047075b-MAL-ED          NEPAL                          Low             12      24
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           7      24
Birth       ki0047075b-MAL-ED          PERU                           High            65     228
Birth       ki0047075b-MAL-ED          PERU                           Low             83     228
Birth       ki0047075b-MAL-ED          PERU                           Medium          80     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             59     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             32      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          58      97
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            49      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             15      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          22      86
Birth       ki1000108-IRC              INDIA                          High           101     343
Birth       ki1000108-IRC              INDIA                          Low            126     343
Birth       ki1000108-IRC              INDIA                          Medium         116     343
Birth       ki1000109-EE               PAKISTAN                       High             5     177
Birth       ki1000109-EE               PAKISTAN                       Low            156     177
Birth       ki1000109-EE               PAKISTAN                       Medium          16     177
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           233    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            500    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         370    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     High           163     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low            210     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium         202     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           169     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            164     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         199     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           236     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            226     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         245     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High            81     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            444     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         114     639
Birth       ki1119695-PROBIT           BELARUS                        High          2241   13830
Birth       ki1119695-PROBIT           BELARUS                        Low           4944   13830
Birth       ki1119695-PROBIT           BELARUS                        Medium        6645   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7015   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2697   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3185   12897
Birth       ki1135781-COHORTS          GUATEMALA                      High           157     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low            344     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         247     748
Birth       ki1135781-COHORTS          INDIA                          High           656    4879
Birth       ki1135781-COHORTS          INDIA                          Low           1602    4879
Birth       ki1135781-COHORTS          INDIA                          Medium        2621    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1128    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            838    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         933    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          5631   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           6897   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        5460   17988
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           805    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            829    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         757    2391
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
6 months    ki1000109-EE               PAKISTAN                       High            15     372
6 months    ki1000109-EE               PAKISTAN                       Low            324     372
6 months    ki1000109-EE               PAKISTAN                       Medium          33     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           289    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            596    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            187     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         207     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1434    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            68     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     561
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15758
6 months    ki1119695-PROBIT           BELARUS                        Low           5642   15758
6 months    ki1119695-PROBIT           BELARUS                        Medium        7459   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4604    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1766    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2122    8492
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1717    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1584    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1519    4820
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
24 months   ki1000109-EE               PAKISTAN                       High             6     166
24 months   ki1000109-EE               PAKISTAN                       Low            143     166
24 months   ki1000109-EE               PAKISTAN                       Medium          17     166
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            152     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            174     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         204     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            55     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            344     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          85     484
24 months   ki1119695-PROBIT           BELARUS                        High           654    3972
24 months   ki1119695-PROBIT           BELARUS                        Low           1382    3972
24 months   ki1119695-PROBIT           BELARUS                        Medium        1936    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           184     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            118     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         131     433
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
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1688    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1528    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1508    4724


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/fe8bd594-40b0-456d-827c-35e5c99513ff/2cdb9a29-0d66-4351-b6bb-1d9a672da8d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5915394   -0.8453976   -0.3376811
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9217899    0.6196824    1.2238974
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7346478   -1.2691955   -0.2001001
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4206734   -0.8028275   -0.0385194
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1290459   -0.0885841    0.3466759
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3738621   -0.7469213   -0.0008028
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0749991    0.5425250    1.6074731
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4859927   -1.0250253    0.0530400
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.8716627   -1.1703177   -0.5730077
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.5554859   -0.1576470    1.2686188
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5908530   -0.7348908   -0.4468153
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.3855258   -1.5588795   -1.2121722
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2631715   -1.4048715   -1.1214715
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2065166   -1.3541660   -1.0588672
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0847525   -1.1881591   -0.9813458
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1372971   -1.3322529   -0.9423414
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4921470   -0.5431060   -0.4411879
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0495083   -1.2765753   -0.8224413
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8396885   -0.9197266   -0.7596504
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6784389   -0.7633049   -0.5935729
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7632273   -0.7972973   -0.7291572
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6995530   -0.7868904   -0.6122156
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1014496   -0.3230294    0.1201302
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.1295319    0.8538904    1.4051733
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8535535   -1.0902556   -0.6168514
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4497332    0.2099741    0.6894922
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9244975    0.7303690    1.1186260
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4810080    0.2211686    0.7408474
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4349504   -0.1078653    0.9777662
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4101026   -0.6689717   -0.1512336
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.4522716   -0.6980313   -0.2065120
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.8435442   -1.1642328   -0.5228557
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5672361   -0.7135846   -0.4208876
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7497365   -1.0803078   -0.4191652
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4041845   -0.5940987   -0.2142703
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2722099   -0.4271017   -0.1173180
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2021439    0.0700648    0.3342230
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0686157   -0.1531468    0.2903781
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1247536   -0.1007592    0.3502664
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1523201   -0.4596021    0.1549618
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5835396    0.5164961    0.6505830
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3775823    0.3419548    0.4132097
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2663142    0.1428276    0.3898008
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5107878   -0.5998233   -0.4217522
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3039657   -0.3779956   -0.2299357
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5709195    0.4511575    0.6906815
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5693355   -0.6043645   -0.5343065
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3096296   -0.3679133   -0.2513459
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6083292   -0.8380103   -0.3786481
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6283048    0.2713945    0.9852150
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8011949   -0.9963735   -0.6060163
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1294069   -0.4240941    0.1652803
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0628970   -0.2427055    0.1169115
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4568115    0.2032773    0.7103457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1844328    0.0224556    0.3464099
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3966744   -0.5459431   -0.2474058
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5932386   -0.7603875   -0.4260898
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -1.4336599   -1.9639098   -0.9034101
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7712039   -0.9560481   -0.5863597
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8350637   -0.9710857   -0.6990418
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4548219   -0.6185677   -0.2910761
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0597380   -1.3223632   -0.7971128
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7541797    0.5945806    0.9137787
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.2090603   -1.3856430   -1.0324776
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2628719   -0.3767456   -0.1489983
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2987273   -0.3943976   -0.2030569
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5443663   -0.6080677   -0.4806650
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1410237    0.0054451    0.2766024
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3137493   -1.3542293   -1.2732693
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2111471   -1.2632030   -1.1590912


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9109143   -1.0715205   -0.7503080
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9021053   -1.2132997   -0.5909108
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7791667   -1.1649642   -0.3933692
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7997938    0.5930740    1.0065137
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -0.3333051   -0.5209779   -0.1456323
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1182629   -1.2060675   -1.0304584
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5152927   -0.5411678   -0.4894176
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0590508   -1.1604735   -0.9576281
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7779831   -0.7969771   -0.7589891
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6895483   -0.7419864   -0.6371102
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0723895   -0.2148128    0.0700339
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9744591    0.8094713    1.1394470
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6859816   -0.8229470   -0.5490162
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1223152   -0.0106456    0.2552761
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0566544    0.9348515    1.1784573
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5536864    0.4102695    0.6971033
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -0.7785977   -0.8934940   -0.6637013
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6087819   -0.6949591   -0.5226048
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3101107    0.2844075    0.3358139
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4399754    0.3683855    0.5115653
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3903558   -0.4277318   -0.3529799
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7626901   -0.8991383   -0.6262418
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4620139    0.2549144    0.6691133
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9438945   -1.0682517   -0.8195372
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3583333   -0.4767474   -0.2399193
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1112042   -0.0124506    0.2348589
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0906000   -0.0489294    0.2301294
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -1.0042771   -1.1523338   -0.8562205
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1372176   -1.2263063   -1.0481290
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0441457   -0.1265899    0.0382985
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2243057   -1.2562915   -1.1923198


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3193749   -0.5441041   -0.0946458
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5188867   -0.8869117   -0.1508617
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1674575   -0.5316008    0.1966859
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3584933   -0.7595387    0.0425522
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1810634   -0.3496576   -0.0124692
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1812788   -0.0795499    0.4421074
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2752052   -0.8182897    0.2678792
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0211671   -0.3887278    0.4310620
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1389204   -0.3695146    0.0916739
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.8887910   -1.6109059   -0.1666761
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0791923   -0.1808034    0.0224188
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0356041   -0.1068405    0.1780487
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0352872   -0.1512063    0.0806320
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0376347   -0.1578065    0.0825370
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0335105   -0.0888228    0.0218018
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0075662   -0.0543750    0.0392427
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0231457   -0.0666290    0.0203375
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0095425   -0.2082800    0.1891950
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1434392   -0.2181963   -0.0686821
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0642862   -0.1356986    0.0071262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0147558   -0.0423849    0.0128733
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0100047   -0.0633862    0.0833956
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0290601   -0.1615076    0.2196278
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1550727   -0.3812218    0.0710763
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1675719   -0.0198541    0.3549980
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3274179   -0.5414312   -0.1134047
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1321569   -0.0389002    0.3032140
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0611705   -0.1772341    0.2995751
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1187359   -0.4193830    0.6568549
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0925740   -0.3143284    0.1291804
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1466581   -0.3487961    0.0554799
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0649466   -0.2474007    0.3772938
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0984723   -0.2123088    0.0153643
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2624214   -0.5830968    0.0582540
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0432193   -0.2008137    0.1143751
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0731192   -0.0546658    0.2009042
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1723816   -0.2837756   -0.0609877
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0121067   -0.2066583    0.2308717
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1816368   -0.3742994    0.0110257
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4564618   -0.7508670   -0.1620566
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0042957   -0.0400478    0.0314564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0674716   -0.0932789   -0.0416642
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0690424   -0.1758847    0.0377999
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1898429   -0.2753469   -0.1043389
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0101224   -0.0493250    0.0695698
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1309441   -0.2259708   -0.0359174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0239385   -0.0535208    0.0056437
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0807262   -0.1275234   -0.0339290
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1543609   -0.3343232    0.0256015
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1662909   -0.4470371    0.1144554
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1426995   -0.3048407    0.0194416
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2289265   -0.4855307    0.0276778
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1741012    0.0221726    0.3260297
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0477814   -0.2677666    0.1722039
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0938328   -0.2028739    0.0152083
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1604761   -0.2776968   -0.0432554
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1525763   -0.2875290   -0.0176237
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.4293828   -0.0890265    0.9477921
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1403752   -0.2948936    0.0141433
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0578033   -0.1661437    0.0505372
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1555283   -0.2847804   -0.0262762
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0774796   -0.3266393    0.1716800
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0667502   -0.1802398    0.0467394
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0265199   -0.1143698    0.1674095
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0136356   -0.1073754    0.0801042
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3399333   -0.4333272   -0.2465394
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0655928   -0.1171795   -0.0140062
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1851694   -0.2888222   -0.0815166
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0162749   -0.0168543    0.0494041
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0131586   -0.0572671    0.0309499

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          7733   22052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           7740   22052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6579   22052
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5880   16709
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5601   16709
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5228   16709
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2887    8527
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           2978    8527
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2662    8527
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
![](/tmp/b861b973-dcbc-4d52-837e-46581252eb09/4709c27b-5f1b-4054-a163-f65781ca1674/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.6438552   -0.8974959   -0.3902145
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.9436356    0.6032166    1.2840546
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9791998   -1.5634535   -0.3949461
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4155194   -0.7946858   -0.0363529
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1410489   -0.0760578    0.3581556
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3718528   -0.7207655   -0.0229400
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1045056    0.5525536    1.6564575
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3625897   -0.7415967    0.0164173
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9248396   -1.2199312   -0.6297480
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.5109503   -0.2062595    1.2281601
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7169386   -0.9221415   -0.5117358
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.4834140   -1.6352775   -1.3315505
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2669584   -1.4096218   -1.1242949
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1369578   -1.2787992   -0.9951164
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0863660   -1.1886687   -0.9840634
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1367369   -1.3301072   -0.9433665
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4929849   -0.5492128   -0.4367570
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0211189   -1.2445507   -0.7976871
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8535324   -0.9341897   -0.7728752
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6939805   -0.7795244   -0.6084365
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7408427   -0.7706089   -0.7110765
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.6982501   -0.7863319   -0.6101683
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0019013   -0.1968186    0.2006212
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8504945    0.6173670    1.0836219
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8560117   -1.0770384   -0.6349850
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.4423815    0.2032921    0.6814709
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1062062    0.8840345    1.3283779
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4408389    0.1874716    0.6942063
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2618142   -0.1636485    0.6872768
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2934025   -0.5801818   -0.0066232
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.5046271   -0.7432115   -0.2660426
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4112354   -0.7284582   -0.0940126
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5439932   -0.7123316   -0.3756549
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7439502   -1.0430224   -0.4448780
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3055212   -0.4914825   -0.1195600
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2880399   -0.4387646   -0.1373152
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2151532    0.0786623    0.3516441
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0281584   -0.1909397    0.2472565
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0509079   -0.2772471    0.1754312
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3330075   -0.5949508   -0.0710643
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5749439    0.5052010    0.6446869
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3734244    0.3375174    0.4093313
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3492188    0.2166364    0.4818012
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5106920   -0.6056157   -0.4157684
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3319984   -0.4044921   -0.2595046
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5696997    0.4480575    0.6913420
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5669390   -0.6005163   -0.5333617
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3015052   -0.3589220   -0.2440883
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5669957   -0.7814985   -0.3524929
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6384652    0.2835587    0.9933718
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9036365   -1.1066336   -0.7006395
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1149288   -0.3911782    0.1613205
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0484460   -0.2082877    0.1113956
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5557576    0.3086361    0.8028790
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1875924    0.0259311    0.3492537
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3979970   -0.5471448   -0.2488493
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6301527   -0.8052555   -0.4550499
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -1.4991047   -2.0674915   -0.9307178
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7872067   -0.9707795   -0.6036339
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8852062   -1.0242657   -0.7461467
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4451950   -0.6019223   -0.2884677
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0428982   -1.3520659   -0.7337305
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7665707    0.6025335    0.9306080
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.1585592   -1.3351627   -0.9819557
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2929425   -0.3964965   -0.1893886
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.2946347   -0.3920162   -0.1972533
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5393036   -0.6021087   -0.4764984
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1561634    0.0197813    0.2925454
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2770489   -1.3219880   -1.2321097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2303487   -1.2838421   -1.1768554


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9101143   -1.0708516   -0.7493770
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7503115   -0.7681644   -0.7324587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.6895483   -0.7419864   -0.6371102
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.0732738   -0.2158247    0.0692771
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9741026    0.8090337    1.1391714
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6858814   -0.8229164   -0.5488465
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1237029   -0.0091418    0.2565476
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0606863    0.9388664    1.1825061
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5427231    0.3906363    0.6948099
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5927772   -0.6123363   -0.5732182
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3903558   -0.4277318   -0.3529799
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.7634795   -0.9002125   -0.6267466
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4586012    0.2509873    0.6662151
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9446231   -1.0689273   -0.8203189
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3599765   -0.4780748   -0.2418783
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1205000   -0.0000440    0.2410440
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2990923   -1.3224665   -1.2757181
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2243057   -1.2562915   -1.1923198


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2662591   -0.4921383   -0.0403799
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5407324   -0.9375832   -0.1438816
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0770945   -0.3395540    0.4937430
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3636473   -0.7600788    0.0327842
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1930665   -0.3608845   -0.0252485
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1792694   -0.0742956    0.4328344
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3047117   -0.8663136    0.2568901
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1022359   -0.3671378    0.1626660
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0857435   -0.3124612    0.1409742
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.8442554   -1.5699317   -0.1185791
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0468933   -0.0810204    0.1748070
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.1334922    0.0009094    0.2660751
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0315003   -0.1464581    0.0834576
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1071936   -0.2246866    0.0102995
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0318969   -0.0865435    0.0227498
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0081265   -0.0581859    0.0419329
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0223078   -0.0717466    0.0271309
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0379319   -0.2349111    0.1590473
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1295953   -0.2048826   -0.0543079
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0487446   -0.1210564    0.0235672
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0094688   -0.0330044    0.0140667
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0087018   -0.0658674    0.0832710
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0751751   -0.2525713    0.1022211
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1236081   -0.0843279    0.3315441
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1701303   -0.0143860    0.3546467
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3186787   -0.5300048   -0.1073525
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0455200   -0.2285979    0.1375580
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1018841   -0.1364546    0.3402229
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2918722   -0.1227487    0.7064931
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2092741   -0.4424707    0.0239225
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0943027   -0.2980153    0.1094100
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.3673622   -0.6788822   -0.0558423
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1217152   -0.2552385    0.0118081
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2682077   -0.5625568    0.0261414
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1418826   -0.2975866    0.0138215
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0889493   -0.0367711    0.2146696
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1853909   -0.2996362   -0.0711456
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0525640   -0.1636290    0.2687569
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0059753   -0.2015470    0.1895964
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2757744   -0.5252229   -0.0263260
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0042999   -0.0384173    0.0470172
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0633137   -0.0894794   -0.0371480
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1519470   -0.2701852   -0.0337088
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1899386   -0.2813088   -0.0985685
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0381550   -0.0206257    0.0969358
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1297243   -0.2267621   -0.0326866
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0258382   -0.0541787    0.0025022
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0888506   -0.1350569   -0.0426444
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1964838   -0.3785140   -0.0144536
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1798641   -0.4627251    0.1029970
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0409866   -0.2036081    0.1216350
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2450477   -0.4841363   -0.0059591
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1689460    0.0210912    0.3168008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1409046   -0.3569413    0.0751321
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0969924   -0.2057641    0.0117793
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1591535   -0.2767662   -0.0415408
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1156623   -0.2572407    0.0259162
24 months   ki1000109-EE               PAKISTAN                       optimal              observed           0.4948275   -0.0679500    1.0576051
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1243723   -0.2783861    0.0296414
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0076609   -0.1192071    0.1038854
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1651552   -0.2899949   -0.0403154
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0943194   -0.3871936    0.1985548
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0791412   -0.1930481    0.0347657
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0239812   -0.1727720    0.1248097
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0164350   -0.0697014    0.1025715
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3440258   -0.4391699   -0.2488818
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0706556   -0.1215307   -0.0197805
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2003090   -0.3049434   -0.0956747
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0220434   -0.0604668    0.0163800
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0060431   -0.0402104    0.0522966

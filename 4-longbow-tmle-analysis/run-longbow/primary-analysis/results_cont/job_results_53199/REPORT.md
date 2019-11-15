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




# Results Detail

## Results Plots
![](/tmp/638c29b3-1161-4afc-9807-980d23789b4c/ad73c99b-1485-4be5-9985-575e9897a516/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/638c29b3-1161-4afc-9807-980d23789b4c/ad73c99b-1485-4be5-9985-575e9897a516/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/638c29b3-1161-4afc-9807-980d23789b4c/ad73c99b-1485-4be5-9985-575e9897a516/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8456930   -1.0792974   -0.6120885
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9915747   -1.2641529   -0.7189964
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9754204   -1.3840187   -0.5668221
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.7304105    0.1160307    1.3447903
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.8984511    0.3344378    1.4624643
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.1235450   -0.3178992    0.5649891
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0262500   -1.5172747   -0.5352253
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.7572222   -1.2526878   -0.2617566
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0366667   -1.5769678   -0.4963655
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.7180000   -2.4635498   -0.9724502
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.4158333   -0.7761719   -0.0554948
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7314286   -1.5015148    0.0386577
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.1630329   -0.3410039    0.0149382
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1205351   -0.0979986    0.3390688
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1957897   -0.4082205    0.0166411
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1831868   -0.5084739    0.1421003
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1148282   -0.4361129    0.2064564
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.3102072   -0.7969616    0.1765471
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 1.1228571    0.7098698    1.5358445
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.9103125    0.5359266    1.2846984
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.6998276    0.4307367    0.9689185
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.2498699   -0.6591156    0.1593757
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.4737466   -1.2450026    0.2975093
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.8857012   -1.5472215   -0.2241809
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.8769784   -1.1709391   -0.5830176
Birth       ki1000108-IRC              INDIA                          Low                  NA                -1.0117301   -1.2879065   -0.7355536
Birth       ki1000108-IRC              INDIA                          Medium               NA                -1.1289830   -1.3981975   -0.8597685
Birth       ki1000109-EE               PAKISTAN                       High                 NA                 0.6080000    0.0422458    1.1737542
Birth       ki1000109-EE               PAKISTAN                       Low                  NA                -0.3569551   -0.5627099   -0.1512003
Birth       ki1000109-EE               PAKISTAN                       Medium               NA                -0.3968750   -0.8274988    0.0337488
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6307641   -0.8028385   -0.4586897
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.6472751   -0.8587327   -0.4358175
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6783427   -0.9099240   -0.4467615
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.2635161   -1.4507156   -1.0763165
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.2997725   -1.4507528   -1.1487923
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4521478   -1.6159188   -1.2883768
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.3089877   -1.4288458   -1.1891296
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2168127   -1.3536865   -1.0799389
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.3230242   -1.4559631   -1.1900852
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.3043499   -1.4433397   -1.1653600
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2147626   -1.3633267   -1.0661984
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2491260   -1.3986784   -1.0995736
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.3331251   -1.5739073   -1.0923430
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0809562   -1.1826176   -0.9792947
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2107939   -1.4269357   -0.9946521
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1446799   -1.3403397   -0.9490200
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1556457   -1.4236141   -0.8876773
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1508434   -1.3534922   -0.9481947
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5302676   -0.5656343   -0.4949009
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4914170   -0.5470360   -0.4357981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5163537   -0.5664496   -0.4662577
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.0070483   -1.2284560   -0.7856406
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0830064   -1.2201496   -0.9458632
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0703716   -1.2472180   -0.8935252
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.8979989   -0.9883801   -0.8076177
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9753082   -1.0385265   -0.9120899
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.9800559   -1.0250805   -0.9350314
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.7865993   -0.8614931   -0.7117056
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7191477   -0.8065945   -0.6317009
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.7259210   -0.8105240   -0.6413180
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7848276   -0.8181816   -0.7514736
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7985593   -0.8302625   -0.7668561
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7622460   -0.7951581   -0.7293339
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.6901580   -0.7860440   -0.5942720
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.7140382   -0.8040684   -0.6240079
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.6771207   -0.7638824   -0.5903590
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0044041   -0.2352052    0.2263969
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2109411   -0.4770158    0.0551336
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0077697   -0.2314709    0.2159315
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 1.1443999    0.8689040    1.4198957
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.6987818    0.3734873    1.0240763
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 1.0482157    0.7877115    1.3087199
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.6871836   -0.9132977   -0.4610696
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6930484   -0.9439419   -0.4421550
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.6508407   -0.8908774   -0.4108039
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4488094    0.1976460    0.6999728
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.0942987   -0.1024918    0.2910892
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0356347   -0.2797627    0.2084932
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.1327791    0.9089085    1.3566497
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.0137791    0.8024311    1.2251270
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 1.0389290    0.8419781    1.2358799
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.6920419    0.4272771    0.9568067
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.4076837    0.1806732    0.6346942
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.6627612    0.3408902    0.9846322
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6255108    0.3542717    0.8967498
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.5124747    0.3361530    0.6887964
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.4828824   -0.7120251   -0.2537397
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5363891   -0.7979856   -0.2747927
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4944251   -0.8130291   -0.1758210
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.4797648   -0.7218492   -0.2376803
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.5583105   -0.7811663   -0.3354547
6 months    ki1000108-IRC              INDIA                          Medium               NA                -0.7018325   -0.9515222   -0.4521428
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.5736097   -0.9573145   -0.1899048
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.8045809   -0.9297972   -0.6793646
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -0.5132484   -0.8759991   -0.1504976
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5986221   -0.6803392   -0.5169049
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7896292   -0.9560823   -0.6231761
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.5574126   -0.7772574   -0.3375678
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.6728435   -0.9972886   -0.3483985
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.0430095   -1.1728085   -0.9132105
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -0.9965523   -1.3940153   -0.5990894
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3342952   -0.5166408   -0.1519496
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.5603220   -0.6990225   -0.4216214
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.4309667   -0.5854895   -0.2764439
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1540946   -0.2994235   -0.0087657
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3516191   -0.5133530   -0.1898851
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.1383398   -0.2895020    0.0128224
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0870254   -0.0386884    0.2127392
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1101192   -0.2462792    0.0260408
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.1335725   -0.0127254    0.2798705
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0830924   -0.0234824    0.1896672
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1571191   -0.0833071    0.3975453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0786328    0.0158757    0.1413899
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.1139630   -0.2888367    0.0609106
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0534210   -0.1902262    0.2970682
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.0960637   -0.3069227    0.1147954
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1584739   -0.4477863    0.1308384
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6392061   -0.7391172   -0.5392950
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.6180269   -0.8574860   -0.3785678
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5654675    0.4995415    0.6313934
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5693238    0.4888746    0.6497730
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5863285    0.5221047    0.6505523
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3685004    0.3332002    0.4038006
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1725530    0.1103536    0.2347523
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2536165    0.1988413    0.3083916
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2046279   -0.0001997    0.4094554
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.2372150    0.1359517    0.3384783
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.2139988    0.0846644    0.3433332
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4849706   -0.5839079   -0.3860334
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.8406621   -0.9072727   -0.7740515
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6511152   -0.6966176   -0.6056128
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3115666   -0.3763825   -0.2467507
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3501523   -0.4345126   -0.2657921
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2729129   -0.3486983   -0.1971275
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5682278    0.4475515    0.6889040
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.3650299    0.2438537    0.4862061
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.3678944    0.2375809    0.4982080
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5508108   -0.5845611   -0.5170605
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6461623   -0.6824930   -0.6098315
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5855491   -0.6227370   -0.5483611
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2946427   -0.3509320   -0.2383533
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.5037734   -0.5684623   -0.4390846
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3747032   -0.4420900   -0.3073163
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6157445   -0.8535858   -0.3779032
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9963198   -1.2240932   -0.7685465
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.7204123   -0.9783080   -0.4625167
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.6610393    0.3160265    1.0060520
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.2045083   -0.2753438    0.6843604
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.4253488    0.1221942    0.7285034
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.8744858   -1.0931994   -0.6557721
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.0443025   -1.2498541   -0.8387509
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8225473   -1.0380572   -0.6070373
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1054497   -0.3885004    0.1776009
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.4000707   -0.5722001   -0.2279414
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.4350420   -0.6402979   -0.2297861
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1763798   -0.0390231    0.3917827
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1744854   -0.0564351    0.4054059
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0144731   -0.1954634    0.2244096
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.4777249    0.2356684    0.7197815
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3302507    0.1596509    0.5008506
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.4819306    0.2384203    0.7254409
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1849561    0.0243806    0.3455316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.3821933   -0.5288620   -0.2355246
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7560677   -0.9458095   -0.5663259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.6072010   -0.8063259   -0.4080760
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.6510629   -0.8205553   -0.4815704
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.7224033   -0.8809940   -0.5638125
24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.8542414   -0.9980637   -0.7104192
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.8850000   -1.5331947   -0.2368053
24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -1.0096270   -1.1665790   -0.8526751
24 months   ki1000109-EE               PAKISTAN                       Medium               NA                -1.0013725   -1.5431822   -0.4595629
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.7848373   -0.9704264   -0.5992482
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.0585991   -1.2113706   -0.9058277
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.8865907   -1.0707415   -0.7024399
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8878908   -1.0176112   -0.7581704
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9858006   -1.1252028   -0.8463983
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8588097   -1.0178536   -0.6997658
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4273067   -0.5960499   -0.2585634
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.8360947   -0.9941629   -0.6780266
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.6092808   -0.7708330   -0.4477285
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9418664   -1.2300863   -0.6536465
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1142934   -1.2167341   -1.0118526
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2604651   -1.5233842   -0.9975461
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7838794    0.6273361    0.9404228
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.6751193    0.5091742    0.8410643
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6801386    0.5829232    0.7773539
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.1808749   -1.3295327   -1.0322170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2867936   -1.4802862   -1.0933010
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1184075   -1.2869619   -0.9498532
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2594860   -0.3814375   -0.1375346
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2785995   -0.3534174   -0.2037817
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2584233   -0.3599900   -0.1568567
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.2730396   -0.3733944   -0.1726849
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.9447826   -1.0201593   -0.8694059
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5500838   -0.5952703   -0.5048974
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5587322   -0.6215666   -0.4958978
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7019750   -0.7717755   -0.6321745
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6237337   -0.6916859   -0.5557816
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1731935    0.0357435    0.3106435
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2474788   -0.3815319   -0.1134256
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.1353529   -0.2842419    0.0135360
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.3009060   -1.3468911   -1.2549210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2841817   -1.3311264   -1.2372371
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3260082   -1.3700591   -1.2819573
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1975146   -1.2505470   -1.1444821
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2657039   -1.3213249   -1.2100828
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.2142827   -1.2706364   -1.1579289


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9109143   -1.0715205   -0.7503080
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9021053   -1.2132997   -0.5909108
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7791667   -1.1649642   -0.3933692
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7997938    0.5930740    1.0065137
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1182629   -1.2060675   -1.0304584
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5152927   -0.5411678   -0.4894176
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0590508   -1.1604735   -0.9576281
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9831277   -1.0164986   -0.9497568
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7779831   -0.7969771   -0.7589891
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6895483   -0.7419864   -0.6371102
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0723895   -0.2148128    0.0700339
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9744591    0.8094713    1.1394470
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6859816   -0.8229470   -0.5490162
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1223152   -0.0106456    0.2552761
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0566544    0.9348515    1.1784573
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5536864    0.4102695    0.6971033
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7785977   -0.8934940   -0.6637013
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0807224    0.0278917    0.1335530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0568833   -0.1722874    0.0585208
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6087819   -0.6949591   -0.5226048
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3101107    0.2844075    0.3358139
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1972718    0.1253735    0.2691700
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7006307   -0.7314213   -0.6698400
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4399754    0.3683855    0.5115653
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932740   -0.6128028   -0.5737451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3903558   -0.4277318   -0.3529799
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.7626901   -0.8991383   -0.6262418
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4620139    0.2549144    0.6691133
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9438945   -1.0682517   -0.8195372
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3583333   -0.4767474   -0.2399193
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1112042   -0.0124506    0.2348589
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0906000   -0.0489294    0.2301294
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0042771   -1.1523338   -0.8562205
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1372176   -1.2263063   -1.0481290
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2765075   -0.3306839   -0.2223311
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6386606   -0.6699072   -0.6074140
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0441457   -0.1265899    0.0382985
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974744   -1.3207756   -1.2741732
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2243057   -1.2562915   -1.1923198


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1458817   -0.5040070    0.2122436
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1297274   -0.6033924    0.3439376
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.1680405   -0.6479371    0.9840182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.6068655   -1.3562826    0.1425515
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.2690278   -0.4285333    0.9665889
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0104167   -0.7405061    0.7196728
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High               1.3021667    0.4741036    2.1302297
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High               0.9865714   -0.0852855    2.0584284
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.2835680    0.0012875    0.5658484
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0327568   -0.3120477    0.2465340
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0683586   -0.3828373    0.5195544
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1270204   -0.7077778    0.4537369
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2125446   -0.7699703    0.3448810
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4230296   -0.9159478    0.0698887
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2238767   -1.0934500    0.6456966
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.6358313   -1.4160681    0.1444055
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High              -0.1347517   -0.5015063    0.2320029
Birth       ki1000108-IRC              INDIA                          Medium               High              -0.2520046   -0.6160599    0.1120507
Birth       ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low                  High              -0.9649551   -1.5669625   -0.3629478
Birth       ki1000109-EE               PAKISTAN                       Medium               High              -1.0048750   -1.7158705   -0.2938795
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0165110   -0.2250481    0.1920261
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0475786   -0.3026963    0.2075391
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0362565   -0.2770339    0.2045209
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1886317   -0.4371810    0.0599176
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High               0.0921750   -0.0850073    0.2693572
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0140365   -0.1872399    0.1591669
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0895873   -0.1098601    0.2890346
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0552239   -0.1450800    0.2555278
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.2521690   -0.0028071    0.5071451
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.1223313   -0.1961681    0.4408306
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0109658   -0.1390311    0.1170995
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0061636   -0.0808435    0.0685163
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0388505   -0.0244988    0.1021998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0139139   -0.0446143    0.0724421
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0759581   -0.3279324    0.1760163
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0633233   -0.3383096    0.2116630
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.0773093   -0.1843517    0.0297331
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0820570   -0.1794605    0.0153466
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0674517   -0.0454957    0.1803990
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0606783   -0.0499526    0.1713093
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0137317   -0.0564032    0.0289399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               0.0225816   -0.0191167    0.0642799
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0238801   -0.1511333    0.1033730
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0130373   -0.1143336    0.1404082
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2065370   -0.5595720    0.1464980
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0033656   -0.3256633    0.3189322
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4456181   -0.8705575   -0.0206786
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0961842   -0.4728386    0.2804703
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0058648   -0.3441925    0.3324629
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0363430   -0.2939552    0.3666412
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3545107   -0.6737463   -0.0352751
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.4844441   -0.8334541   -0.1354342
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.1190000   -0.4265438    0.1885437
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.0938501   -0.3918170    0.2041168
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2843581   -0.6331722    0.0644559
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0292806   -0.4460261    0.3874648
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0378226   -0.6102189    0.5345738
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1508586   -0.6848589    0.3831417
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0535067   -0.4017783    0.2947649
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0115426   -0.4041679    0.3810826
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.0785457   -0.4080714    0.2509799
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.2220677   -0.5715051    0.1273697
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.2309712   -0.6342276    0.1722851
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.0603613   -0.4686114    0.5893340
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1910071   -0.3388861   -0.0431281
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0412095   -0.1503765    0.2327954
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3701660   -0.7204973   -0.0198347
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.3237088   -0.8373538    0.1899362
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2260268   -0.4547210    0.0026674
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0966715   -0.3346467    0.1413036
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1975245   -0.4139759    0.0189269
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0157548   -0.1934422    0.2249518
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1971446   -0.3821550   -0.0121343
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0465471   -0.1461527    0.2392470
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0740267   -0.1888816    0.3369351
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0044596   -0.1278352    0.1189161
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High               0.1673840   -0.1338154    0.4685835
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High               0.0178994   -0.2581850    0.2939837
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4807322   -0.7859344   -0.1755300
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.4595530   -0.8346971   -0.0844089
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High               0.0038563   -0.0748350    0.0825476
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0208611   -0.0437101    0.0854322
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1959475   -0.2671640   -0.1247309
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1148840   -0.1797311   -0.0500368
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0325872   -0.1959072    0.2610816
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0093710   -0.2327562    0.2514981
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.3556915   -0.4749125   -0.2364705
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.1661446   -0.2749463   -0.0573430
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0385857   -0.1448049    0.0676335
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0386537   -0.0606726    0.1379801
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.2031979   -0.3742120   -0.0321838
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2003333   -0.3778721   -0.0227945
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0953515   -0.1432048   -0.0474981
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0347383   -0.0836405    0.0141640
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2091308   -0.2918055   -0.1264561
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0800605   -0.1661286    0.0060076
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3805754   -0.7091484   -0.0520023
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1046679   -0.4551001    0.2457644
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4565310   -1.0483307    0.1352688
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2356905   -0.6964038    0.2250229
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1698167   -0.4703207    0.1306873
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               0.0519385   -0.2563824    0.3602595
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2946210   -0.6238271    0.0345851
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3295923   -0.6776931    0.0185086
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.0018944   -0.3140488    0.3102600
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1619067   -0.4610830    0.1372696
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1474742   -0.4431524    0.1482040
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0042056   -0.3396760    0.3480873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3378133   -0.1897221    0.8653487
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3738744   -0.6142212   -0.1335276
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2250077   -0.4724944    0.0224791
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.0713404   -0.3036005    0.1609197
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2031786   -0.4255798    0.0192226
24 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.1246270   -0.7915530    0.5422989
24 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.1163725   -0.9611885    0.7284434
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2737618   -0.5145125   -0.0330111
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1017534   -0.3634369    0.1599302
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0979097   -0.2871228    0.0913034
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0290811   -0.1747188    0.2328811
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4087881   -0.6400796   -0.1774966
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1819741   -0.4157797    0.0518315
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1724270   -0.4784604    0.1336065
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3185988   -0.7085102    0.0713127
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.1087602   -0.2625097    0.0449894
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1037409   -0.2361555    0.0286738
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1059188   -0.3499230    0.1380854
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0624674   -0.1616793    0.2866140
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0191135   -0.1616138    0.1233868
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0010627   -0.1569617    0.1590871
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.6717430   -0.7979310   -0.5455549
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.2770442   -0.3874758   -0.1666126
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1432428   -0.2363570   -0.0501286
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0650016   -0.1567773    0.0267742
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.4206723   -0.6120670   -0.2292776
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.3085465   -0.5110669   -0.1060260
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               0.0167243   -0.0468060    0.0802546
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0251021   -0.0914000    0.0411958
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0681893   -0.1442342    0.0078556
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0167681   -0.0962529    0.0627167


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0652213   -0.2733733    0.1429306
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.3275073   -0.8327607    0.1777462
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1241447   -0.3620952    0.6103847
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.9388333    0.2510235    1.6266432
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.1110153   -0.0563360    0.2783667
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0093965   -0.3043835    0.2855904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3230633   -0.7574306    0.1113039
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.2149556   -0.4882764    0.0583651
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.1336047   -0.3621096    0.0949002
Birth       ki1000109-EE               PAKISTAN                       High                 NA                -0.9413051   -1.5220076   -0.3606026
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0392812   -0.2164986    0.1379361
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0864057   -0.2419389    0.0691275
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0105290   -0.0920087    0.1130668
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0601985   -0.0535217    0.1739187
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2148622   -0.0107804    0.4405049
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0001835   -0.0607594    0.0603924
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0149749   -0.0088992    0.0388489
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0520025   -0.2456621    0.1416571
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0851288   -0.1708691    0.0006116
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0438743   -0.0149503    0.1026988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0068445   -0.0196152    0.0333043
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0006097   -0.0739054    0.0751248
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0679853   -0.2534440    0.1174734
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1699407   -0.3964733    0.0565919
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0012021   -0.2025896    0.2049937
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3264942   -0.5490264   -0.1039619
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0761247   -0.2668699    0.1146205
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1498634   -0.3847925    0.0850657
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1096470   -0.6117498    0.3924559
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0197942   -0.1954140    0.1558256
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1191650   -0.3246587    0.0863287
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.2049880   -0.5917268    0.1817508
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0670863   -0.1835607    0.0493880
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.3393144   -0.6570473   -0.0215814
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1131086   -0.2639999    0.0377827
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0449961   -0.1645568    0.0745646
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0572632   -0.1642782    0.0497518
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0023700   -0.0944263    0.0896863
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0570798   -0.0806619    0.1948215
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.4503080   -0.7266595   -0.1739566
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0137764   -0.0407488    0.0683016
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0583897   -0.0839483   -0.0328312
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0073561   -0.1913475    0.1766354
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2156600   -0.3119094   -0.1194107
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0177233   -0.0361227    0.0715693
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1282524   -0.2240369   -0.0324678
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0424632   -0.0708166   -0.0141098
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0957131   -0.1413594   -0.0500668
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1469456   -0.3338341    0.0399429
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1990254   -0.4761319    0.0780812
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0694087   -0.2633005    0.1244831
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2528836   -0.4996801   -0.0060872
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0651756   -0.2563288    0.1259775
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0686948   -0.2695630    0.1321733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2434571   -0.2583165    0.7452308
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1749572   -0.2909031   -0.0590113
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0947521   -0.2356034    0.0460991
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.1192771   -0.7609190    0.5223648
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1267417   -0.2830966    0.0296131
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0049762   -0.1129699    0.1030176
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1830435   -0.3110342   -0.0550528
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1953512   -0.4693641    0.0786617
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0964499   -0.2053611    0.0124613
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0016656   -0.1134034    0.1100723
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0170215   -0.1280061    0.0939632
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3656210   -0.4641080   -0.2671339
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0512270   -0.1021676   -0.0002864
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2173392   -0.3219378   -0.1127406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0034316   -0.0375073    0.0443706
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0267911   -0.0706770    0.0170948

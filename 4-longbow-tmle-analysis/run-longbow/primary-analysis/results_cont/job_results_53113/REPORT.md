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
![](/tmp/c41e015c-73a0-4b32-9bc9-ea96cc6fc0b7/2806faf3-0040-4840-a7f4-ad344fdf6829/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c41e015c-73a0-4b32-9bc9-ea96cc6fc0b7/2806faf3-0040-4840-a7f4-ad344fdf6829/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c41e015c-73a0-4b32-9bc9-ea96cc6fc0b7/2806faf3-0040-4840-a7f4-ad344fdf6829/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.8180804   -1.0381899   -0.5979708
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9437735   -1.2369216   -0.6506254
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.9853661   -1.3937223   -0.5770098
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.5719133   -0.0691895    1.2130161
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.7385933    0.1855745    1.2916122
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0390804   -0.4070222    0.4851830
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0262500   -1.5172747   -0.5352253
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.7572222   -1.2526878   -0.2617566
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.0366667   -1.5769678   -0.4963655
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.7180000   -2.4635498   -0.9724502
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.4158333   -0.7761719   -0.0554948
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.7314286   -1.5015148    0.0386577
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.1507020   -0.3342805    0.0328765
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                 0.1306698   -0.0856885    0.3470281
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.1882345   -0.3992233    0.0227542
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1700634   -0.4974027    0.1572760
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.1278180   -0.4519323    0.1962963
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.3819325   -0.8642238    0.1003588
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 1.1228571    0.7098698    1.5358445
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.9103125    0.5359266    1.2846984
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.6998276    0.4307367    0.9689185
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.2897104   -0.6854409    0.1060201
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.9281462   -1.6902276   -0.1660648
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.9966798   -1.6228514   -0.3705081
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.8850959   -1.1815047   -0.5886870
Birth       ki1000108-IRC              INDIA                          Low                  NA                -1.0125305   -1.2973579   -0.7277030
Birth       ki1000108-IRC              INDIA                          Medium               NA                -1.1177867   -1.3906053   -0.8449680
Birth       ki1000109-EE               PAKISTAN                       High                 NA                 0.6080000    0.0422458    1.1737542
Birth       ki1000109-EE               PAKISTAN                       Low                  NA                -0.3569551   -0.5627099   -0.1512003
Birth       ki1000109-EE               PAKISTAN                       Medium               NA                -0.3968750   -0.8274988    0.0337488
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.6215681   -0.8015296   -0.4416066
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.6497096   -0.8584357   -0.4409836
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.6824330   -0.9192327   -0.4456333
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.2914226   -1.4825090   -1.1003362
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.2901331   -1.4422056   -1.1380605
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4475263   -1.6143002   -1.2807524
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.2976912   -1.4149349   -1.1804474
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.2435698   -1.3787897   -1.1083500
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.3413422   -1.4763652   -1.2063192
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.2896374   -1.4243898   -1.1548850
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2552812   -1.4008327   -1.1097297
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2238762   -1.3732153   -1.0745371
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.2569602   -1.4919615   -1.0219589
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.0846900   -1.1849439   -0.9844360
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2182486   -1.4516071   -0.9848901
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -1.1409705   -1.3363274   -0.9456135
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -1.1517040   -1.4064499   -0.8969581
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                -1.1545834   -1.3597414   -0.9494254
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.5303666   -0.5659193   -0.4948138
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4911608   -0.5468563   -0.4354652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5113208   -0.5614258   -0.4612157
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.0148963   -1.2465626   -0.7832300
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.0639832   -1.2075033   -0.9204632
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.0638559   -1.2435226   -0.8841893
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.9302655   -1.0181615   -0.8423696
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.9931906   -1.0551889   -0.9311922
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.9781342   -1.0230635   -0.9332050
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.7845995   -0.8593347   -0.7098642
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7171218   -0.8039803   -0.6302632
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.7263832   -0.8106798   -0.6420866
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.7544345   -0.7833354   -0.7255335
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.7670354   -0.7957454   -0.7383253
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.7365881   -0.7668459   -0.7063304
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.6872592   -0.7836237   -0.5908946
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.7134465   -0.8022684   -0.6246246
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.6720206   -0.7572494   -0.5867917
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0198323   -0.2112593    0.2509239
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2179260   -0.4827784    0.0469264
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.0294283   -0.2552843    0.1964276
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 1.0737966    0.7958403    1.3517530
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.5788995    0.2545910    0.9032080
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 1.0361470    0.7762573    1.2960367
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.7142324   -0.9430438   -0.4854210
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.6965077   -0.9393813   -0.4536341
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.6636990   -0.8932300   -0.4341680
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4208327    0.1928994    0.6487661
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                 0.1391073   -0.0545242    0.3327389
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.0265562   -0.2782035    0.2250911
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 1.1448835    0.9258845    1.3638825
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                 1.0178175    0.7988875    1.2367474
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                 1.0487181    0.8498628    1.2475734
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.6736617    0.4029070    0.9444164
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3838227    0.1592907    0.6083547
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.6349010    0.3100635    0.9597385
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.6633333    0.1592828    1.1673839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6255108    0.3542717    0.8967498
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.5124747    0.3361530    0.6887964
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.4913263   -0.7205358   -0.2621167
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.5257130   -0.7923698   -0.2590563
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.4844310   -0.7943441   -0.1745178
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.4454425   -0.6889094   -0.2019755
6 months    ki1000108-IRC              INDIA                          Low                  NA                -0.5905952   -0.8114658   -0.3697246
6 months    ki1000108-IRC              INDIA                          Medium               NA                -0.7412410   -0.9849921   -0.4974900
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.9176898   -1.2959235   -0.5394562
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -0.8048837   -0.9300860   -0.6796814
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -0.7633907   -1.1221483   -0.4046330
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.5962959   -0.6667377   -0.5258542
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.7915237   -0.9504125   -0.6326348
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -0.5543840   -0.7709723   -0.3377958
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.7127140   -1.0244230   -0.4010050
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.0518728   -1.1817490   -0.9219966
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -0.9992997   -1.4069413   -0.5916582
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3329730   -0.5211328   -0.1448132
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.5567085   -0.6996452   -0.4137719
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.4080815   -0.5601965   -0.2559665
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.1493740   -0.2963793   -0.0023688
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3468171   -0.5067371   -0.1868970
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.1369825   -0.2862749    0.0123100
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0962664   -0.0296442    0.2221769
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1053358   -0.2465800    0.0359084
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                 0.1295887   -0.0211584    0.2803358
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0724919   -0.0347448    0.1797287
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.1705748   -0.0800574    0.4212070
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0779291    0.0151855    0.1406727
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.1084709   -0.2798284    0.0628866
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                 0.0827266   -0.1613904    0.3268437
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -0.1035427   -0.3110223    0.1039369
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2098862   -0.5065324    0.0867601
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.6358857   -0.7345797   -0.5371917
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -0.5944344   -0.8268783   -0.3619905
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.5751192    0.5078130    0.6424253
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.5693523    0.4885568    0.6501477
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.5827656    0.5193933    0.6461378
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3742672    0.3392410    0.4092933
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1784233    0.1148201    0.2420266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                 0.2528604    0.1985693    0.3071515
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2548311    0.0519670    0.4576952
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.2395198    0.1367813    0.3422583
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1877976    0.0550976    0.3204977
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5047468   -0.6052292   -0.4042645
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -0.8333501   -0.9022708   -0.7644294
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.6522644   -0.6975162   -0.6070125
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3078698   -0.3735437   -0.2421959
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.3464179   -0.4290413   -0.2637946
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2691922   -0.3446814   -0.1937030
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5614484    0.4392408    0.6836561
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                 0.3716938    0.2497775    0.4936101
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                 0.3738615    0.2428670    0.5048559
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.5569935   -0.5908306   -0.5231565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.6414762   -0.6774730   -0.6054794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -0.5744670   -0.6102413   -0.5386926
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2937876   -0.3498970   -0.2376782
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.5073149   -0.5723871   -0.4422426
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -0.3746022   -0.4413187   -0.3078858
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.6168175   -0.8523839   -0.3812511
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.9961204   -1.2227658   -0.7694751
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -0.7337499   -0.9816471   -0.4858528
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.6420230    0.2803863    1.0036598
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.1932912   -0.2883924    0.6749748
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.4563178    0.1422941    0.7703415
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.9789720   -1.1977608   -0.7601831
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.1041093   -1.3148377   -0.8933808
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -0.8739684   -1.0914859   -0.6564510
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1181343   -0.3906484    0.1543798
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.3889714   -0.5592057   -0.2187370
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.4646390   -0.6690371   -0.2602410
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1670803   -0.0339553    0.3681159
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                 0.2090558   -0.0036023    0.4217140
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                 0.0010312   -0.2088399    0.2109023
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.4767240    0.2301550    0.7232931
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.3362083    0.1657135    0.5067031
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                 0.5032936    0.2642313    0.7423559
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1528571   -0.6553600    0.3496457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0770370   -0.3623459    0.2082718
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1849561    0.0243806    0.3455316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.3884496   -0.5386625   -0.2382367
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.7628741   -0.9523038   -0.5734443
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -0.6017036   -0.7972270   -0.4061802
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.6491612   -0.8196508   -0.4786717
24 months   ki1000108-IRC              INDIA                          Low                  NA                -0.7210706   -0.8768154   -0.5653258
24 months   ki1000108-IRC              INDIA                          Medium               NA                -0.8578676   -1.0015513   -0.7141838
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.8850000   -1.5331947   -0.2368053
24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -1.0096270   -1.1665790   -0.8526751
24 months   ki1000109-EE               PAKISTAN                       Medium               NA                -1.0013725   -1.5431822   -0.4595629
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.7798803   -0.9658926   -0.5938680
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.0587574   -1.2055047   -0.9120100
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.8837695   -1.0701071   -0.6974320
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8936608   -1.0218943   -0.7654273
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9988675   -1.1427425   -0.8549925
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.8746068   -1.0306929   -0.7185208
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.4478596   -0.6184245   -0.2772947
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.7997350   -0.9573099   -0.6421600
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.6000927   -0.7605511   -0.4396342
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9248681   -1.2167121   -0.6330241
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1142763   -1.2182478   -1.0103048
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2775070   -1.5442890   -1.0107250
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.7823181    0.6283932    0.9362429
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.6754163    0.5115734    0.8392592
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                 0.6816211    0.5834955    0.7797467
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.1929441   -1.3438226   -1.0420657
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.2567549   -1.4490703   -1.0644394
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1211296   -1.2930134   -0.9492458
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2719258   -0.3950460   -0.1488057
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.2719772   -0.3464512   -0.1975033
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -0.2580414   -0.3637544   -0.1523284
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3033530   -0.4042418   -0.2024642
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.9793616   -1.0526061   -0.9061171
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -0.5537126   -0.5991003   -0.5083248
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.5372267   -0.5989088   -0.4755445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.7075851   -0.7786531   -0.6365172
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.6277006   -0.6950608   -0.5603405
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1647448    0.0293469    0.3001428
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.2432441   -0.3775008   -0.1089875
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -0.1304807   -0.2807070    0.0197455
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.3066891   -1.3545038   -1.2588744
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2742511   -1.3181735   -1.2303286
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3249960   -1.3696655   -1.2803264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.1934819   -1.2456359   -1.1413279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.2754821   -1.3304023   -1.2205620
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.2125090   -1.2682960   -1.1567221


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9101143   -1.0708516   -0.7493770
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7503115   -0.7681644   -0.7324587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6895483   -0.7419864   -0.6371102
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0732738   -0.2158247    0.0692771
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9741026    0.8090337    1.1391714
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6858814   -0.8229164   -0.5488465
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1237029   -0.0091418    0.2565476
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0606863    0.9388664    1.1825061
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5427231    0.3906363    0.6948099
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5927772   -0.6123363   -0.5732182
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3903558   -0.4277318   -0.3529799
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.7634795   -0.9002125   -0.6267466
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4586012    0.2509873    0.6662151
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9446231   -1.0689273   -0.8203189
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3599765   -0.4780748   -0.2418783
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1205000   -0.0000440    0.2410440
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2990923   -1.3224665   -1.2757181
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2243057   -1.2562915   -1.1923198


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1256931   -0.4923661    0.2409799
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1672857   -0.6311335    0.2965622
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High               0.1666801   -0.6735654    1.0069256
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.5328329   -1.3073756    0.2417098
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.2690278   -0.4285333    0.9665889
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.0104167   -0.7405061    0.7196728
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High               1.3021667    0.4741036    2.1302297
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High               0.9865714   -0.0852855    2.0584284
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.2813718   -0.0021183    0.5648619
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              -0.0375325   -0.3183585    0.2432934
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High               0.0422454   -0.4151803    0.4996710
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2118691   -0.7914635    0.3677253
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.2125446   -0.7699703    0.3448810
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.4230296   -0.9159478    0.0698887
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.6384357   -1.4890622    0.2121907
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.7069693   -1.4667451    0.0528064
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High              -0.1274346   -0.5059124    0.2510432
Birth       ki1000108-IRC              INDIA                          Medium               High              -0.2326908   -0.6036586    0.1382769
Birth       ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low                  High              -0.9649551   -1.5669625   -0.3629478
Birth       ki1000109-EE               PAKISTAN                       Medium               High              -1.0048750   -1.7158705   -0.2938795
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.0281415   -0.2381528    0.1818698
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0608648   -0.3215308    0.1998011
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High               0.0012895   -0.2432178    0.2457968
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1561037   -0.4098469    0.0976395
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High               0.0541213   -0.1182826    0.2265252
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0436510   -0.2152411    0.1279391
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               0.0343562   -0.1593372    0.2280496
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0657612   -0.1310586    0.2625810
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High               0.1722703   -0.0769584    0.4214989
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High               0.0387116   -0.2877608    0.3651840
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0107335   -0.1216526    0.1001855
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0136129   -0.0845956    0.0573697
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               0.0392058   -0.0243263    0.1027379
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0190458   -0.0396239    0.0777155
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0490869   -0.3129876    0.2148138
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0489596   -0.3337264    0.2358072
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.0629251   -0.1671954    0.0413453
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0478687   -0.1429357    0.0471983
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High               0.0674777   -0.0449455    0.1799009
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0582163   -0.0521107    0.1685432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0126009   -0.0484779    0.0232760
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               0.0178463   -0.0190849    0.0547775
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0261874   -0.1533454    0.1009707
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.0152386   -0.1115463    0.1420235
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2377583   -0.5884290    0.1129125
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0492606   -0.3715473    0.2730261
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4948971   -0.9223424   -0.0674519
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0376496   -0.4172276    0.3419283
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0177247   -0.3152639    0.3507133
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0505334   -0.2734098    0.3744765
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2817254   -0.5796812    0.0162303
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.4473890   -0.7857527   -0.1090252
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              -0.1270661   -0.4368108    0.1826787
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              -0.0961655   -0.3913226    0.1989917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.2898390   -0.6414069    0.0617288
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0387607   -0.4642627    0.3867412
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0378226   -0.6102189    0.5345738
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1508586   -0.6848589    0.3831417
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0343868   -0.3867640    0.3179905
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               0.0068953   -0.3785414    0.3923320
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1451527   -0.4755400    0.1852345
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.2957986   -0.6404253    0.0488281
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High               0.1128062   -0.2859723    0.5115846
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.1542992   -0.3656282    0.6742265
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1952277   -0.3370602   -0.0533953
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               0.0419119   -0.1506128    0.2344365
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3391588   -0.6773608   -0.0009568
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.2865857   -0.8000294    0.2268579
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2237356   -0.4595059    0.0120347
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0751086   -0.3161504    0.1659333
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1974431   -0.4128257    0.0179396
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0123916   -0.1960588    0.2208419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2016022   -0.3907810   -0.0124233
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               0.0333223   -0.1634602    0.2301049
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0980828   -0.1744528    0.3706184
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0054372   -0.1186634    0.1295377
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High               0.1911976   -0.1080588    0.4904540
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High               0.0049282   -0.2649285    0.2747849
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4259996   -0.7388812   -0.1131180
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3845483   -0.7615309   -0.0075657
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.0057669   -0.0857133    0.0741796
6 months    ki1119695-PROBIT           BELARUS                        Medium               High               0.0076464   -0.0564300    0.0717228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.1958438   -0.2681212   -0.1235665
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1214068   -0.1857078   -0.0571057
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0153113   -0.2425261    0.2119034
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              -0.0670335   -0.3093990    0.1753321
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.3286032   -0.4505792   -0.2066272
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.1475175   -0.2578424   -0.0371926
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0385481   -0.1439408    0.0668445
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.0386776   -0.0609799    0.1383350
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1897546   -0.3620917   -0.0174176
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1875870   -0.3663543   -0.0088197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0844827   -0.1326899   -0.0362756
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0174735   -0.0654458    0.0304989
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2135273   -0.2959209   -0.1311337
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0808146   -0.1659374    0.0043081
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3793029   -0.7062617   -0.0523442
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1169324   -0.4595140    0.2256491
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.4487318   -1.0500207    0.1525571
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.1857053   -0.6650679    0.2936574
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.1251373   -0.4312884    0.1810137
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               0.1050035   -0.2040961    0.4141031
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2708371   -0.5890133    0.0473392
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3465048   -0.6831104   -0.0098992
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High               0.0419755   -0.2461394    0.3300905
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.1660491   -0.4536419    0.1215437
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1405157   -0.4402624    0.1592309
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High               0.0265696   -0.3172389    0.3703781
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0758201   -0.5020296    0.6536698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High               0.3378133   -0.1897221    0.8653487
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3744245   -0.6165303   -0.1323186
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2132540   -0.4601966    0.0336885
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.0719093   -0.3020395    0.1582208
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2087064   -0.4307559    0.0133432
24 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.1246270   -0.7915530    0.5422989
24 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.1163725   -0.9611885    0.7284434
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.2788771   -0.5165912   -0.0411629
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.1038892   -0.3678493    0.1600709
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1052067   -0.2967369    0.0863235
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               0.0190539   -0.1815085    0.2196163
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.3518754   -0.5827133   -0.1210374
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1522331   -0.3856747    0.0812086
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1894082   -0.4995508    0.1207344
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3526389   -0.7479065    0.0426287
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.1069018   -0.2563603    0.0425568
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1006970   -0.2313041    0.0299102
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0638107   -0.3085091    0.1808877
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               0.0718145   -0.1571373    0.3007664
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0000514   -0.1440892    0.1439864
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0138844   -0.1483599    0.1761287
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -0.6760086   -0.8013115   -0.5507057
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.2503595   -0.3612509   -0.1394681
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.1703585   -0.2637154   -0.0770015
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0904739   -0.1808551   -0.0000928
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.4079890   -0.5975160   -0.2184619
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2952256   -0.4968146   -0.0936366
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               0.0324380   -0.0307323    0.0956084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0183069   -0.0866646    0.0500509
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0820002   -0.1570633   -0.0069371
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0190271   -0.0969175    0.0588633


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0920339   -0.2887315    0.1046637
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1690101   -0.6952904    0.3572703
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1241447   -0.3620952    0.6103847
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.9388333    0.2510235    1.6266432
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0986845   -0.0716279    0.2689968
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0225200   -0.3203853    0.2753454
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.3230633   -0.7574306    0.1113039
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1751151   -0.4447886    0.0945583
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.1254872   -0.3586627    0.1076882
Birth       ki1000109-EE               PAKISTAN                       High                 NA                -0.9413051   -1.5220076   -0.3606026
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0484772   -0.2308649    0.1339105
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0584991   -0.2178945    0.1008963
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0007675   -0.0997243    0.0981894
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0454861   -0.0651319    0.1561040
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1386973   -0.0818057    0.3592003
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0038929   -0.0599112    0.0521255
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0150739   -0.0090833    0.0392310
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0441545   -0.2489411    0.1606321
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0528622   -0.1361268    0.0304025
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0418744   -0.0166953    0.1004441
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0041229   -0.0173231    0.0255689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0022891   -0.0772441    0.0726659
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0931061   -0.2785638    0.0923516
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0996941   -0.3299779    0.1305898
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0283510   -0.1769740    0.2336760
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2971299   -0.5022790   -0.0919808
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0841972   -0.2717426    0.1033481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1309386   -0.3711112    0.1092339
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1096470   -0.6117498    0.3924559
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0113504   -0.1869780    0.1642772
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1534873   -0.3597728    0.0527982
6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.1390922   -0.2430104    0.5211948
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0694125   -0.1832019    0.0443770
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2994439   -0.6054339    0.0065461
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1144308   -0.2718236    0.0429620
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0497166   -0.1704323    0.0709991
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0665041   -0.1740489    0.0410406
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0082304   -0.0842953    0.1007561
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0515877   -0.0833162    0.1864915
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3988958   -0.6821659   -0.1156256
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0041247   -0.0508718    0.0591212
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0641565   -0.0893660   -0.0389469
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0575593   -0.2396086    0.1244900
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.1958838   -0.2937187   -0.0980489
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0140265   -0.0406213    0.0686742
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1214730   -0.2185088   -0.0244373
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0357837   -0.0641260   -0.0074415
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0965682   -0.1422686   -0.0508678
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1466620   -0.3323639    0.0390399
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1834219   -0.4711387    0.1042950
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0343489   -0.1596795    0.2283772
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2418423   -0.4769814   -0.0067031
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0465803   -0.2223354    0.1291748
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0618711   -0.2665334    0.1427912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2434571   -0.2583165    0.7452308
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1687010   -0.2867088   -0.0506932
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0966538   -0.2378205    0.0445130
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.1192771   -0.7609190    0.5223648
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.1316987   -0.2880528    0.0246553
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0007938   -0.1050120    0.1065995
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1624906   -0.2911210   -0.0338601
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2123495   -0.4898947    0.0651957
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0948886   -0.2018771    0.0120999
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0104037   -0.1031274    0.1239348
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0045816   -0.1165235    0.1073602
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.3353076   -0.4340661   -0.2365490
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0727325   -0.1226416   -0.0228234
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2088905   -0.3115507   -0.1062303
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0075968   -0.0350537    0.0502473
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0308238   -0.0738053    0.0121578

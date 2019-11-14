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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     High            67     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low             65     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium          55     187
Birth       ki0047075b-MAL-ED          BRAZIL                         High            18      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low             17      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium          30      65
Birth       ki0047075b-MAL-ED          INDIA                          High             8      40
Birth       ki0047075b-MAL-ED          INDIA                          Low             18      40
Birth       ki0047075b-MAL-ED          INDIA                          Medium          14      40
Birth       ki0047075b-MAL-ED          NEPAL                          High             5      25
Birth       ki0047075b-MAL-ED          NEPAL                          Low             12      25
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           8      25
Birth       ki0047075b-MAL-ED          PERU                           High            68     233
Birth       ki0047075b-MAL-ED          PERU                           Low             84     233
Birth       ki0047075b-MAL-ED          PERU                           Medium          81     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High            35     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low             62     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium          26     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             7     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low             34     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium          64     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High            51      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low             16      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium          25      92
Birth       ki1000108-IRC              INDIA                          High           113     388
Birth       ki1000108-IRC              INDIA                          Low            142     388
Birth       ki1000108-IRC              INDIA                          Medium         133     388
Birth       ki1000109-EE               PAKISTAN                       High             7     239
Birth       ki1000109-EE               PAKISTAN                       Low            215     239
Birth       ki1000109-EE               PAKISTAN                       Medium          17     239
Birth       ki1000304b-SAS-CompFeed    INDIA                          High           248    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low            587    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium         417    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     High           170     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low            224     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium         214     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     High           171     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low            165     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium         203     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High           247     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low            232     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium         253     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High            85     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Low            485     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium         123     693
Birth       ki1119695-PROBIT           BELARUS                        High          2249   13890
Birth       ki1119695-PROBIT           BELARUS                        Low           4964   13890
Birth       ki1119695-PROBIT           BELARUS                        Medium        6677   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High          7515   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low           2912   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium        3428   13855
Birth       ki1135781-COHORTS          GUATEMALA                      High           178     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low            391     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium         273     842
Birth       ki1135781-COHORTS          INDIA                          High           678    5216
Birth       ki1135781-COHORTS          INDIA                          Low           1756    5216
Birth       ki1135781-COHORTS          INDIA                          Medium        2782    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    High          1169    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low            900    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium         981    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          8803   26634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           9698   26634
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        8133   26634
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High           933    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low            990    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium         894    2817
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High           157     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium         107     369
6 months    ki1000108-IRC              INDIA                          High           123     407
6 months    ki1000108-IRC              INDIA                          Low            146     407
6 months    ki1000108-IRC              INDIA                          Medium         138     407
6 months    ki1000109-EE               PAKISTAN                       High            15     370
6 months    ki1000109-EE               PAKISTAN                       Low            322     370
6 months    ki1000109-EE               PAKISTAN                       Medium          33     370
6 months    ki1000304b-SAS-CompFeed    INDIA                          High           290    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low            597    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium         449    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High            35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low            304     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium          41     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High           155     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low            195     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium         187     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High           209     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low            187     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium         208     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High           240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low            229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium         246     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           512    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low             74    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium        1435    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High           117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low             73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium          87     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High            68     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low            399     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium          94     561
6 months    ki1119695-PROBIT           BELARUS                        High          2657   15761
6 months    ki1119695-PROBIT           BELARUS                        Low           5644   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium        7460   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High          4702    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low           1795    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium        2158    8655
6 months    ki1135781-COHORTS          GUATEMALA                      High           185     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low            449     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium         318     952
6 months    ki1135781-COHORTS          INDIA                          High           736    5413
6 months    ki1135781-COHORTS          INDIA                          Low           1777    5413
6 months    ki1135781-COHORTS          INDIA                          Medium        2900    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    High          1014    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low            826    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium         868    2708
6 months    ki1148112-LCNI-5           MALAWI                         High           298     813
6 months    ki1148112-LCNI-5           MALAWI                         Low            261     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium         254     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5893   16736
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5611   16736
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5232   16736
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High          1718    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low           1581    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium        1519    4818
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High           158     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low            105     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium         108     371
24 months   ki1000108-IRC              INDIA                          High           124     409
24 months   ki1000108-IRC              INDIA                          Low            146     409
24 months   ki1000108-IRC              INDIA                          Medium         139     409
24 months   ki1000109-EE               PAKISTAN                       High             6     165
24 months   ki1000109-EE               PAKISTAN                       Low            142     165
24 months   ki1000109-EE               PAKISTAN                       Medium          17     165
24 months   ki1017093-NIH-Birth        BANGLADESH                     High           130     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low            153     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium         146     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High           201     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low            174     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium         203     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High           191     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low            146     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium         177     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           4       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High            55     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Low            344     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium          86     485
24 months   ki1119695-PROBIT           BELARUS                        High           664    4035
24 months   ki1119695-PROBIT           BELARUS                        Low           1408    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium        1963    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High           862    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low            345    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium         432    1639
24 months   ki1135781-COHORTS          GUATEMALA                      High           209    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Low            506    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Medium         342    1057
24 months   ki1135781-COHORTS          INDIA                          High           608    4198
24 months   ki1135781-COHORTS          INDIA                          Low           1272    4198
24 months   ki1135781-COHORTS          INDIA                          Medium        2318    4198
24 months   ki1135781-COHORTS          PHILIPPINES                    High           914    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low            744    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium         787    2445
24 months   ki1148112-LCNI-5           MALAWI                         High           220     572
24 months   ki1148112-LCNI-5           MALAWI                         Low            177     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium         175     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2902    8554
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           2982    8554
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2670    8554
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High          1696    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low           1536    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium        1509    4741


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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b1bf2476-851b-4885-bab6-5755491393e9/c05c4035-b218-417b-966d-ee4553f98df6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1476309   -1.4399508   -0.8553109
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7133246   -1.2471742   -0.1794750
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3332760   -1.7369590   -0.9295930
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7250960   -2.0469575    0.5967654
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0219253   -1.1775635   -0.8662871
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3965427   -0.7823348   -0.0107506
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1178069   -1.4823843   -0.7532295
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0477431   -1.2782352   -0.8172510
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1521508   -0.4138976    0.1095960
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.3898285   -1.9369902   -0.8426668
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4605524   -1.6352297   -1.2858751
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9403349   -1.0971229   -0.7835469
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9560211   -1.0730483   -0.8389938
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8544162   -0.9912874   -0.7175449
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0941858   -1.2996545   -0.8887170
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3850639    1.2029488    1.5671790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4947486   -0.5264404   -0.4630568
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1662100   -0.0202584    0.3526784
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.4753173   -0.5797156   -0.3709190
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2305886   -0.3054338   -0.1557435
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1356190   -1.1867852   -1.0844527
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4700086   -1.5740091   -1.3660080
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0085844   -1.2048301   -0.8123387
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3393642    0.1453838    0.5333446
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1314699   -1.3538965   -0.9090433
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2582768   -0.4351048   -0.0814489
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3047061   -1.4806059   -1.1288063
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.2202421   -1.4496368   -0.9908473
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5705236   -1.9427216   -1.1983255
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3776221   -1.6016557   -1.1535885
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2537564   -1.4745431   -1.0329698
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.1017313   -2.4584044   -1.7450582
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0963448   -1.2084556   -0.9842339
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.9608733   -2.3745242   -1.5472224
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1611351   -1.3095289   -1.0127413
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0695799   -1.1934099   -0.9457500
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1289267   -1.2659204   -0.9919329
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5956840   -0.7568126   -0.4345555
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.7545302   -1.9640691   -1.5449912
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.3875444   -1.6177874   -1.1573014
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1936641    0.0804017    0.3069265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8588835   -0.8999870   -0.8177799
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6151626   -1.7675764   -1.4627487
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6071467   -0.7290598   -0.4852336
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0414825   -1.1212522   -0.9617129
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4655129   -1.5778925   -1.3531332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3169254   -1.3631939   -1.2706569
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2427643   -1.3127620   -1.1727666
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7758233   -2.0634120   -1.4882345
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5294438    0.2733885    0.7854992
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6357775   -1.8618512   -1.4097037
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0126212   -1.2831409   -0.7421015
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5233584   -1.7750418   -1.2716750
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4514420   -1.7011621   -1.2017218
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.1503629   -2.8052174   -1.4955085
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5457501   -2.7123852   -2.3791150
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6298730   -1.8165475   -1.4431986
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.3025077   -2.7455520   -1.8594633
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.8861557   -2.0649596   -1.7073519
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4306466   -1.5570723   -1.3042209
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1923619   -1.3348248   -1.0498991
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6310790   -1.9067284   -1.3554297
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0147060   -0.1820569    0.1526449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4569294   -1.5356878   -1.3781710
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8410647   -2.9686510   -2.7134784
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.4370841   -1.5847597   -1.2894085
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.1507803   -2.2510377   -2.0505229
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8142934   -1.9493763   -1.6792105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9739406   -2.0332545   -1.9146266
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.7148343   -1.7797603   -1.6499083


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0884492   -1.2349987   -0.9418997
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2372500   -1.5471753   -0.9273247
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9120000   -1.2873301   -0.5366699
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1398095   -1.3671021   -0.9125169
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8545188   -2.0422173   -1.6668203
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0877489   -1.1679913   -1.0075066
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5006712   -0.5212382   -0.4801043
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1288717    0.0445170    0.2132265
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6688842   -0.7003528   -0.6374156
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1731351   -1.2012255   -1.1450446
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232552   -1.5724840   -1.4740265
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1938861   -1.3254694   -1.0623027
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0529327   -0.0917526    0.1976180
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1602244   -1.2819820   -1.0384668
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5483560   -0.6619002   -0.4348118
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3321936   -1.4405339   -1.2238534
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.2937438   -1.4246923   -1.1627954
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0782207   -2.1981595   -1.9582820
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508616   -1.4293975   -1.2723256
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8688556   -0.8944357   -0.8432754
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3356304   -1.3587299   -1.3125309
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3449232   -1.3822755   -1.3075709
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9102339   -2.0444373   -1.7760305
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0091369   -0.1605049    0.1787787
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8259045   -1.9544256   -1.6973834
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2733803   -1.3956121   -1.1511485
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7565250   -1.8779116   -1.6351384
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.5654000   -2.7089193   -2.4218807
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6563232   -2.8000905   -2.5125560
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8887629   -1.9746814   -1.8028444
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6059152   -1.6629321   -1.5488983
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9885052   -3.0530889   -2.9239215
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.1741663   -2.2109368   -2.1373958
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8795105   -1.9611410   -1.7978800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0193711   -2.0469989   -1.9917432
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7814786   -1.8170130   -1.7459442


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0591817   -0.1706801    0.2890434
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0373246   -0.3805194    0.4551686
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0960260   -0.3015733    0.4936253
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1869040   -1.4238660    1.0500580
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1391356    0.0253385    0.2529327
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2351646   -0.5678489    0.0975196
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0220026   -0.3474067    0.3034015
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0865475   -0.1438895    0.3169844
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.1558904   -0.3541595    0.0423787
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4646903   -1.0087557    0.0793750
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0291307   -0.1158700    0.1741313
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0093152   -0.1101884    0.1288187
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0709190   -0.0226896    0.1645277
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0550784   -0.1696681    0.0595113
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0064368   -0.1853676    0.1982413
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0581193   -0.1460611    0.0298225
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0059226   -0.0301400    0.0182948
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0373383   -0.2082198    0.1335432
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1935669   -0.2950170   -0.0921168
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0184605   -0.0832260    0.0463049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0375161   -0.0799164    0.0048841
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0532467   -0.1451062    0.0386128
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1853016   -0.3616667   -0.0089366
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2864315   -0.4673631   -0.1054999
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0287545   -0.2087491    0.1512402
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2900791   -0.4587767   -0.1213815
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0274875   -0.1725298    0.1175548
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1563248   -0.0468181    0.3594676
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2767797   -0.0922636    0.6458231
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0458287   -0.2261931    0.1345358
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0193502   -0.1646297    0.2033301
6 months    ki1000109-EE               PAKISTAN                       optimal              observed           0.0235106   -0.3270554    0.3740765
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3055115   -0.3944915   -0.2165316
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0621891   -0.3370480    0.4614262
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2462469   -0.3765098   -0.1159841
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0221116   -0.1312170    0.0869938
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0697516   -0.1876191    0.0481158
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0516732   -0.1007327    0.2040792
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1920934    0.0288425    0.3553442
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0366828   -0.1830764    0.2564421
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0866655   -0.1698476   -0.0034834
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0099721   -0.0427172    0.0227730
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1951736   -0.3316806   -0.0586665
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4111611   -0.5314247   -0.2908974
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0990898   -0.1704885   -0.0276912
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1776360   -0.2692250   -0.0860470
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0187050   -0.0585931    0.0211831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1021589   -0.1633639   -0.0409539
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1344106   -0.3741389    0.1053176
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5203069   -0.7368267   -0.3037872
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1901271   -0.3891319    0.0088778
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2607591   -0.4952901   -0.0262280
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2331666   -0.4375331   -0.0288000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1977387   -0.4121685    0.0166910
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4150371   -1.0638217    0.2337475
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0131178   -0.1445442    0.1183085
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1689045   -0.3193632   -0.0184457
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.3538156   -0.7972690    0.0896379
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3329021   -0.4832775   -0.1825267
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1717756   -0.2842501   -0.0593011
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2489026   -0.3691323   -0.1286730
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2576839   -0.5220434    0.0066757
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1166988   -0.3512441    0.1178465
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1489858   -0.2050051   -0.0929665
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1474405   -0.2615235   -0.0333575
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.7370822   -0.8847666   -0.5893978
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2633342   -0.3546054   -0.1720630
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0652171   -0.1772881    0.0468539
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0454305   -0.0982689    0.0074079
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0666443   -0.1230667   -0.0102219

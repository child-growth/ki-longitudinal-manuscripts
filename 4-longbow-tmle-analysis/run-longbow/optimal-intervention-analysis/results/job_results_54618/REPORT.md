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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High          6683   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low           8795   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium        6949   22427
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High          5922   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low           5622   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium        5250   16794
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High          2927    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low           3004    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium        2690    8621
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/c96221c3-ff7b-46c0-a3f0-62613ea2e13c/5a3abc91-a1e8-4ec6-9e89-3a45259d7c4a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0285079   -1.2842922   -0.7727237
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5354470   -1.1305005    0.0596064
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.3249779   -1.7553528   -0.8946031
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.9298229   -2.1595061    0.2998604
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -1.0406611   -1.2140233   -0.8672988
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4316462   -0.7323944   -0.1308979
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1455277   -1.5169389   -0.7741166
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2304958   -1.6307685   -0.8302231
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4026407   -0.6753953   -0.1298861
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.4154608   -1.9383447   -0.8925769
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4048173   -1.5461709   -1.2634637
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9013636   -1.0472538   -0.7554735
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9743991   -1.0881020   -0.8606963
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8368981   -0.9630798   -0.7107165
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0671443   -1.2689179   -0.8653706
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3708684    1.1944157    1.5473212
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4863228   -0.5147783   -0.4578673
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1458952   -0.0248873    0.3166778
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5211669   -0.6112233   -0.4311105
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2013058   -0.2676282   -0.1349835
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5785969   -1.6075375   -1.5496562
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4756497   -1.5750173   -1.3762822
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0017020   -1.2137027   -0.7897014
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2527932   -0.4922133   -0.0133732
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2451775   -1.4886332   -1.0017217
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2753071   -0.4915680   -0.0590462
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3574866   -1.5469060   -1.1680672
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.1020078   -1.3591324   -0.8448832
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6055494   -2.0037036   -1.2073952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3650751   -1.5862299   -1.1439203
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1510809   -1.3920567   -0.9101050
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -1.5934389   -1.9668478   -1.2200299
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0518381   -1.1950714   -0.9086048
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.6258785   -1.9977998   -1.2539573
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1306572   -1.2807309   -0.9805835
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0084325   -1.1257263   -0.8911387
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0518110   -1.1626839   -0.9409380
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5389625   -0.6680420   -0.4098830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.5597508   -1.7790000   -1.3405016
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2681168   -1.4922012   -1.0440325
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.2141204    0.1250307    0.3032102
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8355926   -0.8749902   -0.7961949
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.7099184   -1.8377776   -1.5820591
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5527654   -0.6576173   -0.4479135
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9711673   -1.0376656   -0.9046691
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4708034   -1.5851261   -1.3564806
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2401061   -1.2804082   -1.1998041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2086190   -1.2710511   -1.1461868
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7365879   -1.9918672   -1.4813087
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0939032   -0.1447751    0.3325815
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.6373022   -1.8597914   -1.4148130
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0478569   -1.3217221   -0.7739918
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5585990   -1.8176364   -1.2995615
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4444398   -1.6988426   -1.1900369
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.1118234   -2.7736575   -1.4499892
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5950879   -2.7547179   -2.4354578
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6457376   -1.8216854   -1.4697898
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.4811602   -2.9192323   -2.0430882
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.8747162   -2.0653288   -1.6841037
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3484684   -1.4764282   -1.2205086
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1878757   -1.3236438   -1.0521076
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.5492579   -1.8319811   -1.2665347
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0248277   -0.1430130    0.1926685
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4634996   -1.5428122   -1.3841869
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8291741   -2.9536335   -2.7047147
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3690186   -1.5037147   -1.2343225
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0901333   -2.1726974   -2.0075691
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7786166   -1.9048265   -1.6524067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8799823   -1.9254071   -1.8345576
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6256603   -1.6805950   -1.5707255


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5897102   -1.6089975   -1.5704229
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5232552   -1.5724840   -1.4740265
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1932738   -1.3246079   -1.0619397
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0494712   -0.0951008    0.1940431
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.1605449   -1.2821450   -1.0389448
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5481599   -0.6614541   -0.4348656
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3277482   -1.4358597   -1.2196367
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3449232   -1.3822755   -1.3075709
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9096199   -2.0438307   -1.7754091
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0081448   -0.1615145    0.1778041
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8274372   -1.9559249   -1.6989495
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2688028   -1.3908231   -1.1467825
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7545083   -1.8762212   -1.6327955
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0134370   -2.0411067   -1.9857672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7814786   -1.8170130   -1.7459442


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0599413   -0.2767975    0.1569150
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1405530   -0.5799515    0.2988455
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0877279   -0.3373233    0.5127791
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0178229   -1.0036748    1.0393205
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1578714    0.0297336    0.2860091
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2000612   -0.4762010    0.0760786
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0057182   -0.3277999    0.3392363
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2693001   -0.0948809    0.6334812
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0945995   -0.1061929    0.2953919
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -0.4390580   -0.9603017    0.0821857
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0266044   -0.1629971    0.1097883
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0296561   -0.1430740    0.0837618
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0892971   -0.0035094    0.1821036
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0725964   -0.1746377    0.0294449
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0206046   -0.2047499    0.1635406
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0439239   -0.1431541    0.0553063
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0143484   -0.0342072    0.0055104
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0170235   -0.1640978    0.1300508
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1477173   -0.2336859   -0.0617487
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0477433   -0.1007741    0.0052874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0111133   -0.0347609    0.0125344
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0476055   -0.1285189    0.0333079
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1915718   -0.3828265   -0.0003171
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3022644    0.0977648    0.5067640
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0846326   -0.1075293    0.2767945
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2728528   -0.4600371   -0.0856684
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0297384   -0.1235461    0.1830229
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0386876   -0.1817925    0.2591677
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3118055   -0.0819934    0.7056045
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0583757   -0.2368412    0.1200899
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0833254   -0.2747140    0.1080632
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.4847819   -0.8515586   -0.1180051
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3500182   -0.4701889   -0.2298475
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2728057   -0.6290462    0.0834349
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2767249   -0.4073563   -0.1460934
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0832590   -0.1827923    0.0162743
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1468674   -0.2438158   -0.0499189
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0050483   -0.1217135    0.1116168
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0026860   -0.1694783    0.1641063
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0827447   -0.2959167    0.1304273
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1071218   -0.1730043   -0.0412394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0332630   -0.0634774   -0.0030486
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1004178   -0.2098599    0.0090244
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4655424   -0.5683021   -0.3627826
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1694051   -0.2252704   -0.1135397
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1723454   -0.2651610   -0.0795299
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0730277   -0.1050018   -0.0410537
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1363043   -0.1847862   -0.0878223
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1730319   -0.3841408    0.0380769
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0857584   -0.2967574    0.1252406
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1901350   -0.3844853    0.0042152
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2209459   -0.4549769    0.0130852
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1959094   -0.4043062    0.0124874
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2006198   -0.4191958    0.0179562
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4535766   -1.1088646    0.2017113
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0362199   -0.0917946    0.1642345
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1530399   -0.2972998   -0.0087801
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.1751630   -0.6173765    0.2670505
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3443416   -0.5048648   -0.1838185
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2539537   -0.3630437   -0.1448637
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2533889   -0.3645812   -0.1421965
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3395050   -0.6071729   -0.0718371
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1562325   -0.4133778    0.1009128
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1424156   -0.1978852   -0.0869460
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1593311   -0.2678527   -0.0508094
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.8051477   -0.9394220   -0.6708734
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3239812   -0.3927351   -0.2552274
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1008939   -0.2044599    0.0026721
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1334546   -0.1714906   -0.0954187
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1558183   -0.1982677   -0.1133690

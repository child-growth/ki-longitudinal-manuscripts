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
![](/tmp/5051648e-26a6-47fd-8d62-cbcffaead4b9/015bb82f-81a7-4b3e-8835-19e6c01d91b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5051648e-26a6-47fd-8d62-cbcffaead4b9/015bb82f-81a7-4b3e-8835-19e6c01d91b6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5051648e-26a6-47fd-8d62-cbcffaead4b9/015bb82f-81a7-4b3e-8835-19e6c01d91b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0058257   -1.2587470   -0.7529044
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.1259339   -1.4018220   -0.8500458
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0898586   -1.3769933   -0.8027239
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.6651342   -1.0418479   -0.2884206
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.8508302   -1.4312185   -0.2704418
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                -0.6254364   -1.1404100   -0.1104629
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.9328285   -1.1228473   -0.7428097
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8584051   -1.0344049   -0.6824053
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.8662467   -1.0359581   -0.6965354
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.3779003   -0.6756118   -0.0801888
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.7298116   -1.0277487   -0.4318745
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.5632367   -0.9588682   -0.1676052
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770161   -0.6572697
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851563   -1.5881883   -0.9821242
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.9058425   -1.1621718   -0.6495131
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -1.0173303   -1.5657321   -0.4689284
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3189236   -1.9104191   -0.7274281
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.3572594   -0.6100873   -0.1044314
Birth       ki1000108-IRC              INDIA                          Low                  NA                -0.3442326   -0.5826718   -0.1057934
Birth       ki1000108-IRC              INDIA                          Medium               NA                -0.2624109   -0.5327361    0.0079144
Birth       ki1000109-EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       ki1000109-EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       ki1000109-EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.3465689   -1.4911510   -1.2019868
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4978105   -1.6002079   -1.3954131
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3691279   -1.4835334   -1.2547225
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.8947720   -1.0394211   -0.7501229
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.9719254   -1.0938213   -0.8500294
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.9422960   -1.0772761   -0.8073159
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8972905   -1.0149171   -0.7796639
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9024931   -1.0240829   -0.7809034
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.9194071   -1.0375527   -0.8012616
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.8215533   -0.9458174   -0.6972893
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9413626   -1.0759310   -0.8067941
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.9321911   -1.0526150   -0.8117671
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9940905   -1.2230431   -0.7651378
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1113922   -1.2058283   -1.0169561
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.0897771   -1.3069064   -0.8726479
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3689280    1.2045639    1.5332921
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3239010    1.1265274    1.5212745
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3429620    1.1830153    1.5029086
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4822268   -0.5107388   -0.4537148
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5216362   -0.5682306   -0.4750418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5003955   -0.5428521   -0.4579389
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1207667   -0.0813642    0.3228975
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.1252519    0.0000114    0.2504924
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1667241    0.0052980    0.3281502
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5446219   -0.6475093   -0.4417345
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7087185   -0.7779014   -0.6395356
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.6626065   -0.7078438   -0.6173691
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2015270   -0.2678321   -0.1352218
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2978696   -0.3677496   -0.2279897
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2454312   -0.3197375   -0.1711248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.5836495   -1.6149400   -1.5523591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.6042485   -1.6322137   -1.5762834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.5933766   -1.6259674   -1.5607858
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.4761460   -1.5775753   -1.3747166
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.5299621   -1.6167884   -1.4431359
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.5359709   -1.6207890   -1.4511527
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0170343   -1.2177800   -0.8162885
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.3179435   -1.5929936   -1.0428934
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.3051943   -1.5218735   -1.0885151
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0736552   -0.1670693    0.3143797
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0705262   -0.2315540    0.3726064
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0467528   -0.1833468    0.2768525
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1721231   -1.3942817   -0.9499646
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.1915414   -1.4066206   -0.9764622
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1193211   -1.3173976   -0.9212446
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3771891   -0.6123954   -0.1419829
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6271076   -0.8004714   -0.4537438
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5578322   -0.7416212   -0.3740433
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3596733   -1.5549388   -1.1644079
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3483989   -1.5379596   -1.1588383
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2711917   -1.4562521   -1.0861313
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9783514   -1.2216207   -0.7350821
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.1342023   -1.3264799   -0.9419246
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0153641   -1.2588207   -0.7719074
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -1.2980348   -1.5130146   -1.0830551
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6056143   -1.8538709   -1.3573577
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.4023189   -1.6869204   -1.1177173
6 months    ki1000108-IRC              INDIA                          High                 NA                -1.1352761   -1.3510410   -0.9195112
6 months    ki1000108-IRC              INDIA                          Low                  NA                -1.2544623   -1.4783273   -1.0305974
6 months    ki1000108-IRC              INDIA                          Medium               NA                -1.2872659   -1.5078506   -1.0666811
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -1.6677415   -2.1534328   -1.1820503
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -2.1308535   -2.2609985   -2.0007085
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -1.6550350   -2.0287873   -1.2812827
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.0519963   -1.1944590   -0.9095336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5800738   -1.6718792   -1.4882683
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3729023   -1.5028667   -1.2429379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.6004019   -1.9629359   -1.2378679
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9404066   -2.0700244   -1.8107887
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.8098435   -2.0991607   -1.5205263
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.1661760   -1.3123629   -1.0199890
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.6206326   -1.7707641   -1.4705011
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4565238   -1.6020697   -1.3109779
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.0186288   -1.1410753   -0.8961823
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.1462552   -1.2903659   -1.0021444
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1122760   -1.2713150   -0.9532371
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0510599   -1.1747155   -0.9274044
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2604449   -1.3829572   -1.1379327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2867022   -1.4148881   -1.1585163
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4788348   -0.5807300   -0.3769396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5187877   -0.7677717   -0.2698038
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5655495   -0.6213295   -0.5097695
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -1.5255045   -1.6994882   -1.3515209
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -1.6404012   -1.8685270   -1.4122753
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -1.5456896   -1.7636363   -1.3277428
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1303283   -1.3990416   -0.8616149
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4173632   -1.5123146   -1.3224117
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.2048636   -1.4128934   -0.9968337
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2287703    0.1300973    0.3274432
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0007822   -0.1037749    0.1053392
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1581944    0.0548132    0.2615756
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8242832   -0.8583870   -0.7901795
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.8752953   -0.9319315   -0.8186591
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9362172   -0.9881783   -0.8842561
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8025975   -1.9586553   -1.6465397
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.8754033   -1.9773068   -1.7734998
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.7162327   -1.8450381   -1.5874273
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5704501   -0.6747221   -0.4661780
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.3052206   -1.3805492   -1.2298921
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9703089   -1.0148721   -0.9257457
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9736186   -1.0418125   -0.9054247
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.2645344   -1.3442841   -1.1847847
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.1945798   -1.2764136   -1.1127459
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.4679976   -1.5819220   -1.3540732
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7791279   -1.9085715   -1.6496842
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6912228   -1.8101930   -1.5722525
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2444155   -1.2835928   -1.2052381
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3851445   -1.4239470   -1.3463421
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3479498   -1.3875725   -1.3083270
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.2067150   -1.2678866   -1.1455434
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4508943   -1.5203483   -1.3814404
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.3983530   -1.4591947   -1.3375113
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.8084296   -2.0653898   -1.5514695
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -2.0333872   -2.2404906   -1.8262839
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9355124   -2.1745016   -1.6965232
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.2315846   -0.0353800    0.4985492
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.3118944   -0.6806338    0.0568450
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0020185   -0.2724307    0.2764677
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.6162634   -1.8391168   -1.3934100
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8745046   -2.0943317   -1.6546775
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8736942   -2.0934109   -1.6539775
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0080828   -1.2645084   -0.7516571
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.3717891   -1.5488241   -1.1947540
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.2341274   -1.4300592   -1.0381957
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.5272862   -1.7785776   -1.2759949
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.8784707   -2.0627635   -1.6941779
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8281927   -2.0269366   -1.6294488
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4316907   -1.6840802   -1.1793011
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.7346566   -1.9258655   -1.5434476
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.7192428   -2.0021746   -1.4363110
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -2.4648672   -2.6281525   -2.3015819
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -2.7167620   -2.8893526   -2.5441713
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5195588   -2.6990659   -2.3400518
24 months   ki1000108-IRC              INDIA                          High                 NA                -1.6447029   -1.8224952   -1.4669107
24 months   ki1000108-IRC              INDIA                          Low                  NA                -1.8685787   -2.0288447   -1.7083128
24 months   ki1000108-IRC              INDIA                          Medium               NA                -1.8516765   -2.0024488   -1.7009042
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   ki1000109-EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.8697181   -2.0490101   -1.6904261
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -2.5040240   -2.6611139   -2.3469340
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -2.3016669   -2.4714122   -2.1319217
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.3684496   -1.5034177   -1.2334815
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.7594550   -1.9159611   -1.6029489
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.6771056   -1.8332813   -1.5209298
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.1753756   -1.3115384   -1.0392128
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.6058758   -1.7614462   -1.4503054
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.6117084   -1.7565762   -1.4668406
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.4926927   -1.7948262   -1.1905592
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9456173   -2.0435336   -1.8477010
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.8643217   -2.1325829   -1.5960605
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0232230   -0.2086625    0.2551085
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2830788   -0.6393760    0.0732184
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0832438   -0.4080231    0.2415354
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.4619079   -1.5399626   -1.3838532
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7782461   -1.9004561   -1.6560361
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7274494   -1.8389847   -1.6159142
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -3.0765462   -3.2247802   -2.9283122
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -3.1007702   -3.1955523   -3.0059880
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.8223006   -2.9384914   -2.7061098
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.4052682   -1.5468863   -1.2636501
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.6401535   -2.7391780   -2.5411289
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -2.0984691   -2.1480360   -2.0489022
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0706602   -2.1486228   -1.9926977
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.6967335   -2.7793771   -2.6140900
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5459516   -2.6300387   -2.4618644
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.7924238   -1.9205242   -1.6643233
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.9189592   -2.0654717   -1.7724467
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9460390   -2.1043425   -1.7877356
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.8978894   -1.9402578   -1.8555211
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1300901   -2.1754304   -2.0847497
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0225298   -2.0681667   -1.9768928
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.6300277   -1.6855475   -1.5745080
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.9026530   -1.9614657   -1.8438403
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8246564   -1.8878165   -1.7614964


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0884492   -1.2349987   -0.9418997
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2372500   -1.5471753   -0.9273247
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9120000   -1.2873301   -0.5366699
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1398095   -1.3671021   -0.9125169
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8545188   -2.0422173   -1.6668203
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0877489   -1.1679913   -1.0075066
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5006712   -0.5212382   -0.4801043
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1288717    0.0445170    0.2132265
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6688842   -0.7003528   -0.6374156
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5897102   -1.6089975   -1.5704229
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232552   -1.5724840   -1.4740265
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1932738   -1.3246079   -1.0619397
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0494712   -0.0951008    0.1940431
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1605449   -1.2821450   -1.0389448
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5481599   -0.6614541   -0.4348656
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3277482   -1.4358597   -1.2196367
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.2937438   -1.4246923   -1.1627954
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0782207   -2.1981595   -1.9582820
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5440108   -0.5930025   -0.4950192
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5624368   -1.6783540   -1.4465196
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508616   -1.4293975   -1.2723256
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8688556   -0.8944357   -0.8432754
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8103361   -1.8786415   -1.7420307
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0183078   -1.0495042   -0.9871113
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431488   -1.7125598   -1.5737379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131339   -1.3362896   -1.2899781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3449232   -1.3822755   -1.3075709
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9096199   -2.0438307   -1.7754091
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0081448   -0.1615145    0.1778041
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8274372   -1.9559249   -1.6989495
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2688028   -1.3908231   -1.1467825
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7545083   -1.8762212   -1.6327955
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5654000   -2.7089193   -2.4218807
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6563232   -2.8000905   -2.5125560
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8887629   -1.9746814   -1.8028444
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6059152   -1.6629321   -1.5488983
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9885052   -3.0530889   -2.9239215
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1741663   -2.2109368   -2.1373958
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8795105   -1.9611410   -1.7978800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134370   -2.0411067   -1.9857672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7814786   -1.8170130   -1.7459442


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.1201082   -0.4960074    0.2557909
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0840329   -0.4677806    0.2997148
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.1856959   -0.8859490    0.5145572
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.0396978   -0.6010559    0.6804516
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.0744234   -0.1621778    0.3110245
Birth       ki0047075b-MAL-ED          PERU                           Medium               High               0.0665818   -0.1661929    0.2993564
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3519113   -0.7713330    0.0675104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1853364   -0.6772206    0.3065478
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.1114878   -0.7216537    0.4986780
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.4130812   -1.0630753    0.2369130
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High               0.0130267   -0.3169691    0.3430225
Birth       ki1000108-IRC              INDIA                          Medium               High               0.0948485   -0.2562906    0.4459876
Birth       ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       ki1000109-EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1512416   -0.3341685    0.0316853
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0225590   -0.1977748    0.1526568
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.0771534   -0.2495001    0.0951933
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0475240   -0.2276705    0.1326225
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0052027   -0.1640784    0.1536731
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0221166   -0.1775686    0.1333353
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.1198092   -0.2990276    0.0594091
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.1106377   -0.2803677    0.0590923
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1173018   -0.3628046    0.1282011
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0956867   -0.4095167    0.2181434
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0450271   -0.1701988    0.0801447
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0259661   -0.0992177    0.0472856
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0394094   -0.0930450    0.0142263
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0181687   -0.0681962    0.0318588
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High               0.0044853   -0.2334375    0.2424080
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0459575   -0.2129020    0.3048169
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1640966   -0.2867451   -0.0414481
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.1179846   -0.2288995   -0.0070696
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0963426   -0.1904367   -0.0022486
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0439042   -0.1411089    0.0533005
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0205990   -0.0578316    0.0166336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0097271   -0.0508567    0.0314025
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0538162   -0.1869577    0.0793253
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0598249   -0.1932441    0.0735943
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.3009093   -0.6422502    0.0404317
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2881600   -0.5845903    0.0082702
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0031290   -0.3906246    0.3843667
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0269024   -0.3612040    0.3073993
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              -0.0194183   -0.3289943    0.2901577
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0528021   -0.2456555    0.3512596
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2499185   -0.5409896    0.0411527
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1806431   -0.4796946    0.1184083
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.0112744   -0.2606827    0.2832316
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0884817   -0.1808894    0.3578527
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1558509   -0.4658532    0.1541515
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0370127   -0.3811213    0.3070960
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.3075795   -0.6343447    0.0191857
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.1042841   -0.4585910    0.2500229
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1191862   -0.4253804    0.1870079
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.1519898   -0.4555635    0.1515838
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.4631119   -0.9656111    0.0393872
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.0127065   -0.6025551    0.6279682
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.5280774   -0.7299541   -0.3262008
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.3209060   -0.4343097   -0.2075023
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3400046   -0.7252875    0.0452782
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.2094416   -0.6735898    0.2547066
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.4544567   -0.6616546   -0.2472587
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.2903478   -0.4941514   -0.0865443
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1276264   -0.3169644    0.0617117
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0936473   -0.2944817    0.1071872
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2093850   -0.3820085   -0.0367615
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2356422   -0.4122461   -0.0590383
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0399530   -0.3074334    0.2275274
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0867147   -0.2001325    0.0267030
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.1148966   -0.4021267    0.1723335
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0201850   -0.2997374    0.2593673
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.2870349   -0.5723855   -0.0016843
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0745353   -0.4143022    0.2652317
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2279881   -0.3237642   -0.1322120
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0705759   -0.1658816    0.0247298
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0510121   -0.1152909    0.0132667
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1119340   -0.1722132   -0.0516548
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0728058   -0.2588824    0.1132708
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0863648   -0.1156601    0.2883897
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.7347706   -0.8642342   -0.6053069
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.3998588   -0.5137215   -0.2859962
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.2909158   -0.3958498   -0.1859817
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2209611   -0.3274659   -0.1144564
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.3111303   -0.4836161   -0.1386444
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2232251   -0.3882626   -0.0581877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1407291   -0.1926003   -0.0888579
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1035343   -0.1555060   -0.0515626
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2441793   -0.3323280   -0.1560307
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1916380   -0.2755323   -0.1077437
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2249576   -0.5529759    0.1030607
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1270828   -0.4767929    0.2226274
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.5434790   -0.9985593   -0.0883986
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2295661   -0.6128672    0.1537349
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.2582412   -0.5702724    0.0537900
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2574308   -0.5702260    0.0553644
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3637063   -0.6757145   -0.0516981
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2260447   -0.5513966    0.0993072
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.3511845   -0.6634847   -0.0388842
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.3009064   -0.6216548    0.0198419
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3029659   -0.6207450    0.0148132
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2875522   -0.6666733    0.0915690
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2518947   -0.4906481   -0.0131414
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0546916   -0.2972275    0.1878443
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.2238758   -0.4634892    0.0157376
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2069735   -0.4402848    0.0263377
24 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.6343059   -0.8702351   -0.3983767
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.4319489   -0.6759441   -0.1879536
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.3910054   -0.5975007   -0.1845101
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.3086560   -0.5146376   -0.1026743
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4305002   -0.6376603   -0.2233401
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.4363328   -0.6354808   -0.2371848
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4529245   -0.7702177   -0.1356313
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.3716290   -0.7751046    0.0318466
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.3063018   -0.6260420    0.0134384
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1064668   -0.3654078    0.1524742
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.3163382   -0.4606471   -0.1720293
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.2655415   -0.4008329   -0.1302502
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0242239   -0.1987856    0.1503378
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2542456    0.0669123    0.4415789
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -1.2348852   -1.4087374   -1.0610331
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.6932009   -0.8440122   -0.5423895
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6260733   -0.7404161   -0.5117305
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.4752913   -0.5904256   -0.3601570
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1265354   -0.3214036    0.0683327
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1536153   -0.3576068    0.0503762
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.2322006   -0.2891929   -0.1752084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1246403   -0.1812630   -0.0680177
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2726252   -0.3483086   -0.1969419
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1946287   -0.2743577   -0.1148997


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0826235   -0.2965861    0.1313390
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0108658   -0.3998784    0.3781469
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0500388   -0.0973844    0.1974620
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2538070   -0.5269347    0.0193206
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0553532   -0.2628694    0.1521630
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0492181   -0.1597229    0.2581592
Birth       ki1000109-EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0848528   -0.2359846    0.0662791
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0362477   -0.1480121    0.0755166
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0121884   -0.0812879    0.1056648
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0879412   -0.1882715    0.0123891
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0936584   -0.3090793    0.1217624
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0419834   -0.1138175    0.0298507
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0184444   -0.0383382    0.0014494
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0081051   -0.1783254    0.1945356
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.1242623   -0.2232839   -0.0252406
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0475222   -0.1008230    0.0057786
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0060606   -0.0308643    0.0187430
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0471093   -0.1300988    0.0358802
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1762395   -0.3503924   -0.0020867
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0241840   -0.2246879    0.1763198
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0115783   -0.1835997    0.2067563
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1709707   -0.3771912    0.0352497
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0319252   -0.1346733    0.1985236
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0849688   -0.2939562    0.1240186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1254160   -0.2898658    0.0390339
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0991302   -0.2832064    0.0849461
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.4104792   -0.8929774    0.0720190
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.3498600   -0.4688436   -0.2308763
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.2982823   -0.6456247    0.0490602
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2412061   -0.3672188   -0.1151934
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0730627   -0.1769310    0.0308055
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1476184   -0.2499338   -0.0453030
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0651760   -0.1504953    0.0201432
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0369323   -0.1723062    0.0984416
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2205333   -0.4755323    0.0344658
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1217717   -0.1982835   -0.0452598
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0445724   -0.0677499   -0.0213948
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0077387   -0.1509453    0.1354680
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4478577   -0.5498153   -0.3459001
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1669537   -0.2242656   -0.1096418
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1751512   -0.2677885   -0.0825139
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0687184   -0.0997087   -0.0377281
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1382082   -0.1850889   -0.0913276
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1011902   -0.2945034    0.0921229
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2234398   -0.4440275   -0.0028520
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.2111738   -0.4078824   -0.0144651
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2607201   -0.4857332   -0.0357069
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.2272221   -0.4319379   -0.0225063
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2133689   -0.4309951    0.0042574
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0940007   -0.2128022    0.0248008
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1540746   -0.3009254   -0.0072237
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3493398   -0.4978086   -0.2008710
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2339725   -0.3491145   -0.1188306
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2658890   -0.3776162   -0.1541617
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3960702   -0.6823536   -0.1097867
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1546278   -0.3676195    0.0583639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1440073   -0.1977314   -0.0902832
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0880410   -0.0455725    0.2216545
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.7688980   -0.9096304   -0.6281657
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3434543   -0.4083900   -0.2785186
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0870867   -0.1923596    0.0181861
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1155475   -0.1492540   -0.0818411
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1514508   -0.1945517   -0.1083500

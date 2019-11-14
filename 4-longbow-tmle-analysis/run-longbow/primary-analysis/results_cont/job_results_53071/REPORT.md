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
![](/tmp/e905ca49-8284-43d9-a54c-eb54df53a991/0a84feff-5142-4a4d-acf6-fa2318c90a80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e905ca49-8284-43d9-a54c-eb54df53a991/0a84feff-5142-4a4d-acf6-fa2318c90a80/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e905ca49-8284-43d9-a54c-eb54df53a991/0a84feff-5142-4a4d-acf6-fa2318c90a80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0587755   -1.3170167   -0.8005344
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.0529051   -1.3223193   -0.7834909
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.0916950   -1.3914335   -0.7919566
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.6392256   -1.0077386   -0.2707126
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.8290624   -1.3799807   -0.2781441
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                -0.5522392   -1.0521111   -0.0523673
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -1.0487500   -1.6632325   -0.4342675
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.9966667   -1.2735446   -0.7197888
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.6542857   -2.3314041   -0.9771673
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.5560000   -1.2640915    0.1520915
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.0800000   -1.4369213   -0.7230787
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.8825000   -1.7946337    0.0296337
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.9267388   -1.1125203   -0.7409573
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                -0.8586474   -1.0324391   -0.6848558
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                -0.8677614   -1.0350988   -0.7004240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.4047355   -0.7092561   -0.1002150
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -0.7512919   -1.0522834   -0.4503004
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -0.5831572   -1.0003947   -0.1659197
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.9671429   -1.2770161   -0.6572697
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.9017647   -1.2910826   -0.5124468
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2851563   -1.5881883   -0.9821242
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.8984413   -1.1576528   -0.6392299
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -0.9461789   -1.4817681   -0.4105897
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.1346209   -1.6866851   -0.5825568
Birth       ki1000108-IRC              INDIA                          High                 NA                -0.3486462   -0.6043251   -0.0929673
Birth       ki1000108-IRC              INDIA                          Low                  NA                -0.3276068   -0.5664029   -0.0888108
Birth       ki1000108-IRC              INDIA                          Medium               NA                -0.2526122   -0.5186564    0.0134321
Birth       ki1000109-EE               PAKISTAN                       High                 NA                -2.1742857   -3.0389611   -1.3096103
Birth       ki1000109-EE               PAKISTAN                       Low                  NA                -1.8810233   -2.0830133   -1.6790332
Birth       ki1000109-EE               PAKISTAN                       Medium               NA                -1.3876471   -1.8873432   -0.8879509
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.3701127   -1.5065888   -1.2336366
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.4965746   -1.6017250   -1.3914242
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3731959   -1.4879886   -1.2584031
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.8738283   -1.0198859   -0.7277707
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -0.9788554   -1.1006187   -0.8570920
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -0.9416535   -1.0757782   -0.8075289
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.8947085   -1.0097135   -0.7797034
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.9035778   -1.0214727   -0.7856829
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -0.9003421   -1.0174686   -0.7832155
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.8426689   -0.9664721   -0.7188657
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.9265204   -1.0614959   -0.7915449
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -0.9189236   -1.0420110   -0.7958363
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.9450237   -1.1857373   -0.7043101
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.1118110   -1.2068028   -1.0168193
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1038070   -1.3130543   -0.8945597
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                 1.3610752    1.1930420    1.5291084
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                 1.3237614    1.1230439    1.5244789
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                 1.3410624    1.1802222    1.5019027
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.4832026   -0.5121127   -0.4542924
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5123027   -0.5594379   -0.4651676
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5033044   -0.5453960   -0.4612127
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1487814   -0.0428531    0.3404159
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0926712   -0.0335612    0.2189036
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                 0.1819829    0.0216367    0.3423290
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.5697106   -0.6682402   -0.4711810
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                -0.7029135   -0.7741413   -0.6316857
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                -0.6695409   -0.7155798   -0.6235019
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.2000571   -0.2655852   -0.1345289
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2979617   -0.3666359   -0.2292875
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -0.2423811   -0.3152856   -0.1694767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.1364520   -1.1802548   -1.0926492
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.2087512   -1.2545138   -1.1629886
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.1810331   -1.2338427   -1.1282236
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.4911392   -1.5961831   -1.3860953
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.5315367   -1.6173364   -1.4457371
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.5358501   -1.6224156   -1.4492845
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.0209365   -1.2249090   -0.8169640
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -1.2958764   -1.5630415   -1.0287113
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.3123917   -1.5263124   -1.0984710
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0750823   -0.1671686    0.3173332
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                 0.0304567   -0.2728578    0.3337713
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0423193   -0.1884834    0.2731220
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -1.1714938   -1.3945918   -0.9483958
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.1690892   -1.3876012   -0.9505772
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.1268569   -1.3359304   -0.9177835
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.4042540   -0.6463117   -0.1621964
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.6210172   -0.7972352   -0.4447991
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                -0.5420239   -0.7293122   -0.3547356
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -1.3697433   -1.5591078   -1.1803788
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                -1.3623181   -1.5579262   -1.1667101
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                -1.2783156   -1.4679642   -1.0886670
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.9690612   -1.2034339   -0.7346884
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.1258394   -1.3183766   -0.9333022
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.0244002   -1.2660148   -0.7827856
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -1.2557407   -1.6831816   -0.8282999
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -1.2978763   -1.5505534   -1.0451993
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -1.2943939   -1.4544477   -1.1343401
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -1.3213323   -1.5388955   -1.1037691
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -1.6111480   -1.8648117   -1.3574843
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -1.3657311   -1.6459647   -1.0854975
6 months    ki1000108-IRC              INDIA                          High                 NA                -1.1474689   -1.3651054   -0.9298324
6 months    ki1000108-IRC              INDIA                          Low                  NA                -1.2578323   -1.4810658   -1.0345989
6 months    ki1000108-IRC              INDIA                          Medium               NA                -1.2864246   -1.5082678   -1.0645814
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -1.8061467   -2.2634144   -1.3488790
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                -2.1327936   -2.2629461   -2.0026410
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                -1.7183439   -2.1053273   -1.3313605
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -1.0407536   -1.1778936   -0.9036135
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -1.5871479   -1.6809819   -1.4933138
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                -1.3739366   -1.5070526   -1.2408205
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -1.5888021   -1.9352910   -1.2423132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -1.9343509   -2.0643310   -1.8043708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                -1.7619989   -2.0424119   -1.4815860
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.1719885   -1.3220611   -1.0219158
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -1.6031997   -1.7534014   -1.4529981
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -1.4435462   -1.5933957   -1.2936967
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.0169807   -1.1336240   -0.9003374
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.1502912   -1.3003424   -1.0002400
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.1331805   -1.2846841   -0.9816769
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.0530060   -1.1764874   -0.9295245
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.2637597   -1.3885705   -1.1389488
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.2905769   -1.4235876   -1.1575663
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4629987   -0.5663588   -0.3596385
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.5926391   -0.8536920   -0.3315861
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                -0.5673733   -0.6236083   -0.5111383
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -1.5233898   -1.6965673   -1.3502123
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                -1.6460971   -1.8791254   -1.4130687
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                -1.5449571   -1.7600211   -1.3298931
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.1478028   -1.4004837   -0.8951220
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.4207747   -1.5139043   -1.3276450
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.1666558   -1.3855004   -0.9478112
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2384486    0.1420791    0.3348182
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0002668   -0.1055356    0.1050021
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                 0.1594825    0.0576281    0.2613369
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.8188662   -0.8528887   -0.7848437
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.8802675   -0.9373640   -0.8231709
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -0.9423197   -0.9936700   -0.8909694
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -1.8388999   -1.9996373   -1.6781625
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -1.8705799   -1.9738394   -1.7673204
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                -1.7213498   -1.8479841   -1.5947154
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.5716628   -0.6794035   -0.4639222
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                -1.3033048   -1.3737621   -1.2328476
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                -0.9649582   -1.0100709   -0.9198455
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.9764573   -1.0445976   -0.9083171
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -1.2800746   -1.3619972   -1.1981520
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -1.2005221   -1.2813027   -1.1197414
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -1.4670704   -1.5813050   -1.3528359
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.7922671   -1.9202764   -1.6642577
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.6913263   -1.8112876   -1.5713649
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.2772437   -1.3159981   -1.2384894
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -1.3902179   -1.4282813   -1.3521546
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -1.3629904   -1.4039125   -1.3220683
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.2085640   -1.2717132   -1.1454148
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.4489700   -1.5200734   -1.3778666
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.4004676   -1.4628712   -1.3380639
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -1.8064416   -2.0643441   -1.5485390
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -2.0323905   -2.2224429   -1.8423381
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                -1.9298991   -2.1690479   -1.6907503
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.2390224   -0.0341637    0.5122084
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                -0.3524485   -0.7101396    0.0052427
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                 0.0135775   -0.2605892    0.2877442
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -1.6072124   -1.8288906   -1.3855341
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -1.8740695   -2.0948625   -1.6532766
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                -1.8934032   -2.1080725   -1.6787339
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -1.0100251   -1.2650512   -0.7549991
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -1.3865610   -1.5655603   -1.2075616
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                -1.2439570   -1.4378257   -1.0500883
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -1.5408864   -1.7867832   -1.2949895
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                -1.8613903   -2.0470503   -1.6757303
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                -1.8419362   -2.0294208   -1.6544515
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -1.4329184   -1.6882997   -1.1775370
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                -1.7384488   -1.9293442   -1.5475533
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                -1.7273658   -2.0144653   -1.4402663
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -2.0942857   -2.6483678   -1.5402036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                -2.8334259   -3.1321260   -2.5347259
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                -2.4673684   -2.6268079   -2.3079289
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -2.4711008   -2.6356058   -2.3065959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                -2.7044299   -2.8778642   -2.5309956
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                -2.5179005   -2.7020209   -2.3337801
24 months   ki1000108-IRC              INDIA                          High                 NA                -1.6480281   -1.8256879   -1.4703683
24 months   ki1000108-IRC              INDIA                          Low                  NA                -1.8629563   -2.0246964   -1.7012163
24 months   ki1000108-IRC              INDIA                          Medium               NA                -1.8650654   -2.0146049   -1.7155258
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -1.9300000   -2.4208706   -1.4391294
24 months   ki1000109-EE               PAKISTAN                       Low                  NA                -2.7653756   -2.9186740   -2.6120771
24 months   ki1000109-EE               PAKISTAN                       Medium               NA                -2.0017647   -2.3410457   -1.6624838
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -1.8511157   -2.0391394   -1.6630920
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                -2.4991544   -2.6555812   -2.3427277
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                -2.2956327   -2.4656985   -2.1255670
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -1.3733013   -1.4998745   -1.2467281
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -1.8131161   -1.9724199   -1.6538123
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                -1.6756224   -1.8339425   -1.5173023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -1.1634046   -1.3018870   -1.0249222
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -1.6105004   -1.7692908   -1.4517100
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                -1.6068339   -1.7519352   -1.4617326
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -1.4625846   -1.7432311   -1.1819380
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -1.9466023   -2.0442231   -1.8489815
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                -1.8752348   -2.1228510   -1.6276187
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0314243   -0.1851213    0.2479699
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.2861169   -0.6440710    0.0718373
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                -0.0786227   -0.3921044    0.2348591
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -1.4615713   -1.5408159   -1.3823268
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -1.7825140   -1.9080794   -1.6569487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                -1.7111342   -1.8223174   -1.5999511
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -3.0892559   -3.2344462   -2.9440657
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -3.0901216   -3.1875290   -2.9927142
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                -2.8187844   -2.9293215   -2.7082474
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -1.3890701   -1.5203826   -1.2577576
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -2.6789057   -2.7670098   -2.5908016
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                -2.0943567   -2.1442727   -2.0444407
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -2.0603178   -2.1393318   -1.9813039
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -2.6881466   -2.7705503   -2.6057428
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                -2.5657720   -2.6517988   -2.4797452
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -1.7847172   -1.9131441   -1.6562904
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -1.9017999   -2.0501041   -1.7534957
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                -1.9498887   -2.1114083   -1.7883691
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -1.9152451   -1.9579337   -1.8725566
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -2.1114688   -2.1574486   -2.0654890
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                -2.0332642   -2.0775199   -1.9890085
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -1.6211455   -1.6758377   -1.5664532
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -1.8967702   -1.9553780   -1.8381624
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                -1.8208736   -1.8831744   -1.7585728


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1731351   -1.2012255   -1.1450446
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232552   -1.5724840   -1.4740265
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1938861   -1.3254694   -1.0623027
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0529327   -0.0917526    0.1976180
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1602244   -1.2819820   -1.0384668
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5483560   -0.6619002   -0.4348118
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3321936   -1.4405339   -1.2238534
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3356304   -1.3587299   -1.3125309
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3449232   -1.3822755   -1.3075709
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9102339   -2.0444373   -1.7760305
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0091369   -0.1605049    0.1787787
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8259045   -1.9544256   -1.6973834
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2733803   -1.3956121   -1.1511485
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7565250   -1.8779116   -1.6351384
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0193711   -2.0469989   -1.9917432
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7814786   -1.8170130   -1.7459442


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.0058704   -0.3686101    0.3803509
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.0329195   -0.4300894    0.3642503
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.1898368   -0.8588506    0.4791770
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High               0.0869864   -0.5382110    0.7121839
Birth       ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High               0.0520833   -0.6218975    0.7260641
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              -0.6055357   -1.5199088    0.3088374
Birth       ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.5240000   -1.3169605    0.2689605
Birth       ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.3265000   -1.4812214    0.8282214
Birth       ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High               0.0680914   -0.1626826    0.2988654
Birth       ki0047075b-MAL-ED          PERU                           Medium               High               0.0589774   -0.1682067    0.2861615
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3465564   -0.7736944    0.0805817
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.1784216   -0.6945254    0.3376821
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0653782   -0.4322058    0.5629621
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3180134   -0.7514298    0.1154030
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.0477376   -0.6459799    0.5505048
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.2361796   -0.8506402    0.3782810
Birth       ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High               0.0210393   -0.3108411    0.3529198
Birth       ki1000108-IRC              INDIA                          Medium               High               0.0960340   -0.2539363    0.4460043
Birth       ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low                  High               0.2932625   -0.5946922    1.1812171
Birth       ki1000109-EE               PAKISTAN                       Medium               High               0.7866387   -0.2120403    1.7853176
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.1264619   -0.3070052    0.0540814
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.0030832   -0.1742809    0.1681145
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.1050271   -0.2784916    0.0684375
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.0678252   -0.2487401    0.1130897
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.0088693   -0.1627884    0.1450498
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.0056336   -0.1580252    0.1467580
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.0838515   -0.2634109    0.0957079
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.0762547   -0.2476960    0.0951866
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.1667873   -0.4228697    0.0892951
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.1587833   -0.4754248    0.1578582
Birth       ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              -0.0373138   -0.1641391    0.0895114
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              -0.0200128   -0.0981428    0.0581171
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0291002   -0.0834038    0.0252034
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.0201018   -0.0700472    0.0298437
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0561102   -0.2857616    0.1735412
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High               0.0332015   -0.2169395    0.2833424
Birth       ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              -0.1332029   -0.2533714   -0.0130344
Birth       ki1135781-COHORTS          INDIA                          Medium               High              -0.0998303   -0.2069763    0.0073158
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.0979047   -0.1905220   -0.0052873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.0423241   -0.1379447    0.0532965
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.0722992   -0.1316231   -0.0129753
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0445811   -0.1043654    0.0152031
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.0403976   -0.1756640    0.0948689
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.0447109   -0.1821514    0.0927296
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2749399   -0.6100922    0.0602124
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.2914552   -0.5861686    0.0032583
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.0446256   -0.4335506    0.3442995
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.0327630   -0.3682120    0.3026861
6 months    ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High               0.0024046   -0.3111379    0.3159470
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High               0.0446369   -0.2616940    0.3509677
6 months    ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.2167631   -0.5161111    0.0825849
6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.1377699   -0.4459461    0.1704064
6 months    ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High               0.0074252   -0.2653431    0.2801934
6 months    ki0047075b-MAL-ED          PERU                           Medium               High               0.0914277   -0.1768746    0.3597300
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.1567782   -0.4578872    0.1443308
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.0553390   -0.3912739    0.2805958
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0421356   -0.5386750    0.4544038
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0386532   -0.4950772    0.4177708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2898157   -0.6230383    0.0434070
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0443987   -0.3957967    0.3069993
6 months    ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              -0.1103634   -0.4185819    0.1978550
6 months    ki1000108-IRC              INDIA                          Medium               High              -0.1389557   -0.4452100    0.1672986
6 months    ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              -0.3266468   -0.8020448    0.1487511
6 months    ki1000109-EE               PAKISTAN                       Medium               High               0.0878028   -0.5120879    0.6876935
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              -0.5463943   -0.7464317   -0.3463569
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              -0.3331830   -0.4428728   -0.2234932
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              -0.3455489   -0.7155074    0.0244096
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              -0.1731969   -0.6188586    0.2724648
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.4312112   -0.6419366   -0.2204859
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.2715577   -0.4816396   -0.0614759
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.1333105   -0.3236110    0.0569899
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.1161998   -0.3075960    0.0751964
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.2107537   -0.3865474   -0.0349599
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.2375710   -0.4193604   -0.0557815
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1296404   -0.4097896    0.1505088
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.1043746   -0.2206799    0.0119307
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              -0.1227073   -0.4133828    0.1679682
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              -0.0215673   -0.2982279    0.2550933
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.2729718   -0.5408961   -0.0050476
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.0188530   -0.3519652    0.3142593
6 months    ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              -0.2387154   -0.3356824   -0.1417484
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              -0.0789661   -0.1730316    0.0150993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.0614012   -0.1260299    0.0032274
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.1234535   -0.1831013   -0.0638056
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0316800   -0.2227449    0.1593848
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High               0.1175501   -0.0870785    0.3221788
6 months    ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              -0.7316420   -0.8611673   -0.6021167
6 months    ki1135781-COHORTS          INDIA                          Medium               High              -0.3932954   -0.5105464   -0.2760444
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.3036172   -0.4102326   -0.1970018
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.2240647   -0.3297638   -0.1183657
6 months    ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              -0.3251966   -0.4967427   -0.1536506
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              -0.2242558   -0.3898710   -0.0586406
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1129742   -0.1635829   -0.0623655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.0857466   -0.1385588   -0.0329345
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2404060   -0.3308438   -0.1499682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1919036   -0.2788065   -0.1050007
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              -0.2259489   -0.5372659    0.0853680
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              -0.1234576   -0.4693053    0.2223902
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              -0.5914708   -1.0450699   -0.1378717
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              -0.2254449   -0.6142448    0.1633550
24 months   ki0047075b-MAL-ED          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              -0.2668572   -0.5776103    0.0438959
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              -0.2861909   -0.5936867    0.0213049
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              -0.3765358   -0.6880515   -0.0650202
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              -0.2339319   -0.5578621    0.0899984
24 months   ki0047075b-MAL-ED          PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              -0.3205039   -0.6277240   -0.0132838
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              -0.3010498   -0.6081400    0.0060404
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              -0.3055304   -0.6257989    0.0147381
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              -0.2944474   -0.6784612    0.0895664
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.7391402   -1.3686072   -0.1096733
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.3730827   -0.9496483    0.2034829
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              -0.2333291   -0.4736222    0.0069641
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              -0.0467996   -0.2939097    0.2003104
24 months   ki1000108-IRC              INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              -0.2149282   -0.4551447    0.0252883
24 months   ki1000108-IRC              INDIA                          Medium               High              -0.2170372   -0.4497596    0.0156852
24 months   ki1000109-EE               PAKISTAN                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low                  High              -0.8353756   -1.3496268   -0.3211243
24 months   ki1000109-EE               PAKISTAN                       Medium               High              -0.0717647   -0.6684770    0.5249475
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              -0.6480387   -0.8899264   -0.4061510
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              -0.4445170   -0.6956253   -0.1934087
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              -0.4398148   -0.6436664   -0.2359631
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              -0.3023211   -0.5047589   -0.0998832
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              -0.4470958   -0.6583393   -0.2358523
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              -0.4434293   -0.6444301   -0.2424284
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              -0.4840177   -0.7805499   -0.1874855
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              -0.4126503   -0.7863695   -0.0389310
24 months   ki1119695-PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              -0.3175412   -0.6681776    0.0330953
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              -0.1100470   -0.3494277    0.1293337
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              -0.3209427   -0.4688340   -0.1730514
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              -0.2495629   -0.3855193   -0.1136065
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              -0.0008656   -0.1744504    0.1727192
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               0.2704715    0.0889141    0.4520290
24 months   ki1135781-COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              -1.2898356   -1.4491400   -1.1305312
24 months   ki1135781-COHORTS          INDIA                          Medium               High              -0.7052866   -0.8465877   -0.5639855
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              -0.6278287   -0.7426774   -0.5129801
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              -0.5054542   -0.6225992   -0.3883092
24 months   ki1148112-LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              -0.1170827   -0.3135324    0.0793670
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              -0.1651715   -0.3718564    0.0415134
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              -0.1962237   -0.2546637   -0.1377836
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              -0.1180191   -0.1737219   -0.0623162
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              -0.2756247   -0.3505081   -0.2007413
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              -0.1997282   -0.2788568   -0.1205995


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0296737   -0.2490231    0.1896757
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0367744   -0.4222618    0.3487130
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1885000   -0.7564850    0.3794850
Birth       ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.3560000   -1.0206118    0.3086118
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                 0.0439491   -0.0988972    0.1867954
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2269718   -0.5068377    0.0528941
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.1726667   -0.5399274    0.1945941
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0627543   -0.2707661    0.1452575
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0406049   -0.1704164    0.2516262
Birth       ki1000109-EE               PAKISTAN                       High                 NA                 0.3197669   -0.5399412    1.1794750
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0613090   -0.2070774    0.0844593
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0571914   -0.1697757    0.0553928
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0096064   -0.0804560    0.0996688
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0668256   -0.1678271    0.0341759
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1427252   -0.3683024    0.0828520
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0341307   -0.1082387    0.0399774
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0174687   -0.0378345    0.0028971
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0199096   -0.1967852    0.1569659
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0991736   -0.1938441   -0.0045031
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0489921   -0.1015306    0.0035464
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0366831   -0.0680402   -0.0053260
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0321160   -0.1186306    0.0543985
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1729495   -0.3481693    0.0022703
6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0221496   -0.2228417    0.1785425
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0112694   -0.1855009    0.2080398
6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1441019   -0.3583187    0.0701149
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0375496   -0.1253689    0.2004682
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0948562   -0.2952190    0.1055067
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0380031   -0.4665502    0.3905440
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1021184   -0.2684858    0.0642490
6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0869373   -0.2732304    0.0993558
6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.2720740   -0.7269698    0.1828218
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.3611027   -0.4753347   -0.2468708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.3098822   -0.6426114    0.0228471
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.2353936   -0.3649959   -0.1057912
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0747108   -0.1735709    0.0241492
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.1456723   -0.2486038   -0.0427409
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0810122   -0.1681335    0.0061092
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0390470   -0.1737046    0.0956105
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.2030587   -0.4423805    0.0362631
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.1314500   -0.2069543   -0.0559457
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0499893   -0.0730282   -0.0269505
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0285638   -0.1192378    0.1763654
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.4466449   -0.5518535   -0.3414363
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1641150   -0.2211043   -0.1071257
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.1760784   -0.2685038   -0.0836530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0583866   -0.0891768   -0.0275964
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1363592   -0.1851735   -0.0875449
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.1037923   -0.2949115    0.0873268
24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2298855   -0.4568828   -0.0028882
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.2186922   -0.4137218   -0.0236626
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.2633551   -0.4870854   -0.0396249
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.2156386   -0.4144546   -0.0168227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.2162623   -0.4367046    0.0041800
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4711143   -1.0216088    0.0793802
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0877671   -0.2079206    0.0323865
24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1507494   -0.2977376   -0.0037611
24 months   ki1000109-EE               PAKISTAN                       High                 NA                -0.7263232   -1.2203870   -0.2322594
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.3679422   -0.5244064   -0.2114779
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2291208   -0.3368320   -0.1214097
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.2778600   -0.3913347   -0.1643853
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.4261783   -0.6912009   -0.1611557
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1628291   -0.4011000    0.0754418
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1443439   -0.1997071   -0.0889806
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1007507   -0.0299625    0.2314640
24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.7850962   -0.9158717   -0.6543207
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.3537967   -0.4197618   -0.2878316
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0947933   -0.2007847    0.0111982
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1041259   -0.1382740   -0.0699779
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1603331   -0.2026641   -0.1180022

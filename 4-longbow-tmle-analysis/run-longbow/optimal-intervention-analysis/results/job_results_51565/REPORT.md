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

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       164     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            34     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           43     241
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)       110     183
Birth       ki0047075b-MAL-ED          BRAZIL                         <20            34     183
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           39     183
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)       163     202
Birth       ki0047075b-MAL-ED          INDIA                          <20            24     202
Birth       ki0047075b-MAL-ED          INDIA                          >=30           15     202
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)       129     168
Birth       ki0047075b-MAL-ED          NEPAL                          <20             4     168
Birth       ki0047075b-MAL-ED          NEPAL                          >=30           35     168
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       142     279
Birth       ki0047075b-MAL-ED          PERU                           <20            73     279
Birth       ki0047075b-MAL-ED          PERU                           >=30           64     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       132     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           86     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        70     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           39     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        76      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             7      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            5      88
Birth       ki1000108-IRC              INDIA                          [20-30)       289     343
Birth       ki1000108-IRC              INDIA                          <20            28     343
Birth       ki1000108-IRC              INDIA                          >=30           26     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)         0       1
Birth       ki1000109-EE               PAKISTAN                       <20             0       1
Birth       ki1000109-EE               PAKISTAN                       >=30            1       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       121     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20            22     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30           23     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)        15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)        19      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            1      23
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       658    1423
Birth       ki1101329-Keneba           GAMBIA                         <20           222    1423
Birth       ki1101329-Keneba           GAMBIA                         >=30          543    1423
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9897   13824
Birth       ki1119695-PROBIT           BELARUS                        <20          1400   13824
Birth       ki1119695-PROBIT           BELARUS                        >=30         2527   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      8679   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2030   12880
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2171   12880
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       367     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20           101     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          288     756
Birth       ki1135781-COHORTS          INDIA                          [20-30)      2965    4405
Birth       ki1135781-COHORTS          INDIA                          <20           337    4405
Birth       ki1135781-COHORTS          INDIA                          >=30         1103    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1744    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           354    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          801    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7944   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          6245   15702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1513   15702
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       165     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20            35     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       125     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <20            37     209
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30           47     209
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)       179     234
6 months    ki0047075b-MAL-ED          INDIA                          <20            34     234
6 months    ki0047075b-MAL-ED          INDIA                          >=30           21     234
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       185     236
6 months    ki0047075b-MAL-ED          NEPAL                          <20             5     236
6 months    ki0047075b-MAL-ED          NEPAL                          >=30           46     236
6 months    ki0047075b-MAL-ED          PERU                           [20-30)       136     273
6 months    ki0047075b-MAL-ED          PERU                           <20            76     273
6 months    ki0047075b-MAL-ED          PERU                           >=30           61     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       118     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            42     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           94     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            15     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          104     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       292     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     368
6 months    ki1000108-IRC              INDIA                          [20-30)       342     408
6 months    ki1000108-IRC              INDIA                          <20            37     408
6 months    ki1000108-IRC              INDIA                          >=30           29     408
6 months    ki1000109-EE               PAKISTAN                       [20-30)       160     373
6 months    ki1000109-EE               PAKISTAN                       <20             1     373
6 months    ki1000109-EE               PAKISTAN                       >=30          212     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1015    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       260     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           84     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       356     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     534
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     534
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            65     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          108     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       370     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11313   15757
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15757
6 months    ki1119695-PROBIT           BELARUS                        >=30         2824   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5463    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1255    8249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1531    8249
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       471     963
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     963
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          374     963
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3326    4897
6 months    ki1135781-COHORTS          INDIA                          <20           371    4897
6 months    ki1135781-COHORTS          INDIA                          >=30         1200    4897
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1600    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          775    2706
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7656   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7904   16779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1219   16779
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       146     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            29     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       102     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     169
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     169
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       172     225
24 months   ki0047075b-MAL-ED          INDIA                          <20            33     225
24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     225
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     228
24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     228
24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     228
24 months   ki0047075b-MAL-ED          PERU                           [20-30)        98     201
24 months   ki0047075b-MAL-ED          PERU                           <20            55     201
24 months   ki0047075b-MAL-ED          PERU                           >=30           48     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       106     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           92     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       296     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            34     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           42     372
24 months   ki1000108-IRC              INDIA                          [20-30)       343     409
24 months   ki1000108-IRC              INDIA                          <20            37     409
24 months   ki1000108-IRC              INDIA                          >=30           29     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       288     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       408     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          106     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       791    1715
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       322     498
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            98     498
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           78     498
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2847    3971
24 months   ki1119695-PROBIT           BELARUS                        <20           364    3971
24 months   ki1119695-PROBIT           BELARUS                        >=30          760    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       271     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            69     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           82     422
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       532    1076
24 months   ki1135781-COHORTS          GUATEMALA                      <20           154    1076
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          390    1076
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2446    3665
24 months   ki1135781-COHORTS          INDIA                          <20           246    3665
24 months   ki1135781-COHORTS          INDIA                          >=30          973    3665
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1461    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           293    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          695    2449
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       241     461
24 months   ki1148112-LCNI-5           MALAWI                         <20            78     461
24 months   ki1148112-LCNI-5           MALAWI                         >=30          142     461
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4041    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3845    8598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          712    8598


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/782627ba-9824-43e6-b60b-be423d2befbb/3c1b2bdd-dfc9-4099-83f3-0f2a032ef5e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8300008   -1.1395272   -0.5204744
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6180649    0.1667138    1.0694160
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6948020   -1.4569466    0.0673427
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0386794   -0.2111835    0.2885423
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0050685   -0.2640048    0.2741418
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5739802   -0.2624479    1.4104084
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2471269   -3.5930783    1.0988245
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9567005   -1.6858554   -0.2275455
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6395235   -0.9472736   -0.3317734
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.7905220   -2.7211693   -0.8598747
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7736976    1.6114697    1.9359254
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0848614   -1.2856297   -0.8840931
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3764497   -0.4392262   -0.3136733
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9520224   -1.1251610   -0.7788839
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -1.0004259   -1.0604879   -0.9403639
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6163426   -0.7045306   -0.5281547
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6899112   -0.7273499   -0.6524726
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2263666   -0.5361581    0.0834249
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7864566    0.5299560    1.0429572
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3388392   -0.6856210    0.0079425
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2565201   -0.5546362    0.0415960
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.0399189    0.7994216    1.2804161
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4871589    0.0248090    0.9495087
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6369129    0.4626130    0.8112127
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2872840   -0.7535285    0.1789606
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3079516   -0.8685609    0.2526577
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5790413   -0.6655113   -0.4925713
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.9407421   -1.1971898   -0.6842945
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3058540   -0.5731631   -0.0385448
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1504270   -0.3765788    0.0757248
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0881622   -0.2233404    0.0470161
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1074540   -0.0942470    0.3091550
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2159872   -0.3165066   -0.1154677
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0190278   -0.1730520    0.2111076
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5027295   -0.6898653   -0.3155936
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6072410    0.5427717    0.6717104
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3217566    0.2770037    0.3665094
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2552531    0.0730666    0.4374395
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6772647   -0.7173237   -0.6372056
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2781019   -0.3685543   -0.1876494
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4786350    0.3248908    0.6323791
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6059055   -0.6400613   -0.5717497
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7529917   -0.8997651   -0.6062183
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5072420    0.0028501    1.0116339
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7562172   -1.0130216   -0.4994128
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.4716980    0.2327325    0.7106636
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6417436    0.3282534    0.9552339
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1372695   -0.0545599    0.3290989
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8898395   -1.1082663   -0.6714128
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5276682   -0.8286398   -0.2266966
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5428468   -0.8657386   -0.2199549
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8597354   -0.9988785   -0.7205922
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8147206   -0.9937064   -0.6357349
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8544321   -0.9274032   -0.7814610
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0649002   -1.1744852   -0.9553153
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6381307    0.5080545    0.7682068
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0150970   -1.2350546   -0.7951395
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3133539   -0.4260484   -0.2006594
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5877785   -0.6414153   -0.5341418
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5874502   -0.6518519   -0.5230485
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0625227   -0.0814692    0.2065147
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3342538   -1.3754167   -1.2930909


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0682673   -1.2076956   -0.9288391
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5140815   -0.5399633   -0.4881998
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7239791   -0.7438253   -0.7041329
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7031481   -0.8287310   -0.5775653
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4410128   -0.5302967   -0.3517289
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1833795   -0.2343793   -0.1323798
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3044096    0.2782992    0.3305201
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4410463    0.3615008    0.5205919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5933575   -0.6128938   -0.5738211
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9571111   -1.0731621   -0.8410602
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9097790   -1.0080462   -0.8115117
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8079199   -0.8550714   -0.7607684
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1830569   -1.2831570   -1.0829568
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0116486   -0.1020399    0.0787427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2977181   -1.3209986   -1.2744376


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1330698   -0.3948139    0.1286744
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2141851   -0.6025614    0.1741912
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3734654   -1.1068566    0.3599258
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1122637   -0.3301946    0.1056673
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0613476   -0.2844120    0.1617169
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2192401   -0.5538164    0.9922966
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.6196269   -1.6440848    2.8833385
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0538826   -0.7536595    0.6458942
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.3697644    0.1546503    0.5848786
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.3665934   -0.4557042    1.1888911
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0700785   -0.2137592    0.0736023
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0614855   -0.1010132   -0.0219578
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1376318   -0.1950394   -0.0802241
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1101204   -0.2476752    0.0274343
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0261444   -0.0203489    0.0726377
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1263825   -0.2024128   -0.0503521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0340679   -0.0640768   -0.0040590
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0865706   -0.1786569    0.3517981
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1852659   -0.0091737    0.3797055
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3643089   -0.7064685   -0.0221493
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3675653    0.0728204    0.6623102
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0144768   -0.1965774    0.2255309
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0549146   -0.3565361    0.4663654
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1198616   -0.2468139    0.0070908
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2153927   -0.6528506    0.2220652
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2909782   -0.8174817    0.2355254
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0866671   -0.1896238    0.0162896
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0714157   -0.3177122    0.1748807
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1351588   -0.3828361    0.1125184
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0579435   -0.2657495    0.1498625
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1179244    0.0067205    0.2291283
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0291874   -0.2227734    0.1643987
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0326077   -0.0569429    0.1221583
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0810266   -0.2322055    0.0701524
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1020692   -0.2726304    0.0684919
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0282777   -0.0759325    0.0193771
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0173470   -0.0539716    0.0192776
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0611721   -0.2338166    0.1114725
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0346651   -0.0582306   -0.0110996
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0157415   -0.0976856    0.0662027
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0375886   -0.1656904    0.0905132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0125480   -0.0152199    0.0403159
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0678338   -0.1518550    0.0161875
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0606148   -0.4962444    0.3750148
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2008939   -0.4543084    0.0525206
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3517976   -0.5626566   -0.1409385
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2150420   -0.5080541    0.0779702
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0871760   -0.2327219    0.0583698
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3326890    0.1204602    0.5449178
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2181468   -0.5063744    0.0700808
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3669322   -0.6691571   -0.0647073
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0282058   -0.1379905    0.0815789
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2043704    0.0438335    0.3649074
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0465122   -0.0124819    0.1055062
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0666861   -0.1318809   -0.0014913
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0482128   -0.0239762    0.1204019
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1679598   -0.3745578    0.0386382
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0319784   -0.0666380    0.1305948
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0749964   -0.1179409   -0.0320518
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0225090   -0.0788042    0.0337863
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0741713   -0.1990961    0.0507535
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0365357    0.0008327    0.0722387

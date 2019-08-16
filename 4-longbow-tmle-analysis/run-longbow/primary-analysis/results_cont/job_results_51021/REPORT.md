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
![](/tmp/3637635e-aca5-4fd4-a6f8-5b46bf76bf2b/56c324fd-c9c0-48df-be01-b22a5dcca08f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3637635e-aca5-4fd4-a6f8-5b46bf76bf2b/56c324fd-c9c0-48df-be01-b22a5dcca08f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3637635e-aca5-4fd4-a6f8-5b46bf76bf2b/56c324fd-c9c0-48df-be01-b22a5dcca08f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.9031763   -1.0622897   -0.7440629
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.2378863   -1.6418093   -0.8339632
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.9368428   -1.3010658   -0.5726197
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.2908556    0.0722354    0.5094759
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.4705525    0.0979137    0.8431913
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.6520848    0.1802020    1.1239676
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.0943534   -1.2438676   -0.9448391
Birth       ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.1080281   -1.5921350   -0.6239213
Birth       ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.7436250   -1.4200250   -0.0672250
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0776612   -0.2220004    0.0666780
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1496897   -0.3832731    0.0838936
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.0180156   -0.2298660    0.2658971
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0371629   -0.2410963    0.1667705
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.3065061   -0.6823103    0.0692981
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.0261187   -0.2323612    0.2845986
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.9022857    0.7039042    1.1006673
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.7844444   -0.3846224    1.9535113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.5994872    0.2123816    0.9865928
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.7036842   -1.0454584   -0.3619100
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.2514286   -1.5184159    1.0155587
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                 0.0040000   -2.5765694    2.5845694
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -1.0314533   -1.2379730   -0.8249335
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.9657143   -1.5437779   -0.3876507
Birth       ki1000108-IRC              INDIA                          >=30                 NA                -0.8269231   -1.4629238   -0.1909223
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.2709259   -0.6001157    0.0582639
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0064720   -0.5261620    0.5391060
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.1757251   -0.6662535    0.3148034
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4406667   -1.9632411   -0.9180922
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.3416667   -1.8258691   -0.8574642
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.4585714   -2.1459417   -0.7712011
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 1.7582379    1.6328552    1.8836207
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                 1.7840980    1.5740408    1.9941552
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                 1.5617626    1.4215410    1.7019842
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -1.1646453   -1.3783996   -0.9508910
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                -1.1554249   -1.3633694   -0.9474803
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                -1.0676393   -1.2799503   -0.8553284
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5096714   -0.5413548   -0.4779879
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6732002   -0.7384026   -0.6079978
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.3734290   -0.4362382   -0.3106197
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.0956906   -1.2390849   -0.9522964
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.2370007   -1.5736833   -0.9003180
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.9585331   -1.1288745   -0.7881917
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.9628864   -1.0048565   -0.9209163
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -1.1415539   -1.2663517   -1.0167561
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.9543894   -1.0294404   -0.8793384
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.7642646   -0.8246525   -0.7038767
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.9016576   -1.0375564   -0.7657587
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6107714   -0.6976392   -0.5239036
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.6778221   -0.7039347   -0.6517094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.7768265   -0.8038917   -0.7497614
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.7462525   -0.8082457   -0.6842593
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1096988   -0.2622215    0.0428240
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1164843   -0.5280130    0.2950443
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.2202846   -0.5196387    0.0790695
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 1.0387217    0.8160439    1.2613994
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.9696575    0.6119622    1.3273528
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.7828838    0.4184227    1.1473449
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.7595879   -0.9095751   -0.6096008
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.6634856   -0.9661543   -0.3608169
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.4054241   -0.7024055   -0.1084428
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.1174775   -0.0332824    0.2682373
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.1188768   -0.1634552    0.4012088
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.9984049    0.8187234    1.1780864
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 1.1240561    0.8977497    1.3503625
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                 1.1229546    0.8523889    1.3935204
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.4853236    0.2574954    0.7131517
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.5491326    0.0719934    1.0262717
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.4633398    0.2375953    0.6890842
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6402769    0.4656146    0.8149393
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.4531586   -0.0106702    0.9169874
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.3993447    0.1907537    0.6079357
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5302968   -0.6996451   -0.3609486
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5534848   -1.0425702   -0.0643995
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.2761240   -0.7250774    0.1728294
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.6152875   -0.7566917   -0.4738834
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.3097297   -0.8554783    0.2360189
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.7750000   -1.3672661   -0.1827339
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6639818   -0.8213165   -0.5066471
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.5627940   -0.6521109   -0.4734771
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.7846763   -0.9392358   -0.6301168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.9254892   -1.0612057   -0.7897726
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.8411672   -1.1232805   -0.5590538
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -1.3060967   -1.5915690   -1.0206243
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4301790   -0.5394686   -0.3208895
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.3240129   -0.5924012   -0.0556245
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.5789059   -0.7716247   -0.3861870
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.1898621   -0.2937491   -0.0859751
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0711962   -0.3060227    0.1636304
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.2453416   -0.4255338   -0.0651495
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0471741   -0.0511150    0.1454631
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0372019   -0.1469342    0.2213379
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0825573   -0.2868207    0.1217060
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0846997    0.0198606    0.1495388
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.1775026   -0.0360936    0.3910988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0428135   -0.0612906    0.1469176
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0850056   -0.1590469   -0.0109644
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.1052597   -0.2320887    0.0215693
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3706422   -0.4549910   -0.2862934
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0140753   -0.1265197    0.1546703
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0285390   -0.3187938    0.2617158
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.1652290   -0.4381506    0.1076926
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.5749591   -0.6838655   -0.4660526
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.4845546   -0.6738937   -0.2952155
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8642186   -1.0650273   -0.6634100
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.5750054    0.5130494    0.6369615
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.6388865    0.5788276    0.6989453
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5618880    0.4890765    0.6346995
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3186548    0.2865428    0.3507669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3117862    0.2456520    0.3779204
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.2419315    0.1797679    0.3040951
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1932347    0.0844870    0.3019825
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.3085944    0.1116402    0.5055486
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.1707917    0.0527162    0.2888672
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6749628   -0.7144510   -0.6354747
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.8880739   -1.0055817   -0.7705660
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7554618   -0.8234160   -0.6875075
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2393960   -0.2922321   -0.1865600
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2525207   -0.3773220   -0.1277193
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.4020415   -0.4826374   -0.3214455
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.4296668    0.3206843    0.5386492
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.4110832    0.2185049    0.6036615
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.4683628    0.3133028    0.6234227
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.5918785   -0.6193613   -0.5643957
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.5828912   -0.6095386   -0.5562437
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.6682095   -0.7277322   -0.6086869
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.7544793   -0.9010332   -0.6079255
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.0253463   -1.4061999   -0.6444927
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.8646174   -1.1566789   -0.5725559
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.4608463    0.1999373    0.7217553
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.6006739    0.0019350    1.1994127
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.2829869   -0.1766620    0.7426357
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.9760896   -1.1176200   -0.8345592
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.9879225   -1.2415202   -0.7343247
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.7289597   -0.9620747   -0.4958448
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0749275   -0.0845185    0.2343735
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1343044   -0.3831576    0.1145488
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.4571387    0.2146382    0.6996391
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.3919861    0.1918090    0.5921632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6218808    0.3274799    0.9162817
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.3043614    0.1355369    0.4731859
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0057965   -0.1666444    0.1782373
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5589133   -0.6758726   -0.4419540
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5758333   -0.8476059   -0.3040607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.5296032   -0.8093404   -0.2498659
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.7527308   -0.8508001   -0.6546615
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.5192793   -0.8088868   -0.2296717
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.9530460   -1.3414201   -0.5646719
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9453054   -1.0620645   -0.8285464
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.6028384   -0.9090698   -0.2966069
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.9465370   -1.1762650   -0.7168090
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8482036   -0.9495772   -0.7468301
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.0979401   -1.3434044   -0.8524759
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.9669629   -1.1456566   -0.7882692
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.5944266   -0.7150111   -0.4738422
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.5973905   -0.7962617   -0.3985193
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.6494528   -0.8982534   -0.4006522
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.7942715   -0.8668311   -0.7217118
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.8945183   -1.0303049   -0.7587317
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.8003578   -0.8733357   -0.7273800
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0619591   -1.1717122   -0.9522059
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.2559928   -1.4611987   -1.0507869
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.2482828   -1.4558081   -1.0407575
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.6982215    0.5944032    0.8020399
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                 0.6982316    0.2172661    1.1791971
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.6362162    0.5198805    0.7525519
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2440337   -1.3705099   -1.1175576
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0050121   -1.2179308   -0.7920933
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1384545   -1.3807311   -0.8961779
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.3033548   -0.3823240   -0.2243856
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.2712432   -0.4279413   -0.1145451
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.2780829   -0.3732299   -0.1829360
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6297484   -0.6712078   -0.5882889
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.8073239   -0.9265036   -0.6881441
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7222537   -0.7872768   -0.6572307
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.5970099   -0.6444267   -0.5495932
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.6297245   -0.7313771   -0.5280720
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6017249   -0.6731547   -0.5302951
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0081929   -0.1235337    0.1399194
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.2707291   -0.5163875   -0.0250708
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0892649   -0.0562643    0.2347941
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2876004   -1.3189868   -1.2562140
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3055624   -1.3402346   -1.2708902
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3140734   -1.3977912   -1.2303556


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9630705   -1.0989132   -0.8272278
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4038798    0.2296279    0.5781316
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0682673   -1.2076956   -0.9288391
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0735842   -0.1836203    0.0364518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0562791   -0.2000837    0.0875255
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7932203    0.5962220    0.9902187
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2697590   -0.5399211    0.0004030
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7036191    1.6208471    1.7863911
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1463469   -1.3562674   -0.9364264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5140815   -0.5399633   -0.4881998
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7239791   -0.7438253   -0.7041329
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7031481   -0.8287310   -0.5775653
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0543956    0.9326967    1.1760945
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5420735    0.3899459    0.6942011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4410128   -0.5302967   -0.3517289
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1833795   -0.2343793   -0.1323798
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6047987   -0.6909649   -0.5186325
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5789633    0.5190130    0.6389137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3044096    0.2782992    0.3305201
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4410463    0.3615008    0.5205919
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5933575   -0.6128938   -0.5738211
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9571111   -1.0731621   -0.8410602
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4267017    0.3074751    0.5459283
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9097790   -1.0080462   -0.8115117
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8079199   -0.8550714   -0.7607684
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1315863   -1.2192240   -1.0439487
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6863435    0.5745700    0.7981170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1830569   -1.2831570   -1.0829568
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0116486   -0.1020399    0.0787427
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2977181   -1.3209986   -1.2744376


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.3347100   -0.7698147    0.1003948
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0336665   -0.4323686    0.3650357
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.1796969   -0.2529638    0.6123575
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.3612292   -0.1613445    0.8838029
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0136748   -0.5208834    0.4935338
Birth       ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3507283   -0.3425709    1.0440275
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0720285   -0.3460343    0.2019773
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0956768   -0.1920243    0.3833778
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.2693433   -0.6997462    0.1610597
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0632815   -0.2676777    0.3942408
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1178413   -1.3036206    1.0679380
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.3027985   -0.7377767    0.1321796
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.4522556   -0.8600197    1.7645309
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.7076842   -1.8954193    3.3107878
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)            0.0657390   -0.5481078    0.6795858
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2045302   -0.4641606    0.8732210
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.2773979   -0.4337424    0.9885382
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0952008   -0.3693985    0.5598001
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0990000   -0.6134157    0.8114157
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0179048   -0.8813641    0.8455546
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0258601   -0.2186054    0.2703256
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.1964753   -0.3844494   -0.0085013
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0092204   -0.0833508    0.1017916
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0970060    0.0313304    0.1626815
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1635289   -0.2359979   -0.0910599
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1362424    0.0658875    0.2065972
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.1413100   -0.5068799    0.2242598
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.1371575   -0.0840659    0.3583810
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1786675   -0.3103454   -0.0469897
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.0084970   -0.0775930    0.0945870
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1373930   -0.2861961    0.0114101
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1534932    0.0477782    0.2592082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0990045   -0.1337645   -0.0642445
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0684304   -0.1332677   -0.0035932
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0067856   -0.4458717    0.4323006
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1105859   -0.4471155    0.2259438
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0690642   -0.4907721    0.3526437
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.2558379   -0.6835236    0.1718479
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0961023   -0.2427071    0.4349118
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3541638    0.0213941    0.6869335
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.3164775   -0.9220510    0.2890961
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0013993   -0.3186630    0.3214617
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.1256512   -0.1662853    0.4175877
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1245497   -0.2025902    0.4516895
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0638090   -0.4585285    0.5861464
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0219838   -0.3456667    0.3016991
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1871183   -0.6836298    0.3093932
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2409322   -0.5143033    0.0324390
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0231880   -0.5407625    0.4943864
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.2541728   -0.2256584    0.7340040
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)            0.3055578   -0.2582123    0.8693279
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.1597125   -0.7686248    0.4491999
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.1011878   -0.0384866    0.2408622
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.1206945   -0.2751702    0.0337813
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0843220   -0.2284820    0.3971260
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.3806075   -0.6970135   -0.0642015
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1061662   -0.1837056    0.3960379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.1487269   -0.3704450    0.0729912
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.1186659   -0.1381158    0.3754476
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0554796   -0.2636503    0.1526911
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0099722   -0.2192042    0.1992599
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1297314   -0.3568175    0.0973547
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0928029   -0.1304850    0.3160909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0418862   -0.1646751    0.0809027
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0202541   -0.1669179    0.1264096
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.2856366   -0.3974662   -0.1738069
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0426143   -0.3638932    0.2786646
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.1793043   -0.4886050    0.1299964
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0904044   -0.1277549    0.3085638
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2892596   -0.5176517   -0.0608674
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0638811    0.0100002    0.1177619
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0131174   -0.0558575    0.0296226
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0068686   -0.0803731    0.0666359
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0767233   -0.1467335   -0.0067132
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.1153597   -0.1096708    0.3403902
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0224430   -0.1822839    0.1373978
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2131110   -0.3371741   -0.0890480
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0804990   -0.1591087   -0.0018892
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0131246   -0.1486880    0.1224388
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1626454   -0.2590632   -0.0662276
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0185836   -0.2403697    0.2032026
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0386960   -0.1525426    0.2299346
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0089873   -0.0263518    0.0443265
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0763310   -0.1420313   -0.0106308
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2708670   -0.6796337    0.1378997
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1101381   -0.4364785    0.2162023
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.1398275   -0.5099447    0.7895997
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.1778595   -0.7110267    0.3553078
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0118329   -0.3024144    0.2787487
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.2471299   -0.0258109    0.5200707
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.2092319   -0.5054095    0.0869457
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.3822112    0.0920040    0.6724184
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.2298947   -0.1250444    0.5848338
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0876247   -0.3518456    0.1765963
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2619076   -0.8236798    0.2998646
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1286601   -0.1278257    0.3851458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0169200   -0.3127914    0.2789513
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0293101   -0.2738935    0.3325137
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.2334515   -0.0723100    0.5392131
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.2003152   -0.6008798    0.2002495
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3424671    0.0155256    0.6694086
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0012315   -0.2612211    0.2587580
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2497365   -0.5159433    0.0164703
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1187593   -0.3256351    0.0881166
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0029639   -0.2354296    0.2295018
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0550262   -0.3314112    0.2213588
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1002468   -0.2539463    0.0534527
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0060864   -0.1088163    0.0966435
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.1940337   -0.4267201    0.0386526
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1863238   -0.4212930    0.0486455
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0000101   -0.4536249    0.4536452
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0620053   -0.1798440    0.0558335
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2390216   -0.0090811    0.4871243
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1055792   -0.1679356    0.3790940
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0321117   -0.1434673    0.2076907
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0252719   -0.0984250    0.1489688
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1775755   -0.3038253   -0.0513257
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0925054   -0.1695255   -0.0154853
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0327146   -0.1447439    0.0793147
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0047150   -0.0902398    0.0808098
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.2789220   -0.5583738    0.0005298
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0810720   -0.1163048    0.2784488
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0179620   -0.0631626    0.0272387
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0264730   -0.1167682    0.0638222


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0598942   -0.1602017    0.0404132
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1130242   -0.0361346    0.2621829
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0260860   -0.0521716    0.1043437
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0040770   -0.1053288    0.1134827
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0191162   -0.1664062    0.1281738
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1090654   -0.2864659    0.0683351
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0761842   -0.1123529    0.2647213
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                 0.0208702   -0.0542483    0.0959887
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0011669   -0.1214636    0.1237973
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0167381   -0.2985906    0.3320668
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0546188   -0.1471999    0.0379623
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0182983    0.0004270    0.0361696
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0044102   -0.0224677    0.0136474
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0335478   -0.0744453    0.1415409
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0113951   -0.0365680    0.0137778
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0215395   -0.0165430    0.0596220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0461571   -0.0628459   -0.0294682
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0300972   -0.1205225    0.0603280
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0669992   -0.2030321    0.0690338
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0564398   -0.0078725    0.1207520
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0064323   -0.0723020    0.0594375
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0559907   -0.0698726    0.1818539
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0567499   -0.1066434    0.2201433
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1232256   -0.2523024    0.0058511
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0276202   -0.0496471    0.1048875
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0163578   -0.0532078    0.0859233
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0017266   -0.0324811    0.0290279
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0866687   -0.1689751   -0.0043623
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0108338   -0.0742085    0.0525409
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0185085   -0.0714372    0.0344202
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0174118   -0.0767100    0.0418863
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0064331   -0.0455567    0.0326905
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0983739   -0.1530174   -0.0437304
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0760741   -0.1701507    0.0180025
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0298396   -0.0906422    0.0309630
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0039579   -0.0069657    0.0148815
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0142452   -0.0329748    0.0044843
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0008463   -0.0776559    0.0793484
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0369669   -0.0595549   -0.0143789
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0544473   -0.0895459   -0.0193487
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0113796   -0.0633820    0.0861411
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0014790   -0.0201594    0.0172015
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0663462   -0.1501178    0.0174255
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0142191   -0.1865160    0.1580778
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0189785   -0.0352728    0.0732298
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0449730   -0.0800034    0.1699494
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0347156   -0.1132262    0.1826574
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0442970   -0.0737571    0.1623511
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0017628   -0.0449995    0.0485250
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0069158   -0.0351308    0.0489624
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0355265   -0.0366284    0.1076814
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0397376   -0.0927793    0.0133041
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0159236   -0.0844992    0.0526520
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0136485   -0.0659082    0.0386112
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0696273   -0.1345116   -0.0047429
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0118780   -0.0614595    0.0377034
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0609768   -0.0134665    0.1354202
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0219794   -0.0352651    0.0792238
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0330265   -0.0564641   -0.0095890
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0129492   -0.0433726    0.0174741
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0198414   -0.1074405    0.0677577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0101177   -0.0336289    0.0133936

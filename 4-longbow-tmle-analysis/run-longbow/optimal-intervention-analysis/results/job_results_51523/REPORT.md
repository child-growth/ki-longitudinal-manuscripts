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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       176     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            36     257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           45     257
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)       117     191
Birth       ki0047075b-MAL-ED          BRAZIL                         <20            34     191
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           40     191
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)       165     205
Birth       ki0047075b-MAL-ED          INDIA                          <20            25     205
Birth       ki0047075b-MAL-ED          INDIA                          >=30           15     205
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)       132     173
Birth       ki0047075b-MAL-ED          NEPAL                          <20             5     173
Birth       ki0047075b-MAL-ED          NEPAL                          >=30           36     173
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       145     287
Birth       ki0047075b-MAL-ED          PERU                           <20            77     287
Birth       ki0047075b-MAL-ED          PERU                           >=30           65     287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       135     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            41     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           86     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        74     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           40     123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        77      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      90
Birth       ki1000108-IRC              INDIA                          [20-30)       325     388
Birth       ki1000108-IRC              INDIA                          <20            35     388
Birth       ki1000108-IRC              INDIA                          >=30           28     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)         1       2
Birth       ki1000109-EE               PAKISTAN                       <20             0       2
Birth       ki1000109-EE               PAKISTAN                       >=30            1       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       135     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20            27     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30           25     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)        15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20             6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30            7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)        22      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20             3      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30            2      27
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       705    1541
Birth       ki1101329-Keneba           GAMBIA                         <20           238    1541
Birth       ki1101329-Keneba           GAMBIA                         >=30          598    1541
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9937   13884
Birth       ki1119695-PROBIT           BELARUS                        <20          1406   13884
Birth       ki1119695-PROBIT           BELARUS                        >=30         2541   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      9266   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2200   13790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2324   13790
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       405     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20           121     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          326     852
Birth       ki1135781-COHORTS          INDIA                          [20-30)      3180    4715
Birth       ki1135781-COHORTS          INDIA                          <20           368    4715
Birth       ki1135781-COHORTS          INDIA                          >=30         1167    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1821    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           378    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          851    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      9558   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          8187   19603
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1858   19603
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       293     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     369
6 months    ki1000108-IRC              INDIA                          [20-30)       342     407
6 months    ki1000108-IRC              INDIA                          <20            36     407
6 months    ki1000108-IRC              INDIA                          >=30           29     407
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     370
6 months    ki1000109-EE               PAKISTAN                       <20             1     370
6 months    ki1000109-EE               PAKISTAN                       >=30          210     370
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1017    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       261     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           83     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            65     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          109     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       370     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     563
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11316   15761
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30         2825   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5481    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1261    8280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1538    8280
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       470     961
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     961
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          373     961
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3331    4904
6 months    ki1135781-COHORTS          INDIA                          <20           371    4904
6 months    ki1135781-COHORTS          INDIA                          >=30         1202    4904
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1601    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          776    2708
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7679   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7905   16805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1221   16805
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       289     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       408     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          105     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       790    1714
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       323     499
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            98     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           78     499
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2893    4035
24 months   ki1119695-PROBIT           BELARUS                        <20           369    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30          773    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       299     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            71     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           86     456
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       528    1067
24 months   ki1135781-COHORTS          GUATEMALA                      <20           153    1067
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          386    1067
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2466    3695
24 months   ki1135781-COHORTS          INDIA                          <20           247    3695
24 months   ki1135781-COHORTS          INDIA                          >=30          982    3695
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1460    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           292    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          693    2445
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       250     475
24 months   ki1148112-LCNI-5           MALAWI                         <20            80     475
24 months   ki1148112-LCNI-5           MALAWI                         >=30          145     475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4058    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3855    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          714    8627


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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
![](/tmp/8ab25eda-d6c3-49e7-87d4-d8582c097db8/16864782-998d-4566-9d33-bde6690cfac5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0489762   -1.3038926   -0.7940599
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6671131   -1.0875602   -0.2466661
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7496799   -1.1867666   -0.3125932
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8509928   -1.1058299   -0.5961557
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6086270   -0.8526280   -0.3646259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6285477   -0.8362716   -0.4208238
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0687119   -1.5029556   -0.6344682
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0164874   -0.4970071    0.4640323
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1220056   -1.5343180   -0.7096932
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9062620   -1.4693052   -0.3432187
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1423678    0.0397143    0.2450214
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.4528318    1.2638612    1.6418025
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3995999   -0.4512304   -0.3479693
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2594429    0.1083335    0.4105522
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5413693   -0.6084550   -0.4742837
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1881180   -0.2560948   -0.1201412
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4918871   -1.5203092   -1.4634650
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1223880   -1.2551008   -0.9896752
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.2420740   -0.0664610    0.5506090
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8877405   -1.2040700   -0.5714110
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6673664   -0.9103543   -0.4243785
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2896847   -1.4441863   -1.1351831
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9610873   -1.1808174   -0.7413572
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3152363   -1.4952253   -1.1352472
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3129143   -1.7835647   -0.8422639
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.9659427   -1.5088429   -0.4230426
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4289918   -1.5382563   -1.3197274
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8743412   -2.1915410   -1.5571414
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2120563   -1.4526211   -0.9714915
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0286960   -1.1194968   -0.9378952
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2205856   -1.3627165   -1.0784546
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4564524   -0.5546966   -0.3582082
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9127094   -1.0079820   -0.8174369
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.6386068   -1.8256134   -1.4516002
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2645198   -1.3547292   -1.1743103
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1638657    0.0575839    0.2701476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8835273   -0.9308289   -0.8362256
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8238267   -1.9957891   -1.6518643
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.0129035   -1.0555783   -0.9702287
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0758144   -1.1280250   -1.0236039
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5516310   -1.7213959   -1.3818661
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2440059   -1.2736369   -1.2143749
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8355503   -1.9855230   -1.6855776
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3977427   -0.6576479   -0.1378375
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5704788   -1.9286552   -1.2123024
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6953680   -1.9073730   -1.4833631
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5286078   -1.8024170   -1.2547985
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4637665   -2.6586667   -2.2688662
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.2914792   -2.6299583   -1.9530002
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7345112   -2.0977551   -1.3712672
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9213603   -2.2077696   -1.6349511
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4724114   -1.6715296   -1.2732932
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3554007   -1.5553909   -1.1554104
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5478193   -1.6220088   -1.4736297
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9457035   -2.1525660   -1.7388410
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0007735   -0.3214250    0.3229720
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.4441473   -2.6932127   -2.1950819
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8409236   -2.9719516   -2.7098956
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.9486896   -2.0025928   -1.8947863
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3650435   -2.4484158   -2.2816711
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7208078   -1.9210811   -1.5205345
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9714061   -2.0070299   -1.9357822


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0010732   -1.1398488   -0.8622975
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0341467   -0.0293905    0.0976838
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5006062   -0.5212001   -0.4800123
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5747080   -1.5944357   -1.5549802
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2105413   -1.3291476   -1.0919350
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8900815   -0.9160782   -0.8640848
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8494222   -1.9760821   -1.7227624
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1826015   -2.2858082   -2.0793948
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5650387   -1.6150832   -1.5149942
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4008114   -2.5160291   -2.2855938
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0059919   -2.0454828   -1.9665010
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8866737   -1.9780710   -1.7952764
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0127124   -2.0404582   -1.9849666


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0354207   -0.2406169    0.1697756
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0938293   -0.4666274    0.2789689
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2513933   -0.6777074    0.1749208
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1420911   -0.0550514    0.3392335
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3236030   -0.5377558   -0.1094501
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0980554   -0.2770157    0.0809049
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1348908   -0.2897605    0.5595421
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2915538   -0.7655004    0.1823928
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2726468   -0.6037165    0.0584228
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.3769762   -0.1991802    0.9531327
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1082212   -0.1907944   -0.0256479
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1273543   -0.1955419   -0.0591667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1010064   -0.1478489   -0.0541638
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1297128   -0.2590046   -0.0004211
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1365649   -0.1949855   -0.0781443
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0609312   -0.1167648   -0.0050976
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0828208   -0.1033447   -0.0622969
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0832898   -0.1712592    0.0046797
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1910532   -0.4789783    0.0968718
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3228008   -0.6355700   -0.0100316
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1063071   -0.1031291    0.3157432
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0371163   -0.1463699    0.0721374
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1022887   -0.2814054    0.0768280
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0448852   -0.1870468    0.0972765
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1105365   -0.5620629    0.3409900
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2684635   -0.7916076    0.2546806
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0271355   -0.0395245    0.0937956
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0243430   -0.3295576    0.2808716
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1941571   -0.4233046    0.0349905
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0584081   -0.1068603   -0.0099558
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0219072   -0.0947827    0.1385971
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0845793   -0.1673769   -0.0017817
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0086748   -0.0771598    0.0945094
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0768677   -0.0569323    0.2106677
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0676324   -0.1275777   -0.0076870
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0568671   -0.1111151   -0.0026192
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0065543   -0.0455386    0.0324300
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0080931   -0.1499900    0.1661762
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0312258   -0.0579338   -0.0045178
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0647579   -0.0993279   -0.0301880
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0982494   -0.2543370    0.0578382
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0695407   -0.0887423   -0.0503390
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1075629   -0.1944731   -0.0206528
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4395770    0.2126671    0.6664870
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2789434   -0.6214007    0.0635139
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0547315   -0.2485244    0.1390614
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0942284   -0.3417427    0.1532860
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1421214   -0.2958630    0.0116203
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2678890   -0.5918516    0.0560735
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0479664   -0.3988095    0.3028767
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2612412   -0.5350815    0.0125992
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1137064   -0.2924446    0.0650317
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0741324   -0.2491419    0.1008770
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0172194   -0.0714430    0.0370041
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0621130   -0.1140265    0.2382525
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1321783   -0.3763407    0.1119841
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0433359   -0.1821488    0.2688207
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0188140   -0.1308349    0.0932070
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0573023   -0.0933107   -0.0212939
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0248216   -0.0949507    0.0453075
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1658659   -0.3493444    0.0176126
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0413063   -0.0647238   -0.0178889

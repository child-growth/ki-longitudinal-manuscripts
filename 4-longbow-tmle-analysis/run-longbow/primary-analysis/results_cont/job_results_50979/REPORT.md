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
![](/tmp/39f2f52e-c345-4272-82c5-4e000ac7dbd5/4691ca37-4af1-42f9-b5bc-b6c726a77627/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/39f2f52e-c345-4272-82c5-4e000ac7dbd5/4691ca37-4af1-42f9-b5bc-b6c726a77627/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/39f2f52e-c345-4272-82c5-4e000ac7dbd5/4691ca37-4af1-42f9-b5bc-b6c726a77627/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.0493826   -1.1989035   -0.8998617
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.2573368   -1.5904080   -0.9242657
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.0881988   -1.4275615   -0.7488361
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.8493984   -1.0599059   -0.6388908
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.6330619   -1.0019571   -0.2641666
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.6127500   -0.9464810   -0.2790190
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.9996992   -1.1584502   -0.8409483
Birth       ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.2833270   -1.6526204   -0.9140336
Birth       ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.5528090   -1.0534568   -0.0521612
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.6629545   -0.8309067   -0.4950024
Birth       ki0047075b-MAL-ED          NEPAL                          <20                  NA                -1.9920000   -3.0801186   -0.9038814
Birth       ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.6991667   -1.0728334   -0.3254999
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.9222942   -1.0752415   -0.7693469
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -1.1934599   -1.4166652   -0.9702546
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.6505547   -0.8983602   -0.4027492
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.7416107   -0.9338686   -0.5493529
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.7839199   -1.1219704   -0.4458695
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.6384491   -0.8436951   -0.4332031
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.0406757   -1.3241391   -0.7572122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.6533333   -1.3427613    0.0360946
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.7992500   -1.1501818   -0.4483182
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.2944615   -0.4694031   -0.1195200
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.6917143   -1.3023032   -0.0811254
Birth       ki1000108-IRC              INDIA                          >=30                 NA                 0.0139286   -0.4512765    0.4791336
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.4153776   -1.6421309   -1.1886243
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.5044096   -2.1645184   -0.8443008
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.0984978   -1.5213110   -0.6756845
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4506667   -0.9371878    0.0358544
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.4650000   -1.2407746    0.3107746
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.7528571   -1.4046799   -0.1010344
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0984566    0.0041695    0.1927437
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.3259121   -0.4936423   -0.1581819
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                 0.1369237    0.0310223    0.2428251
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 1.3264531    1.1645629    1.4883434
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                 1.0793310    0.9344020    1.2242599
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                 1.4532387    1.2686876    1.6377898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5039669   -0.5288085   -0.4791253
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5985184   -0.6509560   -0.5460808
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4012330   -0.4528767   -0.3495892
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2228882    0.1038590    0.3419175
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0667454   -0.3010056    0.1675148
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.0897080   -0.0532963    0.2327124
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6906746   -0.7312059   -0.6501433
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -1.0023978   -1.1206051   -0.8841905
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.5430569   -0.6095086   -0.4766052
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2188239   -0.2679530   -0.1696949
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5120241   -0.6243032   -0.3997450
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1967044   -0.2709654   -0.1224435
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.4784180   -1.5044101   -1.4524259
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.7032319   -1.7307714   -1.6756924
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.5064415   -1.5655167   -1.4473662
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.1143757   -1.2464964   -0.9822551
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.5731535   -1.9448567   -1.2014504
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.2407264   -1.5424045   -0.9390483
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0001137   -0.2056721    0.2058995
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.2501495   -0.0580414    0.5583404
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0104841   -0.2544467    0.2754148
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.2508710   -1.3896984   -1.1120435
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.3109409   -1.6249506   -0.9969311
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.9346445   -1.2391591   -0.6301299
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.5523243   -0.6728895   -0.4317591
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.5027174   -0.7907851   -0.2146497
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.2847309   -1.4394781   -1.1299836
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -1.3563590   -1.5618258   -1.1508923
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.3691814   -1.6025459   -1.1358168
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.1372322   -1.3133337   -0.9611307
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.2438610   -1.6339636   -0.8537585
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.0049344   -1.2371860   -0.7726827
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3974826   -1.5767600   -1.2182053
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.4796649   -1.9104825   -1.0488474
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3074959   -1.4856177   -1.1293741
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4358703   -1.5939347   -1.2778060
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -1.3034848   -1.7510472   -0.8559225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.4308915   -1.8644840   -0.9972989
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -1.2454678   -1.3893168   -1.1016189
6 months    ki1000108-IRC              INDIA                          <20                  NA                -1.3291204   -1.7465122   -0.9117286
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.9863793   -1.4834112   -0.4893474
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.3732358   -1.4605388   -1.2859328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.3771876   -1.5022586   -1.2521165
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.6274152   -1.8131809   -1.4416494
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -1.8751736   -2.0095564   -1.7407909
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -1.8124453   -2.1661370   -1.4587536
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -2.0482418   -2.3109385   -1.7855451
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4260212   -1.5363580   -1.3156844
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.2248758   -1.4637334   -0.9860181
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.4529460   -1.6379509   -1.2679412
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.0281335   -1.1191492   -0.9371179
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.3060898   -1.5298043   -1.0823752
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.1937030   -1.3766393   -1.0107666
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.1787326   -1.2665123   -1.0909529
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.2613382   -1.4343752   -1.0883012
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2551203   -1.4325072   -1.0777335
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5736282   -0.6340766   -0.5131798
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.6135798   -0.7768800   -0.4502796
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4588847   -0.5511580   -0.3666114
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.8686867   -0.9369738   -0.8003997
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.8616701   -0.9784700   -0.7448702
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.9702488   -1.0486449   -0.8918528
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.5023471   -1.6523918   -1.3523024
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -1.7805846   -2.0450276   -1.5161417
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -1.5229989   -1.7825272   -1.2634705
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.2610414   -1.3514232   -1.1706596
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.4828969   -1.6773907   -1.2884030
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.4189556   -1.6478968   -1.1900145
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1117916    0.0190632    0.2045200
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0501710   -0.1972200    0.0968780
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.1787132    0.0722192    0.2852073
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8743644   -0.9061404   -0.8425884
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9762317   -1.0406308   -0.9118325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.8760294   -0.9361384   -0.8159204
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.7774250   -1.8768885   -1.6779614
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.7706915   -1.9815739   -1.5598091
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -1.8815958   -1.9950292   -1.7681623
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -1.0060352   -1.0458996   -0.9661707
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -1.2797894   -1.3847435   -1.1748352
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -1.0715979   -1.1400881   -1.0031077
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -1.0705352   -1.1229155   -1.0181549
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -1.2419512   -1.3633477   -1.1205548
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -1.2352082   -1.3141025   -1.1563140
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.6411296   -1.7480756   -1.5341837
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.5624654   -1.7411404   -1.3837903
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.7166576   -1.8591132   -1.5742021
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2465683   -1.2760936   -1.2170431
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3753178   -1.4039746   -1.3466610
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3252751   -1.3946896   -1.2558607
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.8370407   -1.9877150   -1.6863663
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -2.2018656   -2.5088987   -1.8948326
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -2.1586879   -2.4828074   -1.8345683
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0385032   -0.1798150    0.2568213
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0591815   -0.4358044    0.5541674
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0400957   -0.3030871    0.3832784
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.9060583   -2.0566518   -1.7554649
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.7829464   -2.0639004   -1.5019924
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -1.4831400   -1.8269952   -1.1392847
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.7491989   -1.9431818   -1.5552160
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -1.8163262   -2.0260216   -1.6066308
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.6870762   -1.9077767   -1.4663756
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.6601403   -1.8691442   -1.4511363
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.6393655   -2.0028882   -1.2758427
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.6179268   -1.8524850   -1.3833685
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7047788   -2.8966774   -2.5128801
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7372222   -3.3356044   -2.1388400
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.4715761   -2.6650847   -2.2780674
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5767230   -2.6903707   -2.4630752
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3158824   -2.6368467   -1.9949180
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.6341667   -2.9203848   -2.3479486
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -1.7786783   -1.8818667   -1.6754899
24 months   ki1000108-IRC              INDIA                          <20                  NA                -1.8744144   -2.1781477   -1.5706811
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -1.7101149   -2.0547274   -1.3655025
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2175350   -2.3440449   -2.0910252
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.8855212   -2.1723662   -1.5986761
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -2.1879567   -2.4045740   -1.9713395
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.5549762   -1.6529840   -1.4569685
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.5590254   -1.8138540   -1.3041968
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.6878069   -1.8825835   -1.4930303
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.4236578   -1.5280090   -1.3193067
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.4977844   -1.6800381   -1.3155306
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.4107717   -1.6247312   -1.1968123
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.5235257   -1.5957534   -1.4512980
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -1.6501795   -1.7749672   -1.5253918
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.5850086   -1.6658674   -1.5041497
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.8720796   -1.9695183   -1.7746409
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.8359220   -2.0580900   -1.6137541
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.9335170   -2.1673539   -1.6996800
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.1558126   -0.3679555    0.0563304
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2357865   -1.7316758    1.2601028
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0264175   -0.2908221    0.3436572
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -2.3536013   -2.4991826   -2.2080201
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -2.6042377   -2.8643424   -2.3441330
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -2.3712198   -2.6355855   -2.1068542
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -2.8800975   -2.9731084   -2.7870866
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -2.9246931   -3.0904770   -2.7589091
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -2.8272133   -2.9378242   -2.7166024
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -1.9371521   -1.9853231   -1.8889810
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -2.3450005   -2.4689055   -2.2210956
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -2.0940130   -2.1732634   -2.0147626
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -2.3444777   -2.4022630   -2.2866925
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -2.4572698   -2.5814752   -2.3330644
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -2.4581602   -2.5463875   -2.3699329
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.9292645   -2.0562395   -1.8022895
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.7792536   -1.9984920   -1.5600153
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.8776619   -2.0447174   -1.7106065
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.9691696   -2.0041990   -1.9341402
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -2.0514131   -2.0880869   -2.0147392
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -2.0526263   -2.1365403   -1.9687123


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0843969   -1.2100768   -0.9587169
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7609424   -0.9178311   -0.6040538
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0010732   -1.1398488   -0.8622975
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7089017   -0.8656064   -0.5521971
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9322300   -1.0461262   -0.8183337
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.7266031   -0.8549719   -0.5982342
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9338211   -1.1465079   -0.7211344
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0341467   -0.0293905    0.0976838
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5006062   -0.5212001   -0.4800123
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5747080   -1.5944357   -1.5549802
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2105413   -1.3291476   -1.0919350
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3268010   -1.4351217   -1.2184802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633760   -1.1911088   -0.9356432
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8900815   -0.9160782   -0.8640848
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8494222   -1.9760821   -1.7227624
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6228361   -1.7581177   -1.4875546
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1826015   -2.2858082   -2.0793948
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5650387   -1.6150832   -1.5149942
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4008114   -2.5160291   -2.2855938
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0059919   -2.0454828   -1.9665010
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8866737   -1.9780710   -1.7952764
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0127124   -2.0404582   -1.9849666


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2079542   -0.5731800    0.1572715
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0388162   -0.4100034    0.3323711
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.2163365   -0.2083780    0.6410510
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.2366483   -0.1603254    0.6336221
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.2836278   -0.6855983    0.1183427
Birth       ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.4468902   -0.0787615    0.9725420
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -1.3290455   -2.4300496   -0.2280413
Birth       ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)           -0.0362121   -0.4458886    0.3734643
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.2711657   -0.5422084   -0.0001231
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.2717395   -0.0197243    0.5632032
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0423092   -0.4319181    0.3472997
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1031616   -0.1789328    0.3852561
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.3873423   -0.3580853    1.1327700
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2414257   -0.2096892    0.6925405
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)           -0.3972527   -1.0324089    0.2379034
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.3083901   -0.1886213    0.8054015
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0890320   -0.8564482    0.6783842
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.3168798   -0.0487964    0.6825560
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0143333   -0.9300456    0.9013789
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.3021905   -1.1155635    0.5111826
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.4243687   -0.6165909   -0.2321465
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0384671   -0.1020746    0.1790087
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.2471222   -0.3591759   -0.1350685
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.1267856    0.0460356    0.2075355
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0945515   -0.1525454   -0.0365576
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1027340    0.0454431    0.1600248
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.2896336   -0.5509600   -0.0283073
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1331802   -0.3171397    0.0507793
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.3117232   -0.4366618   -0.1867846
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.1476177    0.0699733    0.2252621
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.2932001   -0.4152613   -0.1711390
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0221195   -0.0661247    0.1103638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.2248139   -0.2593908   -0.1902370
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0280235   -0.0912835    0.0352365
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.4587778   -0.8537373   -0.0638183
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1263507   -0.4559928    0.2032915
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.2500359   -0.1215898    0.6216616
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0103704   -0.3266681    0.3474090
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0600699   -0.4038776    0.2837378
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3162265   -0.0185315    0.6509845
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.8686757   -1.6325624   -0.1047890
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0496069   -0.2626733    0.3618872
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0716282   -0.3270439    0.1837875
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0844505   -0.3639524    0.1950514
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.1066288   -0.5358046    0.3225469
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1322978   -0.1606745    0.4252702
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0821823   -0.5488175    0.3844529
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0899868   -0.1622895    0.3422630
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1323855   -0.3422685    0.6070394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0049788   -0.4565261    0.4664838
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0836525   -0.5251369    0.3578318
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2590885   -0.2583409    0.7765180
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0039517   -0.1047201    0.0968166
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.2541793   -0.4516376   -0.0567210
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0627283   -0.3159645    0.4414211
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.1730682   -0.4684771    0.1223407
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2011455   -0.0610385    0.4633294
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0269248   -0.2411274    0.1872778
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2779562   -0.5194999   -0.0364125
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1655694   -0.3700123    0.0388735
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0826056   -0.2767820    0.1115708
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0763877   -0.2733970    0.1206216
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0399516   -0.2134375    0.1335344
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1147435    0.0054167    0.2240703
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0070166   -0.1274468    0.1414801
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.1015621   -0.2039058    0.0007816
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.2782375   -0.5821326    0.0256576
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.0206518   -0.3205821    0.2792786
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2218555   -0.4366283   -0.0070827
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1579143   -0.4041083    0.0882797
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.1619626   -0.2558361   -0.0680891
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0669216    0.0022680    0.1315753
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1018673   -0.1733073   -0.0304273
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0016651   -0.0692932    0.0659631
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0067335   -0.2264717    0.2399386
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1041708   -0.2551988    0.0468572
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2737542   -0.3859206   -0.1615877
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0655627   -0.1446244    0.0134990
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1714160   -0.3026577   -0.0401743
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1646730   -0.2578385   -0.0715075
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0786643   -0.1295124    0.2868409
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0755280   -0.2535324    0.1024764
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.1287495   -0.1634736   -0.0940254
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0787068   -0.1491086   -0.0083050
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.3648250   -0.7075794   -0.0220705
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.3216472   -0.6795326    0.0362382
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0206784   -0.5217251    0.5630818
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0015925   -0.4056397    0.4088247
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1231119   -0.1946441    0.4408679
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.4229183    0.0478694    0.7979673
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0671273   -0.3534975    0.2192429
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0621227   -0.2298494    0.3540949
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0207748   -0.3996524    0.4412020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0422135   -0.2733442    0.3577713
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0324435   -0.6608433    0.5959564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2332027   -0.0393238    0.5057292
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2608406   -0.0796501    0.6013313
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0574437   -0.3653992    0.2505118
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0957361   -0.4165191    0.2250470
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0685634   -0.2911665    0.4282933
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3320139    0.0196542    0.6443735
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0295783   -0.2185432    0.2776998
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0040491   -0.2751274    0.2670292
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1328307   -0.3498741    0.0842128
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0741266   -0.2840739    0.1358208
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0128861   -0.2255823    0.2513545
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1266538   -0.2695130    0.0162054
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0614829   -0.1672209    0.0442552
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0361576   -0.2064696    0.2787849
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0614373   -0.3146336    0.1917590
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0799739   -1.5325785    1.3726306
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.1822301    0.0019535    0.3625068
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.2506364   -0.5488994    0.0476266
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0176185   -0.3190741    0.2838372
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0445956   -0.2343774    0.1451863
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0528842   -0.0909147    0.1966830
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.4078485   -0.5405634   -0.2751335
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1568610   -0.2491074   -0.0646146
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1127921   -0.2498017    0.0242176
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1136824   -0.2191677   -0.0081971
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.1500109   -0.1035429    0.4035646
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0516026   -0.1584882    0.2616933
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0822435   -0.1272316   -0.0372553
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0834567   -0.1696030    0.0026896


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0350143   -0.1219333    0.0519048
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0884559   -0.0381987    0.2151106
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0013739   -0.0671307    0.0643829
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0459472   -0.1445304    0.0526360
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0099358   -0.1230471    0.1031754
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0150077   -0.1197949    0.1498103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1068545   -0.0631573    0.2768664
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0135797   -0.0855186    0.0583592
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0207252   -0.0925589    0.1340092
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0786190   -0.4066257    0.2493876
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0643100   -0.1350246    0.0064047
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0009756   -0.0196351    0.0176838
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0033607   -0.0112412    0.0179626
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0931582   -0.1819933   -0.0043230
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0127404   -0.0102434    0.0357241
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0302252   -0.0622281    0.0017776
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0962900   -0.1134044   -0.0791755
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0913020   -0.1789099   -0.0036941
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0509071   -0.0647232    0.1665373
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0403296   -0.0224813    0.1031406
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0087350   -0.0754813    0.0580113
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0420701   -0.1506143    0.0664741
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0738562   -0.0719369    0.2196493
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0373612   -0.0800522    0.1547745
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0124195   -0.0598970    0.0847361
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0110616   -0.0454626    0.0675858
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0286205   -0.0488979   -0.0083430
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0235106   -0.1018535    0.0548323
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0198078   -0.0409144    0.0805300
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0589705   -0.1090113   -0.0089298
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0199457   -0.0732122    0.0333208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0325965   -0.0020784    0.0672714
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0353479   -0.0849229    0.0142270
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0593920   -0.1497600    0.0309759
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0711108   -0.1310038   -0.0112178
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0047930   -0.0211331    0.0115471
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0157172   -0.0339506    0.0025163
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0383087   -0.1133266    0.0367093
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0380941   -0.0604928   -0.0156954
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0700371   -0.1041974   -0.0358768
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0087508   -0.0792095    0.0617079
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0669782   -0.0851272   -0.0488293
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1060725   -0.1934768   -0.0186683
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0033312   -0.1345843    0.1412466
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0566361   -0.0066276    0.1198998
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0009006   -0.1272536    0.1254524
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0373041   -0.1260429    0.2006512
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0988909   -0.0276113    0.2253931
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0173547   -0.0327357    0.0674451
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0037993   -0.0442977    0.0366991
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0349335   -0.0333268    0.1031939
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0311416   -0.0840498    0.0217666
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0058752   -0.0666075    0.0548570
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0415130   -0.0940873    0.0110613
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0115109   -0.0776764    0.0546546
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0244078   -0.1480338    0.1968494
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0472101   -0.1287780    0.0343578
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0203599   -0.0479986    0.0887184
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0688398   -0.0964489   -0.0412307
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0453873   -0.0825003   -0.0082743
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0425908   -0.0445415    0.1297231
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0435428   -0.0664194   -0.0206661

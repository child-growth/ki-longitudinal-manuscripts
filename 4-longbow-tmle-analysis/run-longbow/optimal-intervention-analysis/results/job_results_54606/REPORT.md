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
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mage       n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       160     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            30     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           41     231
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)        41      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           16      65
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)        37      47
Birth       ki0047075b-MAL-ED          INDIA                          <20             8      47
Birth       ki0047075b-MAL-ED          INDIA                          >=30            2      47
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)        22      27
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0      27
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            5      27
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       114     233
Birth       ki0047075b-MAL-ED          PERU                           <20            66     233
Birth       ki0047075b-MAL-ED          PERU                           >=30           53     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        67     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            23     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           33     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        72     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             7     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           46     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        79      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             9      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      92
Birth       ki1000108-IRC              INDIA                          [20-30)       325     388
Birth       ki1000108-IRC              INDIA                          <20            35     388
Birth       ki1000108-IRC              INDIA                          >=30           28     388
Birth       ki1000109-EE               PAKISTAN                       [20-30)        94     239
Birth       ki1000109-EE               PAKISTAN                       <20             1     239
Birth       ki1000109-EE               PAKISTAN                       >=30          144     239
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       953    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20           161    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30          138    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)       410     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20            70     606
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30          126     606
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)       371     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20            67     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30          101     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       483     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20           130     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30          119     732
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       705    1543
Birth       ki1101329-Keneba           GAMBIA                         <20           238    1543
Birth       ki1101329-Keneba           GAMBIA                         >=30          600    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)       446     696
Birth       ki1113344-GMS-Nepal        NEPAL                          <20           149     696
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30          101     696
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9940   13890
Birth       ki1119695-PROBIT           BELARUS                        <20          1408   13890
Birth       ki1119695-PROBIT           BELARUS                        >=30         2542   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      9299   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2205   13835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2331   13835
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       405     852
Birth       ki1135781-COHORTS          GUATEMALA                      <20           121     852
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          326     852
Birth       ki1135781-COHORTS          INDIA                          [20-30)      3180    4715
Birth       ki1135781-COHORTS          INDIA                          <20           368    4715
Birth       ki1135781-COHORTS          INDIA                          >=30         1167    4715
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1821    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           378    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          851    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)     10853   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          9472   22444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         2119   22444
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
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     371
6 months    ki1000109-EE               PAKISTAN                       <20             1     371
6 months    ki1000109-EE               PAKISTAN                       >=30          211     371
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1017    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       261     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           83     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       424     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            66     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          114     604
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
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       371     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     564
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11316   15761
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15761
6 months    ki1119695-PROBIT           BELARUS                        >=30         2825   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5738    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1315    8653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1600    8653
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       295     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            34     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           42     371
24 months   ki1000108-IRC              INDIA                          [20-30)       343     409
24 months   ki1000108-IRC              INDIA                          <20            37     409
24 months   ki1000108-IRC              INDIA                          >=30           29     409
24 months   ki1000109-EE               PAKISTAN                       [20-30)        65     167
24 months   ki1000109-EE               PAKISTAN                       <20             1     167
24 months   ki1000109-EE               PAKISTAN                       >=30          101     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       289     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          105     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       790    1714
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1714
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1714
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       318     488
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            94     488
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           76     488
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2893    4035
24 months   ki1119695-PROBIT           BELARUS                        <20           369    4035
24 months   ki1119695-PROBIT           BELARUS                        >=30          773    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      1101    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           219    1638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          318    1638
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       527    1064
24 months   ki1135781-COHORTS          GUATEMALA                      <20           152    1064
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          385    1064
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2463    3692
24 months   ki1135781-COHORTS          INDIA                          <20           247    3692
24 months   ki1135781-COHORTS          INDIA                          >=30          982    3692
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/4cee7f66-71ae-45de-b038-b8a171241273/305ffbaf-6433-4983-a2b5-6d624e9830c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2610520   -1.5085271   -1.0135768
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0171937   -0.8234854    0.7890979
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6452729   -0.9323021   -0.3582437
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4619355   -0.8253993   -0.0984718
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5465856   -1.9197080   -1.1734633
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0191638   -0.4968542    0.4585267
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3977542   -1.5924243   -1.2030841
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8608137   -1.1422496   -0.5793778
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8592168   -1.0128746   -0.7055591
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0363409   -1.1833827   -0.8892992
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0920660   -0.0096425    0.1937744
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0684345   -1.2228926   -0.9139763
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.4159586    1.2429323    1.5889848
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4802571   -0.5268611   -0.4336531
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3295887    0.1870632    0.4721142
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5415084   -0.6077934   -0.4752235
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2238158   -0.2970281   -0.1506035
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4977860   -1.5241253   -1.4714467
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1211845   -1.2523729   -0.9899960
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1917136   -0.1438195    0.5272467
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9116721   -1.2355790   -0.5877651
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7838994   -1.0212443   -0.5465546
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5016729   -1.6759826   -1.3273632
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9173592   -1.1229466   -0.7117718
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3168928   -1.4973468   -1.1364388
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.6743987   -2.1098815   -1.2389159
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.9812288   -1.5045467   -0.4579109
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3915915   -1.4916156   -1.2915675
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.7611112   -2.1110512   -1.4111712
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2087102   -1.4485180   -0.9689024
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0362055   -1.1410336   -0.9313773
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1155667   -1.2404822   -0.9906512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4778052   -0.5695409   -0.3860695
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8883323   -0.9918256   -0.7848391
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.7222897   -1.9318810   -1.5126984
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2803096   -1.3709321   -1.1896871
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1622677    0.0517830    0.2727524
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8502204   -0.8855353   -0.8149055
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.9129543   -2.0680732   -1.7578353
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.0110684   -1.0532811   -0.9688557
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.0825643   -1.1343647   -1.0307638
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5550086   -1.7353323   -1.3746849
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2519700   -1.2821768   -1.2217631
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8769541   -2.0259925   -1.7279158
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3118760   -0.5409395   -0.0828124
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.7089222   -2.0561043   -1.3617401
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6151192   -1.8195679   -1.4106705
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6229281   -1.9799331   -1.2659232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6360771   -3.2218882   -2.0502660
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.3201057   -2.6546807   -1.9855308
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.8952703   -2.1553739   -1.6351667
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9550729   -2.2390461   -1.6710998
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.6068137   -1.7516459   -1.4619816
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4231787   -1.6143334   -1.2320240
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5697728   -1.6434160   -1.4961297
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.9528186   -2.1760952   -1.7295420
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0441684   -0.2654922    0.3538291
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.7097342   -1.8074374   -1.6120309
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9491028   -3.0776171   -2.8205884
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.1459395   -2.1938920   -2.0979871
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.3743063   -2.4440682   -2.3045444
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7194561   -1.8955648   -1.5433474
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9725051   -2.0087309   -1.9362793


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9312706   -1.0202524   -0.8422889
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4999118   -0.5204765   -0.4793472
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5894137   -1.6086318   -1.5701955
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2016239   -1.3201698   -1.0830780
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8672235   -0.8928135   -0.8416336
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8901556   -2.0155338   -1.7647773
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2200371   -2.3231580   -2.1169161
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5798251   -1.6298520   -1.5297981
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6052656   -1.6623196   -1.5482116
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2182259   -2.2576094   -2.1788424
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8966105   -1.9881282   -1.8050928
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0137151   -2.0414318   -1.9859984


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1429567   -0.0524161    0.3383295
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6588063   -1.4252309    0.1076183
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2375168   -0.4902516    0.0152180
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1697718   -0.4351405    0.0955969
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3909856    0.0523341    0.7296372
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2888775   -0.7602064    0.1824514
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0336675   -0.1857246    0.1183895
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0704569   -0.3293157    0.1884018
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0258852   -0.1529519    0.1011815
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1268464    0.0016663    0.2520266
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0612623   -0.1406287    0.0181041
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0167236   -0.1551607    0.1217135
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0890140   -0.1476516   -0.0303764
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0196548   -0.0611823    0.0218728
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1998586   -0.3258420   -0.0738753
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1364258   -0.1941139   -0.0787378
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0252334   -0.0858436    0.0353768
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0916277   -0.1096211   -0.0736342
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0838086   -0.1701206    0.0025034
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1441379   -0.4595708    0.1712951
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2899519   -0.6108964    0.0309926
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2223175    0.0174463    0.4271887
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.1780068    0.0443795    0.3116342
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1459610   -0.3250215    0.0330994
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0518521   -0.1946484    0.0909442
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2509479   -0.1673587    0.6692546
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2531774   -0.7573224    0.2509676
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0102648   -0.0854837    0.0649542
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1375730   -0.4726488    0.1975028
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1975032   -0.4257523    0.0307458
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0554860   -0.1298316    0.0188596
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0831116   -0.1867507    0.0205275
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0632266   -0.1422171    0.0157639
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0157023   -0.1088849    0.0774803
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.1605506   -0.0004425    0.3215436
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0705296   -0.1303679   -0.0106914
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0552691   -0.1052238   -0.0053145
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0170031   -0.0407640    0.0067577
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0972206   -0.0441110    0.2385523
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0330609   -0.0591802   -0.0069415
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0580081   -0.0923785   -0.0236377
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0948718   -0.2628733    0.0731297
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0615766   -0.0812969   -0.0418562
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1014421   -0.1864946   -0.0163896
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3179904    0.1384440    0.4975368
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1812334   -0.5160426    0.1535759
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1373518   -0.3296264    0.0549228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0221314   -0.3386238    0.2943611
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0094837   -0.5684251    0.5494578
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2387622   -0.5581826    0.0806582
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0964928   -0.1581642    0.3511499
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2649642   -0.5380966    0.0081683
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0043916   -0.1137616    0.1225447
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0180859   -0.1876794    0.1515076
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0100522   -0.0634851    0.0433806
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0654006   -0.1278184    0.2586196
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1755732   -0.4118804    0.0607339
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.1044686    0.0288242    0.1801130
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0414893   -0.1513460    0.0683673
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0722864   -0.0999145   -0.0446582
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0398082   -0.0932094    0.0135929
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1771544   -0.3425176   -0.0117913
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0412100   -0.0645704   -0.0178495

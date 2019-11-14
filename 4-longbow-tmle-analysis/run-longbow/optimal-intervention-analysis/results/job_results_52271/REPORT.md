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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)     12491   26656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20         11876   26656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         2289   26656
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7657   16747
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7870   16747
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1220   16747
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4029    8560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3821    8560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          710    8560


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
![](/tmp/55742d99-65b7-4529-a76a-dcf644639ebf/958a5823-9f85-4a6e-8979-400db0d4d06f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.2557642   -1.5652293   -0.9462992
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0913191   -0.9237649    0.7411268
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6238347   -0.8996721   -0.3479974
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4482591   -0.8335208   -0.0629974
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2642485   -1.8745868   -0.6539102
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4337282   -0.9616022    0.0941457
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4192088   -1.6223014   -1.2161163
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8413137   -1.1113281   -0.5712994
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8248848   -0.9676149   -0.6821547
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9151743   -1.0915546   -0.7387940
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.0913815   -0.0117232    0.1944862
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.7430549   -0.9495386   -0.5365711
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3875800    1.2085929    1.5665671
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4431482   -0.4995797   -0.3867168
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2567018    0.1296386    0.3837649
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.5003405   -0.5665476   -0.4341334
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1606926   -0.2305340   -0.0908511
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1868531   -1.2263553   -1.1473510
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1244823   -1.2561097   -0.9928549
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1645005   -0.1755851    0.5045862
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9402818   -1.2445396   -0.6360240
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6271763   -0.8561370   -0.3982155
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3049077   -1.5018384   -1.1079770
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0202517   -1.3032137   -0.7372898
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4001035   -1.5741378   -1.2260692
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8764473   -1.3111083   -0.4417863
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1125557   -1.6146294   -0.6104820
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4234546   -1.5311830   -1.3157261
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.9245779   -2.2277960   -1.6213597
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1948477   -1.4387456   -0.9509499
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0340308   -1.1228494   -0.9452121
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1764954   -1.3104495   -1.0425412
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4951747   -0.5913616   -0.3989878
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.9137154   -1.0078264   -0.8196044
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.6100414   -1.7700444   -1.4500384
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0690236   -1.2531820   -0.8848651
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1125972   -0.0042351    0.2294296
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8565836   -0.9043148   -0.8088524
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.8817241   -2.0285036   -1.7349446
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9850963   -1.0520693   -0.9181232
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.1043644   -1.1691318   -1.0395971
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6273185   -1.7952130   -1.4594239
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2893955   -1.3324326   -1.2463583
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.8716883   -2.0216685   -1.7217082
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1810372   -0.5810475    0.2189731
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.9109634   -2.2533935   -1.5685333
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.6005822   -1.8340913   -1.3670730
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6738083   -1.9943395   -1.3532771
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5092119   -2.7043718   -2.3140521
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.0879940   -2.3475293   -1.8284587
24 months   ki1000108-IRC              INDIA                          optimal              observed          -2.0269043   -2.2520673   -1.8017413
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.9407518   -2.2404918   -1.6410118
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5588544   -1.7618662   -1.3558426
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3767547   -1.5434788   -1.2100307
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5780239   -1.6588077   -1.4972402
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -2.0278823   -2.2385026   -1.8172620
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0119243   -0.3249243    0.3487730
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.5514127   -1.6838128   -1.4190126
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.9230196   -3.0526030   -2.7934363
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.1977395   -2.2731890   -2.1222900
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.4526708   -2.5387685   -2.3665730
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.7841151   -2.0045325   -1.5636977
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9876115   -2.0526847   -1.9225382


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1727915   -1.2007902   -1.1447928
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2014672   -1.3201462   -1.0827883
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0639173   -1.1916078   -0.9362269
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3360447   -1.3591166   -1.3129728
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8888000   -2.0142166   -1.7633834
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0196507   -2.0473250   -1.9919764


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1376690   -0.1315338    0.4068718
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5846809   -1.3761621    0.2068002
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2589550   -0.4996642   -0.0182457
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1834482   -0.5144302    0.1475339
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1086485   -0.4690522    0.6863493
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1256870   -0.3832324    0.6346064
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0122129   -0.1807836    0.1563579
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0899569   -0.3429930    0.1630792
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0602172   -0.1780621    0.0576276
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0056797   -0.1507488    0.1621083
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0605779   -0.1403996    0.0192438
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3421032   -0.5330786   -0.1511278
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0606354   -0.1203579   -0.0009130
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0567636   -0.1092668   -0.0042603
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1269717   -0.2262221   -0.0277214
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1775938   -0.2355109   -0.1196766
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0883566   -0.1460492   -0.0306641
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0140616   -0.0130898    0.0412131
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0810087   -0.1677640    0.0057466
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1134798   -0.4342835    0.2073239
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2611854   -0.5625325    0.0401617
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.0661169   -0.1399233    0.2721572
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0231875   -0.1970539    0.1506788
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0436656   -0.2855459    0.1982147
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0313586   -0.1076552    0.1703724
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.5470035   -0.9604342   -0.1335728
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.1218505   -0.6071388    0.3634378
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0215983   -0.0376338    0.0808304
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0258937   -0.2652074    0.3169947
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2113657   -0.4439278    0.0211964
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0576607   -0.1049212   -0.0104003
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0221830   -0.1366987    0.0923328
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0458570   -0.1307906    0.0390766
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0096807   -0.0734892    0.0928506
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0483023   -0.0622073    0.1588118
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2818157   -0.4490415   -0.1145899
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0055986   -0.0614658    0.0502686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0106399   -0.0512395    0.0299597
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0659905   -0.0689387    0.2009196
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0590330   -0.1171607   -0.0009053
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0362079   -0.0875858    0.0151699
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0225620   -0.1760633    0.1309394
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0466492   -0.0829519   -0.0103465
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1072268   -0.1942693   -0.0201842
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1881378   -0.1481122    0.5243878
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0221634   -0.3057682    0.3500950
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1538955   -0.3680111    0.0602202
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0246277   -0.2505632    0.2998185
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1359516   -0.2904599    0.0185567
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.4708739   -0.7256993   -0.2160484
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.2281268    0.0104414    0.4458121
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2792853   -0.5668788    0.0083082
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0435677   -0.2253693    0.1382339
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0645098   -0.2129357    0.0839160
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0018011   -0.0670162    0.0634140
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.1404643   -0.0496682    0.3305968
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1433291   -0.4229368    0.1362786
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0538529   -0.1753395    0.0676338
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0675725   -0.1827208    0.0475758
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0204864   -0.0840570    0.0430842
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0385562   -0.0335844    0.1106969
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1124954   -0.3151039    0.0901131
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0320392   -0.0895900    0.0255115

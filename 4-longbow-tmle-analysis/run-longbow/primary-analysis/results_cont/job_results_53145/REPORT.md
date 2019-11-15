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
![](/tmp/fdbb674b-cbdb-40d1-b389-71710b222691/27a2a1fc-0116-4ff7-a438-09b3617dd98b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fdbb674b-cbdb-40d1-b389-71710b222691/27a2a1fc-0116-4ff7-a438-09b3617dd98b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fdbb674b-cbdb-40d1-b389-71710b222691/27a2a1fc-0116-4ff7-a438-09b3617dd98b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.0952018   -1.2527907   -0.9376129
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.2558935   -1.6595926   -0.8521943
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.0944495   -1.4727055   -0.7161936
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.8314634   -1.1601853   -0.5027415
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0325000   -0.6736983    0.7386983
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.6318750   -1.2213825   -0.0423675
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.8010845   -0.9646570   -0.6375121
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -1.2470764   -1.4683240   -1.0258289
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.6238522   -0.9153801   -0.3323243
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.6119137   -0.8848775   -0.3389499
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.7872001   -1.1991762   -0.3752240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.4304266   -0.7991223   -0.0617309
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.2513889   -1.5042858   -0.9984920
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.9942857   -1.5328498   -0.4557216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.0302174   -1.4291848   -0.6312500
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.2944615   -0.4694031   -0.1195200
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.6917143   -1.3023032   -0.0811254
Birth       ki1000108-IRC              INDIA                          >=30                 NA                 0.0139286   -0.4512765    0.4791336
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.4182115   -1.4943392   -1.3420837
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.5338485   -1.7134643   -1.3542326
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.3433865   -1.5663586   -1.1204145
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9716384   -1.0814982   -0.8617785
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.8002618   -1.0733957   -0.5271279
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.8713752   -1.0558340   -0.6869164
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8564450   -0.9468119   -0.7660780
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.0705685   -1.2567028   -0.8844343
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.8698889   -1.0496424   -0.6901354
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.9005863   -0.9861595   -0.8150131
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.9482682   -1.1340197   -0.7625167
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.8966944   -1.0711193   -0.7222695
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0979423    0.0036234    0.1922611
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.3413607   -0.5053795   -0.1773419
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                 0.1187795    0.0128419    0.2247172
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.9577697   -1.0530035   -0.8625359
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.5503284   -1.7301703   -1.3704865
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.9540848   -1.1629162   -0.7452534
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 1.3326233    1.1703553    1.4948913
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                 1.1015818    0.9488278    1.2543358
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                 1.4100516    1.2336907    1.5864125
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.4960702   -0.5210355   -0.4711049
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5673361   -0.6223713   -0.5123008
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4704260   -0.5232982   -0.4175539
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2265515    0.1079390    0.3451640
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0490603   -0.2867695    0.1886489
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.0771166   -0.0820815    0.2363148
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6905703   -0.7310678   -0.6500728
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.9896320   -1.1049322   -0.8743319
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.5454066   -0.6122759   -0.4785374
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2193156   -0.2685094   -0.1701218
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5056252   -0.6169576   -0.3942929
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1986057   -0.2728055   -0.1244059
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.4889517   -1.5137662   -1.4641373
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.7217005   -1.7483679   -1.6950332
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.5144954   -1.5731378   -1.4558530
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.1209914   -1.2526380   -0.9893448
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.5305540   -1.9024720   -1.1586360
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.2426829   -1.5478071   -0.9375586
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0074253   -0.2096874    0.2245379
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.1346093   -0.1799477    0.4491663
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0097492   -0.2536820    0.2731805
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.2283575   -1.3681775   -1.0885375
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.2943138   -1.5764044   -1.0122232
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.8800092   -1.1910185   -0.5689999
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.5526126   -0.6730083   -0.4322170
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.5042391   -0.7921347   -0.2163436
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.3112862   -1.4695594   -1.1530130
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -1.3167488   -1.5387916   -1.0947060
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.3671248   -1.6385075   -1.0957422
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.1329695   -1.3140355   -0.9519035
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.1635973   -1.5420478   -0.7851468
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.0126984   -1.2536409   -0.7717558
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3923682   -1.5727034   -1.2120330
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.5236263   -1.9215952   -1.1256573
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3097586   -1.4884049   -1.1311123
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4358703   -1.5939347   -1.2778060
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -1.3034848   -1.7510472   -0.8559225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.4308915   -1.8644840   -0.9972989
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -1.2454678   -1.3893168   -1.1016189
6 months    ki1000108-IRC              INDIA                          <20                  NA                -1.3291204   -1.7465122   -0.9117286
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.9863793   -1.4834112   -0.4893474
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.3735106   -1.4626282   -1.2843929
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.3809290   -1.4941688   -1.2676893
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.6059604   -1.7545926   -1.4573281
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -1.8730456   -2.0074773   -1.7386139
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -1.7695454   -2.1204433   -1.4186474
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -2.0380094   -2.3023433   -1.7736754
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4224135   -1.5329327   -1.3118944
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.1663527   -1.4046761   -0.9280293
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.4386799   -1.6238131   -1.2535468
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.0360987   -1.1252590   -0.9469384
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.2660099   -1.4757163   -1.0563035
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.2094386   -1.3807546   -1.0381226
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.1754465   -1.2643863   -1.0865067
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.1983777   -1.3658069   -1.0309485
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2738449   -1.4568590   -1.0908308
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5730793   -0.6346170   -0.5115416
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5417532   -0.7227960   -0.3607104
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4851615   -0.5780381   -0.3922849
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.8614416   -0.9292386   -0.7936446
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.8606838   -0.9773431   -0.7440245
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.9692546   -1.0468578   -0.8916514
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.4918646   -1.6426941   -1.3410350
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -1.7730760   -2.0192439   -1.5269082
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -1.4953834   -1.7486210   -1.2421458
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.2781445   -1.3686823   -1.1876067
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.4898578   -1.6840252   -1.2956904
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.4366956   -1.6661642   -1.2072270
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1151696    0.0224881    0.2078511
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0427536   -0.1974095    0.1119024
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.1690618    0.0602112    0.2779124
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8409806   -0.8724119   -0.8095493
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9136147   -0.9780171   -0.8492122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.9187720   -0.9802542   -0.8572898
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.7836040   -1.8813526   -1.6858553
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.7532351   -1.9691268   -1.5373435
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -1.8784470   -1.9929588   -1.7639353
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -1.0061552   -1.0460208   -0.9662897
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -1.2746297   -1.3795107   -1.1697487
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -1.0751008   -1.1434400   -1.0067615
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -1.0699784   -1.1224936   -1.0174632
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -1.2438078   -1.3689531   -1.1186624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -1.2321736   -1.3110149   -1.1533324
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.6365438   -1.7420742   -1.5310135
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.5286237   -1.7085767   -1.3486707
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.7100105   -1.8520337   -1.5679873
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2465036   -1.2759422   -1.2170650
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3758351   -1.4044852   -1.3471849
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3297381   -1.3993344   -1.2601419
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.8746495   -2.0252098   -1.7240893
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -2.1834782   -2.5208976   -1.8460588
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -2.2151086   -2.5596337   -1.8705834
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0125407   -0.2100931    0.2351744
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0340785   -0.4343532    0.5025101
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0447733   -0.3732395    0.2836929
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.9393065   -2.0894895   -1.7891234
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.8201272   -2.1020378   -1.5382166
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -1.6129399   -1.9705222   -1.2553577
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.8235830   -2.0330566   -1.6141095
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -1.7540546   -1.9808653   -1.5272440
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.6013973   -1.8274261   -1.3753686
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.6788708   -1.8798258   -1.4779158
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.5892630   -1.9619732   -1.2165528
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.6156386   -1.8295990   -1.4016781
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7479204   -2.9417835   -2.5540572
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7855556   -3.3723518   -2.1987593
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.5061413   -2.6995868   -2.3126958
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5726497   -2.6845209   -2.4607785
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3255882   -2.6502470   -2.0009295
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.6509127   -2.9357594   -2.3660660
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -1.7936200   -1.8964136   -1.6908264
24 months   ki1000108-IRC              INDIA                          <20                  NA                -1.8915766   -2.1934891   -1.5896641
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -1.7413793   -2.0799764   -1.4027822
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2581584   -2.3849444   -2.1313723
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -2.0105994   -2.2909599   -1.7302389
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -2.2749952   -2.4844415   -2.0655489
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.5667024   -1.6645834   -1.4688214
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.6063527   -1.8684204   -1.3442851
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.7490693   -1.9481127   -1.5500258
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.4423017   -1.5466464   -1.3379570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.4745858   -1.6536789   -1.2954927
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.4010670   -1.6271219   -1.1750122
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.5398053   -1.6121071   -1.4675034
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -1.6674879   -1.7909261   -1.5440498
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.6013147   -1.6816080   -1.5210215
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.8746157   -1.9739248   -1.7753066
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.8419916   -2.0740128   -1.6099703
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.8220811   -2.0428912   -1.6012710
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.1522534   -0.3649724    0.0604655
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2572615   -1.3373082    0.8227851
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0373651   -0.2960075    0.3707378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.5852670   -1.6542605   -1.5162736
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.7220441   -1.8887029   -1.5553852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.6151040   -1.7398732   -1.4903349
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -3.0196444   -3.1111961   -2.9280926
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -3.0080180   -3.1875697   -2.8284663
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -2.9670158   -3.0747072   -2.8593244
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -2.1471114   -2.1950421   -2.0991807
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -2.5696683   -2.6933197   -2.4460168
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -2.3073985   -2.3859565   -2.2288404
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -2.3684115   -2.4265332   -2.3102898
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -2.4647730   -2.5883605   -2.3411854
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -2.4830839   -2.5724586   -2.3937093
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.9297248   -2.0566586   -1.8027910
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.7446759   -1.9605717   -1.5287801
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.8698908   -2.0366753   -1.7031064
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.9690496   -2.0039796   -1.9341196
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -2.0515106   -2.0883330   -2.0146881
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -2.0658072   -2.1494300   -1.9821844


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9312706   -1.0202524   -0.8422889
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4999118   -0.5204765   -0.4793472
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5894137   -1.6086318   -1.5701955
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2016239   -1.3201698   -1.0830780
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4062134   -1.4951703   -1.3172565
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5410317   -0.5901099   -0.4919536
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9040346   -0.9513522   -0.8567171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5617391   -1.6780690   -1.4454093
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8672235   -0.8928135   -0.8416336
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0441293   -1.0769738   -1.0112848
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6498804   -1.7271669   -1.5725940
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3135466   -1.3366721   -1.2904210
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8901556   -2.0155338   -1.7647773
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2200371   -2.3231580   -2.1169161
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5798251   -1.6298520   -1.5297981
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6052656   -1.6623196   -1.5482116
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.2182259   -2.2576094   -2.1788424
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8966105   -1.9881282   -1.8050928
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137151   -2.0414318   -1.9859984


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.1606916   -0.5939655    0.2725822
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0007523   -0.4090691    0.4105737
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.8639634    0.0850064    1.6429205
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.1995884   -0.4753761    0.8745529
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.4459919   -0.7242989   -0.1676849
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1772323   -0.1571713    0.5116360
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.1752864   -0.6693726    0.3187999
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1814872   -0.2815423    0.6445166
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2571032   -0.3378826    0.8520890
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2211715   -0.2511968    0.6935398
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)           -0.3972527   -1.0324089    0.2379034
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.3083901   -0.1886213    0.8054015
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.1156370   -0.3219953    0.0907213
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0748249   -0.1089175    0.2585674
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1713766   -0.1232117    0.4659648
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1002632   -0.1136556    0.3141821
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2141236   -0.4202409   -0.0080062
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0134440   -0.2135058    0.1866178
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0476819   -0.2518474    0.1564837
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0038919   -0.1897680    0.1975519
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.4393030   -0.6283908   -0.2502152
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0208373   -0.1198308    0.1615053
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.5925587   -0.7960067   -0.3891107
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0036849   -0.2258117    0.2331814
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.2310415   -0.3477500   -0.1143330
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0774283    0.0026762    0.1521805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0712659   -0.1316074   -0.0109243
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0256441   -0.0327195    0.0840078
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.2756118   -0.5402335   -0.0109901
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1494349   -0.3464244    0.0475546
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2990618   -0.4211954   -0.1769282
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.1451636    0.0671920    0.2231352
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.2863096   -0.4075077   -0.1651115
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0207099   -0.0675343    0.1089540
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.2327488   -0.2661974   -0.1993001
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0255437   -0.0870488    0.0359614
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.4095626   -0.8045636   -0.0145616
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1216915   -0.4545008    0.2111178
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.1271841   -0.2561523    0.5105204
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0023240   -0.3394512    0.3440992
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0659563   -0.3809802    0.2490675
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3483483    0.0069359    0.6897607
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.8683874   -1.6322474   -0.1045274
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0483735   -0.2636825    0.3604295
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0054625   -0.2785823    0.2676573
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0558386   -0.3703107    0.2586335
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0306278   -0.4506146    0.3893590
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1202711   -0.1818276    0.4223699
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1312580   -0.5685142    0.3059981
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0826096   -0.1716356    0.3368548
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1323855   -0.3422685    0.6070394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0049788   -0.4565261    0.4664838
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0836525   -0.5251369    0.3578318
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2590885   -0.2583409    0.7765180
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0074185   -0.1023976    0.0875606
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.2324498   -0.3934528   -0.0714468
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.1035002   -0.2724554    0.4794559
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.1649638   -0.4619386    0.1320111
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2560609   -0.0054589    0.5175806
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0162664   -0.2312711    0.1987383
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2299112   -0.4575678   -0.0022546
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1733400   -0.3668476    0.0201677
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0229312   -0.2125695    0.1667071
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0983984   -0.3019727    0.1051759
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0313261   -0.1589924    0.2216446
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0879178   -0.0224018    0.1982374
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0007578   -0.1332560    0.1347716
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.1078130   -0.2092391   -0.0063868
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.2812115   -0.5696238    0.0072009
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.0035188   -0.3000579    0.2930203
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2117133   -0.4261727    0.0027462
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1585511   -0.4053296    0.0882274
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.1579232   -0.2599031   -0.0559433
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0538922   -0.0083318    0.1161162
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0726341   -0.1437789   -0.0014893
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0777914   -0.1463136   -0.0092692
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0303688   -0.2066467    0.2673844
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0948431   -0.2454732    0.0557871
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2684745   -0.3806022   -0.1563468
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0689456   -0.1478645    0.0099734
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1738294   -0.3086013   -0.0390576
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1621953   -0.2553613   -0.0690293
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.1079201   -0.0997152    0.3155554
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0734666   -0.2484750    0.1015417
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.1293314   -0.1639363   -0.0947266
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0832345   -0.1536680   -0.0128010
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.3088286   -0.6779766    0.0603194
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.3404590   -0.7161055    0.0351875
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0215378   -0.4988233    0.5418989
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0573140   -0.4530019    0.3383740
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1191793   -0.1995140    0.4378726
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3263665   -0.0610879    0.7138210
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0695284   -0.2396632    0.3787199
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.2221857   -0.0840531    0.5284245
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0896078   -0.3333293    0.5125449
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0632323   -0.2294786    0.3559431
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0376352   -0.6556261    0.5803557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2417790   -0.0320897    0.5156477
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2470615   -0.0963311    0.5904541
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0782630   -0.3842904    0.2277645
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0979566   -0.4168887    0.2209756
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0522407   -0.3016160    0.4060974
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2475590   -0.0595334    0.5546514
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0168368   -0.2592067    0.2255331
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0396503   -0.3182588    0.2389581
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1823669   -0.4031048    0.0383710
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0322841   -0.2390851    0.1745170
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0412347   -0.2072560    0.2897253
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1276827   -0.2693118    0.0139464
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0615095   -0.1668795    0.0438606
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0326242   -0.2192364    0.2844847
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0525346   -0.1898605    0.2949297
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.1050081   -1.1375367    0.9275205
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.1896185   -0.0092991    0.3885362
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1367770   -0.3163373    0.0427833
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0298370   -0.1706019    0.1109279
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0116264   -0.1893216    0.2125744
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0526286   -0.0876302    0.1928874
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.4225568   -0.5550070   -0.2901067
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1602870   -0.2518170   -0.0687571
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0963615   -0.2329011    0.0401782
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1146724   -0.2212882   -0.0080567
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.1850489   -0.0658026    0.4359004
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0598340   -0.1498437    0.2695116
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0824610   -0.1274397   -0.0374822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0967576   -0.1826281   -0.0108870


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0228934   -0.1154716    0.0696848
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1554634   -0.0636144    0.3745412
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0817052   -0.2097731    0.0463628
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0197936   -0.2039745    0.1643873
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0957889   -0.0895533    0.2811310
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0135797   -0.0855186    0.0583592
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0132103   -0.0488036    0.0223831
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0403678   -0.0197866    0.1005221
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0286571   -0.0783372    0.0210230
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0089082   -0.0607317    0.0429152
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0671386   -0.1379365    0.0036593
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.1273884   -0.1895161   -0.0652607
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0056787   -0.0246071    0.0132497
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0038416   -0.0185524    0.0108691
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0968215   -0.1852799   -0.0083630
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0126360   -0.0103016    0.0355737
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0297336   -0.0617597    0.0022926
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.1004619   -0.1169554   -0.0839684
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0840017   -0.1708504    0.0028469
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0401505   -0.0867416    0.1670426
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0267336   -0.0376776    0.0911448
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0089693   -0.0756683    0.0577297
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0123798   -0.1258329    0.1010733
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0696493   -0.0800087    0.2193073
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0236233   -0.0944533    0.1416999
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0124195   -0.0598970    0.0847361
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0110616   -0.0454626    0.0675858
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0283457   -0.0464294   -0.0102620
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0256386   -0.1040789    0.0528017
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0162001   -0.0447674    0.0771676
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0555928   -0.1046082   -0.0065774
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0232318   -0.0776518    0.0311882
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0320476   -0.0037153    0.0678104
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0425930   -0.0917726    0.0065865
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0698746   -0.1610630    0.0213139
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0726947   -0.1324833   -0.0129062
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0081710   -0.0241298    0.0077877
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0262429   -0.0442945   -0.0081913
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0321296   -0.1055678    0.0413085
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0379741   -0.0603756   -0.0155725
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0705940   -0.1049151   -0.0362729
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0133366   -0.0825314    0.0558582
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0670430   -0.0851011   -0.0489848
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1037467   -0.1912135   -0.0162799
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0064263   -0.1476969    0.1348444
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0491509   -0.0146578    0.1129596
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0711120   -0.0709709    0.2131950
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0338113   -0.1179702    0.1855928
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1023596   -0.0247706    0.2294898
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0137818   -0.0363540    0.0639176
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0051575   -0.0452480    0.0349331
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0381213   -0.0307532    0.1069957
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0357198   -0.0891890    0.0177494
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0010371   -0.0591142    0.0611884
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0400198   -0.0924701    0.0124304
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0128023   -0.0792258    0.0536212
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0208486   -0.1547235    0.1964208
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0199985   -0.0590325    0.0190354
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0290523   -0.0374870    0.0955915
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0711145   -0.0986598   -0.0435692
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0457030   -0.0830561   -0.0083500
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0331143   -0.0541540    0.1203825
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0446655   -0.0674617   -0.0218692

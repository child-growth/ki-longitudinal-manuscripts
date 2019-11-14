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
* impsan
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_impsan

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
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         4      13
Birth       ki1101329-Keneba           GAMBIA                         <20             2      13
Birth       ki1101329-Keneba           GAMBIA                         >=30            7      13
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/8f9647f3-4d24-4aa9-94a6-765b5a93e625/cdb3cccc-0b16-4c72-bd5d-ae418f218e56/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8f9647f3-4d24-4aa9-94a6-765b5a93e625/cdb3cccc-0b16-4c72-bd5d-ae418f218e56/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8f9647f3-4d24-4aa9-94a6-765b5a93e625/cdb3cccc-0b16-4c72-bd5d-ae418f218e56/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.0868590   -1.2449051   -0.9288129
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.2941879   -1.6608000   -0.9275757
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.0597551   -1.4283762   -0.6911340
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.8314634   -1.1601853   -0.5027415
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0325000   -0.6736983    0.7386983
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.6318750   -1.2213825   -0.0423675
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.8088144   -0.9680534   -0.6495755
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -1.1970273   -1.4164623   -0.9775922
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.6266193   -0.9091169   -0.3441218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.6304838   -0.8962190   -0.3647487
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.7681720   -1.2091430   -0.3272010
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.4310618   -0.7960084   -0.0661152
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.2513889   -1.5042858   -0.9984920
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.9942857   -1.5328498   -0.4557216
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.0302174   -1.4291848   -0.6312500
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.2944615   -0.4694031   -0.1195200
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.6917143   -1.3023032   -0.0811254
Birth       ki1000108-IRC              INDIA                          >=30                 NA                 0.0139286   -0.4512765    0.4791336
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.4186257   -1.4974051   -1.3398462
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.5360683   -1.7158963   -1.3562402
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.3387812   -1.5525778   -1.1249846
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9737236   -1.0838739   -0.8635733
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.8039165   -1.0716501   -0.5361829
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.8809733   -1.0676956   -0.6942510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8569882   -0.9478139   -0.7661625
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.0830204   -1.2715883   -0.8944525
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.8623776   -1.0413746   -0.6833807
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.9001348   -0.9858659   -0.8144038
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.9560178   -1.1393041   -0.7727315
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.9010689   -1.0761270   -0.7260108
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.9568619   -1.0520685   -0.8616554
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.5521066   -1.7322679   -1.3719453
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.9515065   -1.1589096   -0.7441033
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 1.3330753    1.1710442    1.4951065
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                 1.1003632    0.9421570    1.2585695
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                 1.4104113    1.2337109    1.5871117
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.4967828   -0.5217279   -0.4718376
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5679953   -0.6228392   -0.5131514
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4672760   -0.5206268   -0.4139252
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.2235284    0.1030000    0.3440569
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0808594   -0.3116147    0.1498959
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.0931885   -0.0526084    0.2389854
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6915509   -0.7320611   -0.6510406
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.9899271   -1.1006997   -0.8791544
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.5428068   -0.6096196   -0.4759940
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2166667   -0.2657107   -0.1676226
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5165798   -0.6280741   -0.4050854
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1956234   -0.2699509   -0.1212959
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.1592260   -1.1915091   -1.1269429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.1545145   -1.1951847   -1.1138442
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3401313   -1.4040339   -1.2762287
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.1181841   -1.2503023   -0.9860659
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.5396088   -1.9168406   -1.1623769
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.2410605   -1.5503763   -0.9317447
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0057942   -0.2063353    0.2179237
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.1649889   -0.1624809    0.4924587
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0303210   -0.2441048    0.3047468
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.2276802   -1.3663823   -1.0889782
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.2967309   -1.5817680   -1.0116938
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.8379049   -1.1509447   -0.5248651
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.5523243   -0.6728895   -0.4317591
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.5027174   -0.7907851   -0.2146497
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.3178486   -1.4766573   -1.1590399
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -1.2818078   -1.4891120   -1.0745035
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.3539975   -1.6150460   -1.0929489
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.1145876   -1.2967311   -0.9324442
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.1669386   -1.5330987   -0.8007784
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.0084831   -1.2282654   -0.7887009
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.4010743   -1.5817706   -1.2203780
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.5696354   -1.9596551   -1.1796157
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3204080   -1.5013453   -1.1394706
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4358703   -1.5939347   -1.2778060
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -1.3034848   -1.7510472   -0.8559225
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.4308915   -1.8644840   -0.9972989
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -1.2454678   -1.3893168   -1.1016189
6 months    ki1000108-IRC              INDIA                          <20                  NA                -1.3291204   -1.7465122   -0.9117286
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.9863793   -1.4834112   -0.4893474
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -1.3731637   -1.4626708   -1.2836566
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -1.3901628   -1.4964259   -1.2838998
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -1.6064691   -1.7479568   -1.4649814
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -1.8729017   -2.0067061   -1.7390973
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -1.7509620   -2.1071116   -1.3948124
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -2.0242779   -2.2853847   -1.7631712
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4228453   -1.5330461   -1.3126445
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.1852531   -1.4257976   -0.9447086
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.4436685   -1.6286690   -1.2586681
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.0302911   -1.1190585   -0.9415238
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.2711637   -1.4883398   -1.0539876
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.1944297   -1.3653347   -1.0235247
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.1809275   -1.2696066   -1.0922483
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.1965929   -1.3601752   -1.0330105
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2501736   -1.4242184   -1.0761287
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5745940   -0.6358892   -0.5132988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5534182   -0.7367429   -0.3700935
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4781756   -0.5710469   -0.3853043
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.8657829   -0.9336732   -0.7978927
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.8675090   -0.9864803   -0.7485378
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.9738057   -1.0514312   -0.8961801
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.5109124   -1.6621137   -1.3597112
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -1.9208321   -2.1689037   -1.6727605
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -1.5605297   -1.8170326   -1.3040269
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.2835021   -1.3741105   -1.1928938
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.5379016   -1.7343597   -1.3414435
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.5020547   -1.7257924   -1.2783169
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.1144478    0.0217223    0.2071733
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0394579   -0.1962747    0.1173588
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.1718278    0.0627341    0.2809216
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8412961   -0.8727620   -0.8098302
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9097208   -0.9742835   -0.8451581
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.9188799   -0.9798036   -0.8579562
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.7679161   -1.8652827   -1.6705496
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.7802517   -1.9993763   -1.5611271
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -1.8773062   -1.9888168   -1.7657955
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -1.0067016   -1.0465567   -0.9668465
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -1.2786743   -1.3859337   -1.1714150
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -1.0784863   -1.1472456   -1.0097269
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -1.0702029   -1.1225411   -1.0178647
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -1.2429935   -1.3657243   -1.1202627
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -1.2344506   -1.3130593   -1.1558419
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.6415471   -1.7482070   -1.5348872
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.5571915   -1.7375812   -1.3768018
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.7167436   -1.8583795   -1.5751076
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2702035   -1.2997326   -1.2406745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3969285   -1.4257166   -1.3681404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3575057   -1.4264104   -1.2886011
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -1.8744534   -2.0243068   -1.7245999
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -2.1521450   -2.4953327   -1.8089574
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -2.2484861   -2.6115143   -1.8854579
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0226436   -0.2042395    0.2495267
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0410405   -0.5272696    0.4451886
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0459281   -0.3710049    0.2791487
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -1.9331896   -2.0836632   -1.7827160
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.7959846   -2.0758575   -1.5161116
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -1.6492734   -1.9679437   -1.3306031
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -1.8169914   -2.0191489   -1.6148339
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -1.7836304   -2.0046778   -1.5625830
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -1.5454375   -1.7811911   -1.3096838
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -1.7038962   -1.9067169   -1.5010756
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -1.5729089   -1.9615652   -1.1842526
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -1.6182115   -1.8418212   -1.3946017
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7471681   -2.9408045   -2.5535318
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7855556   -3.3723518   -2.1987593
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.5061413   -2.6995868   -2.3126958
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5726497   -2.6845209   -2.4607785
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3255882   -2.6502470   -2.0009295
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.6509127   -2.9357594   -2.3660660
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -1.7936200   -1.8964136   -1.6908264
24 months   ki1000108-IRC              INDIA                          <20                  NA                -1.8915766   -2.1934891   -1.5896641
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -1.7413793   -2.0799764   -1.4027822
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2521950   -2.3789459   -2.1254441
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.9371917   -2.2138352   -1.6605483
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -2.2594411   -2.4716115   -2.0472706
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.5688623   -1.6665648   -1.4711598
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.6127021   -1.8745870   -1.3508172
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.7306219   -1.9282786   -1.5329652
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.4459024   -1.5502686   -1.3415361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.4585390   -1.6376272   -1.2794509
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.4092449   -1.6315749   -1.1869149
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.5387275   -1.6113515   -1.4661035
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -1.6673764   -1.7909800   -1.5437728
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.5977997   -1.6782390   -1.5173604
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.8825352   -1.9815170   -1.7835535
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.8625436   -2.0962140   -1.6288732
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.9463014   -2.1716846   -1.7209183
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.1508095   -0.3646595    0.0630405
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2469761   -1.2779045    0.7839523
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0300688   -0.2879706    0.3481081
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.5889928   -1.6582895   -1.5196962
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.7255471   -1.8922730   -1.5588211
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.5864353   -1.7162435   -1.4566271
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -3.0055589   -3.0961087   -2.9150091
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -3.0423595   -3.2095126   -2.8752065
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -2.9657154   -3.0746643   -2.8567666
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -2.1492095   -2.1971401   -2.1012789
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -2.5632222   -2.6863625   -2.4400818
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -2.3055797   -2.3848018   -2.2263576
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -2.3669390   -2.4248850   -2.3089929
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -2.4919962   -2.6142695   -2.3697229
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -2.4802733   -2.5675137   -2.3930330
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -1.9362773   -2.0639731   -1.8085814
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -1.7813084   -1.9989992   -1.5636175
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -1.8744957   -2.0430335   -1.7059579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.9749846   -2.0097992   -1.9401699
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -2.0573336   -2.0942422   -2.0204250
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -2.0628209   -2.1467057   -1.9789360


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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4999118   -0.5204765   -0.4793472
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6779343   -0.7109987   -0.6448698
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1727915   -1.2007902   -1.1447928
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2014672   -1.3201462   -1.0827883
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3360447   -1.3591166   -1.3129728
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8888000   -2.0142166   -1.7633834
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0196507   -2.0473250   -1.9919764


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2073288   -0.6072160    0.1925583
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0271039   -0.3751793    0.4293871
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.8639634    0.0850064    1.6429205
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.1995884   -0.4753761    0.8745529
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.3882128   -0.6639838   -0.1124419
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1821951   -0.1420203    0.5064104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.1376881   -0.6530334    0.3776572
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1994220   -0.2603603    0.6592043
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2571032   -0.3378826    0.8520890
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2211715   -0.2511968    0.6935398
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)           -0.3972527   -1.0324089    0.2379034
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.3083901   -0.1886213    0.8054015
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.1174426   -0.3255050    0.0906197
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0798444   -0.0942658    0.2539547
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1698071   -0.1202645    0.4598787
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0927503   -0.1238719    0.3093726
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2260322   -0.4347617   -0.0173026
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0053894   -0.2048433    0.1940645
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0558830   -0.2577999    0.1460339
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0009341   -0.1952682    0.1934001
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.5952447   -0.7987034   -0.3917860
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0053555   -0.2227797    0.2334907
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.2327121   -0.3535414   -0.1118828
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0773359    0.0019044    0.1527675
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0712125   -0.1313770   -0.0110480
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0295068   -0.0292819    0.0882955
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.3043878   -0.5640670   -0.0447086
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1303399   -0.3188209    0.0581410
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2983762   -0.4162475   -0.1805049
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.1487441    0.0707787    0.2267094
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.2999131   -0.4211885   -0.1786378
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0210433   -0.0671829    0.1092694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0047115   -0.0389743    0.0483974
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.1809053   -0.2491150   -0.1126955
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.4214247   -0.8212426   -0.0216067
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1228765   -0.4596485    0.2138956
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.1591947   -0.2325963    0.5509856
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0245268   -0.3222584    0.3713121
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0690507   -0.3863834    0.2482820
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3897753    0.0471390    0.7324116
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.8686757   -1.6325624   -0.1047890
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0496069   -0.2626733    0.3618872
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0360408   -0.2249027    0.2969843
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0361489   -0.3424649    0.2701671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0523509   -0.4616491    0.3569473
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1061045   -0.1796338    0.3918428
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1685611   -0.5984476    0.2613253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0806663   -0.1750944    0.3364270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1323855   -0.3422685    0.6070394
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0049788   -0.4565261    0.4664838
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0836525   -0.5251369    0.3578318
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2590885   -0.2583409    0.7765180
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0169992   -0.1053320    0.0713336
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.2333055   -0.3925733   -0.0740376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.1219397   -0.2575241    0.5014034
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.1513762   -0.4439180    0.1411656
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2375922   -0.0264121    0.5015966
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0208232   -0.2352764    0.1936300
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.2408726   -0.4757099   -0.0060352
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1641386   -0.3567419    0.0284647
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0156654   -0.2018056    0.1704748
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0692461   -0.2647052    0.1262130
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0211758   -0.1713431    0.2136946
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0964184   -0.0138710    0.2067079
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0017261   -0.1379257    0.1344735
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.1080227   -0.2095146   -0.0065308
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.4099197   -0.7011031   -0.1187362
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.0496173   -0.3475933    0.2483587
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2543995   -0.4708040   -0.0379950
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2185525   -0.4600471    0.0229420
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.1539057   -0.2576041   -0.0502073
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0573801   -0.0050774    0.1198375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0684247   -0.1397328    0.0028833
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0775838   -0.1456157   -0.0095519
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0123356   -0.2521819    0.2275107
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1093900   -0.2575182    0.0387381
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2719727   -0.3863533   -0.1575922
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0717846   -0.1510490    0.0074797
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1727906   -0.3053883   -0.0401929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1642477   -0.2571838   -0.0713116
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0843556   -0.1249179    0.2936291
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0751965   -0.2520545    0.1016615
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.1267249   -0.1614955   -0.0919544
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0873022   -0.1572723   -0.0173321
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2776917   -0.6512367    0.0958533
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.3740327   -0.7649742    0.0169087
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0636841   -0.6034473    0.4760791
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0685717   -0.4669877    0.3298444
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1372050   -0.1790149    0.4534249
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.2839162   -0.0679139    0.6357463
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0333610   -0.2648499    0.3315718
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.2715539   -0.0356483    0.5787560
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.1309874   -0.3077333    0.5697080
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0856848   -0.2170266    0.3883961
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0383874   -0.6563072    0.5795324
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2410268   -0.0326814    0.5147351
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2470615   -0.0963311    0.5904541
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0782630   -0.3842904    0.2277645
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0979566   -0.4168887    0.2209756
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0522407   -0.3016160    0.4060974
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3150033    0.0119508    0.6180557
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0072461   -0.2521004    0.2376083
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0438398   -0.3223450    0.2346654
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1617596   -0.3798003    0.0562810
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0126367   -0.2191759    0.1939026
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0366575   -0.2081516    0.2814665
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1286489   -0.2705971    0.0132993
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0590722   -0.1647233    0.0465789
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0199916   -0.2338465    0.2738297
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0637662   -0.3099108    0.1823784
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0961666   -1.0826414    0.8903083
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.1808782   -0.0086776    0.3704340
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1365542   -0.3168276    0.0437191
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0025575   -0.1440667    0.1491817
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0368006   -0.2265453    0.1529440
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0398435   -0.1006472    0.1803342
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.4140127   -0.5459607   -0.2820647
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.1563702   -0.2485211   -0.0642193
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1250572   -0.2603240    0.0102096
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1133344   -0.2180242   -0.0086446
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.1549689   -0.0974327    0.4073706
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0617816   -0.1498458    0.2734089
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0823490   -0.1274797   -0.0372184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0878363   -0.1741156   -0.0015570


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0312362   -0.1239749    0.0615025
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1554634   -0.0636144    0.3745412
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0739753   -0.1982498    0.0502992
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0012235   -0.1806439    0.1781969
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0957889   -0.0895533    0.2811310
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -0.0135797   -0.0855186    0.0583592
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0127961   -0.0472107    0.0216186
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0424530   -0.0185280    0.1034340
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0281138   -0.0781141    0.0218864
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0093597   -0.0611573    0.0424378
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.1282961   -0.1903527   -0.0662395
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0061308   -0.0249223    0.0126608
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0031290   -0.0178257    0.0115677
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0937984   -0.1840204   -0.0035764
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                 0.0136166   -0.0093656    0.0365989
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0323825   -0.0642862   -0.0004789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0135655   -0.0349567    0.0078257
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0873069   -0.1744297   -0.0001842
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0452265   -0.0777145    0.1681675
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0262130   -0.0373513    0.0897773
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0087350   -0.0754813    0.0580113
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0102467   -0.1237515    0.1032582
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0506703   -0.0983831    0.1997237
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0323293   -0.0861261    0.1507848
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0124195   -0.0598970    0.0847361
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0110616   -0.0454626    0.0675858
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0286926   -0.0470054   -0.0103798
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0257825   -0.1029579    0.0513929
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0166319   -0.0441850    0.0774488
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0614004   -0.1100205   -0.0127802
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0177509   -0.0720695    0.0365678
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0335623   -0.0021497    0.0692742
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0382517   -0.0875018    0.0109984
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0508267   -0.1419372    0.0402838
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0673371   -0.1273033   -0.0073709
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0074492   -0.0229719    0.0080735
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0259274   -0.0440307   -0.0078241
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0478175   -0.1204103    0.0247753
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0374277   -0.0597907   -0.0150647
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0703695   -0.1045718   -0.0361671
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0083333   -0.0784745    0.0618079
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0658411   -0.0839860   -0.0476962
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1044617   -0.1907416   -0.0181819
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0155430   -0.1598738    0.1287878
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0443896   -0.0177103    0.1064895
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0625137   -0.0720138    0.1970413
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0547156   -0.1006194    0.2100506
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1020046   -0.0250428    0.2290520
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0137818   -0.0363540    0.0639176
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0051575   -0.0452480    0.0349331
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0321579   -0.0360831    0.1003990
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0335599   -0.0865421    0.0194224
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0046378   -0.0556493    0.0649249
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0410976   -0.0938373    0.0116422
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0048828   -0.0708945    0.0611289
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0194047   -0.1548354    0.1936448
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0162727   -0.0562230    0.0236775
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0149668   -0.0509304    0.0808640
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0690164   -0.0966210   -0.0414118
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0471756   -0.0842811   -0.0100700
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0396668   -0.0479080    0.1272415
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0446661   -0.0675651   -0.0217672

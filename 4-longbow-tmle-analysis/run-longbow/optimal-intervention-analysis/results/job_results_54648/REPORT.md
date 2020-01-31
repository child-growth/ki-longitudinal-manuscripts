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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       148     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            28     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           39     215
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)        39      62
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             8      62
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           15      62
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)        36      45
Birth       ki0047075b-MAL-ED          INDIA                          <20             7      45
Birth       ki0047075b-MAL-ED          INDIA                          >=30            2      45
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)        21      26
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0      26
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            5      26
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       113     228
Birth       ki0047075b-MAL-ED          PERU                           <20            63     228
Birth       ki0047075b-MAL-ED          PERU                           >=30           52     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        65     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            22     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           33     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        66     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             7     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           42     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        75      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             7      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      86
Birth       ki1000108-IRC              INDIA                          [20-30)       289     343
Birth       ki1000108-IRC              INDIA                          <20            28     343
Birth       ki1000108-IRC              INDIA                          >=30           26     343
Birth       ki1000109-EE               PAKISTAN                       [20-30)        68     177
Birth       ki1000109-EE               PAKISTAN                       <20             1     177
Birth       ki1000109-EE               PAKISTAN                       >=30          108     177
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       841    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20           138    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30          124    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)       385     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20            67     573
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30          121     573
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)       366     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20            67     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30           99     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       469     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20           124     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30          114     707
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       670    1466
Birth       ki1101329-Keneba           GAMBIA                         <20           224    1466
Birth       ki1101329-Keneba           GAMBIA                         >=30          572    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)       421     641
Birth       ki1113344-GMS-Nepal        NEPAL                          <20           125     641
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30           95     641
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9900   13830
Birth       ki1119695-PROBIT           BELARUS                        <20          1402   13830
Birth       ki1119695-PROBIT           BELARUS                        >=30         2528   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      8680   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2030   12881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2171   12881
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       367     756
Birth       ki1135781-COHORTS          GUATEMALA                      <20           101     756
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          288     756
Birth       ki1135781-COHORTS          INDIA                          [20-30)      2965    4405
Birth       ki1135781-COHORTS          INDIA                          <20           337    4405
Birth       ki1135781-COHORTS          INDIA                          >=30         1103    4405
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1744    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           354    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          801    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      9028   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          7251   18006
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1727   18006
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
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     372
6 months    ki1000109-EE               PAKISTAN                       <20             1     372
6 months    ki1000109-EE               PAKISTAN                       >=30          212     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1015    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       260     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           84     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       424     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            66     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          113     603
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
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       371     564
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     564
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     564
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11314   15758
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15758
6 months    ki1119695-PROBIT           BELARUS                        >=30         2824   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5631    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1292    8489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1566    8489
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
24 months   ki1000109-EE               PAKISTAN                       [20-30)        66     168
24 months   ki1000109-EE               PAKISTAN                       <20             1     168
24 months   ki1000109-EE               PAKISTAN                       >=30          101     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       288     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     426
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     426
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          106     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       791    1715
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1715
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1715
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       317     487
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            94     487
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           76     487
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2847    3972
24 months   ki1119695-PROBIT           BELARUS                        <20           365    3972
24 months   ki1119695-PROBIT           BELARUS                        >=30          760    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       276     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            69     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           87     432
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
![](/tmp/a62396fd-404b-4fad-b0a5-d55ff644aae2/b1f78ebf-581c-4c15-a670-c41e4c7666b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5450510   -0.8022545   -0.2878476
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0070191    0.3061317    1.7079066
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1018574   -0.3306387    0.1269239
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0479412   -0.4041869    0.5000693
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.7356297   -0.1300461    1.6013055
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2257274   -1.8619958   -0.5894589
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6792079   -0.8884075   -0.4700083
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1797503   -1.3549216   -1.0045790
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3633308   -1.5402309   -1.1864307
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3548635   -1.5211804   -1.1885467
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1548674   -1.2532604   -1.0564743
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.8895877   -1.1200373   -0.6591381
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1064977   -1.3196165   -0.8933790
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4149432   -0.4796490   -0.3502375
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9603215   -1.1360774   -0.7845656
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9862268   -1.0487534   -0.9237001
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6144906   -0.7016617   -0.5273195
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7319639   -0.7618235   -0.7021044
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3429282   -0.6993652    0.0135089
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0460564    0.7848689    1.3072439
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4826009   -0.7781372   -0.1870646
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0456643   -0.5069601    0.4156315
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.7854864    0.5344332    1.0365396
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.5863297    0.0840413    1.0886180
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4674094    0.0910585    0.8437602
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3023330   -0.7616213    0.1569553
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2744470   -0.8719225    0.3230286
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5682526   -0.6543381   -0.4821670
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.1560037   -1.3802659   -0.9317415
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2712958   -0.5365154   -0.0060763
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0285891   -0.2149374    0.1577593
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0030723   -0.1685940    0.1624494
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2071978   -0.0108464    0.4252420
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1848822   -0.2854653   -0.0842990
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1120500   -0.2998560    0.0757561
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.5099332   -0.6984247   -0.3214418
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6264968    0.5580108    0.6949828
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3609225    0.2952578    0.4265871
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2763947    0.0784718    0.4743176
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6769407   -0.7168256   -0.6370558
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3266625   -0.4141519   -0.2391730
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4810879    0.3234198    0.6387561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5923558   -0.6216621   -0.5630495
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7585021   -0.9032192   -0.6137850
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3939046    0.0208472    0.7669621
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5864195   -0.7913996   -0.3814395
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5682115    0.3338087    0.8026143
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6458644    0.3328033    0.9589256
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1259987   -0.0640948    0.3160922
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8772515   -1.0869493   -0.6675538
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5424459   -0.8457338   -0.2391581
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3842971   -0.6859664   -0.0826278
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7074176   -0.8429129   -0.5719223
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6174203   -0.8143358   -0.4205047
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8051953   -0.8763715   -0.7340190
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0724728   -1.1826685   -0.9622770
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.6899729    0.4187473    0.9611986
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0450820   -1.2383439   -0.8518201
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3529823   -0.4630017   -0.2429630
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5998087   -0.6499616   -0.5496558
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5475891   -0.6156431   -0.4795351
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0757612   -0.0726493    0.2241717
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2803624   -1.3253445   -1.2353804


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7624348    0.5710709    0.9537986
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3545637   -1.4492090   -1.2599184
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2349454   -1.2972413   -1.1726496
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5144298   -0.5403185   -0.4885410
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7777196   -0.7967334   -0.7587059
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7077885   -0.8346769   -0.5809000
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4495343   -0.5402027   -0.3588659
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1833609   -0.2343611   -0.1323607
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3103322    0.2846161    0.3360483
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4409268    0.3613957    0.5204578
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5933575   -0.6128938   -0.5738211
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9564667   -1.0725632   -0.8403701
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9097790   -1.0080462   -0.8115117
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8079199   -0.8550714   -0.7607684
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1845602   -1.2836321   -1.0854883
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0115944   -0.1019822    0.0787935
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2977181   -1.3209986   -1.2744376


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3968094   -0.6259861   -0.1676327
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6041159   -1.2113894    0.0031576
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0498399   -0.1492879    0.2489676
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2405245   -0.6159973    0.1349483
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0268051   -0.8134385    0.8670486
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2151443   -0.4028703    0.8331589
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0091625   -0.0699958    0.0883208
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1748134   -0.3382029   -0.0114239
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0648722   -0.0926552    0.2223996
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1107122   -0.0371328    0.2585571
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0800781   -0.1586721   -0.0014840
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2268554   -0.4396242   -0.0140866
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0383656   -0.0871193    0.0103881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0994866   -0.1592554   -0.0397177
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1018213   -0.2414459    0.0378032
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0119453   -0.0378424    0.0617330
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1282345   -0.2032920   -0.0531770
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0457557   -0.0698359   -0.0216755
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2052518   -0.1158371    0.5263407
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0739790   -0.2774871    0.1295290
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2251876   -0.5135738    0.0631986
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.1560951   -0.2874428    0.5996329
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.2673952    0.0461829    0.4886075
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0441512   -0.4940670    0.4057646
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0688119   -0.2783758    0.4159996
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2003436   -0.6314996    0.2308124
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3244828   -0.8870194    0.2380539
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0974558   -0.2065361    0.0116245
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1438458   -0.0689217    0.3566133
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1782384   -0.4279327    0.0714558
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1705016   -0.3445819    0.0035787
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0328345   -0.1170331    0.1827022
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1289312   -0.3390892    0.0812268
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed           0.0015213   -0.0844388    0.0874813
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.0500512   -0.0986454    0.1987477
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0939084   -0.2657122    0.0778955
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0472529   -0.0919352   -0.0025706
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0505903   -0.1114914    0.0103108
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0823137   -0.2713304    0.1067030
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0349890   -0.0582968   -0.0116813
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0328191   -0.0461041    0.1117424
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0401612   -0.1824940    0.1021717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0010017   -0.0229845    0.0209811
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0607903   -0.1443532    0.0227725
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0687186   -0.2425253    0.3799626
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3700471   -0.5731684   -0.1669259
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4570133   -0.6712368   -0.2427899
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2368343   -0.5241504    0.0504818
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0712012   -0.2154212    0.0730188
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3201010    0.1212513    0.5189507
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2033691   -0.4939887    0.0872506
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5254819   -0.8090013   -0.2419624
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1854494   -0.3026876   -0.0682112
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0070701   -0.1694358    0.1835759
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0027247   -0.0569887    0.0515394
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0638380   -0.1293737    0.0016977
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0025434   -0.2020091    0.1969223
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1394782   -0.3249131    0.0459567
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0716069   -0.0250869    0.1683006
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0629662   -0.1009934   -0.0249390
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0623701   -0.1215434   -0.0031968
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0873555   -0.2129012    0.0381901
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0173557   -0.0576371    0.0229258

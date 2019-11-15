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
![](/tmp/c3e650b0-1cdc-412e-a129-2732bc3300a8/4025fb0f-8d55-4e85-94ba-4fbf1738def3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c3e650b0-1cdc-412e-a129-2732bc3300a8/4025fb0f-8d55-4e85-94ba-4fbf1738def3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c3e650b0-1cdc-412e-a129-2732bc3300a8/4025fb0f-8d55-4e85-94ba-4fbf1738def3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.8901171   -1.0594711   -0.7207631
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.2542315   -1.6584483   -0.8500147
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.9167450   -1.3325591   -0.5009309
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0115940   -0.1688595    0.1456715
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1701788   -0.4508017    0.1104441
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0205021   -0.2773156    0.2363113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1842935   -0.4740092    0.1054222
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.6425959   -1.0921970   -0.1929949
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.0020141   -0.4656122    0.4696404
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -1.0314533   -1.2379730   -0.8249335
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.9657143   -1.5437779   -0.3876507
Birth       ki1000108-IRC              INDIA                          >=30                 NA                -0.8269231   -1.4629238   -0.1909223
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6821767   -0.8650806   -0.4992728
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.6430000   -0.8573712   -0.4286288
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.5853440   -0.8544106   -0.3162775
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3715992   -1.4941715   -1.2490269
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.5806768   -1.8192715   -1.3420821
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.2098849   -1.3915173   -1.0282524
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.2904818   -1.3827984   -1.1981653
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.3875340   -1.5878256   -1.1872423
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.2638176   -1.4610025   -1.0666328
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.2328669   -1.3354532   -1.1302805
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.2725857   -1.4938782   -1.0512933
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.3130632   -1.5491440   -1.0769824
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.2306746   -1.3233421   -1.1380070
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -1.4290625   -1.5885308   -1.2695942
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.2141026   -1.3204808   -1.1077244
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0794271   -1.1867199   -0.9721343
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.4366713   -1.6331106   -1.2402319
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8968444   -1.1265079   -0.6671810
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -1.1562189   -1.3700148   -0.9424229
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                -1.1391558   -1.3498634   -0.9284481
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                -1.0979568   -1.3007115   -0.8952021
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5040715   -0.5359867   -0.4721563
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6490458   -0.7181942   -0.5798974
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4186787   -0.4840440   -0.3533134
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.1015855   -1.2462208   -0.9569503
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.2445534   -1.5873753   -0.9017314
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.9562905   -1.1320268   -0.7805542
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.9639639   -1.0058445   -0.9220833
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -1.1282216   -1.2521384   -1.0043047
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.9549642   -1.0295270   -0.8804014
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.7639289   -0.8243115   -0.7035463
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.8990571   -1.0340257   -0.7640885
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6112523   -0.6985266   -0.5239780
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.7298411   -0.7545679   -0.7051142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.8299303   -0.8567301   -0.8031305
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.8069834   -0.8687463   -0.7452204
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1124115   -0.2602962    0.0354732
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1491752   -0.6071603    0.3088100
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.2350546   -0.5317544    0.0616453
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 1.0308911    0.7970202    1.2647620
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.9690160    0.6037595    1.3342726
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.7400066    0.3354023    1.1446108
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.7619988   -0.9134916   -0.6105060
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.6380507   -0.9464577   -0.3296438
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.3542416   -0.6709114   -0.0375719
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.1162432   -0.0345491    0.2670356
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.1206884   -0.1611060    0.4024828
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.9922155    0.8083003    1.1761307
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 1.0765560    0.8522053    1.3009066
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                 1.1384854    0.8603086    1.4166622
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.5183097    0.2926598    0.7439596
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6391353    0.1478721    1.1303986
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.4452977    0.2318682    0.6587272
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6399772    0.4665576    0.8133967
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.5361678   -0.0385331    1.1108687
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4113785    0.1968527    0.6259044
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5302968   -0.6996451   -0.3609486
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5534848   -1.0425702   -0.0643995
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.2761240   -0.7250774    0.1728294
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.6152875   -0.7566917   -0.4738834
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.3097297   -0.8554783    0.2360189
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.7750000   -1.3672661   -0.1827339
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6640032   -0.8213550   -0.5066515
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.5627802   -0.6520530   -0.4735073
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.7845760   -0.9391153   -0.6300367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.9306754   -1.0663925   -0.7949584
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.9157783   -1.2025883   -0.6289684
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -1.3130507   -1.6015838   -1.0245175
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4385922   -0.5504564   -0.3267280
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.2683930   -0.5360497   -0.0007363
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.5344828   -0.7273965   -0.3415692
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.1903606   -0.2920035   -0.0887177
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1528647   -0.3894435    0.0837141
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.2693967   -0.4498323   -0.0889612
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0465667   -0.0507309    0.1438642
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0319776   -0.1571748    0.2211300
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1315618   -0.3187467    0.0556231
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0960927    0.0301068    0.1620786
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2385726    0.0125054    0.4646398
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0067789   -0.1104406    0.0968828
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0859516   -0.1598303   -0.0120730
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0921134   -0.2220320    0.0378051
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3724833   -0.4560321   -0.2889344
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0073454   -0.1335119    0.1482026
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0893884   -0.3827895    0.2040126
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2356097   -0.5107243    0.0395049
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.5742829   -0.6831327   -0.4654332
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.4741072   -0.6635768   -0.2846377
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8272836   -1.0326603   -0.6219069
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.5773214    0.5156368    0.6390060
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.6432859    0.5746830    0.7118887
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5395443    0.4649275    0.6141611
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3347096    0.3029057    0.3665136
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3668276    0.3011907    0.4324644
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.1638504    0.0999992    0.2277016
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1906727    0.0826010    0.2987444
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.3061014    0.0884036    0.5237991
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.1777861    0.0609148    0.2946574
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6763595   -0.7158521   -0.6368670
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.8870722   -1.0044036   -0.7697408
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7513580   -0.8193209   -0.6833951
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2422487   -0.2952030   -0.1892945
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2447979   -0.3675214   -0.1220744
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.4011778   -0.4819936   -0.3203621
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.4262445    0.3176835    0.5348054
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.4757356    0.2927106    0.6587607
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.4735451    0.3214732    0.6256169
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.5936376   -0.6213466   -0.5659286
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.5818327   -0.6084963   -0.5551690
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.6733769   -0.7332039   -0.6135499
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.7525610   -0.8969633   -0.6081587
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.9934640   -1.3423769   -0.6445511
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.9288981   -1.2282289   -0.6295674
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.5018960    0.2352592    0.7685328
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.4289453   -0.1225016    0.9803921
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.3930920   -0.0662771    0.8524611
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.9731658   -1.1147213   -0.8316104
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.9894690   -1.2488384   -0.7300996
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.7826897   -1.0010806   -0.5642988
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0584509   -0.1044148    0.2213165
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0712684   -0.3664650    0.2239282
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.4725055    0.2238159    0.7211952
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.3903574    0.1943709    0.5863440
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6198050    0.3114626    0.9281475
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.3423116    0.1615823    0.5230408
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0147050   -0.1583772    0.1877873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5589133   -0.6758726   -0.4419540
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5758333   -0.8476059   -0.3040607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.5296032   -0.8093404   -0.2498659
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.7527308   -0.8508001   -0.6546615
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.5192793   -0.8088868   -0.2296717
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.9530460   -1.3414201   -0.5646719
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9512095   -1.0665786   -0.8358404
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.6345832   -0.9322315   -0.3369349
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.0191324   -1.2362640   -0.8020007
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8477421   -0.9481175   -0.7473667
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.0337805   -1.2730054   -0.7945556
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.9839037   -1.1552176   -0.8125899
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.6136002   -0.7327479   -0.4944525
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.5054039   -0.7078091   -0.3029986
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.7471432   -0.9881786   -0.5061078
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.7920665   -0.8649592   -0.7191738
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.9006500   -1.0350443   -0.7662558
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.8034220   -0.8760424   -0.7308016
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0676462   -1.1781041   -0.9571882
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.2531977   -1.4671870   -1.0392083
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.2454604   -1.4586500   -1.0322708
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.7016081    0.5973644    0.8058518
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                 0.7239569    0.3961517    1.0517620
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.6053969    0.4948264    0.7159675
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2468775   -1.3721352   -1.1216199
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0066843   -1.2252622   -0.7881064
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1271754   -1.3670667   -0.8872841
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.3053090   -0.3832465   -0.2273715
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.2604529   -0.4133596   -0.1075461
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.2809803   -0.3748490   -0.1871116
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6295754   -0.6710016   -0.5881491
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.7861314   -0.9055645   -0.6666982
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7159923   -0.7801940   -0.6517906
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.5981445   -0.6456067   -0.5506824
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.6369454   -0.7392368   -0.5346540
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6011971   -0.6725413   -0.5298528
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0021428   -0.1312672    0.1269815
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.2171828   -0.4433426    0.0089770
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0904423   -0.0546278    0.2355125
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2878175   -1.3191484   -1.2564867
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3056452   -1.3403665   -1.2709239
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3138532   -1.3976537   -1.2300528


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3545637   -1.4492090   -1.2599184
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5144298   -0.5403185   -0.4885410
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7777196   -0.7967334   -0.7587059
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7077885   -0.8346769   -0.5809000
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4495343   -0.5402027   -0.3588659
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0782666    0.0252568    0.1312764
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1833609   -0.2343611   -0.1323607
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0619988   -0.1773839    0.0533863
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3103322    0.2846161    0.3360483
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7119298   -0.7444861   -0.6793734
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4409268    0.3613957    0.5204578
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5933575   -0.6128938   -0.5738211
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9564667   -1.0725632   -0.8403701
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9097790   -1.0080462   -0.8115117
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8079199   -0.8550714   -0.7607684
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1845602   -1.2836321   -1.0854883
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6627749   -0.6962103   -0.6293395
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0115944   -0.1019822    0.0787935
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2977181   -1.3209986   -1.2744376


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.3641144   -0.8042567    0.0760279
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0266279   -0.4759008    0.4226450
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.1585848   -0.4816602    0.1644906
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0089081   -0.3092058    0.2913896
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.4583025   -0.9995912    0.0829862
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.1863075   -0.3690554    0.7416704
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2985065   -0.6501530    1.2471660
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2036364   -0.6212610    0.2139882
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)            0.0657390   -0.5481078    0.6795858
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2045302   -0.4641606    0.8732210
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0391766   -0.0619100    0.1402633
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0968327   -0.1564583    0.3501236
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.2090776   -0.4770476    0.0588924
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1617143   -0.0579520    0.3813807
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0970521   -0.3178928    0.1237886
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)            0.0266642   -0.1910084    0.2443369
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0397189   -0.2838119    0.2043741
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0801963   -0.3387692    0.1783766
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1983879   -0.3827760   -0.0139998
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0165720   -0.1243032    0.1574471
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3572442   -0.5808922   -0.1335962
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1825826   -0.0708835    0.4360488
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0170631   -0.0756924    0.1098187
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0582621   -0.0088814    0.1254055
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1449743   -0.2210577   -0.0688908
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0853928    0.0127223    0.1580632
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.1429679   -0.5142734    0.2283377
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.1452950   -0.0808229    0.3714130
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1642577   -0.2950765   -0.0334388
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.0089997   -0.0765641    0.0945635
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1351282   -0.2830961    0.0128397
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1526766    0.0466403    0.2587129
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.1000892   -0.1333833   -0.0667951
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0771423   -0.1416139   -0.0126707
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0367637   -0.5183594    0.4448321
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1226431   -0.4540977    0.2088115
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0618751   -0.4962621    0.3725119
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.2908846   -0.7605031    0.1787340
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1239480   -0.2196728    0.4675689
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.4077571    0.0566429    0.7588714
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.3152432   -0.9208249    0.2903384
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0044452   -0.3151583    0.3240487
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0843405   -0.2063613    0.3750422
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1462699   -0.1872078    0.4797476
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.1208257   -0.4179220    0.6595733
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0730120   -0.3833924    0.2373685
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1038094   -0.7044509    0.4968321
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2285987   -0.5041635    0.0469662
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0231880   -0.5407625    0.4943864
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.2541728   -0.2256584    0.7340040
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)            0.3055578   -0.2582123    0.8693279
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.1597125   -0.7686248    0.4491999
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.1012231   -0.0384028    0.2408489
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.1205728   -0.2751956    0.0340499
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0148971   -0.3025398    0.3323341
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.3823752   -0.7016879   -0.0630625
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1701992   -0.1194198    0.4598182
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0958906   -0.3184389    0.1266577
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0374959   -0.2200875    0.2950792
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0790362   -0.2862214    0.1281491
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0145891   -0.2277604    0.1985822
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1781285   -0.3883573    0.0321004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1424799   -0.0930600    0.3780198
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.1028716   -0.2258776    0.0201343
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0061618   -0.1554686    0.1431449
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.2865316   -0.3976134   -0.1754498
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0967338   -0.4234398    0.2299722
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2429551   -0.5522331    0.0663229
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.1001757   -0.1179851    0.3183364
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2530007   -0.4855662   -0.0204351
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0659645    0.0065161    0.1254129
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0377770   -0.0797363    0.0041822
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0321179   -0.0406348    0.1048707
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1708592   -0.2420203   -0.0996981
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.1154287   -0.1278937    0.3587510
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0128866   -0.1715171    0.1457439
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2107127   -0.3345890   -0.0868364
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0749985   -0.1536166    0.0036196
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0025491   -0.1362333    0.1311351
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1589291   -0.2556187   -0.0622395
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0494912   -0.1634224    0.2624047
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0473006   -0.1400885    0.2346897
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0118049   -0.0238527    0.0474626
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0797393   -0.1459978   -0.0134808
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2409030   -0.6179056    0.1360996
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1763371   -0.5084303    0.1557560
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0729507   -0.6857585    0.5398571
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.1088040   -0.6430750    0.4254670
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0163032   -0.3115768    0.2789704
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.1904761   -0.0699484    0.4509007
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.1297192   -0.4672959    0.2078574
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.4140547    0.1160886    0.7120207
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.2294476   -0.1359915    0.5948867
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0480459   -0.3148168    0.2187251
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2708161   -0.8327855    0.2911533
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1197515   -0.1371659    0.3766690
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0169200   -0.3127914    0.2789513
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0293101   -0.2738935    0.3325137
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.2334515   -0.0723100    0.5392131
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.2003152   -0.6008798    0.2002495
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3166263   -0.0009533    0.6342059
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0679229   -0.3126356    0.1767898
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1860384   -0.4446492    0.0725724
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1361616   -0.3330689    0.0607457
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.1081964   -0.1262604    0.3426532
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1335430   -0.4002294    0.1331434
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1085835   -0.2612157    0.0440487
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0113555   -0.1139769    0.0912659
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.1855515   -0.4264857    0.0553827
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1778142   -0.4178740    0.0622455
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0223488   -0.2418895    0.2865870
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0962112   -0.2134876    0.0210653
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2401933   -0.0119335    0.4923200
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1197021   -0.1510638    0.3904681
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0448562   -0.1268443    0.2165567
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0243287   -0.0977408    0.1463983
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1565560   -0.2829774   -0.0301346
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0864169   -0.1627188   -0.0101151
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0388008   -0.1513516    0.0737499
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0030525   -0.0884792    0.0823741
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.2150400   -0.4741644    0.0440844
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0925852   -0.1005909    0.2857613
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0178277   -0.0629547    0.0272994
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0260357   -0.1164321    0.0643607


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0517434   -0.1550760    0.0515893
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0404235   -0.1623209    0.0814739
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0082899   -0.2143066    0.1977269
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                 0.0208702   -0.0542483    0.0959887
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0121314   -0.0242405    0.0485032
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0170355   -0.0450959    0.0791669
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0079768   -0.0600935    0.0441399
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0112845   -0.0735057    0.0509368
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0042708   -0.0739677    0.0654261
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0370160   -0.1011663    0.0271343
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0113555   -0.0059657    0.0286768
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0103583   -0.0286297    0.0079131
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0394427   -0.0700031    0.1488884
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0103176   -0.0354272    0.0147920
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0212038   -0.0168459    0.0592536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0478786   -0.0637581   -0.0319990
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0252649   -0.1131265    0.0625967
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0588138   -0.2055939    0.0879664
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0542103   -0.0092145    0.1176351
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0058125   -0.0715975    0.0599726
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0606661   -0.0691233    0.1904554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0238688   -0.1383880    0.1861256
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1037559   -0.2317831    0.0242714
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0276202   -0.0496471    0.1048875
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0163578   -0.0532078    0.0859233
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0017052   -0.0324747    0.0290644
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0814824   -0.1638615    0.0008966
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0109420   -0.0745824    0.0526984
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0087301   -0.0604153    0.0429552
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0168044   -0.0757575    0.0421486
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0178261   -0.0581072    0.0224550
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0974093   -0.1519301   -0.0428884
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0693442   -0.1634795    0.0247912
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0295587   -0.0902404    0.0311231
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0019225   -0.0090593    0.0129043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0243775   -0.0429307   -0.0058242
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0034083   -0.0746124    0.0814290
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0355702   -0.0581499   -0.0129906
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0515946   -0.0867538   -0.0164354
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0146823   -0.0590696    0.0884342
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0002801   -0.0185503    0.0191105
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0667314   -0.1480685    0.0146056
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0392727   -0.2150178    0.1364724
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0166992   -0.0374871    0.0708855
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0527473   -0.0791471    0.1846417
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0186727   -0.1225700    0.1599154
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0400925   -0.0781403    0.1583253
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0017628   -0.0449995    0.0485250
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0069158   -0.0351308    0.0489624
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0414305   -0.0284189    0.1112799
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0451249   -0.0955368    0.0052870
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0032500   -0.0640192    0.0705192
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0158534   -0.0683974    0.0366906
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0686646   -0.1341138   -0.0032154
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0141786   -0.0563155    0.0279583
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0623174   -0.0119083    0.1365430
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0239336   -0.0323861    0.0802532
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0331995   -0.0565713   -0.0098278
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0118146   -0.0422435    0.0186143
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0094515   -0.0942249    0.0753219
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0099005   -0.0333422    0.0135412

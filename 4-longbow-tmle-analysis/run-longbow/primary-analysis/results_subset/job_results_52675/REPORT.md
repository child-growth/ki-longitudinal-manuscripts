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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)     10623   22075
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          9564   22075
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1888   22075
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7634   16721
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7869   16721
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1218   16721
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4014    8533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3811    8533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          708    8533


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
![](/tmp/905bbb05-af67-4940-9e6e-6002ea0aa412/ea6dbae4-755a-468f-acf0-7bcf8c12422e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5878125   -0.9094332   -0.2661918
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0080493    0.3021693    1.7139294
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0688828   -0.2928594    0.1550939
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1508685   -0.3089579    0.6106948
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6410029    0.1888153    1.0931904
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.2291431   -1.8614323   -0.5968538
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6812613   -0.8496922   -0.5128303
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1682600   -1.3450431   -0.9914770
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2888204   -1.4517966   -1.1258442
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4343551   -1.6225450   -1.2461651
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1715696   -1.2729013   -1.0702379
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.8766623   -1.1070057   -0.6463189
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.1136679   -1.3242413   -0.9030945
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4455330   -0.5108605   -0.3802055
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9650846   -1.1362466   -0.7939225
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9875284   -1.0493180   -0.9257388
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.6121683   -0.7002940   -0.5240426
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7195544   -0.7440102   -0.6950986
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0354132   -0.3721483    0.3013219
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6552488    0.3855042    0.9249934
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5690316   -0.8444306   -0.2936327
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1085800   -0.5029526    0.2857926
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.9803637    0.7666945    1.1940329
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4282179    0.0059361    0.8504997
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6342897    0.4604006    0.8081788
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2688775   -0.7396959    0.2019410
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3195379   -0.8892108    0.2501350
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5682834   -0.6544083   -0.4821586
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.0369190   -1.2499764   -0.8238617
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3205803   -0.5913349   -0.0498257
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0710383   -0.2332266    0.0911501
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0058732   -0.1705521    0.1588057
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2077046   -0.0178638    0.4332730
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1357084   -0.2327535   -0.0386634
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0544605   -0.2714440    0.1625229
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.4969532   -0.6852735   -0.3086329
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6197355    0.5518667    0.6876044
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3568769    0.2987891    0.4149647
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2850097    0.0939380    0.4760814
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6764551   -0.7162348   -0.6366754
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2553863   -0.3418547   -0.1689179
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.4798209    0.3285142    0.6311276
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5752866   -0.6054472   -0.5451260
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7899989   -0.9429713   -0.6370265
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3772124    0.0488231    0.7056017
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7809279   -1.0297874   -0.5320685
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.5710302    0.3191022    0.8229582
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6071163    0.3104867    0.9037460
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1393055   -0.0523368    0.3309477
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7597086   -0.9569455   -0.5624717
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5235829   -0.8255962   -0.2215697
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4101798   -0.7197059   -0.1006536
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8268906   -0.9535601   -0.7002211
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8269118   -0.9888059   -0.6650178
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8356696   -0.9125772   -0.7587621
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0722224   -1.1824403   -0.9620045
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7054397    0.4200542    0.9908252
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0427611   -1.2531347   -0.8323875
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3396387   -0.4429478   -0.2363297
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.6087489   -0.6595984   -0.5578994
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5963711   -0.6617213   -0.5310210
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0134577   -0.1498004    0.1228850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3027575   -1.3479135   -1.2576015


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9412093   -1.0864308   -0.7959878
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7500589   -0.7679185   -0.7321993
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7080627   -0.8349927   -0.5811326
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5427231    0.3906363    0.6948099
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5928614   -0.6124287   -0.5732940
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9571111   -1.0731621   -0.8410602
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2993367   -1.3226993   -1.2759741


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3533968   -0.6387862   -0.0680075
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6051461   -1.2157519    0.0054597
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0168652   -0.1830439    0.2167744
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.3434518   -0.7366371    0.0497334
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1214319   -0.3444274    0.5872912
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2185600   -0.3936898    0.8308097
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0112159   -0.0609676    0.0833995
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1863037   -0.3499072   -0.0227001
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0096382   -0.1493555    0.1300790
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1902037    0.0263136    0.3540939
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0633758   -0.1437684    0.0170168
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2397807   -0.4524157   -0.0271458
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0311954   -0.0853146    0.0229237
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0688968   -0.1291928   -0.0086007
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0970583   -0.2318789    0.0377623
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0132469   -0.0341082    0.0606020
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1305568   -0.2065789   -0.0545346
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0305045   -0.0480123   -0.0129967
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1029824   -0.4063941    0.2004293
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3164737    0.0863128    0.5466346
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1390310   -0.4168613    0.1387992
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.2196252   -0.1620483    0.6012987
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           0.0765350   -0.1166099    0.2696799
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1145052   -0.2748907    0.5039011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0980684   -0.2265033    0.0303665
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2337991   -0.6754971    0.2078988
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2793919   -0.8147864    0.2560026
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0974250   -0.2065422    0.0116922
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0247611   -0.1876805    0.2372028
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1289540   -0.3841509    0.1262430
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1280524   -0.2766111    0.0205063
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0356355   -0.1090965    0.1803674
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1294380   -0.3470794    0.0882034
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0476524   -0.1313673    0.0360625
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.0075382   -0.1847696    0.1696931
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1068884   -0.2786108    0.0648340
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0404917   -0.0856044    0.0046211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0465447   -0.0988546    0.0057651
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0909287   -0.2741225    0.0922651
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0354747   -0.0586088   -0.0123406
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0384570   -0.1162690    0.0393550
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0388941   -0.1643540    0.0865658
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0175748   -0.0400711    0.0049215
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0301898   -0.1333405    0.0729608
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0820184   -0.2121875    0.3762243
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1761832   -0.4187314    0.0663651
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4505824   -0.6785483   -0.2226166
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1922634   -0.4636271    0.0791004
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0853569   -0.2309346    0.0602208
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.2025580    0.0081819    0.3969341
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2222321   -0.5116031    0.0671390
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4995992   -0.7907161   -0.2084823
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0659764   -0.1671929    0.0352400
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.2165616    0.0688055    0.3643177
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0277497   -0.0344408    0.0899402
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0640884   -0.1296214    0.0014447
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0180102   -0.2324920    0.1964717
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1417991   -0.3373747    0.0537766
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0582633   -0.0343422    0.1508687
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0540260   -0.0930126   -0.0150394
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0135880   -0.0680310    0.0408550
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0018633   -0.1178372    0.1215639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0034208   -0.0377157    0.0445573

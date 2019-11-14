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
Birth       ki1101329-Keneba           GAMBIA                         [20-30)         5      14
Birth       ki1101329-Keneba           GAMBIA                         <20             2      14
Birth       ki1101329-Keneba           GAMBIA                         >=30            7      14
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
![](/tmp/2bb79932-a50b-454f-af17-815128258389/b6150888-ae3f-4403-84f3-cefeff38f31e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2bb79932-a50b-454f-af17-815128258389/b6150888-ae3f-4403-84f3-cefeff38f31e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2bb79932-a50b-454f-af17-815128258389/b6150888-ae3f-4403-84f3-cefeff38f31e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.8802927   -1.0493533   -0.7112321
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.2606368   -1.6735215   -0.8477520
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.9385514   -1.3435530   -0.5335498
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0206043   -0.1799703    0.1387617
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1431625   -0.4184654    0.1321405
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.0003536   -0.2507130    0.2514202
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1871084   -0.4852453    0.1110286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.5267160   -0.9824097   -0.0710224
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.1086257   -0.3501554    0.5674068
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -1.0314533   -1.2379730   -0.8249335
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.9657143   -1.5437779   -0.3876507
Birth       ki1000108-IRC              INDIA                          >=30                 NA                -0.8269231   -1.4629238   -0.1909223
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6844988   -0.8676376   -0.5013600
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.6443242   -0.8591934   -0.4294549
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.5782149   -0.8416361   -0.3147936
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3641974   -1.4868856   -1.2415091
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.5775450   -1.8209538   -1.3341363
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.2064470   -1.3878409   -1.0250530
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.2872352   -1.3794672   -1.1950032
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.4056299   -1.5999270   -1.2113328
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.2695054   -1.4653806   -1.0736302
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.2338234   -1.3354304   -1.1322163
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.2882181   -1.5038676   -1.0725686
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2667530   -1.4837903   -1.0497157
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0758609   -1.1828919   -0.9688298
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.4501715   -1.6435346   -1.2568083
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.9307838   -1.1610479   -0.7005197
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -1.1580561   -1.3718451   -0.9442670
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                -1.1408886   -1.3510005   -0.9307766
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                -1.0910758   -1.2924278   -0.8897238
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5042979   -0.5362267   -0.4723691
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6467529   -0.7158256   -0.5776801
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4190960   -0.4839349   -0.3542572
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.0868767   -1.2318518   -0.9419017
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.2696953   -1.6190120   -0.9203787
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.9623325   -1.1320750   -0.7925900
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.9626601   -1.0045896   -0.9207306
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -1.1382876   -1.2633899   -1.0131852
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.9518954   -1.0269256   -0.8768653
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.7657978   -0.8260644   -0.7055311
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.9025808   -1.0384080   -0.7667535
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6107435   -0.6977257   -0.5237612
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.7171964   -0.7402135   -0.6941794
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.7720731   -0.7967243   -0.7474220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.8230661   -0.8788690   -0.7672631
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1045222   -0.2553654    0.0463210
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0226948   -0.4242606    0.3788709
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.3005035   -0.5933487   -0.0076583
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 1.0091855    0.7751152    1.2432559
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 1.0384561    0.7084507    1.3684614
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.8880134    0.4536436    1.3223832
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.7588077   -0.9104198   -0.6071957
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.6068234   -0.9325287   -0.2811180
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.4154298   -0.7425119   -0.0883477
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.1174775   -0.0332824    0.2682373
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.1188768   -0.1634552    0.4012088
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.9831604    0.7974339    1.1688869
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 1.1964878    0.9717798    1.4211958
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                 1.1155874    0.8478257    1.3833492
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.5141194    0.2842901    0.7439487
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6095250    0.1080998    1.1109501
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.4690188    0.2621840    0.6758536
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6369835    0.4641764    0.8097907
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.4669280   -0.1237973    1.0576533
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4182914    0.2043780    0.6322049
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5302968   -0.6996451   -0.3609486
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5534848   -1.0425702   -0.0643995
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.2761240   -0.7250774    0.1728294
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.6152875   -0.7566917   -0.4738834
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.3097297   -0.8554783    0.2360189
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.7750000   -1.3672661   -0.1827339
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6668610   -0.8291654   -0.5045566
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.5674284   -0.6541900   -0.4806667
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.7648415   -0.9200037   -0.6096793
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.9268170   -1.0626989   -0.7909352
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.8783116   -1.1565831   -0.6000400
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -1.2945202   -1.5849686   -1.0040717
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4386408   -0.5502595   -0.3270220
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.2806217   -0.5542986   -0.0069448
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.5418605   -0.7334784   -0.3502427
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.1888193   -0.2898071   -0.0878316
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1177607   -0.3576078    0.1220865
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.2807389   -0.4569329   -0.1045448
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0423765   -0.0542766    0.1390297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0578969   -0.1279715    0.2437652
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1185911   -0.3158622    0.0786799
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0945055    0.0287058    0.1603052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2029491   -0.0166865    0.4225848
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0042959   -0.0998708    0.1084626
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0851605   -0.1591710   -0.0111501
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0929629   -0.2210736    0.0351477
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3692938   -0.4536222   -0.2849654
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0084455   -0.1313199    0.1482109
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1077616   -0.4118803    0.1963571
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2442210   -0.5238922    0.0354501
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.5762024   -0.6851907   -0.4672141
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.4904135   -0.6814717   -0.2993552
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8492912   -1.0540490   -0.6445334
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.5770158    0.5153533    0.6386783
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.6474124    0.5795506    0.7152742
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5360503    0.4608740    0.6112265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3329955    0.3011604    0.3648305
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3573751    0.2908248    0.4239254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.1552800    0.0914097    0.2191503
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1894137    0.0810530    0.2977744
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.3110624    0.1125146    0.5096103
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.1754319    0.0589727    0.2918911
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6767382   -0.7162015   -0.6372750
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.8869603   -1.0051156   -0.7688049
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7465206   -0.8138475   -0.6791937
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2397730   -0.2929193   -0.1866268
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2324740   -0.3541432   -0.1108048
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.4003362   -0.4809971   -0.3196753
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.4301173    0.3223222    0.5379124
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.4116633    0.2227968    0.6005299
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.4760621    0.3241903    0.6279339
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.5923059   -0.6201066   -0.5645052
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.5813016   -0.6081222   -0.5544811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.6713572   -0.7309467   -0.6117676
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.7499503   -0.8957647   -0.6041358
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.9183565   -1.2577234   -0.5789896
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -1.0078407   -1.3146996   -0.7009818
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.5078749    0.2350164    0.7807334
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.3726535   -0.1834636    0.9287706
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.3986579   -0.1001570    0.8974728
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.9691061   -1.1111760   -0.8270363
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -1.0085797   -1.2873257   -0.7298336
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.7714528   -1.0093503   -0.5335554
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0288278   -0.1533868    0.2110423
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0093531   -0.2579727    0.2766790
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.5991151    0.3694893    0.8287410
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.4134765    0.2109949    0.6159581
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.7287624    0.4082817    1.0492431
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.3239542    0.1347926    0.5131158
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0130973   -0.1601270    0.1863217
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5589133   -0.6758726   -0.4419540
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5758333   -0.8476059   -0.3040607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.5296032   -0.8093404   -0.2498659
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.7527308   -0.8508001   -0.6546615
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.5192793   -0.8088868   -0.2296717
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.9530460   -1.3414201   -0.5646719
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9479239   -1.0632299   -0.8326180
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.5346107   -0.8431025   -0.2261189
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.9806315   -1.2012042   -0.7600587
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8492042   -0.9495766   -0.7488317
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.0107945   -1.2587727   -0.7628162
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.9898232   -1.1600836   -0.8195629
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.6006328   -0.7194193   -0.4818463
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.5468012   -0.7441696   -0.3494327
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.6896270   -0.9289649   -0.4502892
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.7958870   -0.8691713   -0.7226026
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.9082463   -1.0429961   -0.7734965
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.8036287   -0.8766321   -0.7306252
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0696337   -1.1804150   -0.9588524
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.2599332   -1.4708559   -1.0490104
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.2632607   -1.4758509   -1.0506704
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.7019346    0.5974023    0.8064669
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                 0.7152557    0.3393132    1.0911982
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5966579    0.4875042    0.7058116
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2448992   -1.3713030   -1.1184955
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0020332   -1.2207733   -0.7832931
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1188309   -1.3436886   -0.8939732
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.3021020   -0.3793895   -0.2248145
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.2622572   -0.4200991   -0.1044152
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.2804588   -0.3757241   -0.1851936
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6302001   -0.6717243   -0.5886758
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.7904711   -0.9100930   -0.6708492
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7160712   -0.7808455   -0.6512970
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.5967663   -0.6442018   -0.5493307
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.6413981   -0.7441861   -0.5386102
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6033489   -0.6750290   -0.5316689
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0060863   -0.1357655    0.1235928
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.2292689   -0.4541942   -0.0043435
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0802077   -0.0643810    0.2247964
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2871172   -1.3185500   -1.2556844
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3098536   -1.3447662   -1.2749411
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3171765   -1.4011004   -1.2332526


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3545637   -1.4492090   -1.2599184
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5144298   -0.5403185   -0.4885410
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9742815   -1.0093427   -0.9392203
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7500589   -0.7679185   -0.7321993
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7080627   -0.8349927   -0.5811326
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5427231    0.3906363    0.6948099
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5928614   -0.6124287   -0.5732940
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9571111   -1.0731621   -0.8410602
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2993367   -1.3226993   -1.2759741


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.3803440   -0.8270510    0.0663630
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0582587   -0.4975634    0.3810460
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.1225582   -0.4408634    0.1957471
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0209579   -0.2766936    0.3186093
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.3396076   -0.8907103    0.2114950
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.2957341   -0.2641549    0.8556232
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2985065   -0.6501530    1.2471660
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2036364   -0.6212610    0.2139882
Birth       ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          <20                  [20-30)            0.0657390   -0.5481078    0.6795858
Birth       ki1000108-IRC              INDIA                          >=30                 [20-30)            0.2045302   -0.4641606    0.8732210
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0401746   -0.0680104    0.1483596
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.1062839   -0.1426887    0.3552566
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.2133477   -0.4860332    0.0593378
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1577504   -0.0623069    0.3778077
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1183947   -0.3329544    0.0961651
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)            0.0177298   -0.1985887    0.2340483
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0543948   -0.2927019    0.1839124
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0329297   -0.2717217    0.2058623
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3743106   -0.5954432   -0.1531780
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1450771   -0.1089360    0.3990902
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0171675   -0.0758800    0.1102150
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0669803    0.0009791    0.1329814
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1424549   -0.2184634   -0.0664465
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0852019    0.0129989    0.1574049
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.1828186   -0.5607371    0.1950999
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.1245443   -0.0977423    0.3468309
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1756274   -0.3076057   -0.0436492
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.0107647   -0.0752828    0.0968121
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1367830   -0.2854345    0.0118686
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1550543    0.0493239    0.2607847
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0548767   -0.0857905   -0.0239629
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.1058696   -0.1634251   -0.0483142
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0818273   -0.3474817    0.5111363
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1959813   -0.5289674    0.1370049
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0292705   -0.3766942    0.4352352
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.1211721   -0.6205068    0.3781626
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1519844   -0.2066926    0.5106613
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.3433779   -0.0163498    0.7031056
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.3164775   -0.9220510    0.2890961
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0013993   -0.3186630    0.3214617
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.2133274   -0.0811329    0.5077878
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1324270   -0.1941202    0.4589743
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0954055   -0.4554622    0.6462732
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0451007   -0.3553881    0.2651868
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1700555   -0.7851573    0.4450463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2186921   -0.4938199    0.0564357
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0231880   -0.5407625    0.4943864
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.2541728   -0.2256584    0.7340040
6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          <20                  [20-30)            0.3055578   -0.2582123    0.8693279
6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.1597125   -0.7686248    0.4491999
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0994326   -0.0366139    0.2354792
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0979805   -0.2767518    0.0807908
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0485055   -0.2611669    0.3581779
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.3677031   -0.6889920   -0.0464142
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1580191   -0.1375555    0.4535936
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.1032198   -0.3250639    0.1186243
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0710587   -0.1890380    0.3311553
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0919195   -0.2937116    0.1098726
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0155203   -0.1940364    0.2250770
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1609677   -0.3794216    0.0574862
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1084436   -0.1208577    0.3377450
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0902096   -0.2134438    0.0330246
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0078024   -0.1556154    0.1400106
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.2841332   -0.3959402   -0.1723263
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.1162071   -0.4521980    0.2197838
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2526665   -0.5654881    0.0601550
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0857889   -0.1342641    0.3058420
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2730888   -0.5050778   -0.0410998
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0703966    0.0122771    0.1285161
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0409655   -0.0835728    0.0016418
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0243796   -0.0492400    0.0979993
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1777155   -0.2488884   -0.1065426
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.1216487   -0.1049705    0.3482680
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0139818   -0.1721873    0.1442237
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2102220   -0.3348626   -0.0855815
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0697823   -0.1478068    0.0082421
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)            0.0072990   -0.1255260    0.1401240
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1605632   -0.2572398   -0.0638866
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0184539   -0.2360148    0.1991069
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0459448   -0.1403928    0.2322825
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0110043   -0.0248582    0.0468667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0790513   -0.1450643   -0.0130383
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.1684062   -0.5365707    0.1997583
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.2578905   -0.5989118    0.0831309
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.1352214   -0.7585822    0.4881394
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.1092170   -0.6865902    0.4681563
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0394735   -0.3526089    0.2736618
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.1976533   -0.0795767    0.4748833
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0194746   -0.3417134    0.3027642
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.5702874    0.2764311    0.8641437
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.3152859   -0.0642090    0.6947808
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0895223   -0.3693632    0.1903186
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2692085   -0.8312217    0.2928047
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1213592   -0.1356540    0.3783724
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0169200   -0.3127914    0.2789513
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0293101   -0.2738935    0.3325137
24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.2334515   -0.0723100    0.5392131
24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.2003152   -0.6008798    0.2002495
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.4133133    0.0854762    0.7411503
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0327075   -0.2805747    0.2151596
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1615903   -0.4282185    0.1050379
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1406191   -0.3366760    0.0554379
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0538316   -0.1758325    0.2834958
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0889943   -0.3547023    0.1767138
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1123593   -0.2654270    0.0407083
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0077417   -0.1110036    0.0955202
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.1902995   -0.4285941    0.0479951
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1936270   -0.4334378    0.0461839
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0133211   -0.3090614    0.3357036
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.1052767   -0.2206707    0.0101173
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2428660   -0.0096828    0.4954148
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1260683   -0.1322751    0.3844117
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0398448   -0.1360067    0.2156964
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0216431   -0.1010914    0.1443776
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1602711   -0.2869565   -0.0335856
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0858712   -0.1627001   -0.0090423
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0446319   -0.1577115    0.0684478
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0065827   -0.0923054    0.0791401
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.2231826   -0.4818486    0.0354834
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0862940   -0.1072085    0.2797965
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0227364   -0.0680722    0.0225994
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0300593   -0.1207636    0.0606451


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0609166   -0.1636855    0.0418524
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0314132   -0.1542218    0.0913954
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0054749   -0.2200929    0.2091430
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                 0.0208702   -0.0542483    0.0959887
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0144535   -0.0217368    0.0506437
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0096337   -0.0532121    0.0724795
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0112234   -0.0630179    0.0405710
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0103280   -0.0710706    0.0504147
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0405822   -0.1045822    0.0234178
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0131927   -0.0038595    0.0302450
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0101318   -0.0283912    0.0081275
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0247339   -0.0847072    0.1341749
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0116214   -0.0367994    0.0135566
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0230727   -0.0148904    0.0610358
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0328624   -0.0481309   -0.0175940
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0338734   -0.1234165    0.0556697
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0374630   -0.1849165    0.1099904
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0507450   -0.0126184    0.1141085
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0064323   -0.0723020    0.0594375
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0737383   -0.0596478    0.2071243
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0286037   -0.1388192    0.1960265
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1007622   -0.2279895    0.0264651
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0276202   -0.0496471    0.1048875
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0163578   -0.0532078    0.0859233
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0011526   -0.0340298    0.0363350
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0853408   -0.1679659   -0.0027158
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0108935   -0.0745628    0.0527758
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0102713   -0.0612714    0.0407288
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0126143   -0.0706153    0.0453866
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0162389   -0.0563841    0.0239063
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0982004   -0.1528754   -0.0435253
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0704443   -0.1641685    0.0232800
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0276392   -0.0886277    0.0333493
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0022281   -0.0089004    0.0133566
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0226633   -0.0412632   -0.0040634
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0046673   -0.0734551    0.0827897
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0351915   -0.0577600   -0.0126231
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0540703   -0.0894272   -0.0187134
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0108095   -0.0622203    0.0838393
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0005555   -0.0195095    0.0183985
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0702384   -0.1525793    0.0121025
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0486441   -0.2330248    0.1357366
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0119950   -0.0433112    0.0673013
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0916200   -0.0525405    0.2357805
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0013764   -0.1460693    0.1488222
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0408513   -0.0774331    0.1591356
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0017628   -0.0449995    0.0485250
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0069158   -0.0351308    0.0489624
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0381450   -0.0313188    0.1076087
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0436628   -0.0939707    0.0066450
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0097174   -0.0763340    0.0568991
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0120329   -0.0649089    0.0408430
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0666771   -0.1322821   -0.0010721
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0145051   -0.0592275    0.0302172
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0603390   -0.0145653    0.1352434
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0207265   -0.0351780    0.0766310
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0325748   -0.0560297   -0.0091200
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0131929   -0.0436316    0.0172458
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0055081   -0.0907662    0.0797501
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0122195   -0.0357635    0.0113246

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

agecat      studyid                    country                        mage       n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)       148     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20            28     215  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30           39     215  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)        39      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <20             8      62  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30           15      62  whz              
Birth       ki0047075b-MAL-ED          INDIA                          [20-30)        36      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          <20             7      45  whz              
Birth       ki0047075b-MAL-ED          INDIA                          >=30            2      45  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          [20-30)        21      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          <20             0      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=30            5      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           [20-30)       113     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           <20            63     228  whz              
Birth       ki0047075b-MAL-ED          PERU                           >=30           52     228  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        65     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20            22     120  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           33     120  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)        66     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             7     115  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           42     115  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)        75      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20             7      86  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      86  whz              
Birth       ki1000108-IRC              INDIA                          [20-30)       289     343  whz              
Birth       ki1000108-IRC              INDIA                          <20            28     343  whz              
Birth       ki1000108-IRC              INDIA                          >=30           26     343  whz              
Birth       ki1000109-EE               PAKISTAN                       [20-30)        68     177  whz              
Birth       ki1000109-EE               PAKISTAN                       <20             1     177  whz              
Birth       ki1000109-EE               PAKISTAN                       >=30          108     177  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)       841    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20           138    1103  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30          124    1103  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)       385     573  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20            67     573  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30          121     573  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)       366     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20            67     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30           99     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       469     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20           124     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30          114     707  whz              
Birth       ki1101329-Keneba           GAMBIA                         [20-30)       670    1466  whz              
Birth       ki1101329-Keneba           GAMBIA                         <20           224    1466  whz              
Birth       ki1101329-Keneba           GAMBIA                         >=30          572    1466  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)       421     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          <20           125     641  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30           95     641  whz              
Birth       ki1119695-PROBIT           BELARUS                        [20-30)      9900   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        <20          1402   13830  whz              
Birth       ki1119695-PROBIT           BELARUS                        >=30         2528   13830  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      8680   12881  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20          2030   12881  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         2171   12881  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)       367     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      <20           101     756  whz              
Birth       ki1135781-COHORTS          GUATEMALA                      >=30          288     756  whz              
Birth       ki1135781-COHORTS          INDIA                          [20-30)      2965    4405  whz              
Birth       ki1135781-COHORTS          INDIA                          <20           337    4405  whz              
Birth       ki1135781-COHORTS          INDIA                          >=30         1103    4405  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)      1744    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    <20           354    2899  whz              
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30          801    2899  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      9028   18006  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20          7251   18006  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30         1727   18006  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       165     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20            35     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           41     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       125     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <20            37     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30           47     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)       179     234  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <20            34     234  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=30           21     234  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       185     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <20             5     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=30           46     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           [20-30)       136     273  whz              
6 months    ki0047075b-MAL-ED          PERU                           <20            76     273  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=30           61     273  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       118     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            42     254  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           94     254  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            15     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          104     247  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       292     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            33     368  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           43     368  whz              
6 months    ki1000108-IRC              INDIA                          [20-30)       342     408  whz              
6 months    ki1000108-IRC              INDIA                          <20            37     408  whz              
6 months    ki1000108-IRC              INDIA                          >=30           29     408  whz              
6 months    ki1000109-EE               PAKISTAN                       [20-30)       159     372  whz              
6 months    ki1000109-EE               PAKISTAN                       <20             1     372  whz              
6 months    ki1000109-EE               PAKISTAN                       >=30          212     372  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)      1015    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20           171    1334  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          148    1334  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)       260     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            36     380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           84     380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       357     535  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20            61     535  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          117     535  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       424     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20            66     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          113     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       462     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          122     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011  whz              
6 months    ki1101329-Keneba           GAMBIA                         [20-30)       987    2080  whz              
6 months    ki1101329-Keneba           GAMBIA                         <20           288    2080  whz              
6 months    ki1101329-Keneba           GAMBIA                         >=30          805    2080  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       171     276  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            46     276  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           59     276  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       371     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          <20           108     564  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30           85     564  whz              
6 months    ki1119695-PROBIT           BELARUS                        [20-30)     11314   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        <20          1620   15758  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=30         2824   15758  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5631    8489  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20          1292    8489  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1566    8489  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       471     963  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      <20           118     963  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=30          374     963  whz              
6 months    ki1135781-COHORTS          INDIA                          [20-30)      3326    4897  whz              
6 months    ki1135781-COHORTS          INDIA                          <20           371    4897  whz              
6 months    ki1135781-COHORTS          INDIA                          >=30         1200    4897  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)      1600    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <20           331    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30          775    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)       364     669  whz              
6 months    ki1148112-LCNI-5           MALAWI                         <20           107     669  whz              
6 months    ki1148112-LCNI-5           MALAWI                         >=30          198     669  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      7656   16779  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          7904   16779  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1219   16779  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       146     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            29     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       102     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       172     225  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <20            33     225  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     225  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           [20-30)        98     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           <20            55     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=30           48     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       106     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39     238  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     238  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             9     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           92     214  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       296     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            34     372  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           42     372  whz              
24 months   ki1000108-IRC              INDIA                          [20-30)       343     409  whz              
24 months   ki1000108-IRC              INDIA                          <20            37     409  whz              
24 months   ki1000108-IRC              INDIA                          >=30           29     409  whz              
24 months   ki1000109-EE               PAKISTAN                       [20-30)        66     168  whz              
24 months   ki1000109-EE               PAKISTAN                       <20             1     168  whz              
24 months   ki1000109-EE               PAKISTAN                       >=30          101     168  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       288     426  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            44     426  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           94     426  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       409     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            64     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          106     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       334     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           101     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         [20-30)       791    1715  whz              
24 months   ki1101329-Keneba           GAMBIA                         <20           217    1715  whz              
24 months   ki1101329-Keneba           GAMBIA                         >=30          707    1715  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       317     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          <20            94     487  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           76     487  whz              
24 months   ki1119695-PROBIT           BELARUS                        [20-30)      2847    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        <20           365    3972  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=30          760    3972  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       276     432  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            69     432  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           87     432  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       532    1076  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      <20           154    1076  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=30          390    1076  whz              
24 months   ki1135781-COHORTS          INDIA                          [20-30)      2446    3665  whz              
24 months   ki1135781-COHORTS          INDIA                          <20           246    3665  whz              
24 months   ki1135781-COHORTS          INDIA                          >=30          973    3665  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)      1461    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <20           293    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          695    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       241     461  whz              
24 months   ki1148112-LCNI-5           MALAWI                         <20            78     461  whz              
24 months   ki1148112-LCNI-5           MALAWI                         >=30          142     461  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4041    8598  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          3845    8598  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          712    8598  whz              


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
![](/tmp/e0032114-cf6c-401c-a989-6b39e549c212/32df8f58-3caf-4161-a204-14eb8a94ef92/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e0032114-cf6c-401c-a989-6b39e549c212/32df8f58-3caf-4161-a204-14eb8a94ef92/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e0032114-cf6c-401c-a989-6b39e549c212/32df8f58-3caf-4161-a204-14eb8a94ef92/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.8830072   -1.0511938   -0.7148205
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -1.1901989   -1.6407350   -0.7396629
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.9763861   -1.3936938   -0.5590783
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0064036   -0.1662105    0.1534033
Birth       ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1218717   -0.3961122    0.1523689
Birth       ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0416995   -0.2950190    0.2116200
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.1835280   -0.4838128    0.1167569
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.5268752   -0.9694693   -0.0842811
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.1191096   -0.3366771    0.5748963
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                -1.0314533   -1.2379730   -0.8249335
Birth       ki1000108-IRC              INDIA                          <20                  NA                -0.9657143   -1.5437779   -0.3876507
Birth       ki1000108-IRC              INDIA                          >=30                 NA                -0.8269231   -1.4629238   -0.1909223
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6821767   -0.8650806   -0.4992728
Birth       ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.6430000   -0.8573712   -0.4286288
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.5853440   -0.8544106   -0.3162775
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3633138   -1.4858363   -1.2407913
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -1.6177430   -1.8549973   -1.3804888
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -1.1728913   -1.3503896   -0.9953930
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -1.2912687   -1.3829072   -1.1996301
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -1.4408263   -1.6321994   -1.2494533
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.2783386   -1.4808323   -1.0758450
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -1.2336362   -1.3350840   -1.1321884
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -1.2607659   -1.4741512   -1.0473805
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -1.2817854   -1.5060302   -1.0575407
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -1.2345512   -1.3276771   -1.1414253
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -1.4504329   -1.6082232   -1.2926427
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                -1.2124166   -1.3184562   -1.1063771
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0759661   -1.1829841   -0.9689481
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.4368598   -1.6318750   -1.2418447
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8851341   -1.1138329   -0.6564353
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                -1.1579865   -1.3717048   -0.9442682
Birth       ki1119695-PROBIT           BELARUS                        <20                  NA                -1.1363673   -1.3456562   -0.9270784
Birth       ki1119695-PROBIT           BELARUS                        >=30                 NA                -1.0961466   -1.2976421   -0.8946511
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5032746   -0.5351576   -0.4713916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6381938   -0.7065063   -0.5698813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4193225   -0.4849063   -0.3537388
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -1.0868700   -1.2328249   -0.9409151
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  NA                -1.2265348   -1.5545629   -0.8985067
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.9555319   -1.1291059   -0.7819579
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.9637092   -1.0057471   -0.9216713
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -1.1418559   -1.2660482   -1.0176636
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                -0.9527063   -1.0277910   -0.8776216
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.7658839   -0.8264065   -0.7053614
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.8954501   -1.0327312   -0.7581690
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6115120   -0.6991444   -0.5238795
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.7292694   -0.7539481   -0.7045906
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.8302949   -0.8571781   -0.8034117
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.8126168   -0.8746801   -0.7505534
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1102125   -0.2592232    0.0387982
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0422070   -0.4462882    0.3618741
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.2742607   -0.5525815    0.0040601
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 1.0217200    0.7914069    1.2520332
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 1.0094686    0.6399032    1.3790340
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.7895725    0.3559774    1.2231676
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.7645628   -0.9163776   -0.6127480
6 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.6213801   -0.9353233   -0.3074369
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.3525074   -0.6804510   -0.0245638
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                 0.1162432   -0.0345491    0.2670356
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.1206884   -0.1611060    0.4024828
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.9895536    0.8074021    1.1717052
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 1.1312590    0.9119817    1.3505362
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                 1.1054883    0.8323983    1.3785784
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.5463694    0.3126120    0.7801268
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.5818108    0.0558492    1.1077725
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.4326255    0.2159758    0.6492752
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6162216    0.4424178    0.7900253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2108634   -0.3865545    0.8082812
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.3866222    0.1763213    0.5969230
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5302968   -0.6996451   -0.3609486
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5534848   -1.0425702   -0.0643995
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.2761240   -0.7250774    0.1728294
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.6152875   -0.7566917   -0.4738834
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.3097297   -0.8554783    0.2360189
6 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.7750000   -1.3672661   -0.1827339
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.6640032   -0.8213550   -0.5066515
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.5627802   -0.6520530   -0.4735073
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.7845760   -0.9391153   -0.6300367
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.9209643   -1.0568471   -0.7850815
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.7735462   -1.0555111   -0.4915812
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -1.3168327   -1.6032017   -1.0304637
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4362140   -0.5477057   -0.3247223
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.1941965   -0.4708598    0.0824667
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.5373495   -0.7275165   -0.3471826
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.1909641   -0.2927568   -0.0891713
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1521743   -0.3881169    0.0837683
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.2631767   -0.4413100   -0.0850434
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0418258   -0.0547476    0.1383993
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0886084   -0.1054522    0.2826691
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1415059   -0.3402488    0.0572371
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0925515    0.0265272    0.1585757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2198945   -0.0043310    0.4441199
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0164283   -0.1198408    0.0869842
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0815184   -0.1559382   -0.0070986
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0995751   -0.2255768    0.0264267
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3726122   -0.4568446   -0.2883798
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0162526   -0.1249003    0.1574055
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0698888   -0.3680872    0.2283096
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2003798   -0.4836878    0.0829282
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.5730849   -0.6820566   -0.4641132
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.4716991   -0.6617483   -0.2816498
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.8576111   -1.0589335   -0.6562886
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.5774870    0.5156521    0.6393219
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.6428497    0.5758710    0.7098283
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5355864    0.4600593    0.6111135
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3337067    0.3018894    0.3655241
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3624388    0.2977608    0.4271167
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.1612740    0.0968258    0.2257222
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.1840649    0.0763676    0.2917623
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.2832223    0.0694396    0.4970050
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                 0.1800201    0.0629115    0.2971286
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6756503   -0.7151756   -0.6361249
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.8907390   -1.0092284   -0.7722496
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7469919   -0.8145775   -0.6794063
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.2405303   -0.2936788   -0.1873818
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2346036   -0.3566398   -0.1125674
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.3994956   -0.4801651   -0.3188261
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.4222235    0.3133173    0.5311297
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.4549736    0.2682707    0.6416764
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.4472814    0.2945032    0.6000597
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.5924220   -0.6201127   -0.5647313
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.5824251   -0.6090937   -0.5557565
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.6710399   -0.7304218   -0.6116581
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.7526983   -0.8977699   -0.6076267
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.9676448   -1.3172743   -0.6180153
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.9540372   -1.2486375   -0.6594370
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.4664604    0.1946309    0.7382899
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.4047111   -0.1562470    0.9656693
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.4583970    0.0050085    0.9117854
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.9717635   -1.1141209   -0.8294060
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.9857342   -1.2393239   -0.7321445
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.7686291   -0.9984935   -0.5387648
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0464961   -0.1245704    0.2175626
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0431690   -0.3240450    0.2377069
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.5591248    0.3170280    0.8012216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.3909436    0.2002066    0.5816806
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.6921120    0.3609368    1.0232872
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                 0.3067366    0.1288162    0.4846569
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0147050   -0.1583772    0.1877873
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5589133   -0.6758726   -0.4419540
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5758333   -0.8476059   -0.3040607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.5296032   -0.8093404   -0.2498659
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.7527308   -0.8508001   -0.6546615
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.5192793   -0.8088868   -0.2296717
24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.9530460   -1.3414201   -0.5646719
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9549843   -1.0699951   -0.8399734
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.4230714   -0.7272102   -0.1189326
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.9449328   -1.1694217   -0.7204438
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.8511504   -0.9516728   -0.7506280
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.9678325   -1.2366276   -0.6990375
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -1.0058549   -1.1803464   -0.8313634
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.6018169   -0.7210310   -0.4826028
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.5417698   -0.7393370   -0.3442027
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.7372044   -0.9770749   -0.4973339
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.7950424   -0.8681384   -0.7219463
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.9030426   -1.0403391   -0.7657462
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.8032556   -0.8759678   -0.7305433
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -1.0696891   -1.1802786   -0.9590996
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -1.2720916   -1.4862870   -1.0578962
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -1.2518660   -1.4644077   -1.0393244
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.7034958    0.5983113    0.8086803
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                 0.7284462    0.3622399    1.0946525
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.5990327    0.4818799    0.7161856
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2463281   -1.3718026   -1.1208536
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9758196   -1.1983475   -0.7532917
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1111648   -1.3409020   -0.8814275
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.3015440   -0.3785621   -0.2245260
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.2484782   -0.4096538   -0.0873026
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.2817254   -0.3777964   -0.1856544
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.6310117   -0.6725654   -0.5894580
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.8007774   -0.9211991   -0.6803557
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.7175378   -0.7820857   -0.6529900
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.5963329   -0.6436451   -0.5490206
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.6395299   -0.7414663   -0.5375935
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.6067864   -0.6775191   -0.5360538
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0084373   -0.1218524    0.1387270
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.2133027   -0.4356503    0.0090449
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0826599   -0.0632179    0.2285376
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -1.2880253   -1.3193516   -1.2566989
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -1.3055428   -1.3401409   -1.2709448
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -1.3145201   -1.3982750   -1.2307653


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.3071917   -0.7885851    0.1742017
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0933789   -0.5439630    0.3572052
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.1154681   -0.4337035    0.2027673
Birth       ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0352959   -0.3375291    0.2669373
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.3433472   -0.8828287    0.1961342
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.3026376   -0.2577991    0.8630742
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
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.2544293   -0.5216957    0.0128372
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1904225   -0.0254260    0.4062709
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1495577   -0.3622412    0.0631259
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)            0.0129300   -0.2087337    0.2345937
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0271297   -0.2628971    0.2086378
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0481493   -0.2934923    0.1971938
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.2158817   -0.3990208   -0.0327426
Birth       ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0221346   -0.1189338    0.1632029
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3608937   -0.5833082   -0.1384793
Birth       ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1908320   -0.0617480    0.4434120
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0216192   -0.0709049    0.1141434
Birth       ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0618399   -0.0050841    0.1287639
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1349192   -0.2101972   -0.0596411
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0839521    0.0111241    0.1567800
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.1396648   -0.4983542    0.2190246
Birth       ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.1313381   -0.0950253    0.3577015
Birth       ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1781467   -0.3092805   -0.0470129
Birth       ki1135781-COHORTS          INDIA                          >=30                 [20-30)            0.0110029   -0.0751450    0.0971507
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1295662   -0.2796186    0.0204862
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1543720    0.0479568    0.2607871
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.1010255   -0.1344449   -0.0676062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0833474   -0.1483029   -0.0183919
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0680055   -0.3633989    0.4994099
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.1640482   -0.4791676    0.1510713
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0122515   -0.4483920    0.4238891
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.2321475   -0.7241135    0.2598184
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.1431826   -0.2067719    0.4931372
6 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.4120554    0.0503258    0.7737849
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.3152432   -0.9208249    0.2903384
6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0044452   -0.3151583    0.3240487
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.1417053   -0.1435599    0.4269705
6 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.1159347   -0.2129286    0.4447979
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0354415   -0.5363961    0.6072790
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.1137439   -0.4337493    0.2062616
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.4053582   -1.0271350    0.2164187
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2295994   -0.5039128    0.0447140
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
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.1474181   -0.1654887    0.4603249
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.3958684   -0.7136461   -0.0780907
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2420175   -0.0563912    0.5404261
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.1011355   -0.3215511    0.1192800
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0387898   -0.2181549    0.2957346
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0722126   -0.2775851    0.1331598
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0467826   -0.1698422    0.2634074
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1833317   -0.4030324    0.0363690
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1273430   -0.1064926    0.3611787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.1089797   -0.2316058    0.0136463
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0180567   -0.1644043    0.1282910
6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.2910938   -0.4030155   -0.1791721
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0861414   -0.4176307    0.2453480
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2166324   -0.5332899    0.1000251
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.1013859   -0.1170558    0.3198275
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2845261   -0.5137570   -0.0552953
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0653627    0.0065686    0.1241567
6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0419006   -0.0838471    0.0000459
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0287320   -0.0431846    0.1006486
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1724327   -0.2441164   -0.1007490
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0991573   -0.1403829    0.3386976
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0040449   -0.1625096    0.1544199
6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.2150888   -0.3400639   -0.0901136
6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0713416   -0.1496543    0.0069710
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)            0.0059267   -0.1272821    0.1391354
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1589653   -0.2556602   -0.0622704
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0327500   -0.1833026    0.2488027
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0250579   -0.1633062    0.2134220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0099969   -0.0256077    0.0456015
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0786179   -0.1445495   -0.0126864
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.2149465   -0.5926847    0.1627916
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.2013389   -0.5287209    0.1260431
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0617493   -0.6850987    0.5616001
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0080635   -0.5487773    0.5326503
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0139707   -0.3039417    0.2760002
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.2031343   -0.0668941    0.4731627
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0896651   -0.4176461    0.2383159
24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.5126287    0.2154938    0.8097636
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.3011684   -0.0793057    0.6816425
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0842070   -0.3428470    0.1744330
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.5319129    0.2105137    0.8533121
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0100515   -0.2414036    0.2615066
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.1166822   -0.4054080    0.1720437
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.1547045   -0.3547702    0.0453611
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0600471   -0.1700240    0.2901181
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.1353875   -0.4013792    0.1306041
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.1080003   -0.2633570    0.0473564
24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0082132   -0.1110521    0.0946257
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2024025   -0.4434499    0.0386449
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1821769   -0.4217111    0.0573572
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0249504   -0.2925817    0.3424824
24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.1044631   -0.2262557    0.0173296
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2705085    0.0152095    0.5258075
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1351633   -0.1271668    0.3974935
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0530659   -0.1256436    0.2317753
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0198186   -0.1033711    0.1430084
24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.1697657   -0.2971681   -0.0423633
24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0865261   -0.1632120   -0.0098402
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0431970   -0.1554197    0.0690256
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0104536   -0.0953328    0.0744257
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.2217400   -0.4770362    0.0335563
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0742226   -0.1213177    0.2697628
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0175176   -0.0625245    0.0274893
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0264949   -0.1168274    0.0638377


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0588533   -0.1612837    0.0435771
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0456140   -0.1697380    0.0785100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0090554   -0.2259573    0.2078465
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       ki1000108-IRC              INDIA                          [20-30)              NA                 0.0208702   -0.0542483    0.0959887
Birth       ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0121314   -0.0242405    0.0485032
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0087501   -0.0532410    0.0707412
Birth       ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0071900   -0.0587372    0.0443572
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0105152   -0.0710071    0.0499768
Birth       ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0003942   -0.0704551    0.0696667
Birth       ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0404770   -0.1044641    0.0235101
Birth       ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0131232   -0.0039776    0.0302239
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0111552   -0.0293599    0.0070495
Birth       ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0247271   -0.0859761    0.1354303
Birth       ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0105723   -0.0358074    0.0146628
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0231588   -0.0150561    0.0613738
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0484503   -0.0643769   -0.0325237
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0274638   -0.1158108    0.0608831
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0496427   -0.1922634    0.0929780
6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0567743   -0.0071495    0.1206981
6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0058125   -0.0715975    0.0599726
6 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0633279   -0.0648804    0.1915362
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0041909   -0.1751030    0.1667212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0800002   -0.2094814    0.0494809
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0276202   -0.0496471    0.1048875
6 months    ki1000108-IRC              INDIA                          [20-30)              NA                 0.0163578   -0.0532078    0.0859233
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0017052   -0.0324747    0.0290644
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0911936   -0.1741068   -0.0082805
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0133203   -0.0772199    0.0505794
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0081266   -0.0599325    0.0436793
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0120636   -0.0701329    0.0460057
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0142848   -0.0545178    0.0259481
6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.1018425   -0.1570062   -0.0466788
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0782514   -0.1731297    0.0166269
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0307567   -0.0915476    0.0300342
6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0017568   -0.0092810    0.0127947
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0233745   -0.0419354   -0.0048136
6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0100161   -0.0676857    0.0877178
6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0362795   -0.0588853   -0.0136737
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0533130   -0.0886864   -0.0179396
6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0187032   -0.0550576    0.0924641
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0009355   -0.0197482    0.0178772
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0665942   -0.1479222    0.0147339
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0038372   -0.1900219    0.1823476
24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0152968   -0.0395644    0.0701580
24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0647021   -0.0740059    0.2034100
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0180865   -0.1186134    0.1547865
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0400925   -0.0781403    0.1583253
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0017628   -0.0449995    0.0485250
24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0069158   -0.0351308    0.0489624
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0452053   -0.0240934    0.1145040
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0417167   -0.0936154    0.0101821
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0085333   -0.0754921    0.0584256
24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0128776   -0.0656267    0.0398716
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0666216   -0.1320944   -0.0011489
24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0160663   -0.0598177    0.0276851
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0617679   -0.0127596    0.1362954
24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0201686   -0.0355354    0.0758726
24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0317632   -0.0552514   -0.0082749
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                -0.0136263   -0.0439418    0.0166892
24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0200316   -0.1053517    0.0652885
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0096928   -0.0330852    0.0136996

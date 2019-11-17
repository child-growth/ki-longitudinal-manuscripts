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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mage       n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)       167     246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20            35     246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           44     246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)       128     218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20            40     218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30           50     218
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)       182     236
0-3 months     ki0047075b-MAL-ED          INDIA                          <20            33     236
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30           21     236
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)       182     232
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20             5     232
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30           45     232
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)       142     282
0-3 months     ki0047075b-MAL-ED          PERU                           <20            78     282
0-3 months     ki0047075b-MAL-ED          PERU                           >=30           62     282
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       135     272
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            41     272
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           96     272
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       128     237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            12     237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           97     237
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       265     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20            29     331
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37     331
0-3 months     ki1000108-IRC              INDIA                          [20-30)       330     394
0-3 months     ki1000108-IRC              INDIA                          <20            37     394
0-3 months     ki1000108-IRC              INDIA                          >=30           27     394
0-3 months     ki1000109-EE               PAKISTAN                       [20-30)       129     318
0-3 months     ki1000109-EE               PAKISTAN                       <20             1     318
0-3 months     ki1000109-EE               PAKISTAN                       >=30          188     318
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)       294     389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20            51     389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30           44     389
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)       381     563
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20            61     563
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          121     563
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)       450     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20            73     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          117     640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       471     725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           131     725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          123     725
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1314    2005
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           142    2005
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          549    2005
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)       712    1571
0-3 months     ki1101329-Keneba           GAMBIA                         <20           244    1571
0-3 months     ki1101329-Keneba           GAMBIA                         >=30          615    1571
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)       334     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <20            96     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=30           79     509
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)      5440    7546
0-3 months     ki1119695-PROBIT           BELARUS                        <20           754    7546
0-3 months     ki1119695-PROBIT           BELARUS                        >=30         1352    7546
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      5415    8153
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20          1209    8153
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1529    8153
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)       179     396
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20            61     396
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30          156     396
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)      3203    4742
0-3 months     ki1135781-COHORTS          INDIA                          <20           369    4742
0-3 months     ki1135781-COHORTS          INDIA                          >=30         1170    4742
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      4944   10018
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20          4131   10018
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30          943   10018
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)       161     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20            33     233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           39     233
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)       124     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20            37     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30           47     208
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)       175     228
3-6 months     ki0047075b-MAL-ED          INDIA                          <20            33     228
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30           20     228
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)       182     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20             5     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30           46     233
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)       133     267
3-6 months     ki0047075b-MAL-ED          PERU                           <20            74     267
3-6 months     ki0047075b-MAL-ED          PERU                           >=30           60     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       112     243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            41     243
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           90     243
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       126     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          100     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       254     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20            29     322
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39     322
3-6 months     ki1000108-IRC              INDIA                          [20-30)       334     399
3-6 months     ki1000108-IRC              INDIA                          <20            37     399
3-6 months     ki1000108-IRC              INDIA                          >=30           28     399
3-6 months     ki1000109-EE               PAKISTAN                       [20-30)       109     273
3-6 months     ki1000109-EE               PAKISTAN                       <20             1     273
3-6 months     ki1000109-EE               PAKISTAN                       >=30          163     273
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)       265     346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20            42     346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30           39     346
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)       349     520
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20            56     520
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          115     520
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)       423     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20            65     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          113     601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       455     702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           127     702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          120     702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1064    1653
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           120    1653
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          469    1653
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)       655    1396
3-6 months     ki1101329-Keneba           GAMBIA                         <20           185    1396
3-6 months     ki1101329-Keneba           GAMBIA                         >=30          556    1396
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)       314     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20            82     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30           73     469
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)      4842    6702
3-6 months     ki1119695-PROBIT           BELARUS                        <20           667    6702
3-6 months     ki1119695-PROBIT           BELARUS                        >=30         1193    6702
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      4048    6126
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20           885    6126
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1193    6126
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)       180     394
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20            55     394
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30          159     394
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)      3265    4795
3-6 months     ki1135781-COHORTS          INDIA                          <20           355    4795
3-6 months     ki1135781-COHORTS          INDIA                          >=30         1175    4795
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)      2952    6298
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20          2872    6298
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30          474    6298
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)       156     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <20            32     224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           36     224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)       120     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <20            34     198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=30           44     198
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)       174     228
6-9 months     ki0047075b-MAL-ED          INDIA                          <20            34     228
6-9 months     ki0047075b-MAL-ED          INDIA                          >=30           20     228
6-9 months     ki0047075b-MAL-ED          NEPAL                          [20-30)       181     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          <20             4     230
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=30           45     230
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)       119     245
6-9 months     ki0047075b-MAL-ED          PERU                           <20            70     245
6-9 months     ki0047075b-MAL-ED          PERU                           >=30           56     245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       102     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40     231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           89     231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       114     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13     225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           98     225
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       256     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20            28     325
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           41     325
6-9 months     ki1000108-IRC              INDIA                          [20-30)       344     410
6-9 months     ki1000108-IRC              INDIA                          <20            37     410
6-9 months     ki1000108-IRC              INDIA                          >=30           29     410
6-9 months     ki1000109-EE               PAKISTAN                       [20-30)       122     299
6-9 months     ki1000109-EE               PAKISTAN                       <20             1     299
6-9 months     ki1000109-EE               PAKISTAN                       >=30          176     299
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)       267     350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <20            45     350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=30           38     350
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        53      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <20             6      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=30           15      74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)       337     496
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <20            51     496
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          108     496
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)       406     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <20            62     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          108     576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       451     693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           121     693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          121     693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       951    1482
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           104    1482
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          427    1482
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)       434     903
6-9 months     ki1101329-Keneba           GAMBIA                         <20            96     903
6-9 months     ki1101329-Keneba           GAMBIA                         >=30          373     903
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       135     211
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <20            34     211
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=30           42     211
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)       313     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <20            88     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=30           76     477
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)      4526    6268
6-9 months     ki1119695-PROBIT           BELARUS                        <20           614    6268
6-9 months     ki1119695-PROBIT           BELARUS                        >=30         1128    6268
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      3658    5557
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20           812    5557
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1087    5557
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)       181     392
6-9 months     ki1135781-COHORTS          GUATEMALA                      <20            55     392
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=30          156     392
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)      2895    4285
6-9 months     ki1135781-COHORTS          INDIA                          <20           299    4285
6-9 months     ki1135781-COHORTS          INDIA                          >=30         1091    4285
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)       245     458
6-9 months     ki1148112-LCNI-5           MALAWI                         <20            80     458
6-9 months     ki1148112-LCNI-5           MALAWI                         >=30          133     458
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)       153     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20            33     225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           39     225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)       117     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <20            34     194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30           43     194
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)       171     225
9-12 months    ki0047075b-MAL-ED          INDIA                          <20            33     225
9-12 months    ki0047075b-MAL-ED          INDIA                          >=30           21     225
9-12 months    ki0047075b-MAL-ED          NEPAL                          [20-30)       180     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          <20             4     229
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=30           45     229
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)       116     235
9-12 months    ki0047075b-MAL-ED          PERU                           <20            65     235
9-12 months    ki0047075b-MAL-ED          PERU                           >=30           54     235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       104     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40     233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           89     233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       114     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13     224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           97     224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       260     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            28     327
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39     327
9-12 months    ki1000108-IRC              INDIA                          [20-30)       339     403
9-12 months    ki1000108-IRC              INDIA                          <20            36     403
9-12 months    ki1000108-IRC              INDIA                          >=30           28     403
9-12 months    ki1000109-EE               PAKISTAN                       [20-30)       136     323
9-12 months    ki1000109-EE               PAKISTAN                       <20             1     323
9-12 months    ki1000109-EE               PAKISTAN                       >=30          186     323
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)       279     371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20            52     371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30           40     371
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        53      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20             6      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           13      72
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)       324     479
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20            51     479
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          104     479
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)       403     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20            63     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          103     569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       442     683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           123     683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          118     683
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       692    1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            67    1073
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          314    1073
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)       401     879
9-12 months    ki1101329-Keneba           GAMBIA                         <20            91     879
9-12 months    ki1101329-Keneba           GAMBIA                         >=30          387     879
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)       114     184
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            30     184
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           40     184
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)       301     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <20            79     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30           74     454
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)      4530    6267
9-12 months    ki1119695-PROBIT           BELARUS                        <20           610    6267
9-12 months    ki1119695-PROBIT           BELARUS                        >=30         1127    6267
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      3296    5041
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20           755    5041
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30          990    5041
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)       201     440
9-12 months    ki1135781-COHORTS          GUATEMALA                      <20            65     440
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=30          174     440
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)      2472    3692
9-12 months    ki1135781-COHORTS          INDIA                          <20           244    3692
9-12 months    ki1135781-COHORTS          INDIA                          >=30          976    3692
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)       160     317
9-12 months    ki1148112-LCNI-5           MALAWI                         <20            53     317
9-12 months    ki1148112-LCNI-5           MALAWI                         >=30          104     317
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       144     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <20            30     212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           38     212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       111     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <20            33     184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     184
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)       170     224
12-15 months   ki0047075b-MAL-ED          INDIA                          <20            33     224
12-15 months   ki0047075b-MAL-ED          INDIA                          >=30           21     224
12-15 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       181     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          <20             4     230
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     230
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)       110     224
12-15 months   ki0047075b-MAL-ED          PERU                           <20            63     224
12-15 months   ki0047075b-MAL-ED          PERU                           >=30           51     224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        99     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40     228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           89     228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       117     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13     226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           96     226
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       265     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            30     334
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39     334
12-15 months   ki1000108-IRC              INDIA                          [20-30)       331     392
12-15 months   ki1000108-IRC              INDIA                          <20            34     392
12-15 months   ki1000108-IRC              INDIA                          >=30           27     392
12-15 months   ki1000109-EE               PAKISTAN                       [20-30)       124     296
12-15 months   ki1000109-EE               PAKISTAN                       <20             1     296
12-15 months   ki1000109-EE               PAKISTAN                       >=30          171     296
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)       283     377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <20            56     377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=30           38     377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        56      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20             5      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30           13      74
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       311     459
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <20            48     459
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          100     459
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       378     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <20            63     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           96     537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       429     666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           120     666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          117     666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       492     782
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            47     782
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          243     782
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)       609    1336
12-15 months   ki1101329-Keneba           GAMBIA                         <20           149    1336
12-15 months   ki1101329-Keneba           GAMBIA                         >=30          578    1336
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)        58      95
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <20            10      95
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30           27      95
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       299     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <20            81     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=30           72     452
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)       211     282
12-15 months   ki1119695-PROBIT           BELARUS                        <20            26     282
12-15 months   ki1119695-PROBIT           BELARUS                        >=30           45     282
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)      1228    1855
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           245    1855
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          382    1855
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       201     429
12-15 months   ki1135781-COHORTS          GUATEMALA                      <20            64     429
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=30          164     429
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)        55     109
12-15 months   ki1148112-LCNI-5           MALAWI                         <20            15     109
12-15 months   ki1148112-LCNI-5           MALAWI                         >=30           39     109
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       143     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <20            31     212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           38     212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       106     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <20            29     175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     175
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)       171     224
15-18 months   ki0047075b-MAL-ED          INDIA                          <20            33     224
15-18 months   ki0047075b-MAL-ED          INDIA                          >=30           20     224
15-18 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          <20             3     227
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     227
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)       103     214
15-18 months   ki0047075b-MAL-ED          PERU                           <20            61     214
15-18 months   ki0047075b-MAL-ED          PERU                           >=30           50     214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)        98     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            36     225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           91     225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       115     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            12     220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           93     220
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       255     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            31     325
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39     325
15-18 months   ki1000108-IRC              INDIA                          [20-30)       323     383
15-18 months   ki1000108-IRC              INDIA                          <20            33     383
15-18 months   ki1000108-IRC              INDIA                          >=30           27     383
15-18 months   ki1000109-EE               PAKISTAN                       [20-30)       115     276
15-18 months   ki1000109-EE               PAKISTAN                       <20             1     276
15-18 months   ki1000109-EE               PAKISTAN                       >=30          160     276
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)       272     362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <20            53     362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30           37     362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)        54      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20             7      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30           11      72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       301     447
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <20            48     447
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           98     447
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       377     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <20            62     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           94     533
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       396     605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           110     605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           99     605
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)       410     658
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            39     658
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          209     658
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)       613    1357
15-18 months   ki1101329-Keneba           GAMBIA                         <20           149    1357
15-18 months   ki1101329-Keneba           GAMBIA                         >=30          595    1357
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       312     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <20            91     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=30           74     477
15-18 months   ki1119695-PROBIT           BELARUS                        [20-30)        30      38
15-18 months   ki1119695-PROBIT           BELARUS                        <20             3      38
15-18 months   ki1119695-PROBIT           BELARUS                        >=30            5      38
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       767    1196
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20           171    1196
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          258    1196
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       178     380
15-18 months   ki1135781-COHORTS          GUATEMALA                      <20            56     380
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=30          146     380
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)        54     102
15-18 months   ki1148112-LCNI-5           MALAWI                         <20            17     102
15-18 months   ki1148112-LCNI-5           MALAWI                         >=30           31     102
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       144     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <20            28     209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)       101     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <20            26     167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     167
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)       171     224
18-21 months   ki0047075b-MAL-ED          INDIA                          <20            33     224
18-21 months   ki0047075b-MAL-ED          INDIA                          >=30           20     224
18-21 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       179     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          <20             3     227
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     227
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)        95     202
18-21 months   ki0047075b-MAL-ED          PERU                           <20            58     202
18-21 months   ki0047075b-MAL-ED          PERU                           >=30           49     202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       103     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            37     233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       110     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            11     208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           87     208
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       243     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            30     310
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37     310
18-21 months   ki1000108-IRC              INDIA                          [20-30)       319     380
18-21 months   ki1000108-IRC              INDIA                          <20            33     380
18-21 months   ki1000108-IRC              INDIA                          >=30           28     380
18-21 months   ki1000109-EE               PAKISTAN                       [20-30)       107     255
18-21 months   ki1000109-EE               PAKISTAN                       <20             1     255
18-21 months   ki1000109-EE               PAKISTAN                       >=30          147     255
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       286     420
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <20            42     420
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           92     420
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       385     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <20            60     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           97     542
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       360     547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20           102     547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           85     547
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         6      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             0      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            5      11
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)       606    1345
18-21 months   ki1101329-Keneba           GAMBIA                         <20           158    1345
18-21 months   ki1101329-Keneba           GAMBIA                         >=30          581    1345
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       299     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <20            81     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=30           67     447
18-21 months   ki1119695-PROBIT           BELARUS                        [20-30)        15      21
18-21 months   ki1119695-PROBIT           BELARUS                        <20             2      21
18-21 months   ki1119695-PROBIT           BELARUS                        >=30            4      21
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       413     655
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            99     655
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          143     655
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       179     381
18-21 months   ki1135781-COHORTS          GUATEMALA                      <20            56     381
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=30          146     381
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)       197     372
18-21 months   ki1148112-LCNI-5           MALAWI                         <20            64     372
18-21 months   ki1148112-LCNI-5           MALAWI                         >=30          111     372
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)       142     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            28     207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           37     207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)        98     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     165
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)       171     224
21-24 months   ki0047075b-MAL-ED          INDIA                          <20            33     224
21-24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     224
21-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)       178     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     227
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     227
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)        92     189
21-24 months   ki0047075b-MAL-ED          PERU                           <20            49     189
21-24 months   ki0047075b-MAL-ED          PERU                           >=30           48     189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)       103     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            39     235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           93     235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)       109     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             8     206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           89     206
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)       248     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            28     311
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           35     311
21-24 months   ki1000108-IRC              INDIA                          [20-30)       326     389
21-24 months   ki1000108-IRC              INDIA                          <20            34     389
21-24 months   ki1000108-IRC              INDIA                          >=30           29     389
21-24 months   ki1000109-EE               PAKISTAN                       [20-30)        38     106
21-24 months   ki1000109-EE               PAKISTAN                       <20             1     106
21-24 months   ki1000109-EE               PAKISTAN                       >=30           67     106
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)       279     409
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            39     409
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           91     409
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)       343     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            55     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           87     485
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)       320     493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20            95     493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           78     493
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)       546    1204
21-24 months   ki1101329-Keneba           GAMBIA                         <20           143    1204
21-24 months   ki1101329-Keneba           GAMBIA                         >=30          515    1204
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)       230     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <20            60     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           53     343
21-24 months   ki1119695-PROBIT           BELARUS                        [20-30)        27      33
21-24 months   ki1119695-PROBIT           BELARUS                        <20             1      33
21-24 months   ki1119695-PROBIT           BELARUS                        >=30            5      33
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)       189     302
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            48     302
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           65     302
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)       193     424
21-24 months   ki1135781-COHORTS          GUATEMALA                      <20            71     424
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=30          160     424
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)       164     313
21-24 months   ki1148112-LCNI-5           MALAWI                         <20            58     313
21-24 months   ki1148112-LCNI-5           MALAWI                         >=30           91     313


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/dfeb7a5e-52ff-4874-992e-359569bdaad5/c5e64f78-ce5a-4e7f-a708-f4acea0f3290/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dfeb7a5e-52ff-4874-992e-359569bdaad5/c5e64f78-ce5a-4e7f-a708-f4acea0f3290/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dfeb7a5e-52ff-4874-992e-359569bdaad5/c5e64f78-ce5a-4e7f-a708-f4acea0f3290/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.8930207    0.8662520   0.9197894
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.8711713    0.7965522   0.9457904
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.8304989    0.7803189   0.8806788
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                1.0675604    1.0213867   1.1137340
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                1.1112105    1.0391054   1.1833156
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.0202476    0.9517421   1.0887531
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.7553279    0.7305559   0.7800998
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                0.7848042    0.7198828   0.8497256
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.7780462    0.7064194   0.8496730
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                0.9583137    0.9271234   0.9895040
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                0.8610903    0.7280672   0.9941134
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.9620863    0.9096125   1.0145600
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.9900288    0.9547665   1.0252910
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  NA                1.0039555    0.9580423   1.0498687
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                0.8817347    0.8319639   0.9315055
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.9235740    0.8860580   0.9610900
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                1.0081065    0.9484911   1.0677219
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.9362099    0.8904684   0.9819514
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.9034136    0.8613098   0.9455174
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.8945049    0.7492879   1.0397219
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8585517    0.8138165   0.9032869
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7512470    0.7245474   0.7779466
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7286591    0.6493463   0.8079719
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7287736    0.6624016   0.7951456
0-3 months     ki1000108-IRC              INDIA                          [20-30)              NA                0.7718247    0.7508843   0.7927650
0-3 months     ki1000108-IRC              INDIA                          <20                  NA                0.7464521    0.6813087   0.8115954
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                0.7506451    0.6678270   0.8334633
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.7982224    0.7804345   0.8160102
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.7879320    0.7221807   0.8536832
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.7416992    0.6757650   0.8076334
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.8204021    0.7995271   0.8412771
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.8836441    0.8377705   0.9295176
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7714375    0.7375262   0.8053488
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.9074911    0.8896237   0.9253585
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.9194846    0.8812834   0.9576857
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8680412    0.8337435   0.9023389
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.8935330    0.8755605   0.9115055
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.8907238    0.8601424   0.9213053
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.8434109    0.8047920   0.8820298
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.9220982    0.9094724   0.9347240
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.9486559    0.9086938   0.9886179
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9158893    0.8968327   0.9349460
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.9489319    0.9330345   0.9648293
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  NA                0.9839935    0.9577091   1.0102780
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                0.8797659    0.8615359   0.8979958
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.8276319    0.8061610   0.8491027
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.8707334    0.8384503   0.9030165
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.7712625    0.7275367   0.8149884
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8244580    0.8075287   0.8413873
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  NA                0.8358093    0.8207651   0.8508535
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8127966    0.7929993   0.8325938
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.9573939    0.9510330   0.9637549
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.9523357    0.9399404   0.9647309
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.9214284    0.9094883   0.9333685
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.7950495    0.7566437   0.8334553
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8509115    0.7956558   0.9061672
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7190341    0.6789961   0.7590721
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                0.8163195    0.8097609   0.8228780
0-3 months     ki1135781-COHORTS          INDIA                          <20                  NA                0.7895751    0.7716869   0.8074633
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                0.7782253    0.7666643   0.7897863
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.8551934    0.8494728   0.8609141
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.8482441    0.8428459   0.8536423
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.8359053    0.8245603   0.8472503
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.4785470    0.4582056   0.4988884
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.4808200    0.4395135   0.5221266
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4533421    0.4133919   0.4932923
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.5945596    0.5512453   0.6378739
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.5558579    0.4949134   0.6168023
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.5526162    0.4926631   0.6125693
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.4354734    0.4160094   0.4549374
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                0.4815118    0.4284329   0.5345906
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4485779    0.3992553   0.4979006
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                0.5231878    0.5000306   0.5463450
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                0.5720962    0.4210849   0.7231075
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.5104179    0.4697786   0.5510572
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.4783370    0.4511638   0.5055101
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  NA                0.4882315    0.4540109   0.5224520
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                0.5546732    0.5167767   0.5925697
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.4558905    0.4215519   0.4902291
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.5000560    0.4145737   0.5855383
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.4617353    0.4230575   0.5004132
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.4664054    0.4351205   0.4976903
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.4143458    0.3138347   0.5148569
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.4510043    0.4114049   0.4906036
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.4681037    0.4466979   0.4895095
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.5300647    0.4620518   0.5980776
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4802621    0.4340729   0.5264513
3-6 months     ki1000108-IRC              INDIA                          [20-30)              NA                0.4600173    0.4414952   0.4785393
3-6 months     ki1000108-IRC              INDIA                          <20                  NA                0.5084862    0.4344012   0.5825713
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                0.4822446    0.4202401   0.5442491
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4080272    0.3880300   0.4280244
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5072399    0.3996983   0.6147815
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4299803    0.3807323   0.4792284
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.4559805    0.4353418   0.4766192
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.4346072    0.3828548   0.4863597
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4796572    0.4412014   0.5181130
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.4905423    0.4740943   0.5069902
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4864899    0.4514901   0.5214897
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4849957    0.4600164   0.5099750
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.4944394    0.4810621   0.5078167
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.5050173    0.4809999   0.5290347
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.5043920    0.4732988   0.5354852
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.4181844    0.4073815   0.4289874
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.4246591    0.3929943   0.4563239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.4222213    0.4056908   0.4387518
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.4496823    0.4358106   0.4635540
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  NA                0.4789564    0.4546289   0.5032838
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4337926    0.4189990   0.4485862
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5023911    0.4845414   0.5202408
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5105387    0.4788733   0.5422040
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4625331    0.4374213   0.4876449
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.6671720    0.6507843   0.6835598
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  NA                0.6736137    0.6612846   0.6859428
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                0.6537707    0.6289457   0.6785956
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.4783712    0.4727167   0.4840258
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.4889718    0.4778141   0.5001296
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4698241    0.4596432   0.4800049
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.4412273    0.4162675   0.4661871
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5083430    0.4723025   0.5443835
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4367474    0.4108759   0.4626189
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                0.4783399    0.4728438   0.4838360
3-6 months     ki1135781-COHORTS          INDIA                          <20                  NA                0.4705145    0.4581409   0.4828881
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                0.4697444    0.4603118   0.4791771
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4407028    0.4344962   0.4469094
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4514671    0.4457172   0.4572170
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4407211    0.4272715   0.4541708
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.2499695    0.2328875   0.2670515
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2002723    0.1550258   0.2455187
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2498778    0.2204575   0.2792981
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.3814279    0.3486299   0.4142259
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.3871057    0.3291981   0.4450133
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.3847893    0.3235436   0.4460350
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.2279694    0.2112200   0.2447189
6-9 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                0.2308192    0.1911942   0.2704443
6-9 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2462452    0.1927184   0.2997721
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.2417240    0.2195299   0.2639181
6-9 months     ki0047075b-MAL-ED          PERU                           <20                  NA                0.2737205    0.2447513   0.3026897
6-9 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2877815    0.2571149   0.3184481
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2569875    0.2260782   0.2878967
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3065152    0.2490267   0.3640037
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2409595    0.2092474   0.2726716
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2317265    0.2017032   0.2617498
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2322836    0.1488206   0.3157465
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2468835    0.2055294   0.2882375
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2642297    0.2457081   0.2827513
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2626911    0.2073170   0.3180653
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2284937    0.1918196   0.2651677
6-9 months     ki1000108-IRC              INDIA                          [20-30)              NA                0.2562602    0.2407892   0.2717312
6-9 months     ki1000108-IRC              INDIA                          <20                  NA                0.3144245    0.2832515   0.3455975
6-9 months     ki1000108-IRC              INDIA                          >=30                 NA                0.2721205    0.2206675   0.3235736
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2549135    0.2392987   0.2705283
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.2541910    0.2021324   0.3062495
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2402211    0.2102439   0.2701984
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1982596    0.1603661   0.2361532
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1414928    0.0721153   0.2108703
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2131073    0.1340749   0.2921397
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.2336262    0.2172532   0.2499992
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2443292    0.2009051   0.2877534
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2437364    0.2136197   0.2738531
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2543285    0.2385537   0.2701034
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2358223    0.2093779   0.2622667
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2374154    0.2181227   0.2567082
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.2719682    0.2594802   0.2844561
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2585228    0.2319591   0.2850866
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2598786    0.2319966   0.2877605
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2583317    0.2468691   0.2697943
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2260439    0.1934500   0.2586378
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2587552    0.2432615   0.2742490
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1990491    0.1832074   0.2148908
6-9 months     ki1101329-Keneba           GAMBIA                         <20                  NA                0.2309613    0.1978771   0.2640456
6-9 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2016311    0.1800308   0.2232314
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2371841    0.2157103   0.2586579
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.2706139    0.2232224   0.3180054
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2383767    0.1993718   0.2773817
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1951282    0.1789914   0.2112650
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1851705    0.1633695   0.2069716
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1584670    0.1333285   0.1836055
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.4769316    0.4626228   0.4912404
6-9 months     ki1119695-PROBIT           BELARUS                        <20                  NA                0.4785085    0.4582796   0.4987374
6-9 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                0.4762122    0.4498987   0.5025258
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.2637077    0.2583587   0.2690567
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2411671    0.2286334   0.2537008
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2534964    0.2426273   0.2643654
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.2095438    0.1893806   0.2297070
6-9 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1966098    0.1505531   0.2426665
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1999495    0.1766150   0.2232840
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2785347    0.2728470   0.2842224
6-9 months     ki1135781-COHORTS          INDIA                          <20                  NA                0.2443252    0.2267221   0.2619282
6-9 months     ki1135781-COHORTS          INDIA                          >=30                 NA                0.2652553    0.2558361   0.2746745
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.2728409    0.2549363   0.2907455
6-9 months     ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3123594    0.2805442   0.3441745
6-9 months     ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.2971196    0.2666492   0.3275899
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1766547    0.1603580   0.1929514
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1949331    0.1556242   0.2342420
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1403033    0.1107892   0.1698174
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2643325    0.2252992   0.3033658
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.3538271    0.2534826   0.4541716
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.2849738    0.2342653   0.3356824
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.1747918    0.1585742   0.1910093
9-12 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                0.1755428    0.1470047   0.2040809
9-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2078364    0.1505347   0.2651382
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1959661    0.1752026   0.2167296
9-12 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.1760505    0.1458073   0.2062937
9-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1830112    0.1498228   0.2161996
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2189811    0.1851777   0.2527846
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2007181    0.1452573   0.2561788
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2158360    0.1818537   0.2498183
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1728785    0.1440954   0.2016616
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2002959    0.1165674   0.2840244
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1553721    0.1253536   0.1853906
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.2149174    0.1950641   0.2347706
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1873263    0.1236604   0.2509923
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2130389    0.1698723   0.2562055
9-12 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.2186420    0.2032142   0.2340699
9-12 months    ki1000108-IRC              INDIA                          <20                  NA                0.2016734    0.1568458   0.2465009
9-12 months    ki1000108-IRC              INDIA                          >=30                 NA                0.1624839    0.1048210   0.2201469
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.2238169    0.2030708   0.2445630
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1816416    0.1155491   0.2477341
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2006695    0.0650645   0.3362745
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1528351    0.1061837   0.1994864
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1065778   -0.0649768   0.2781325
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.1764655    0.0871062   0.2658248
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1628587    0.1469829   0.1787346
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1926600    0.1528981   0.2324218
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1533822    0.1245309   0.1822335
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1814092    0.1699240   0.1928944
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1486177    0.1218502   0.1753851
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1800451    0.1613278   0.1987625
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1916535    0.1794990   0.2038080
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1816154    0.1575290   0.2057018
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2379534    0.2087690   0.2671379
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.2104582    0.1976448   0.2232716
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1832057    0.1421332   0.2242781
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1972670    0.1793546   0.2151794
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1711570    0.1546902   0.1876239
9-12 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1743852    0.1396014   0.2091690
9-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1386108    0.1202712   0.1569504
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2041907    0.1783256   0.2300558
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.1811878    0.1272654   0.2351102
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2296402    0.1839282   0.2753522
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1370812    0.1207849   0.1533775
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1590773    0.1303796   0.1877749
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1559897    0.1294283   0.1825511
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.3706096    0.3448551   0.3963642
9-12 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.3697938    0.3419180   0.3976696
9-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.3773717    0.3478888   0.4068546
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1765953    0.1710008   0.1821899
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1861555    0.1740976   0.1982134
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1863795    0.1762671   0.1964920
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1469449    0.1301273   0.1637625
9-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1490829    0.1143000   0.1838658
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1429152    0.1232862   0.1625442
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2162553    0.2104002   0.2221105
9-12 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2064182    0.1876578   0.2251786
9-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2095432    0.1997430   0.2193435
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.2065356    0.1828106   0.2302607
9-12 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.1391585    0.0954429   0.1828741
9-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.2308783    0.1993100   0.2624467
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1290696    0.1101206   0.1480186
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1376699    0.0954122   0.1799277
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1573662    0.1198306   0.1949019
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2097756    0.1753168   0.2442345
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.2425276    0.1837243   0.3013308
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1846824    0.1473111   0.2220536
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.1732623    0.1544499   0.1920747
12-15 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.1761466    0.1356816   0.2166116
12-15 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.1834977    0.1403959   0.2265994
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1351977    0.1107460   0.1596494
12-15 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.1375086    0.1090090   0.1660083
12-15 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1610735    0.1247674   0.1973795
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1804828    0.1419197   0.2190459
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1986336    0.1427092   0.2545580
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1952320    0.1539624   0.2365016
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1360379    0.1011618   0.1709140
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0982185   -0.0113083   0.2077453
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1962611    0.1608595   0.2316627
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1464967    0.1309528   0.1620407
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1809569    0.1344511   0.2274627
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1539889    0.1156559   0.1923218
12-15 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1840064    0.1698607   0.1981521
12-15 months   ki1000108-IRC              INDIA                          <20                  NA                0.1574139    0.1303104   0.1845174
12-15 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1904336    0.1343233   0.2465439
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1504569    0.1296321   0.1712818
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1576755    0.1147989   0.2005521
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1924186    0.1287198   0.2561173
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1747475    0.1399502   0.2095448
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.2124066    0.1169408   0.3078724
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2163863    0.1640102   0.2687624
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1272623    0.1124863   0.1420383
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1579061    0.1259536   0.1898586
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1262798    0.0996961   0.1528635
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1791203    0.1646959   0.1935446
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1888223    0.1577904   0.2198541
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1778554    0.1524736   0.2032371
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1607758    0.1479654   0.1735862
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1684639    0.1444275   0.1925003
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1715868    0.1436208   0.1995527
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1636279    0.1496765   0.1775793
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1977320    0.1389573   0.2565067
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1883635    0.1682786   0.2084483
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1717569    0.1577685   0.1857454
12-15 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1847807    0.1534738   0.2160876
12-15 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2009519    0.1857502   0.2161536
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                0.1794943    0.1428122   0.2161763
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.2611548    0.1762227   0.3460870
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.2062554    0.1638238   0.2486870
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1628043    0.1463577   0.1792508
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1944473    0.1633306   0.2255640
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1856094    0.1566057   0.2146130
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.2218442    0.0879864   0.3557020
12-15 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.2616463    0.0907454   0.4325472
12-15 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2369017    0.0468899   0.4269135
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1508190    0.1411872   0.1604508
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1391746    0.1161575   0.1621916
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1523089    0.1346763   0.1699415
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1611648    0.1415019   0.1808277
12-15 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1260938    0.0888550   0.1633326
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1455823    0.1265619   0.1646027
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.1549799    0.1175049   0.1924550
12-15 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.0810994   -0.0195831   0.1817818
12-15 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.1625032    0.0877952   0.2372112
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1545478    0.1351041   0.1739915
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1099997    0.0766323   0.1433670
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1252834    0.0890495   0.1615173
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.2088587    0.1707460   0.2469713
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1834976    0.1193141   0.2476810
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.2034491    0.1691887   0.2377096
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.1632475    0.1469978   0.1794972
15-18 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.1869132    0.1414693   0.2323570
15-18 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.1320235    0.0812028   0.1828441
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1624476    0.1397836   0.1851115
15-18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.1038862    0.0656110   0.1421613
15-18 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1643053    0.1204733   0.2081373
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.2183450    0.1734903   0.2631997
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2747018    0.2152282   0.3341754
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2090690    0.1645697   0.2535683
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1446783    0.1110674   0.1782893
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0935736   -0.0299357   0.2170829
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1468344    0.1158872   0.1777817
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1580402    0.1413541   0.1747263
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1479975    0.1046789   0.1913162
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1172169    0.0911416   0.1432922
15-18 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1631457    0.1484802   0.1778112
15-18 months   ki1000108-IRC              INDIA                          <20                  NA                0.1805326    0.1307179   0.2303474
15-18 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1037783    0.0589314   0.1486252
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.1378614    0.1177125   0.1580103
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.1505905    0.0970192   0.2041618
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.1803783    0.1469404   0.2138162
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                0.1825280    0.1409030   0.2241530
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                0.1993559    0.1327462   0.2659656
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.1294800    0.0734619   0.1854981
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1448156    0.1286444   0.1609869
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1622901    0.1100976   0.2144826
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1710579    0.1354812   0.2066346
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1485116    0.1343087   0.1627145
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1993456    0.1662384   0.2324527
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1594364    0.1335264   0.1853464
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1635939    0.1504322   0.1767556
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1752384    0.1507633   0.1997136
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1360096    0.1115144   0.1605047
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1717995    0.1532324   0.1903666
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1782430    0.1151596   0.2413264
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1651021    0.1412581   0.1889461
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1552485    0.1403444   0.1701526
15-18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1368189    0.1094188   0.1642190
15-18 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1669113    0.1518603   0.1819622
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.2363006    0.2181660   0.2544351
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2297029    0.1935623   0.2658435
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2345710    0.1916841   0.2774580
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1323686    0.1192310   0.1455061
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1262800    0.0946530   0.1579071
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1416720    0.1202301   0.1631139
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1081700    0.0841201   0.1322199
15-18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.0963199    0.0553297   0.1373101
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1434441    0.1207099   0.1661782
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.1823146    0.1349177   0.2297115
15-18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2225208    0.1483732   0.2966684
15-18 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.1562390    0.0964195   0.2160584
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1380881    0.1162559   0.1599203
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1576799    0.1173831   0.1979767
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1493956    0.1185008   0.1802905
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.1524796    0.1220364   0.1829228
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1764637    0.1117967   0.2411308
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1709977    0.1217342   0.2202612
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.1790818    0.1627709   0.1953927
18-21 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.1301600    0.0960869   0.1642332
18-21 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.1582446    0.1031525   0.2133366
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1473573    0.1213721   0.1733426
18-21 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.1524045    0.1146732   0.1901359
18-21 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1999545    0.1621617   0.2377472
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1826188    0.1411567   0.2240809
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1623444    0.1092067   0.2154822
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1768078    0.1336046   0.2200109
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1297003    0.0970502   0.1623505
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1661208    0.0383985   0.2938431
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1649106    0.1256200   0.2042013
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1357472    0.1186616   0.1528328
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1250637    0.0645561   0.1855712
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1400993    0.1057927   0.1744059
18-21 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1595121    0.1443642   0.1746601
18-21 months   ki1000108-IRC              INDIA                          <20                  NA                0.1596373    0.1259461   0.1933285
18-21 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1521315    0.1119615   0.1923015
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1735380    0.1537511   0.1933250
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2155815    0.1589952   0.2721678
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1500007    0.1191807   0.1808207
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1371073    0.1236363   0.1505783
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1303241    0.0961068   0.1645413
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1154933    0.0877886   0.1431980
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1405029    0.1274666   0.1535392
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1557587    0.1294273   0.1820901
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1360836    0.1094969   0.1626702
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1526047    0.1380479   0.1671615
18-21 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1371987    0.1092560   0.1651414
18-21 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1591713    0.1415502   0.1767924
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1416169    0.1226545   0.1605793
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1292475    0.0955632   0.1629317
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1617607    0.1183883   0.2051330
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1130425    0.0909951   0.1350900
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1692901    0.1292059   0.2093743
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1099856    0.0747233   0.1452479
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1420004    0.1200346   0.1639662
18-21 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1295698    0.0808561   0.1782834
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1637094    0.1394820   0.1879368
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.1554820    0.1248583   0.1861058
18-21 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2178240    0.1771263   0.2585217
18-21 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.2039816    0.1628195   0.2451438
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.1536649    0.1344542   0.1728756
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1309766    0.0982507   0.1637025
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.1621663    0.1295311   0.1948015
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                0.1453018    0.1124367   0.1781670
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1352651    0.0960582   0.1744719
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1446030    0.0989006   0.1903054
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                0.1535998    0.1378915   0.1693081
21-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.1709108    0.1397039   0.2021178
21-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.1494510    0.1158451   0.1830569
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                0.1761889    0.1499941   0.2023837
21-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.1702694    0.1245305   0.2160084
21-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2030146    0.1671590   0.2388702
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                0.1971369    0.1628975   0.2313764
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.1773370    0.1252492   0.2294249
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1814832    0.1405094   0.2224570
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1196183    0.0807081   0.1585286
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0756055   -0.0377301   0.1889411
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1738024    0.1333253   0.2142796
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.1485046    0.1327600   0.1642493
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.1463067    0.1076870   0.1849264
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1497690    0.1051693   0.1943688
21-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.1769652    0.1619623   0.1919682
21-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.1704247    0.1234615   0.2173878
21-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1949463    0.1418021   0.2480905
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.1452802    0.1249879   0.1655726
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1313001    0.0996505   0.1629497
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1373495    0.1118735   0.1628256
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.1491255    0.1350873   0.1631638
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1135697    0.0828112   0.1443281
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1317160    0.1074746   0.1559574
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.1742687    0.1577823   0.1907552
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1698721    0.1457203   0.1940240
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1845619    0.1553290   0.2137949
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.1635471    0.1480369   0.1790574
21-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.1411632    0.1096742   0.1726521
21-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1777531    0.1616536   0.1938526
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.1724312    0.1435957   0.2012666
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.1877929    0.1248080   0.2507779
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1834273    0.1185185   0.2483362
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1116019    0.0725209   0.1506829
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0805206    0.0273811   0.1336602
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1210429    0.0719527   0.1701331
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.1697079    0.1486964   0.1907193
21-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.1735023    0.1442930   0.2027116
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1564407    0.1307860   0.1820954
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                0.1851527    0.1384215   0.2318838
21-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.1602949    0.0979610   0.2226288
21-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.2157582    0.1706187   0.2608976


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7614711   0.7393327   0.7836095
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7904799   0.7612204   0.8197394
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8167308   0.7998850   0.8335766
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9222790   0.9120898   0.9324682
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9273010   0.9161920   0.9384101
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8235029   0.8073992   0.8396066
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9498989   0.9447676   0.9550303
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7737091   0.7483126   0.7991055
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8048393   0.7993687   0.8103099
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8505122   0.8464692   0.8545552
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4432864   0.4258124   0.4607604
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4225449   0.4096930   0.4353968
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4589150   0.4416963   0.4761336
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4197998   0.4111024   0.4284973
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4472332   0.4378500   0.4566163
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6654276   0.6499538   0.6809014
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4782382   0.4737094   0.4827669
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4487884   0.4323564   0.4652203
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4756543   0.4711598   0.4801487
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4456129   0.4413273   0.4498985
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2299976   0.2151382   0.2448569
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2532254   0.2418755   0.2645754
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1966666   0.1644047   0.2289285
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2369281   0.2232580   0.2505982
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2561879   0.2472749   0.2651010
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2035083   0.1912470   0.2157695
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2428083   0.2251992   0.2604174
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4769566   0.4617272   0.4921860
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2584166   0.2539090   0.2629242
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2039109   0.1892499   0.2185720
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2727666   0.2680645   0.2774687
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2867941   0.2725460   0.3010421
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1779861   0.1638578   0.1921144
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154099   0.2029278   0.2278919
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1532469   0.1125153   0.1939785
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1639742   0.1508066   0.1771418
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2048963   0.1947681   0.2150244
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1571620   0.1455093   0.1688147
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2059727   0.1850551   0.2268904
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3717463   0.3460555   0.3974370
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1799487   0.1754097   0.1844876
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1456672   0.1335954   0.1577389
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2138308   0.2089696   0.2186920
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2032569   0.1854935   0.2210203
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1746468   0.1586510   0.1906426
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1557588   0.1490309   0.1624867
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1846069   0.1556992   0.2135147
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1302528   0.1181825   0.1423231
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1733640   0.1619934   0.1847346
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1858402   0.1760091   0.1956712
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1956959   0.1682516   0.2231402
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2279167   0.1049452   0.3508882
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1495879   0.1416432   0.1575325
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1499758   0.1369388   0.1630128
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1475047   0.1115950   0.1834144
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1639461   0.1490396   0.1788526
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1440707   0.1288559   0.1592855
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1760595   0.1427086   0.2094103
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1524454   0.1378884   0.1670025
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1700541   0.1557271   0.1843811
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1583387   0.1484301   0.1682472
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1335050   0.1228796   0.1441304
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1199764   0.1043771   0.1355756
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1810907   0.1474614   0.2147200
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1700141   0.1555310   0.1844973
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1725866   0.1564042   0.1887690
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1536315   0.1430551   0.1642079
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1208767   0.1037978   0.1379556
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1484923   0.1328210   0.1641635
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1806792   0.1589882   0.2023702
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1557797   0.1425644   0.1689950
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1421826   0.1269161   0.1574492
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1669650   0.1564146   0.1775155
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1086938   0.0807071   0.1366806
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1653368   0.1508602   0.1798134
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1894445   0.1592830   0.2196060


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0218494   -0.1011246    0.0574259
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0625218   -0.1193952   -0.0056484
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0436501   -0.0419721    0.1292723
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0473128   -0.1299264    0.0353009
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0294763   -0.0400106    0.0989633
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0227183   -0.0530711    0.0985078
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)           -0.0972234   -0.2338542    0.0394074
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)            0.0037726   -0.0572711    0.0648162
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0139267   -0.0439650    0.0718185
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.1082941   -0.1692904   -0.0472977
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0845325    0.0140950    0.1549700
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0126359   -0.0465227    0.0717945
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0089087   -0.1601063    0.1422889
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0448619   -0.1062945    0.0165707
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0225879   -0.1062742    0.0610983
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0224734   -0.0940144    0.0490676
0-3 months     ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0253726   -0.0937988    0.0430537
0-3 months     ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0211795   -0.1066040    0.0642450
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0102904   -0.0595345    0.0389537
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0565232   -0.1078006   -0.0052458
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0632420    0.0128421    0.1136418
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0489646   -0.0887860   -0.0091432
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0119935   -0.0301796    0.0541666
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0394499   -0.0781226   -0.0007772
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0028092   -0.0382808    0.0326624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0501221   -0.0927182   -0.0075259
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0265577   -0.0153515    0.0684668
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0062089   -0.0290686    0.0166508
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0350616    0.0043436    0.0657797
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0691660   -0.0933540   -0.0449780
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0431015    0.0043304    0.0818726
0-3 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0563693   -0.1050822   -0.0076564
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0113513   -0.0003057    0.0230083
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0116614   -0.0258452    0.0025224
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0050582   -0.0189903    0.0088739
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0359655   -0.0494942   -0.0224368
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0558620   -0.0114299    0.1231539
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0760154   -0.1314956   -0.0205352
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.0267444   -0.0457970   -0.0076918
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0380942   -0.0513860   -0.0248024
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           -0.0069494   -0.0142824    0.0003837
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           -0.0192881   -0.0319337   -0.0066426
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0022730   -0.0437705    0.0483166
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0252049   -0.0700356    0.0196258
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0387017   -0.1134704    0.0360669
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0419434   -0.1159063    0.0320195
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0460383   -0.0104967    0.1025734
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0131045   -0.0399198    0.0661287
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  [20-30)            0.0489084   -0.1038681    0.2016849
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 [20-30)           -0.0127699   -0.0595439    0.0340041
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0098945   -0.0338025    0.0535915
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0763362    0.0297045    0.1229680
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0441655   -0.0479559    0.1362870
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0058448   -0.0458767    0.0575664
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0520596   -0.1573270    0.0532079
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0154011   -0.0658675    0.0350652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0619610   -0.0093409    0.1332629
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0121584   -0.0387499    0.0630666
3-6 months     ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <20                  [20-30)            0.0484690   -0.0278963    0.1248343
3-6 months     ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0222273   -0.0424845    0.0869392
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0992127   -0.0124591    0.2108845
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0219531   -0.0442249    0.0881311
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0213732   -0.0770892    0.0343427
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0236767   -0.0199674    0.0673208
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0040524   -0.0427243    0.0346196
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0055466   -0.0354548    0.0243616
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0105779   -0.0169137    0.0380695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0099526   -0.0238962    0.0438013
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0064747   -0.0269822    0.0399316
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0040368   -0.0157106    0.0237843
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0292741    0.0012697    0.0572785
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0158897   -0.0361696    0.0043902
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0081475   -0.0282023    0.0444973
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0398580   -0.0706673   -0.0090487
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0064417   -0.0126138    0.0254971
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0134014   -0.0305671    0.0037644
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0106006   -0.0019082    0.0231093
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0085472   -0.0201929    0.0030986
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0671157    0.0232761    0.1109553
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0044799   -0.0404289    0.0314690
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.0078254   -0.0213648    0.0057139
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0085955   -0.0195126    0.0023216
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)            0.0107643    0.0027785    0.0187501
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)            0.0000183   -0.0145656    0.0146023
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0496973   -0.0980608   -0.0013337
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0000917   -0.0341116    0.0339281
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0056778   -0.0608729    0.0722285
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0033615   -0.0661133    0.0728362
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0028498   -0.0401698    0.0458694
6-9 months     ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0182758   -0.0378104    0.0743620
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0319965   -0.0044972    0.0684902
6-9 months     ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0460575    0.0082023    0.0839127
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0495278   -0.0157433    0.1147988
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0160280   -0.0603116    0.0282557
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0005570   -0.0881417    0.0892558
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0151569   -0.0359465    0.0662603
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0015386   -0.0599282    0.0568510
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0357360   -0.0768218    0.0053497
6-9 months     ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          <20                  [20-30)            0.0581643    0.0233633    0.0929653
6-9 months     ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0158603   -0.0378683    0.0695890
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0007226   -0.0609266    0.0594815
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0146924   -0.0432966    0.0139118
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           -0.0567668   -0.1358185    0.0222848
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)            0.0148477   -0.0727995    0.1024949
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0107031   -0.0357053    0.0571114
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0101102   -0.0241694    0.0443898
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0185062   -0.0492983    0.0122858
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0169131   -0.0418341    0.0080079
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0134453   -0.0427981    0.0159074
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0120896   -0.0426404    0.0184612
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0322878   -0.0668386    0.0022629
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0004235   -0.0188494    0.0196965
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0319123   -0.0047692    0.0685937
6-9 months     ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0025820   -0.0242048    0.0293688
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0334298   -0.0185998    0.0854594
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0011926   -0.0433328    0.0457180
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0099577   -0.0370812    0.0171658
6-9 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0366612   -0.0665333   -0.0067891
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0015769   -0.0176027    0.0207565
6-9 months     ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           -0.0007194   -0.0175827    0.0161440
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0225406   -0.0361679   -0.0089132
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0102113   -0.0223253    0.0019026
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0129340   -0.0632110    0.0373430
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0095943   -0.0404334    0.0212449
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.0342096   -0.0527087   -0.0157105
6-9 months     ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0132795   -0.0242827   -0.0022762
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0395185    0.0030112    0.0760257
6-9 months     ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0242786   -0.0110628    0.0596201
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0182784   -0.0242747    0.0608316
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0363513   -0.0700658   -0.0026369
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0894945   -0.0181745    0.1971636
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0206413   -0.0433505    0.0846332
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0007510   -0.0320732    0.0335753
9-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0330446   -0.0265078    0.0925971
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0199156   -0.0566004    0.0167692
9-12 months    ki0047075b-MAL-ED          PERU                           >=30                 [20-30)           -0.0129549   -0.0521032    0.0261934
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0182630   -0.0832135    0.0466874
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0031451   -0.0510770    0.0447868
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0274174   -0.0611203    0.1159551
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0175064   -0.0590946    0.0240817
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0275911   -0.0942807    0.0390986
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0018785   -0.0493917    0.0456348
9-12 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0169687   -0.0643768    0.0304395
9-12 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0561581   -0.1158493    0.0035331
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           -0.0421753   -0.1265826    0.0422320
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           -0.0231474   -0.1677663    0.1214716
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)           -0.0462572   -0.2240418    0.1315273
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)            0.0236304   -0.0771735    0.1244343
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0298012   -0.0130128    0.0726153
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0094765   -0.0424074    0.0234543
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0327915   -0.0619190   -0.0036641
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0013641   -0.0233243    0.0205961
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0100381   -0.0370175    0.0169412
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0462999    0.0146856    0.0779142
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0272525   -0.0702772    0.0157722
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0131912   -0.0352147    0.0088324
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0032281   -0.0352566    0.0417128
9-12 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           -0.0325462   -0.0571937   -0.0078987
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0230029   -0.0828078    0.0368020
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0254495   -0.0270728    0.0779718
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0219960   -0.0110059    0.0549980
9-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0189085   -0.0122536    0.0500706
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           -0.0008158   -0.0142350    0.0126034
9-12 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0067621   -0.0095036    0.0230277
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0095601   -0.0037324    0.0228527
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0097842   -0.0017727    0.0213410
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0021380   -0.0364972    0.0407732
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0040297   -0.0298779    0.0218185
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           -0.0098371   -0.0294900    0.0098157
9-12 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           -0.0067121   -0.0181282    0.0047040
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0673771   -0.1171158   -0.0176385
9-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0243427   -0.0151470    0.0638324
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0086004   -0.0377114    0.0549121
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0282967   -0.0137508    0.0703441
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0327519   -0.0354041    0.1009079
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0250932   -0.0759265    0.0257400
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0028843   -0.0417400    0.0475086
12-15 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)            0.0102354   -0.0367930    0.0572637
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0023110   -0.0352406    0.0398625
12-15 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0258758   -0.0178965    0.0696481
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0181508   -0.0497805    0.0860820
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)            0.0147492   -0.0417335    0.0712319
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0378194   -0.1527648    0.0771261
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0602232    0.0105280    0.1099184
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.0344601   -0.0145746    0.0834949
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0074921   -0.0338725    0.0488567
12-15 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0265925   -0.0571654    0.0039804
12-15 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0064272   -0.0514387    0.0642931
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0072186   -0.0559056    0.0703428
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0419616   -0.0320865    0.1160097
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0376591   -0.0639508    0.1392690
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)            0.0416388   -0.0212429    0.1045205
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0306438   -0.0045598    0.0658474
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0009825   -0.0313967    0.0294317
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0097020   -0.0245184    0.0439224
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0012649   -0.0304590    0.0279292
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0076881   -0.0195489    0.0349251
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0108110   -0.0199494    0.0415714
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0341041   -0.0263037    0.0945120
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0247356    0.0002806    0.0491905
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)            0.0130238   -0.0212662    0.0473137
12-15 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0291949    0.0085366    0.0498533
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  [20-30)            0.0816606   -0.0108545    0.1741757
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 [20-30)            0.0267612   -0.0293282    0.0828505
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0316431   -0.0035526    0.0668388
12-15 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0228051   -0.0105371    0.0561473
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)            0.0398021   -0.1180740    0.1976782
12-15 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)            0.0150575   -0.1705338    0.2006488
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0116444   -0.0365955    0.0133066
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0014899   -0.0186019    0.0215817
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0350710   -0.0771823    0.0070402
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0155825   -0.0429395    0.0117745
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0738806   -0.1813112    0.0335500
12-15 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0075233   -0.0760571    0.0911036
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0445481   -0.0831672   -0.0059290
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           -0.0292644   -0.0703856    0.0118568
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0253611   -0.1000075    0.0492853
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0054096   -0.0566575    0.0458384
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0236657   -0.0245961    0.0719274
15-18 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0312240   -0.0845794    0.0221313
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0585614   -0.1030433   -0.0140795
15-18 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0018577   -0.0474870    0.0512024
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)            0.0563568   -0.0181352    0.1308488
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0092761   -0.0724594    0.0539073
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0511047   -0.1791057    0.0768962
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0021561   -0.0435323    0.0478445
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0100427   -0.0564639    0.0363785
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0408233   -0.0717804   -0.0098661
15-18 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.0173869   -0.0345418    0.0693156
15-18 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0593674   -0.1065513   -0.0121835
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)            0.0127291   -0.0441711    0.0696293
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)            0.0425169    0.0009923    0.0840414
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  [20-30)            0.0168279   -0.0617182    0.0953740
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 [20-30)           -0.0530480   -0.1228382    0.0167421
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0174744   -0.0371659    0.0721148
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0262423   -0.0128372    0.0653218
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)            0.0508340    0.0148089    0.0868590
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)            0.0109248   -0.0186227    0.0404723
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0116445   -0.0161451    0.0394342
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0275843   -0.0553916    0.0002229
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0064435   -0.0593155    0.0722026
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0066974   -0.0369178    0.0235230
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0184296   -0.0496209    0.0127617
15-18 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0116628   -0.0095189    0.0328445
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0065977   -0.0470329    0.0338375
15-18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0017296   -0.0482930    0.0448339
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0060886   -0.0403357    0.0281586
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0093034   -0.0158431    0.0344500
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0118501   -0.0593748    0.0356746
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0352741    0.0021797    0.0683684
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0402062   -0.0477956    0.1282081
15-18 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)           -0.0260756   -0.1023962    0.0502449
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)            0.0195918   -0.0262392    0.0654227
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0113076   -0.0265228    0.0491379
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)            0.0239842   -0.0474904    0.0954587
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)            0.0185181   -0.0393928    0.0764291
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)           -0.0489218   -0.0866978   -0.0111458
18-21 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0208372   -0.0782931    0.0366187
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)            0.0050472   -0.0407664    0.0508608
18-21 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0525971    0.0067329    0.0984613
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0202744   -0.0876741    0.0471254
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0058111   -0.0656911    0.0540689
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0364205   -0.0954090    0.1682500
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0352103   -0.0158758    0.0862964
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0106835   -0.0735570    0.0521901
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0043522   -0.0339736    0.0426779
18-21 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          <20                  [20-30)            0.0001252   -0.0368148    0.0370651
18-21 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           -0.0073806   -0.0503118    0.0355506
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)            0.0420434   -0.0179027    0.1019896
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0235374   -0.0601624    0.0130877
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0067832   -0.0435566    0.0299903
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0216139   -0.0524201    0.0091922
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)            0.0152558   -0.0141259    0.0446375
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           -0.0044193   -0.0340300    0.0251914
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0154060   -0.0469130    0.0161010
18-21 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0065666   -0.0162895    0.0294228
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0123694   -0.0510243    0.0262855
18-21 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0201438   -0.0271926    0.0674802
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0562476    0.0105001    0.1019951
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0030569   -0.0446444    0.0385306
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           -0.0124307   -0.0658677    0.0410064
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)            0.0217090   -0.0109937    0.0544117
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)            0.0623420    0.0114095    0.1132744
18-21 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0484996   -0.0028048    0.0998039
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           -0.0226883   -0.0606361    0.0152595
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)            0.0085014   -0.0293682    0.0463710
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  [20-30)           -0.0100368   -0.0611962    0.0411227
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 [20-30)           -0.0006988   -0.0569911    0.0555935
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <20                  [20-30)            0.0173110   -0.0176265    0.0522485
21-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 [20-30)           -0.0041488   -0.0412447    0.0329471
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <20                  [20-30)           -0.0059195   -0.0586283    0.0467893
21-24 months   ki0047075b-MAL-ED          PERU                           >=30                 [20-30)            0.0268257   -0.0175792    0.0712306
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  [20-30)           -0.0197999   -0.0821336    0.0425337
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 [20-30)           -0.0156537   -0.0690503    0.0377428
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0440129   -0.1638418    0.0758161
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0541841   -0.0019622    0.1103304
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0021979   -0.0439038    0.0395079
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0012644   -0.0460329    0.0485617
21-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           -0.0065406   -0.0558420    0.0427608
21-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)            0.0179811   -0.0372403    0.0732024
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.0139801   -0.0515763    0.0236160
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0079307   -0.0405007    0.0246393
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           -0.0355559   -0.0693664   -0.0017453
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           -0.0174095   -0.0454224    0.0106033
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           -0.0043966   -0.0336390    0.0248457
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)            0.0102932   -0.0232682    0.0438546
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           -0.0223840   -0.0574856    0.0127176
21-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)            0.0142059   -0.0081494    0.0365613
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)            0.0153618   -0.0539101    0.0846337
21-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)            0.0109962   -0.0600295    0.0820219
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0310813   -0.0970444    0.0348819
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0094410   -0.0533059    0.0721879
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)            0.0037944   -0.0321870    0.0397759
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0132672   -0.0464281    0.0198937
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <20                  [20-30)           -0.0248578   -0.1027636    0.0530480
21-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 [20-30)            0.0306055   -0.0343666    0.0955776


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0142914   -0.0309044    0.0023215
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0028424   -0.0311342    0.0254495
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0061432   -0.0063979    0.0186844
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0013636   -0.0141402    0.0114130
0-3 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0199573   -0.0448171    0.0049026
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0172018   -0.0094499    0.0438534
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0188123   -0.0465968    0.0089723
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0044911   -0.0160071    0.0070248
0-3 months     ki1000108-IRC              INDIA                          [20-30)              NA                -0.0038341   -0.0128868    0.0052186
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0077425   -0.0194427    0.0039577
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0036713   -0.0150622    0.0077196
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0058439   -0.0152269    0.0035390
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0090111   -0.0197324    0.0017102
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0001808   -0.0071872    0.0075488
0-3 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0216309   -0.0337576   -0.0095041
0-3 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0006197   -0.0126197    0.0113802
0-3 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0009551   -0.0035765    0.0016662
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0074950   -0.0111068   -0.0038831
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0213405   -0.0493855    0.0067046
0-3 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0114802   -0.0153316   -0.0076288
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0046812   -0.0083310   -0.0010315
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0038969   -0.0148501    0.0070563
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0163620   -0.0411489    0.0084248
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0078130   -0.0023174    0.0179433
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-30)              NA                -0.0014716   -0.0117509    0.0088077
3-6 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0198965    0.0008691    0.0389239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0096165   -0.0179493    0.0371823
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0092757   -0.0322060    0.0136546
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0070529   -0.0025912    0.0166970
3-6 months     ki1000108-IRC              INDIA                          [20-30)              NA                 0.0060544   -0.0027387    0.0148475
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0145176    0.0021054    0.0269299
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0029345   -0.0093404    0.0152093
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0014811   -0.0092369    0.0062746
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0036150   -0.0047166    0.0119466
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0016154   -0.0048739    0.0081047
3-6 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0024491   -0.0124440    0.0075458
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0047794   -0.0138715    0.0043127
3-6 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0017444   -0.0050748    0.0015859
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0001331   -0.0033311    0.0030649
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0075610   -0.0104326    0.0255547
3-6 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0026857   -0.0057303    0.0003590
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0049101    0.0008283    0.0089919
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0071144   -0.0169242    0.0026955
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0017220   -0.0195183    0.0229623
6-9 months     ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0020281   -0.0065244    0.0105807
6-9 months     ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0196693    0.0037297    0.0356089
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0024010   -0.0211569    0.0259588
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0066339   -0.0171995    0.0304672
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0046408   -0.0124693    0.0031877
6-9 months     ki1000108-IRC              INDIA                          [20-30)              NA                 0.0063708    0.0008922    0.0118494
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0016881   -0.0095412    0.0061651
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0015930   -0.0220843    0.0188982
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0033019   -0.0062200    0.0128238
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0051632   -0.0117427    0.0014164
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0044585   -0.0124857    0.0035687
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0021438   -0.0086404    0.0043528
6-9 months     ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0044592   -0.0081925    0.0171109
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0056242   -0.0078347    0.0190831
6-9 months     ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0076783   -0.0157032    0.0003467
6-9 months     ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0000250   -0.0025382    0.0025882
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0052911   -0.0086470   -0.0019352
6-9 months     ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0056328   -0.0213192    0.0100535
6-9 months     ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0057682   -0.0090466   -0.0024898
6-9 months     ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0139531    0.0005141    0.0273922
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0036201   -0.0131673    0.0059271
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0202597   -0.0061461    0.0466656
9-12 months    ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0031943   -0.0047332    0.0111218
9-12 months    ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0084854   -0.0239754    0.0070045
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0043366   -0.0290368    0.0203636
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0059897   -0.0258591    0.0138797
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0025866   -0.0111578    0.0059846
9-12 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0054176   -0.0117539    0.0009187
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                -0.0084070   -0.0296555    0.0128415
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0004118   -0.0247148    0.0255384
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0011155   -0.0080748    0.0103057
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0038776   -0.0095518    0.0017966
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0061914   -0.0018463    0.0142290
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0055619   -0.0129776    0.0018538
9-12 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0139950   -0.0266259   -0.0013642
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0017820   -0.0148784    0.0184425
9-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0069095   -0.0017302    0.0155492
9-12 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0011366   -0.0024862    0.0047594
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0033534    0.0000409    0.0066658
9-12 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0012777   -0.0143220    0.0117666
9-12 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0024245   -0.0058894    0.0010404
9-12 months    ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0032787   -0.0208915    0.0143341
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0062891   -0.0046677    0.0172459
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0004189   -0.0188433    0.0196812
12-15 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0013845   -0.0071355    0.0099045
12-15 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0065413   -0.0104690    0.0235516
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0089417   -0.0199182    0.0378016
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0234061   -0.0004082    0.0472204
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0039700   -0.0030242    0.0109643
12-15 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0018638   -0.0069534    0.0032258
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0053018   -0.0095789    0.0201825
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                 0.0098595   -0.0047648    0.0244837
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0029905   -0.0052653    0.0112463
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0009121   -0.0063100    0.0081342
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0032845   -0.0047026    0.0112715
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0097361    0.0008472    0.0186250
12-15 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0140832    0.0034093    0.0247571
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0162017   -0.0051466    0.0375499
12-15 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0093032    0.0000876    0.0185189
12-15 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                 0.0060725   -0.0314332    0.0435782
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0012311   -0.0069809    0.0045187
12-15 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0111890   -0.0251280    0.0027500
12-15 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0074752   -0.0432051    0.0282546
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0117596   -0.0223236   -0.0011957
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0054392   -0.0254920    0.0146137
15-18 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0006986   -0.0084176    0.0098148
15-18 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                -0.0162587   -0.0356232    0.0031058
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                 0.0052654   -0.0273581    0.0378890
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0018761   -0.0237012    0.0199490
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0058567   -0.0123265    0.0006131
15-18 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0026871   -0.0087190    0.0033448
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0062093   -0.0015640    0.0139826
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              NA                -0.0064685   -0.0221516    0.0092146
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0076298   -0.0033806    0.0186401
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                 0.0078398    0.0004324    0.0152473
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0023966   -0.0099765    0.0051833
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0017454   -0.0127176    0.0092268
15-18 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0030902   -0.0078471    0.0140274
15-18 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0015270   -0.0129815    0.0099275
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0011364   -0.0068712    0.0091440
15-18 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0118063   -0.0049229    0.0285356
15-18 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                -0.0012239   -0.0328274    0.0303796
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                 0.0046266   -0.0056756    0.0149287
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                 0.0081695   -0.0115226    0.0278616
18-21 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                -0.0090677   -0.0174111   -0.0007243
18-21 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0142079   -0.0057916    0.0342074
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0055390   -0.0356141    0.0245361
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0166535   -0.0069712    0.0402781
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0005144   -0.0085675    0.0075386
18-21 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0005330   -0.0053571    0.0042912
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0009515   -0.0119139    0.0100110
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0046191   -0.0120108    0.0027726
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0021580   -0.0056735    0.0099896
18-21 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0010268   -0.0104977    0.0125513
18-21 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0007779   -0.0101627    0.0117184
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0078342   -0.0050028    0.0206711
18-21 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0064919   -0.0100827    0.0230664
18-21 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0251972    0.0048247    0.0455696
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0015494   -0.0111153    0.0080166
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              NA                -0.0018118   -0.0203137    0.0166901
21-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              NA                 0.0021799   -0.0045029    0.0088626
21-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              NA                 0.0052782   -0.0149117    0.0254680
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              NA                -0.0094808   -0.0361027    0.0171411
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0217004   -0.0043233    0.0477241
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0000556   -0.0069449    0.0068337
21-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                 0.0007688   -0.0054537    0.0069913
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0030976   -0.0122111    0.0060159
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0071551   -0.0141645   -0.0001456
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                 0.0007813   -0.0079752    0.0095378
21-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                 0.0034179   -0.0081446    0.0149804
21-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                 0.0043863   -0.0132967    0.0220693
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0029081   -0.0228805    0.0170644
21-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0043711   -0.0201552    0.0114130
21-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              NA                 0.0042918   -0.0240817    0.0326654

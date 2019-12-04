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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mhtcm           n_cell      n
-------------  -------------------------  -----------------------------  -------------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            157    243
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        63    243
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             48    168
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        26    168
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            44    183
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm             87    183
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        52    183
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            27    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm             87    156
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        42    156
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm            55    264
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm            154    264
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           156    205
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             25    205
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        24    205
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           138    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             43    228
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47    228
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           145    342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            116    342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        81    342
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           103    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            327    566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       136    566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           138    639
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            348    639
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       153    639
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            421    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       166    721
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm           984   1184
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm             44   1184
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       156   1184
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm          6047   6284
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm             57   6284
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       180   6284
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5568   7020
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            406   7020
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1046   7020
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            44    352
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            236    352
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm        72    352
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm           514   1721
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm            747   1721
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm       460   1721
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1487   9783
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5839   9783
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2457   9783
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            149    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        59    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             50    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37    208
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            54    229
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm            108    229
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        67    229
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            41    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            130    233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62    233
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm            57    266
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm            154    266
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        55    266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31    239
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        28    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           142    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             46    239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51    239
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           133    306
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            104    306
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        69    306
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            93    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            302    523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       128    523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128    597
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            327    597
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       142    597
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            405    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025   1635
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            253   1635
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       357   1635
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1085   1285
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm             46   1285
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       154   1285
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm          5426   5635
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm             52   5635
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       157   5635
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4471   5639
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            337   5639
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       831   5639
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            48    387
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            265    387
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm        74    387
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm           516   1747
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm            765   1747
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm       466   1747
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm           983   6223
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           3666   6223
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      1574   6223
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        56    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           112    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             49    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37    198
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            55    229
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm            110    229
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        64    229
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            39    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            129    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62    230
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm            51    244
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm            143    244
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        50    244
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           171    227
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31    227
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        25    227
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           132    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             44    225
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49    225
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           137    308
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            100    308
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        71    308
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            14     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             42     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        18     74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            287    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       120    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           115    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            314    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       136    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           130    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            396    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       162    688
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           914   1460
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            222   1460
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       324   1460
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm           687    818
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm             26    818
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       105    818
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            30    181
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            109    181
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        42    181
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm          5131   5326
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm             49   5326
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       146   5326
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4288   5369
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            313   5369
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       768   5369
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            49    385
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            261    385
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm        75    385
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm           483   1645
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm            722   1645
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm       440   1645
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm           351    561
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm             92    561
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm       118    561
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            147    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        55    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           110    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             47    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37    194
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            53    226
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm            109    226
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        64    226
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            39    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            128    229
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62    229
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm            50    234
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm            135    234
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        49    234
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172    229
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31    229
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26    229
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           131    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             45    224
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48    224
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           148    327
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            105    327
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        74    327
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            15     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             43     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        19     77
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            277    482
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       114    482
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           117    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            312    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       137    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           126    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            390    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       158    674
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           672   1065
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163   1065
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       230   1065
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm           680    808
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm             24    808
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       104    808
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            28    163
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             99    163
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        36    163
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm          5155   5349
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm             48   5349
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       146   5349
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4252   5334
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            315   5334
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       767   5334
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm            54    426
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            286    426
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm        86    426
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm           431   1457
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm            639   1457
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm       387   1457
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           242    385
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm             64    385
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm        79    385
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            140    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm           104    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             45    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        35    184
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53    225
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109    225
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63    225
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            39    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129    230
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62    230
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm            50    223
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm            126    223
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        47    223
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        29    224
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           133    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             42    226
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51    226
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           151    332
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            107    332
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        74    332
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            15     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             40     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        21     76
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            85    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            266    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           111    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            296    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       125    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           124    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            380    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       156    660
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479    778
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126    778
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173    778
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1054   1262
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm             48   1262
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       160   1262
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            10     86
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             56     86
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        20     86
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm           274    281
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              0    281
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         7    281
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1828   2266
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            140   2266
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       298   2266
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            54    405
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            265    405
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        86    405
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            72    127
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm             29    127
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        26    127
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            139    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        52    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            99    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        34    175
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53    225
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109    225
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63    225
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128    227
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62    227
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm            47    213
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm            124    213
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        42    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166    221
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28    221
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27    221
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           129    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             39    217
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49    217
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           149    320
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            100    320
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        71    320
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            15     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             39     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        18     72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            79    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            260    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           109    527
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            291    527
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       127    527
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           121    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            339    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       144    604
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           395    656
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115    656
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       146    656
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1073   1282
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm             44   1282
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       165   1282
15-18 months   ki1119695-PROBIT           BELARUS                        >=155 cm            35     36
15-18 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     36
15-18 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1     36
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1460   1809
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            114   1809
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       235   1809
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            49    354
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            227    354
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        78    354
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            69    120
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm             26    120
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        25    120
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            136    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            94    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             42    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31    167
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53    225
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm            108    225
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        64    225
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            37    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128    227
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        62    227
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm            44    202
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm            119    202
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        39    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           174    229
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28    229
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27    229
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           120    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             37    204
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47    204
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            73    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            246    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       103    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           112    540
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            297    540
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       131    540
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           105    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            308    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       133    546
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             7      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1      9
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1064   1272
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm             39   1272
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       169   1272
18-21 months   ki1119695-PROBIT           BELARUS                        >=155 cm            22     22
18-21 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     22
18-21 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         0     22
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1123   1401
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             93   1401
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       185   1401
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            43    356
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            234    356
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        79    356
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           287    474
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm             82    474
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       105    474
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        51    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            91    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31    165
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53    225
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            109    225
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63    225
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            128    227
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61    227
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            43    189
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm            108    189
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        38    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           177    231
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27    231
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27    231
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           120    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             38    204
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        46    204
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            74    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            240    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm        97    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm            97    470
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            265    470
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       108    470
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm            96    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            271    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       123    490
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm           957   1138
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm             32   1138
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       149   1138
21-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm            30     31
21-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     31
21-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1     31
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           800   1019
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             74   1019
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       145   1019
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            48    399
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            266    399
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        85    399
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           245    408
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             74    408
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        89    408


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-15 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/d183dd24-4460-4202-9a4e-e8fabf12306e/5bcfbc99-bbf2-4395-9045-6389b0e35ba1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d183dd24-4460-4202-9a4e-e8fabf12306e/5bcfbc99-bbf2-4395-9045-6389b0e35ba1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d183dd24-4460-4202-9a4e-e8fabf12306e/5bcfbc99-bbf2-4395-9045-6389b0e35ba1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                3.4795004   3.3391785   3.6198223
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                3.2942442   3.2109067   3.3775817
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                3.3997153   3.2677878   3.5316427
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                3.8225828   3.6779044   3.9672611
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                3.7193725   3.5096199   3.9291251
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                3.8588142   3.5705158   4.1471126
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                3.4027679   3.2309977   3.5745381
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                3.3018428   3.1542017   3.4494840
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                3.3796743   3.1899074   3.5694413
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                3.7815168   3.5890827   3.9739508
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                3.5136492   3.3955331   3.6317653
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                3.7491595   3.5584024   3.9399165
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                3.0472764   2.9095636   3.1849891
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                3.0720055   2.9836824   3.1603286
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                3.0060244   2.8573826   3.1546663
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                3.2211884   3.1076589   3.3347179
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                2.9613902   2.6371554   3.2856250
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                3.2178041   3.0001732   3.4354351
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                3.2384747   3.1351291   3.3418203
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                3.2767162   3.1224334   3.4309991
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                3.3297340   3.1650619   3.4944061
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                3.4596813   3.2823434   3.6370192
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                3.3248527   3.1114235   3.5382820
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                3.3816300   3.2799778   3.4832821
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                3.2134866   3.0708572   3.3561160
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                3.0429586   2.9760880   3.1098292
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                3.1928674   3.0872381   3.2984967
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                3.4195893   3.3433778   3.4958009
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                3.1981810   3.1472132   3.2491488
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                3.2533613   3.1837911   3.3229316
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                3.1921445   3.1072582   3.2770308
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                3.1030038   3.0542226   3.1517851
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                3.1450215   3.0752629   3.2147802
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                3.1124067   3.0611610   3.1636523
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.8130992   2.4850428   3.1411556
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                3.0867957   2.9325245   3.2410670
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.7460724   2.5760169   2.9161279
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                2.6518311   2.5897862   2.7138761
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.7433319   2.5340549   2.9526090
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                3.3583389   3.3337993   3.3828785
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                3.1120562   3.0222644   3.2018481
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                3.1847953   3.1300119   3.2395788
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                2.6368204   2.4705430   2.8030978
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                2.5095733   2.4326563   2.5864904
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                2.4688245   2.3193078   2.6183411
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                3.5743232   3.5236329   3.6250134
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                3.4532846   3.4090337   3.4975354
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                3.4978478   3.4450320   3.5506637
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                3.7333556   3.6995696   3.7671416
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                3.6169635   3.5993471   3.6345798
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                3.6725365   3.6465597   3.6985133
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                2.0453692   1.9207186   2.1700199
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.9409543   1.8800096   2.0018990
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.8481242   1.7393264   1.9569219
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                2.1322357   2.0263128   2.2381587
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                2.0776553   1.9304344   2.2248762
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                2.2838289   2.0940280   2.4736298
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.9462610   1.7973528   2.0951692
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.8403014   1.7478483   1.9327546
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.9216784   1.8207480   2.0226088
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.9458918   1.8169404   2.0748431
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.9485755   1.8759479   2.0212031
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                2.0100455   1.8922024   2.1278886
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                2.0130842   1.8413729   2.1847955
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.9748081   1.8942971   2.0553190
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                2.1308180   1.9909297   2.2707062
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.9506345   1.8560721   2.0451969
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.9834059   1.7971336   2.1696783
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                2.0051618   1.7522746   2.2580489
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8561149   1.7689174   1.9433124
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7366617   1.5600168   1.9133066
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.8418982   1.7153581   1.9684382
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                2.0220495   1.9434816   2.1006174
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.8267041   1.6881184   1.9652898
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.9111932   1.7156073   2.1067791
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.8560859   1.7471261   1.9650457
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.8036514   1.7416747   1.8656281
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.8842105   1.7808008   1.9876202
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.9811085   1.9050076   2.0572094
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.9700026   1.9248382   2.0151669
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.9419408   1.8725755   2.0113060
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.9988685   1.9145626   2.0831744
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.9956349   1.9478969   2.0433728
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                2.0369127   1.9613948   2.1124306
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8112048   1.7656015   1.8568080
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7860791   1.6862688   1.8858894
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.7668182   1.6954839   1.8381525
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.9942983   1.9495115   2.0390851
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                2.0712970   1.8817553   2.2608386
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.9152134   1.8042386   2.0261881
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                2.0979962   2.0324640   2.1635285
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.9777484   1.9303187   2.0251781
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                2.0885195   1.9185171   2.2585219
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.9870831   1.9640948   2.0100715
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.9133951   1.8352622   1.9915279
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.9769486   1.9235921   2.0303051
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.8256251   1.6962092   1.9550411
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.6460631   1.5947889   1.6973372
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                1.6978489   1.5836565   1.8120413
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.9258400   1.8806119   1.9710680
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                1.8589280   1.8212459   1.8966101
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.8584042   1.8157727   1.9010356
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                1.9744934   1.9397648   2.0092221
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                1.9181153   1.8986096   1.9376210
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                1.9207074   1.8937012   1.9477136
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                1.2254837   1.1353230   1.3156443
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                1.2328893   1.1846994   1.2810792
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.2965541   1.2066092   1.3864990
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.4705189   1.3816026   1.5594353
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.4978629   1.2764876   1.7192382
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.5017176   1.3377934   1.6656419
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                1.2177435   1.0963651   1.3391218
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.2889023   1.2205514   1.3572532
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                1.1904138   1.0932488   1.2875787
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.4486708   1.3358940   1.5614476
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.3036647   1.2461549   1.3611745
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                1.4108303   1.3295850   1.4920755
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.3255228   1.1964420   1.4546036
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.3128230   1.2431822   1.3824639
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                1.3400867   1.2229020   1.4572714
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.3659536   1.2978400   1.4340671
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                1.4378016   1.2230013   1.6526019
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.2633236   1.0811643   1.4454828
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.1753165   1.0931670   1.2574661
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.2260236   1.0587441   1.3933031
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.2006772   0.9640414   1.4373131
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.3016699   1.1873145   1.4160253
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                1.0946840   0.9840022   1.2053657
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                1.2260454   1.1941047   1.2579860
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                1.2102302   1.0640546   1.3564059
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.0992969   0.9900572   1.2085367
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                1.1552425   0.9752881   1.3351970
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.3374861   1.2447808   1.4301913
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.2218883   1.1676404   1.2761363
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.2741095   1.1950406   1.3531785
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.3500568   1.2949524   1.4051612
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.2508951   1.2165338   1.2852564
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.2980062   1.2495807   1.3464316
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.4463788   1.3816597   1.5110979
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.3059644   1.2670495   1.3448794
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                1.2880140   1.2284045   1.3476235
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.3305159   1.2836904   1.3773414
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.2961438   1.2082151   1.3840726
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.3178085   1.2389853   1.3966316
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                1.4031686   1.3434336   1.4629036
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                1.2329529   1.0254000   1.4405058
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                1.3907581   1.2677204   1.5137958
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.2869045   1.1777326   1.3960765
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                1.1394696   1.0782913   1.2006480
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.1648430   1.0609160   1.2687699
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.5924837   1.5473236   1.6376438
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.7526568   1.6706400   1.8346736
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.4966789   1.3176454   1.6757124
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.3552805   1.3326990   1.3778620
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.3407559   1.2724761   1.4090358
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.2953858   1.2447658   1.3460057
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                1.1251376   1.0264747   1.2238004
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                1.0803463   1.0317926   1.1288999
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.9669526   0.8764490   1.0574563
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.2619820   1.2209886   1.3029753
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                1.1701508   1.1379771   1.2023246
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                1.1922070   1.1518860   1.2325280
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                1.4956204   1.4524879   1.5387528
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              NA                1.4085312   1.2949992   1.5220632
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.3991496   1.3232089   1.4750904
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                1.0002289   0.8659361   1.1345216
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.9741993   0.9291214   1.0192771
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                1.0264995   0.9415745   1.1114246
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.3272514   1.2404365   1.4140664
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.3930119   1.2079924   1.5780313
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.0916874   0.9382334   1.2451415
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9694806   0.8899943   1.0489669
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                1.0001884   0.9427999   1.0575769
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.9541917   0.8886775   1.0197060
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.0960817   1.0136054   1.1785581
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                1.0908530   1.0337580   1.1479479
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                1.0815959   1.0036615   1.1595302
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.1179407   1.0062902   1.2295913
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                1.0865054   1.0172829   1.1557278
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                1.1188349   1.0188760   1.2187937
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                1.0724831   1.0018614   1.1431047
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8992100   0.7356219   1.0627981
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.8279288   0.5823151   1.0735425
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8338718   0.7451195   0.9226240
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8019071   0.6376517   0.9661626
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7669395   0.5205275   1.0133515
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.0184909   0.9284320   1.1085498
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.9755712   0.9582733   0.9928691
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.9995125   0.8951622   1.1038627
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.6000440   0.5151746   0.6849134
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.2569239   0.6651528   1.8486949
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8520135   0.2224526   1.4815745
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                1.1354880   1.0541236   1.2168525
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                1.0543829   1.0102167   1.0985491
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.1342325   1.0560733   1.2123918
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.0581562   1.0038948   1.1124176
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                1.0485029   1.0120336   1.0849723
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                1.0463406   0.9883722   1.1043089
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                1.1349828   1.0831358   1.1868298
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                1.1154698   1.0803854   1.1505542
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                1.1340553   1.0764545   1.1916561
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.1081100   1.0657596   1.1504605
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.0287848   0.9443288   1.1132408
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.0734644   0.9979402   1.1489886
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.9759691   0.9279622   1.0239760
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                1.1208839   0.8391585   1.4026092
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.9233579   0.8101264   1.0365894
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.1415036   1.0312963   1.2517109
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.9922966   0.9415949   1.0429983
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.0182668   0.9311778   1.1053559
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                1.3651495   1.3095900   1.4207090
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                1.4607668   1.3710305   1.5505032
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                1.3297381   1.2293960   1.4300801
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.0857671   1.0644011   1.1071330
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.0448581   0.9784940   1.1112222
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.0757601   1.0299429   1.1215774
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.9106894   0.8151054   1.0062734
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.9449283   0.9012909   0.9885657
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.9510227   0.8802734   1.0217720
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                1.0806882   1.0403497   1.1210267
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.9688526   0.9342473   1.0034579
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.9579227   0.9153034   1.0005419
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                1.0933578   1.0315765   1.1551392
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                1.1066267   0.9926956   1.2205577
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.1081174   1.0184154   1.1978194
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.9896478   0.8926123   1.0866834
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8867199   0.8328275   0.9406123
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.9581551   0.8935308   1.0227793
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.1801727   1.1006118   1.2597336
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0056478   0.9095075   1.1017880
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.2048151   1.0578694   1.3517608
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9824793   0.8962387   1.0687198
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8584119   0.8032133   0.9136105
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.9410849   0.8722245   1.0099454
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.9274110   0.8424922   1.0123297
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.9414883   0.8868712   0.9961054
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.9871588   0.9131755   1.0611420
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                1.0109063   0.9016764   1.1201363
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8400435   0.7784517   0.9016353
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.8985569   0.8212216   0.9758921
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.9014826   0.8360136   0.9669517
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8517273   0.7246829   0.9787716
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                1.1345246   0.9387328   1.3303164
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8997754   0.8107643   0.9887864
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8114590   0.6669461   0.9559719
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7800983   0.6692662   0.8909305
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.8864600   0.8014366   0.9714833
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.8704561   0.8005139   0.9403983
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7758723   0.6210381   0.9307065
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                1.1540182   0.9817529   1.3262835
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                1.0270615   0.6722614   1.3818616
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.7068936   0.0856135   1.3281736
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7202118   0.6474581   0.7929654
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7247972   0.6581995   0.7913949
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7256795   0.6506934   0.8006655
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                1.0023283   0.9465849   1.0580718
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.9472530   0.9119335   0.9825726
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.9515335   0.8977964   1.0052706
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9909072   0.9291003   1.0527141
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.9740796   0.9423588   1.0058004
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.9482648   0.8993693   0.9971603
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9160314   0.8685041   0.9635587
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9500063   0.8618568   1.0381559
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9712670   0.8908317   1.0517023
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.9255688   0.8911304   0.9600072
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8967975   0.7694390   1.0241561
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.9652676   0.8912147   1.0393204
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.0916312   0.8904211   1.2928414
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                1.0184066   0.9335640   1.1032493
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.9796584   0.8698558   1.0894611
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.9272414   0.8955202   0.9589625
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8679778   0.7567049   0.9792508
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.9044328   0.8338182   0.9750473
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7723036   0.6654902   0.8791171
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7147171   0.6665816   0.7628526
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.8023677   0.7367466   0.8679888
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.9812166   0.8375897   1.1248436
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8636039   0.7156282   1.0115796
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                1.0031569   0.8249112   1.1814026
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.9115526   0.7974515   1.0256536
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8231822   0.7761143   0.8702500
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.7913281   0.7249298   0.8577263
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.0025394   0.9215600   1.0835187
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0549894   0.9287549   1.1812238
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.9355453   0.8271075   1.0439831
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.8837264   0.8177236   0.9497291
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8062135   0.7535926   0.8588345
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8780408   0.8052363   0.9508454
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.9379102   0.8408867   1.0349336
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.8115448   0.7577415   0.8653480
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8433775   0.7605410   0.9262139
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.8949304   0.7986116   0.9912492
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8342303   0.7799206   0.8885401
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.8636775   0.7721160   0.9552391
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8758199   0.8111571   0.9404827
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.9317416   0.7885417   1.0749416
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.9202628   0.8139789   1.0265467
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6974502   0.6158653   0.7790352
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6831576   0.5560447   0.8102705
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6614302   0.5324708   0.7903895
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                1.0199210   0.9277040   1.1121380
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.9543591   0.8363108   1.0724073
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.8926770   0.7667770   1.0185769
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7792539   0.6552961   0.9032116
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.7783921   0.6855675   0.8712167
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.9912735   0.8619692   1.1205778
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7917257   0.6975619   0.8858895
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7627716   0.7094372   0.8161060
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7827968   0.7024583   0.8631352
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.8371413   0.7913696   0.8829131
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8563718   0.8233814   0.8893622
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8681526   0.8161338   0.9201714
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9739724   0.9217641   1.0261806
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8984125   0.8675923   0.9292327
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.9158919   0.8713513   0.9604325
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9627682   0.9049528   1.0205835
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8984669   0.8093675   0.9875664
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8908291   0.8103330   0.9713253
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.8945454   0.8593369   0.9297539
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7595428   0.6402774   0.8788082
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8128863   0.7221452   0.9036273
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8053918   0.7699615   0.8408221
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.7846514   0.6641667   0.9051362
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7659461   0.6806740   0.8512182
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7649057   0.6703916   0.8594198
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7299935   0.6744606   0.7855263
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7028196   0.6264450   0.7791941
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.8408408   0.7501712   0.9315103
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8500942   0.6983031   1.0018853
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7540126   0.5885912   0.9194339
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.8821524   0.7995085   0.9647962
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7770925   0.7365153   0.8176697
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.8804996   0.8023569   0.9586423
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.8684175   0.7920554   0.9447796
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0125091   0.8058746   1.2191436
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.9299366   0.8247263   1.0351469
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.9740016   0.8890845   1.0589187
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8531382   0.8069493   0.8993271
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8458778   0.7836248   0.9081307
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.8800316   0.7957684   0.9642947
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.7828720   0.7304167   0.8353273
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8545278   0.7850619   0.9239937
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.8830443   0.7607993   1.0052893
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.8391902   0.7861501   0.8922303
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.8013867   0.7124285   0.8903450
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.7721976   0.7094095   0.8349858
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8681458   0.6612950   1.0749966
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.7752678   0.6476887   0.9028469
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7923558   0.7139441   0.8707676
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6682308   0.5135250   0.8229366
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6789009   0.5064110   0.8513907
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7739120   0.6811502   0.8666739
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7092325   0.6635588   0.7549062
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7449825   0.6707729   0.8191920
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.9092699   0.8579075   0.9606323
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8205377   0.7878498   0.8532257
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.8237304   0.7764924   0.8709684
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.8597583   0.8098883   0.9096283
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.7631352   0.7315331   0.7947373
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.8290615   0.7834699   0.8746530
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.8197195   0.7817615   0.8576775
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7505074   0.6312914   0.8697235
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8476192   0.7487176   0.9465207
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.6777110   0.6362685   0.7191536
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6846815   0.5567508   0.8126122
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7160013   0.6128275   0.8191752
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7404972   0.6384428   0.8425515
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7313666   0.6828366   0.7798966
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.6963706   0.6098959   0.7828454
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.8262515   0.7722081   0.8802949
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.7895752   0.6308841   0.9482663
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.8137610   0.7303675   0.8971546
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.8171427   0.7060323   0.9282531
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7572255   0.7149532   0.7994979
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.7808670   0.7035167   0.8582174
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.8081929   0.7563553   0.8600306
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.8387256   0.7538852   0.9235659
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.7017518   0.5733620   0.8301416
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.8423033   0.7795041   0.9051026
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.8086834   0.7629284   0.8544385
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.8374721   0.7817850   0.8931593
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.7352880   0.6631691   0.8074069
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.7697008   0.7156015   0.8238001
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.8419554   0.7538727   0.9300382
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.7911209   0.6888003   0.8934415
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.7578797   0.6929100   0.8228493
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.7360356   0.6540566   0.8180147
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.8566007   0.8006070   0.9125945
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8109714   0.6002605   1.0216823
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.8079325   0.6773723   0.9384926
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7155173   0.6339029   0.7971316
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6282123   0.4775156   0.7789090
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8027857   0.6619271   0.9436443
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8225867   0.7395620   0.9056115
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6794325   0.6366253   0.7222397
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7303226   0.6471689   0.8134763
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.7923799   0.7355568   0.8492030
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.7535717   0.7195625   0.7875810
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.7645044   0.7135690   0.8154399
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.8170388   0.7583090   0.8757685
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8029359   0.7705322   0.8353395
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.7775852   0.7293145   0.8258559
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.7213866   0.6828996   0.7598735
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7469390   0.6384667   0.8554114
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6939148   0.6136355   0.7741941
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.7032039   0.6589325   0.7474753
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5906300   0.4123404   0.7689195
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7419906   0.6228689   0.8611122
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6516650   0.5581984   0.7451316
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.6412234   0.5995342   0.6829126
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.5734018   0.5037302   0.6430734
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.7574284   0.6926546   0.8222023
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.7735329   0.6740054   0.8730605
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7138621   0.6371832   0.7905411


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.0531076   2.9864257   3.1197894
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.1891095   3.0900536   3.2881654
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3954641   3.2578729   3.5330553
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2592091   3.2222694   3.2961487
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.0979093   3.0490622   3.1467564
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.7451391   2.5767248   2.9135533
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3182367   3.2964206   3.3400527
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5171442   2.4534892   2.5807992
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5013455   3.4730048   3.5296863
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6486121   3.6332602   3.6639640
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8890965   1.8255097   1.9526834
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0152678   1.9488079   2.0817277
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9612733   1.8804053   2.0421413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9306606   1.8836200   1.9777011
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657091   1.9317726   1.9996455
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7976251   1.7615794   1.8336707
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9875768   1.9468863   2.0282674
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0966226   2.0301324   2.1631127
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9811859   1.9607885   2.0015832
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6782365   1.6334955   1.7229776
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8785516   1.8544247   1.9026785
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9276766   1.9127186   1.9426345
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.2442866   1.1923459   1.2962273
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                1.3210643   1.2665463   1.3755823
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.3644626   1.3017940   1.4271311
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2170338   1.1655258   1.2685417
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.1338927   1.0525014   1.2152841
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3224695   1.2858028   1.3591362
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.3961653   1.3431178   1.4492128
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1697941   1.1215573   1.2180309
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                1.5913310   1.5471912   1.6354709
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3458662   1.3260206   1.3657117
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0639573   1.0242474   1.1036672
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.2030136   1.1814691   1.2245580
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                1.4610468   1.4243885   1.4977051
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9799614   0.9416888   1.0182340
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.0999922   1.0489406   1.1510437
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.0212609   0.9562969   1.0862249
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0004145   0.9826733   1.0181558
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0290473   0.6585278   1.3995669
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0884870   1.0545720   1.1224021
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9735017   0.9296910   1.0173125
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0236630   0.9818595   1.0654665
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.3650410   1.3102394   1.4198426
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0819122   1.0632328   1.1005917
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9418185   0.9070276   0.9766094
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9990319   0.9764860   1.0215779
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.0985921   1.0516237   1.1455606
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.9107851   0.8714474   0.9501228
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8906860   0.8442322   0.9371397
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9252117   0.8670403   0.9833831
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8566530   0.8289049   0.8844012
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.9636513   0.7049916   1.2223109
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9338162   0.8966318   0.9710006
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9295076   0.8988557   0.9601596
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.0179099   0.9523693   1.0834505
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205803   0.8924958   0.9486649
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7410076   0.7035624   0.7784527
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8445838   0.8081021   0.8810654
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8883347   0.8348067   0.9418626
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9712006   0.8887572   1.0536441
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8317920   0.7632451   0.9003389
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8552334   0.8311623   0.8793044
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9354850   0.8932537   0.9777164
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8794020   0.8473815   0.9114224
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7989606   0.7673627   0.8305585
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7288385   0.6872932   0.7703838
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8795431   0.8441522   0.9149339
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7842913   0.7280906   0.8404919
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8397160   0.8156938   0.8637381
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8213042   0.7867369   0.8558716
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6832299   0.6463288   0.7201311
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7247035   0.6854568   0.7639502
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8171398   0.7705868   0.8636928
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8246636   0.7937212   0.8556061
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8455789   0.7937438   0.8974141
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7640933   0.7387145   0.7894720
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7185082   0.6843368   0.7526795
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7005480   0.6597161   0.7413799
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6280313   0.5944595   0.6616032
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.7508459   0.7047755   0.7969163


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1852562   -0.3484597   -0.0220527
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0797851   -0.2723860    0.1128158
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1032103   -0.3580199    0.1515994
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0362315   -0.2863330    0.3587959
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1009251   -0.3274265    0.1255764
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0230935   -0.2790555    0.2328684
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2678676   -0.4936602   -0.0420750
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0323573   -0.3033169    0.2386023
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0247291   -0.1388733    0.1883316
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0412520   -0.2438827    0.1613787
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.2597981   -0.6033344    0.0837381
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0033842   -0.2488474    0.2420789
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0382415   -0.1474558    0.2239389
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0912593   -0.1031558    0.2856743
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1348286   -0.2483473   -0.0213098
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0780513   -0.3302241    0.1741215
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1705280   -0.3280552   -0.0130007
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0206192   -0.1981035    0.1568652
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2214083   -0.3130921   -0.1297246
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1662280   -0.2694182   -0.0630378
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0891407   -0.1870452    0.0087638
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0471230   -0.1569954    0.0627495
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2993074   -0.6313423    0.0327274
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0256109   -0.1881708    0.1369490
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0942413   -0.2300951    0.0416126
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0027405   -0.1751040    0.1696231
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2462826   -0.3393674   -0.1531979
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1735435   -0.2335720   -0.1135151
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1272470   -0.3104530    0.0559589
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1679959   -0.3916104    0.0556185
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1210386   -0.1883263   -0.0537509
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0764753   -0.1496806   -0.0032700
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1163922   -0.1520119   -0.0807725
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0608191   -0.1008200   -0.0208182
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1044149   -0.2431667    0.0343368
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1972450   -0.3626982   -0.0317919
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0545805   -0.2359466    0.1267857
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1515932   -0.0657638    0.3689502
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1059596   -0.2812344    0.0693152
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0245826   -0.2044732    0.1553079
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0026837   -0.1453137    0.1506811
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0641537   -0.1105330    0.2388405
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0382761   -0.2279252    0.1513729
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.1177338   -0.1037464    0.3392140
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0327715   -0.1761291    0.2416720
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0545273   -0.2154615    0.3245161
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1194532   -0.3164476    0.0775413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0142167   -0.1678910    0.1394576
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1953454   -0.3670689   -0.0236218
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.1108563   -0.2841959    0.0624834
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0524345   -0.1777874    0.0729184
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0281246   -0.1220946    0.1783438
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0111059   -0.0995998    0.0773879
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0391677   -0.1421381    0.0638026
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0032337   -0.1001171    0.0936497
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm           0.0380442   -0.0751390    0.1512274
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0251257   -0.1348606    0.0846092
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0443866   -0.1290520    0.0402789
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0769987   -0.1177625    0.2717598
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0790850   -0.1987564    0.0405865
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1202478   -0.1814480   -0.0590477
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0094768   -0.1507824    0.1318289
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0736881   -0.1551325    0.0077564
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0101345   -0.0682325    0.0479635
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1795621   -0.3187652   -0.0403589
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1277762   -0.3003694    0.0448169
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0669120   -0.1257806   -0.0080434
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0674358   -0.1295889   -0.0052826
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0563781   -0.0946640   -0.0180923
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0537860   -0.0985314   -0.0090406
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0074057   -0.0948255    0.1096368
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0710704   -0.0562835    0.1984244
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0273440   -0.2112208    0.2659088
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0311987   -0.1552880    0.2176854
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0711588   -0.0681414    0.2104590
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0273297   -0.1828088    0.1281493
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1450061   -0.2715999   -0.0184123
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0378406   -0.1768348    0.1011537
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0126998   -0.1593685    0.1339689
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0145639   -0.1597752    0.1889029
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0718480   -0.1534931    0.2971892
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.1026300   -0.2971074    0.0918474
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0507070   -0.1356555    0.2370695
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0253607   -0.2251290    0.2758504
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.2069859   -0.3890061   -0.0249658
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0756245   -0.1864622    0.0352132
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.1109333   -0.2934179    0.0715513
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0549877   -0.2868301    0.1768548
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1155977   -0.2230086   -0.0081868
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0633765   -0.1852214    0.0584683
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0991617   -0.1641017   -0.0342218
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0520507   -0.1254095    0.0213082
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1404144   -0.2159322   -0.0648966
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1583648   -0.2463526   -0.0703770
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0343721   -0.1339918    0.0652477
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0127074   -0.1043901    0.0789753
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1702157   -0.3861936    0.0457623
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0124105   -0.1491824    0.1243614
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1474349   -0.2725800   -0.0222898
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1220616   -0.2727909    0.0286677
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.1601731    0.0726454    0.2477008
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0958048   -0.2812991    0.0896895
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0145245   -0.0864416    0.0573925
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0598947   -0.1153231   -0.0044663
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0447913   -0.1547540    0.0651714
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1581849   -0.2920702   -0.0242997
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0918311   -0.1439426   -0.0397197
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0697750   -0.1272748   -0.0122751
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0870892   -0.2085384    0.0343601
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0964707   -0.1838057   -0.0091357
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0260296   -0.1676861    0.1156269
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0262707   -0.1326218    0.1851631
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0657604   -0.1386143    0.2701351
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2355640   -0.4118734   -0.0592547
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.0307078   -0.0673305    0.1287461
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0152889   -0.1182946    0.0877169
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0052288   -0.1055392    0.0950817
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0144859   -0.1279589    0.0989871
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0314354   -0.1628035    0.0999328
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0008941   -0.1489645    0.1507527
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1732730   -0.3514541    0.0049080
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2445543   -0.5001194    0.0110108
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0319646   -0.2186644    0.1547352
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0669323   -0.3288403    0.1949758
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0429197   -0.1433459    0.0575064
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0189784   -0.2068179    0.1688611
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.6568798    0.0590539    1.2547058
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.2519695   -0.3832861    0.8872252
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0811051   -0.1736839    0.0114736
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0012555   -0.1140786    0.1115675
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0096533   -0.0750316    0.0557250
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0118156   -0.0912174    0.0675861
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0195130   -0.0821151    0.0430892
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0009275   -0.0784257    0.0765707
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0793252   -0.1738047    0.0151543
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0346456   -0.1212335    0.0519422
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.1449148   -0.1408716    0.4307012
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0526112   -0.1755991    0.0703768
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1492070   -0.2705178   -0.0278962
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1232368   -0.2637008    0.0172273
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0956173   -0.0003694    0.1916040
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0354114   -0.1349151    0.0640923
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0409090   -0.1106277    0.0288098
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0100069   -0.0605611    0.0405473
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0342389   -0.0708350    0.1393128
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0403333   -0.0785858    0.1592524
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1118356   -0.1649837   -0.0586874
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.1227655   -0.1814477   -0.0640833
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0132688   -0.1163353    0.1428730
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0147596   -0.0941595    0.1236788
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1029280   -0.2139247    0.0080688
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0314928   -0.1480783    0.0850928
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1745249   -0.2993163   -0.0497336
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0246424   -0.1424592    0.1917441
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1240674   -0.2264603   -0.0216744
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0413943   -0.1517537    0.0689651
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0140773   -0.0868892    0.1150437
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0597478   -0.0528787    0.1723742
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1708629   -0.2962612   -0.0454646
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1123495   -0.2461849    0.0214860
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0497554   -0.1926766    0.0931659
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.2330420    0.0265944    0.4394897
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0883164   -0.2580425    0.0814097
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1196770   -0.2618274    0.0224734
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0160039   -0.1311474    0.0991397
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.1105877   -0.3442408    0.1230655
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.1269567   -0.5213657    0.2674523
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.4471246   -1.0918449    0.1975957
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0045855   -0.0940470    0.1032179
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0054677   -0.0990120    0.1099474
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0550753   -0.1210662    0.0109156
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0507948   -0.1282222    0.0266326
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0168276   -0.0862992    0.0526440
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0426424   -0.1214514    0.0361666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0339750   -0.0661709    0.1341208
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0552356   -0.0381918    0.1486631
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0287713   -0.1607039    0.1031613
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0396987   -0.0419703    0.1213678
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0732246   -0.2915908    0.1451416
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1119728   -0.3411935    0.1172480
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0592635   -0.1749696    0.0564426
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0228086   -0.1002207    0.0546036
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0575865   -0.1747451    0.0595721
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0300641   -0.0952964    0.1554245
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.1176127   -0.3238298    0.0886045
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0219403   -0.2069707    0.2508512
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0883704   -0.2117982    0.0350574
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1202245   -0.2522388    0.0117898
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0524500   -0.0975259    0.2024260
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0669941   -0.2023322    0.0683441
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0775128   -0.1619245    0.0068988
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0056856   -0.1039549    0.0925838
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1263654   -0.2373084   -0.0154225
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0945327   -0.2221079    0.0330425
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0607000   -0.1712752    0.0498751
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0312528   -0.1641469    0.1016412
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0559217   -0.1012009    0.2130443
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0444429   -0.0799659    0.1688516
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0142927   -0.1653350    0.1367497
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0360200   -0.1886196    0.1165795
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0655619   -0.1948920    0.0637682
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.1272440   -0.2442265   -0.0102615
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.0008617   -0.1557227    0.1539993
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.2120197    0.0328964    0.3911429
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0289541   -0.1371732    0.0792650
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0089289   -0.1327073    0.1148495
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0192305   -0.0371914    0.0756523
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0310112   -0.0382781    0.1003006
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0755599   -0.1361865   -0.0149333
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0580805   -0.1267068    0.0105458
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0643012   -0.1705148    0.0419124
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0719390   -0.1710463    0.0271682
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1350026   -0.2593565   -0.0106487
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0816591   -0.1789914    0.0156731
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0207404   -0.1463265    0.1048457
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0394457   -0.1317855    0.0528941
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0349122   -0.1445335    0.0747090
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0620861   -0.1836015    0.0594293
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0092535   -0.1675558    0.1860627
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0868282   -0.2754686    0.1018122
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1050598   -0.1971278   -0.0129919
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0016528   -0.1153906    0.1120850
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.1440916   -0.0762014    0.3643846
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0615191   -0.0684824    0.1915205
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1208634   -0.2175295   -0.0241974
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1281239   -0.2334156   -0.0228321
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0971596   -0.1964160    0.0020968
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0255038   -0.1347090    0.0837015
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0438541   -0.1771098    0.0894016
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0816576   -0.2328442    0.0695291
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0959482   -0.1202222    0.3121185
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0030701   -0.1391226    0.1452629
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1241250   -0.2975675    0.0493174
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1134550   -0.3029309    0.0760210
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0646795   -0.1680761    0.0387170
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0289296   -0.1477227    0.0898636
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0887321   -0.1496140   -0.0278503
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0855395   -0.1553215   -0.0157575
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0966231   -0.1556631   -0.0375832
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0306969   -0.0982662    0.0368724
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0692120   -0.1943251    0.0559010
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0278997   -0.0780358    0.1338352
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0069704   -0.1275054    0.1414463
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0382903   -0.0728957    0.1494763
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0091306   -0.1221362    0.1038749
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0441265   -0.1778911    0.0896381
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0366763   -0.2043175    0.1309648
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0124905   -0.1118644    0.0868835
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0599172   -0.1787973    0.0589629
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0362757   -0.1716588    0.0991075
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0305326   -0.0688909    0.1299561
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.1064411   -0.2449008    0.0320185
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0336199   -0.1113198    0.0440800
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0048312   -0.0887645    0.0791022
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0344128   -0.0557419    0.1245675
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.1066675   -0.0071732    0.2205082
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0332413   -0.1544459    0.0879633
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0550853   -0.1861962    0.0760256
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0456294   -0.2636532    0.1723945
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0486683   -0.1907290    0.0933924
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0873049   -0.2586829    0.0840730
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0872684   -0.0755261    0.2500629
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1431543   -0.2365650   -0.0497435
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0922641   -0.2097701    0.0252418
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0388082   -0.1050313    0.0274149
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0278755   -0.1041859    0.0484350
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0141029   -0.0811788    0.0529730
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0394536   -0.1154749    0.0365677
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0255525   -0.0895452    0.1406502
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0274718   -0.1164999    0.0615563
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1125739   -0.2962778    0.0711300
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0387866   -0.0882957    0.1658690
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0104416   -0.1127841    0.0919009
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0782632   -0.1948399    0.0383136
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0161045   -0.1026448    0.1348537
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0435663   -0.1439422    0.0568095


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1403773   -0.2827628    0.0020083
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0238814   -0.1223953    0.0746325
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0545429   -0.2123384    0.1032527
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1580993   -0.3388693    0.0226708
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0058312   -0.1187051    0.1303674
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0320789   -0.0876187    0.0234609
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0260244   -0.0346829    0.0867318
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0642172   -0.1325712    0.0041369
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1034750   -0.2291399    0.0221899
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1603803   -0.2286740   -0.0920866
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0628997   -0.1393970    0.0135977
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0144973   -0.0399360    0.0109414
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0009333   -0.0065826    0.0047160
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0401022   -0.0511864   -0.0290180
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1196762   -0.2771185    0.0377662
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0729776   -0.1158480   -0.0301073
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0847436   -0.1141059   -0.0553813
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1177285   -0.2400688    0.0046118
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0138458   -0.0527936    0.0804852
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0571645   -0.1827014    0.0683723
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0185683   -0.0994531    0.1365898
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0021836   -0.1436429    0.1480100
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0106388   -0.0342219    0.0554995
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0260247   -0.0823412    0.0302919
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0913889   -0.1304102   -0.0523675
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0233944   -0.1231730    0.0763842
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0153994   -0.0821799    0.0513811
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0069288   -0.0691989    0.0830564
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0135797   -0.0413543    0.0141949
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0067215   -0.0232821    0.0098391
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0013737   -0.0054572    0.0027099
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0058973   -0.0162176    0.0044231
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.1473886   -0.2682008   -0.0265764
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0472884   -0.0849620   -0.0096147
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0468169   -0.0783289   -0.0153049
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0225615   -0.0670913    0.1122142
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0125970   -0.0611275    0.0863215
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0265431   -0.0752100    0.1282962
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0915300   -0.1932889    0.0102289
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0044585   -0.1170146    0.1080976
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0014910   -0.0412020    0.0382200
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0154390   -0.0544591    0.0853372
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0846362   -0.1600501   -0.0092222
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0763375   -0.2174295    0.0647544
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0818910   -0.1661284    0.0023463
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0676384   -0.1170068   -0.0182699
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.1181093   -0.1770364   -0.0591821
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0080464   -0.0361851    0.0200922
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0070033   -0.0267177    0.0127111
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1171105   -0.2185718   -0.0156491
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0011527   -0.0076985    0.0053932
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0094143   -0.0188620    0.0000334
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0611803   -0.1551664    0.0328059
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0589684   -0.0929949   -0.0249420
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0345735   -0.0641749   -0.0049722
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0105843   -0.1364525    0.1152839
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0289955   -0.0960295    0.0380384
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0104808   -0.0589420    0.0799036
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0068446   -0.0852461    0.0715569
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0179486   -0.1166644    0.0807673
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0512222   -0.0926435   -0.0098008
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0207641   -0.0932029    0.0516748
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0180764   -0.0923999    0.0562471
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.4290033    0.0525976    0.8054090
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0469072   -0.1200850    0.0262707
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0081812   -0.0577191    0.0413566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0115083   -0.0602112    0.0371945
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0196230   -0.0457069    0.0064608
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0024673   -0.0210391    0.0161044
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1178406   -0.2164329   -0.0192483
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0001085   -0.0035683    0.0033513
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0038548   -0.0126651    0.0049554
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0311291   -0.0584837    0.1207420
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0816563   -0.1159028   -0.0474098
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0052343   -0.0297590    0.0402277
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0755474   -0.1713543    0.0202595
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0379953   -0.0895628    0.0135722
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0716942   -0.1457281    0.0023398
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0240014   -0.0554810    0.1034839
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1202204   -0.2137021   -0.0267387
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0237291   -0.0125663    0.0600245
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0434195   -0.0957282    0.0088891
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0298069   -0.1114093    0.0517954
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1903669   -0.4816850    0.1009511
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0039505   -0.0689740    0.0768749
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0425783   -0.0925284    0.0073719
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0197677   -0.0744286    0.0348931
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0177848   -0.0115420    0.0471117
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0039388   -0.0080814    0.0159591
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0737213   -0.2617794    0.1143368
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0066610   -0.0197570    0.0064350
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0312961   -0.1301335    0.0675413
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0223647   -0.1025291    0.0577997
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0874300   -0.1960751    0.0212151
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0004280   -0.0517344    0.0508784
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0391426   -0.0994331    0.0211479
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0970740   -0.1868603   -0.0072877
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0414996   -0.1249955    0.0419962
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0125148   -0.0151464    0.0401760
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0107023   -0.0603845    0.0389799
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0487204   -0.1057261    0.0082854
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0525381   -0.0643460    0.1694223
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0189538   -0.1047651    0.0668576
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0180920   -0.0244265    0.0606105
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0562556   -0.1027354   -0.0097758
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0272831   -0.0604599    0.0058936
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0151434   -0.0289224   -0.0013645
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0064313   -0.0215137    0.0086511
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0360672   -0.1265436    0.0544092
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0160843   -0.0777055    0.0455369
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0687676   -0.1498472    0.0123120
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0476583   -0.0177698    0.1130864
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0944586   -0.1656364   -0.0232807
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0617518   -0.1407317    0.0172281
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0416004   -0.1437140    0.0605132
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0120936   -0.0212211    0.0454083
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0486520   -0.1075866    0.0102826
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0447652   -0.1280000    0.0384697
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0695539   -0.1156065   -0.0235013
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0619828   -0.1075376   -0.0164280
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0015847   -0.0134253    0.0165948
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0055189   -0.0125313    0.0235691
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0157937   -0.1129502    0.0813628
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0091117   -0.0484945    0.0302710
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0477244   -0.1525086    0.0570597
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0120410   -0.0528252    0.0287431
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0176397   -0.0728053    0.0375259
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0480685   -0.0234886    0.1196256
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0300704   -0.1189770    0.0588363
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0110218   -0.0429191    0.0208754
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0034155   -0.0512226    0.0580536
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1053690   -0.1806769   -0.0300610
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0282866   -0.0786869    0.0221136
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0177034   -0.0696603    0.0342535
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0028784   -0.0154333    0.0096765
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0026559   -0.0261025    0.0207906
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0236337   -0.1117312    0.0644639
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0065825   -0.0423490    0.0291839

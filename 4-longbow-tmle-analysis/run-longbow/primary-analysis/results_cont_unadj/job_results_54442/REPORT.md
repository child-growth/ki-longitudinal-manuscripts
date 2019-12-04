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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23    246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            160    246
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        63    246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm           126    217
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm             52    217
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        39    217
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm            54    237
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm            112    237
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm        71    237
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm            40    232
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm            129    232
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63    232
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm            58    281
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm            163    281
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm        60    281
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           200    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             32    264
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        32    264
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           145    237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             45    237
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47    237
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           144    342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            116    342
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        82    342
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           103    565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            326    565
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       136    565
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           138    639
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            348    639
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       153    639
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           136    725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            422    725
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       167    725
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1256   1989
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            308   1989
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       425   1989
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1219   1463
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm             55   1463
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       189   1463
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm          6052   6289
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm             57   6289
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       180   6289
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5675   7161
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            417   7161
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1069   7161
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            49    392
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            262    392
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm        81    392
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm           522   1755
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm            757   1755
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm       476   1755
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1518   9980
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5957   9980
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2505   9980
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            23    233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm            151    233
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        59    233
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
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           132    303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm            102    303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        69    303
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            93    522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            301    522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       128    522
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           129    600
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            327    600
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       144    600
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           132    702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            406    702
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       164    702
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025   1638
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            255   1638
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       358   1638
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm          1087   1287
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm             46   1287
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       154   1287
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm          5431   5640
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm             52   5640
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       157   5640
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4437   5601
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            335   5601
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       829   5601
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            48    388
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            266    388
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm        74    388
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm           527   1784
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm            776   1784
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm       481   1784
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm           991   6283
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           3694   6283
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      1598   6283
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
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           137    307
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm             99    307
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        71    307
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            14     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             42     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        18     74
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm            287    498
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       120    498
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           120    576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm            317    576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       139    576
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           131    693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            398    693
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       164    693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           917   1468
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            224   1468
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       327   1468
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm           687    818
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm             26    818
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm       105    818
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            30    182
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            110    182
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        42    182
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm          5135   5330
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm             49   5330
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm       146   5330
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          4002   5048
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            301   5048
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       745   5048
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm            50    386
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm            261    386
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm        75    386
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm           484   1648
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm            722   1648
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm       442   1648
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm           349    558
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm             91    558
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm       118    558
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
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           148    326
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            104    326
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        74    326
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            15     72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             39     72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        18     72
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            91    481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            276    481
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       114    481
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           119    569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            313    569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       137    569
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           128    683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            394    683
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       161    683
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           673   1067
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163   1067
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       231   1067
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm           679    808
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm             24    808
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       105    808
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            28    163
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             98    163
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        37    163
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm          5157   5351
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm             48   5351
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       146   5351
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          3580   4556
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            291   4556
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       685   4556
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm            54    429
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            289    429
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm        86    429
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm           432   1460
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm            641   1460
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm       387   1460
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           240    382
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm             64    382
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm        78    382
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
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            15     74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             39     74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        20     74
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            85    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            266    461
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110    461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           111    537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            298    537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       128    537
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           126    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            382    666
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       158    666
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479    778
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126    778
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173    778
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1054   1263
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm             48   1263
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       161   1263
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            10     85
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm             55     85
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        20     85
12-15 months   ki1119695-PROBIT           BELARUS                        >=155 cm           273    280
12-15 months   ki1119695-PROBIT           BELARUS                        <151 cm              0    280
12-15 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         7    280
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1308   1655
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            109   1655
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       238   1655
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            53    409
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            270    409
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        86    409
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            71    126
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm             29    126
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        26    126
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
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm            47    214
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm            125    214
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        42    214
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           166    221
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28    221
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27    221
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           130    220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             41    220
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49    220
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           149    320
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm            100    320
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        71    320
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            15     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             39     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        18     72
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            79    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            260    449
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       110    449
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           109    532
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            293    532
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       130    532
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           121    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            340    605
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       144    605
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           397    656
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115    656
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       144    656
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1074   1284
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm             44   1284
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       166   1284
15-18 months   ki1119695-PROBIT           BELARUS                        >=155 cm            35     36
15-18 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     36
15-18 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1     36
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           834   1067
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             75   1067
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       158   1067
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            49    361
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            234    361
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        78    361
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm            68    119
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm             26    119
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        25    119
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
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           121    208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             39    208
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48    208
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            73    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            246    422
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       103    422
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           112    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            298    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       131    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           105    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            308    547
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       134    547
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             8     11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              2     11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1     11
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1065   1273
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm             39   1273
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       169   1273
18-21 months   ki1119695-PROBIT           BELARUS                        >=155 cm            20     20
18-21 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     20
18-21 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         0     20
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           441    578
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             47    578
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        90    578
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            46    368
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            243    368
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        79    368
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           275    452
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm             79    452
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        98    452
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
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           121    206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             38    206
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47    206
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            74    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            240    411
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm        97    411
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm            98    484
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            270    484
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       116    484
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm            97    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            271    493
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       125    493
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm           960   1141
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm             32   1141
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       149   1141
21-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm            31     32
21-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              0     32
21-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         1     32
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           188    267
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             27    267
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        52    267
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            49    408
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            274    408
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        85    408
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           231    385
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             72    385
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm        82    385


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
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/877e670a-dfee-4f33-a8d7-e5a223015340/8a165360-834f-4959-bd5c-24375625bb02/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/877e670a-dfee-4f33-a8d7-e5a223015340/8a165360-834f-4959-bd5c-24375625bb02/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/877e670a-dfee-4f33-a8d7-e5a223015340/8a165360-834f-4959-bd5c-24375625bb02/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.8928401    0.8070355   0.9786447
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.8627320    0.8338018   0.8916622
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.9142056    0.8740129   0.9543984
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                1.0876715    1.0399414   1.1354016
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                1.0113801    0.9501227   1.0726376
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                1.0655559    0.9909230   1.1401889
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.8070878    0.7606452   0.8535304
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.7384665    0.7055185   0.7714144
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.7618340    0.7252227   0.7984454
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                1.0232647    0.9622563   1.0842731
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.9326620    0.8954394   0.9698847
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.9645783    0.9180827   1.0110738
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.9737399    0.9199779   1.0275019
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.9649188    0.9314092   0.9984283
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.9831348    0.9300681   1.0362016
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.9479404    0.9159764   0.9799045
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.8924430    0.8118948   0.9729912
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.9375855    0.8803348   0.9948362
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8905363    0.8517976   0.9292750
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8436123    0.7909991   0.8962255
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9055362    0.8265096   0.9845627
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.8499883    0.8220019   0.8779746
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.7536765    0.6950613   0.8122917
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7611520    0.7190310   0.8032730
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8686770    0.8200504   0.9173036
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7851237    0.7662067   0.8040408
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.8515711    0.8153952   0.8877469
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.9611430    0.9259012   0.9963848
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.8743874    0.8552858   0.8934890
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.9107630    0.8827526   0.9387733
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.9158160    0.8823757   0.9492563
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.8707237    0.8517033   0.8897441
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.8939044    0.8638158   0.9239930
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9325830    0.9196838   0.9454821
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9153203    0.8900498   0.9405907
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8982305    0.8762602   0.9202009
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.9323955    0.9199131   0.9448778
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8181673    0.7601880   0.8761466
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.8989915    0.8675679   0.9304151
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.8254216    0.8084327   0.8424105
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.8027055    0.7930689   0.8123422
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.8230702    0.7945838   0.8515565
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.9498584    0.9438022   0.9559147
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.9102729    0.8880234   0.9325224
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.9255549    0.9115338   0.9395760
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.7477792    0.6674295   0.8281289
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.7758917    0.7446644   0.8071189
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7872625    0.7360137   0.8385113
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.8479800    0.8311461   0.8648138
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                0.7872202    0.7743634   0.8000769
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.8000443    0.7826634   0.8174253
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.8952677    0.8845774   0.9059580
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.8359283    0.8310687   0.8407880
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.8583894    0.8509827   0.8657961
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4642242    0.4237166   0.5047318
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.4733270    0.4522507   0.4944033
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.4821005    0.4478904   0.5163105
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.5916978    0.5476017   0.6357939
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.5133979    0.4696628   0.5571331
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.6216151    0.5462555   0.6969747
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4491917    0.4178810   0.4805024
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.4455610    0.4175857   0.4735364
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.4389965    0.4085273   0.4694658
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.5664946    0.5204471   0.6125420
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.4976213    0.4713073   0.5239352
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.5426266    0.5027083   0.5825448
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.5233643    0.4738077   0.5729209
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4871321    0.4635675   0.5106966
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.5041431    0.4667205   0.5415656
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.4554358    0.4256312   0.4852403
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5088370    0.4405255   0.5771486
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4504663    0.3772513   0.5236813
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4656746    0.4364084   0.4949409
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4493119    0.3912688   0.5073549
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4403893    0.3829896   0.4977889
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4462169    0.3925062   0.4999276
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3987102    0.3626994   0.4347209
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4207189    0.4120921   0.4293457
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4331220    0.3868076   0.4794365
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.4610371    0.4398447   0.4822295
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4746326    0.4390245   0.5102408
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4989715    0.4751234   0.5228195
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.4822994    0.4636649   0.5009338
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.4971897    0.4706488   0.5237307
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.5150042    0.4864545   0.5435538
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.4889694    0.4751966   0.5027423
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.5069027    0.4836488   0.5301566
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4236050    0.4124409   0.4347690
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4235953    0.4017044   0.4454862
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4055993    0.3874067   0.4237919
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.4459404    0.4353058   0.4565751
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.4200412    0.3765432   0.4635393
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4456731    0.4183171   0.4730292
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.6690372    0.6539503   0.6841241
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.6781583    0.6585347   0.6977819
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.6226870    0.5769332   0.6684407
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4825215    0.4772294   0.4878137
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4585241    0.4389145   0.4781337
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4724593    0.4604367   0.4844819
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4560115    0.4142186   0.4978044
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.4531903    0.4324686   0.4739119
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.4387238    0.4036303   0.4738174
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.5142150    0.4995082   0.5289218
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                0.4611842    0.4501798   0.4721886
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.4888406    0.4751854   0.5024958
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4668402    0.4531931   0.4804872
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4398341    0.4344612   0.4452070
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4461379    0.4387273   0.4535485
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2337236    0.1947300   0.2727171
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.2404059    0.2237770   0.2570349
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.2529475    0.2175494   0.2883455
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.4016677    0.3682619   0.4350734
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.3351764    0.2885035   0.3818493
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.3906284    0.3200873   0.4611695
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2301893    0.2048675   0.2555112
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2254049    0.2036989   0.2471109
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.2402129    0.2093547   0.2710711
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.2647305    0.2288564   0.3006047
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.2641622    0.2462378   0.2820867
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2838780    0.2527792   0.3149769
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2709761    0.2465215   0.2954307
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.2504303    0.2286314   0.2722291
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.2823910    0.2479774   0.3168046
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2541866    0.2293286   0.2790446
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.2540538    0.1947957   0.3133119
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2948285    0.2403535   0.3493035
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2486575    0.2211288   0.2761863
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2055439    0.1599571   0.2511308
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2400890    0.1696892   0.3104887
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2481864    0.1923923   0.3039805
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2464518    0.1951789   0.2977247
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.2602036    0.2237533   0.2966540
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1859121    0.1103076   0.2615166
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.2230683    0.1849251   0.2612114
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1434273    0.0711237   0.2157310
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2674061    0.2304643   0.3043478
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.2225496    0.2044277   0.2406714
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2454299    0.2221265   0.2687334
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2722364    0.2496071   0.2948657
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2346277    0.2172610   0.2519944
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2624020    0.2397535   0.2850505
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2956879    0.2710564   0.3203194
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2613546    0.2484304   0.2742787
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2599389    0.2354211   0.2844567
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2665863    0.2547704   0.2784022
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2264400    0.2055416   0.2473383
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2419991    0.2249277   0.2590704
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2037046    0.1891283   0.2182810
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2231778    0.1833603   0.2629953
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1870972    0.1531741   0.2210203
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3118309    0.2699728   0.3536889
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.2211707    0.1976433   0.2446980
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2644479    0.2211770   0.3077187
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.4784036    0.4633194   0.4934877
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.4492150    0.4285676   0.4698625
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.4874938    0.4466062   0.5283815
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2604891    0.2551351   0.2658431
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2511082    0.2332394   0.2689770
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2508495    0.2383972   0.2633019
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2371064    0.1940977   0.2801151
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1939576    0.1754843   0.2124309
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2095611    0.1824292   0.2366929
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3044053    0.2904456   0.3183649
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2746183    0.2634573   0.2857793
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2693960    0.2559187   0.2828733
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2953753    0.2793915   0.3113591
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2447065    0.2127499   0.2766630
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.2802590    0.2551222   0.3053959
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1712461    0.1284414   0.2140508
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1737928    0.1575597   0.1900260
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1717560    0.1413857   0.2021263
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.3007015    0.2535672   0.3478358
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2695685    0.2215280   0.3176090
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.2557842    0.1906059   0.3209626
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1859568    0.1551902   0.2167234
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1744946    0.1540241   0.1949651
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1785219    0.1539570   0.2030868
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1928699    0.1674112   0.2183287
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1655046    0.1441527   0.1868566
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2239620    0.2019368   0.2459873
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1937668    0.1657932   0.2217404
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1861044    0.1656395   0.2065693
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1808212    0.1443725   0.2172699
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2238422    0.1981785   0.2495059
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1548640    0.0918539   0.2178741
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.2281639    0.1661289   0.2901990
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1719120    0.1465437   0.1972804
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1682129    0.1169686   0.2194572
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1519382    0.1095722   0.1943041
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2510300    0.2380952   0.2639647
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1957240    0.1705020   0.2209460
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1954340    0.1662191   0.2246489
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1100250    0.0183769   0.2016731
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1821717    0.1319871   0.2323562
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1265949    0.0371171   0.2160727
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1683486    0.1340036   0.2026936
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1559919    0.1398309   0.1721528
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1783191    0.1504391   0.2061992
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1854461    0.1628115   0.2080806
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1752169    0.1633925   0.1870412
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1759453    0.1563277   0.1955629
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2156900    0.1892908   0.2420892
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1935681    0.1803984   0.2067378
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1941236    0.1727130   0.2155342
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2108109    0.1983982   0.2232236
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2029876    0.1735429   0.2324322
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1907727    0.1693794   0.2121659
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1578442    0.1446330   0.1710554
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2001022    0.1519007   0.2483038
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1393123    0.1071116   0.1715129
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2314075    0.1713006   0.2915144
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.1804511    0.1551045   0.2057978
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2344868    0.1824225   0.2865511
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.3693563    0.3436775   0.3950352
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3864039    0.3652571   0.4075506
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.3687972    0.3110487   0.4265456
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1809087    0.1755206   0.1862968
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1638831    0.1466364   0.1811298
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1834396    0.1712477   0.1956315
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1482038    0.1131179   0.1832898
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1435112    0.1287513   0.1582711
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1375292    0.1134257   0.1616326
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2371918    0.2228605   0.2515230
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2183593    0.2068798   0.2298388
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2102550    0.1943529   0.2261571
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2070404    0.1859584   0.2281224
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1859970    0.1471095   0.2248845
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1987988    0.1701285   0.2274691
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1881434    0.1414519   0.2348348
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1226985    0.1032519   0.1421451
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1483771    0.1176142   0.1791400
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2272881    0.1926766   0.2618995
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2127638    0.1679074   0.2576203
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1560991    0.1040515   0.2081468
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1937488    0.1604940   0.2270036
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1553148    0.1335438   0.1770858
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1913478    0.1603744   0.2223212
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1458179    0.1056470   0.1859887
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1547808    0.1303752   0.1791864
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1526770    0.1287076   0.1766464
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1326907    0.0948844   0.1704969
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1456701    0.1235337   0.1678066
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1392272    0.1050267   0.1734277
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1925960    0.1622618   0.2229301
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1929970    0.1153235   0.2706705
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1894308    0.1401252   0.2387365
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1781801    0.1479898   0.2083703
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1620615    0.0990543   0.2250687
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1084276    0.0552817   0.1615735
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1437585    0.1238647   0.1636523
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1684432    0.1478554   0.1890310
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1372919    0.1177175   0.1568664
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1752007    0.1026684   0.2477330
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1811429    0.1421245   0.2201614
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1984164    0.1470627   0.2497701
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1217926    0.0899408   0.1536444
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1432050    0.1279376   0.1584724
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1065316    0.0834047   0.1296586
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1916923    0.1645122   0.2188724
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1777516    0.1627416   0.1927616
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1752309    0.1501280   0.2003338
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1838252    0.1577832   0.2098673
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1535294    0.1398381   0.1672206
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1737590    0.1530076   0.1945105
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1819999    0.1678533   0.1961465
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1704725    0.1390979   0.2018471
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1509859    0.1276632   0.1743086
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1839509    0.1729715   0.1949302
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1650803    0.1191387   0.2110219
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1936291    0.1629781   0.2242800
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1849461    0.1150303   0.2548619
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.1974477    0.1567885   0.2381069
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.1879289    0.1386107   0.2372471
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1503110    0.1408259   0.1597960
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1430706    0.1029266   0.1832146
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1608331    0.1415729   0.1800933
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1603652    0.1320849   0.1886456
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1492046    0.1316925   0.1667168
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1434416    0.1153803   0.1715029
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1764338    0.1285294   0.2243381
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1203529    0.0706514   0.1700544
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1195251    0.0452549   0.1937954
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1724304    0.1258166   0.2190442
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1329286    0.1137521   0.1521052
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1571726    0.1254662   0.1888790
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2144363    0.1727895   0.2560830
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.1815009    0.1427143   0.2202874
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1984173    0.1574567   0.2393779
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1835786    0.1464850   0.2206722
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1491117    0.1299794   0.1682440
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1690501    0.1415201   0.1965801
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.2276649    0.1813749   0.2739550
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1666376    0.1474976   0.1857776
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1553104    0.1258932   0.1847276
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1372050    0.0955650   0.1788451
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1453896    0.1208784   0.1699009
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1586209    0.1171370   0.2001048
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.2246977    0.1916089   0.2577865
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.2468965    0.1709196   0.3228735
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1550957    0.1000129   0.2101785
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1330028    0.1026803   0.1633254
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1444431    0.0928965   0.1959897
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1674277    0.1201293   0.2147262
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1452044    0.1114047   0.1790041
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1515159    0.1231184   0.1799134
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1594713    0.1247253   0.1942172
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2353023    0.1627213   0.3078833
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1251090    0.0898055   0.1604126
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.2370831    0.1620425   0.3121237
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1685887    0.1287832   0.2083942
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1457309    0.1281993   0.1632625
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1589217    0.1276607   0.1901828
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1723312    0.1476992   0.1969631
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1526997    0.1366305   0.1687690
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1519527    0.1278684   0.1760370
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1637512    0.1408803   0.1866222
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1612596    0.1477540   0.1747653
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1589040    0.1349701   0.1828379
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1768480    0.1582844   0.1954116
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1538559    0.1218422   0.1858696
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1683781    0.1371529   0.1996033
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1592868    0.1480878   0.1704857
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1532543    0.1116843   0.1948243
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1645102    0.1365807   0.1924397
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1317911    0.1189259   0.1446563
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1264194    0.0829916   0.1698473
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1321299    0.1057315   0.1585283
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1230980    0.0759390   0.1702570
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1207823    0.1020042   0.1395603
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1010315    0.0638100   0.1382530
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1592078    0.1171752   0.2012403
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.2061615    0.1490998   0.2632232
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1932150    0.1163669   0.2700632
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1436231    0.0938217   0.1934245
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1438174    0.1252785   0.1623563
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1393820    0.0957761   0.1829880
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1547879    0.1268153   0.1827605
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2008316    0.1361439   0.2655193
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1239811    0.0844613   0.1635010
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1861108    0.1506557   0.2215658
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1759190    0.1542503   0.1975878
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1535683    0.1307962   0.1763404
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1467294    0.0869327   0.2065260
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1414759    0.1199860   0.1629657
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1603958    0.1300488   0.1907428
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1936567    0.1589047   0.2284088
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1543455    0.1287364   0.1799546
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1473890    0.1042565   0.1905214
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1770879    0.1456025   0.2085733
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1878968    0.1207871   0.2550066
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1959601    0.1524173   0.2395030
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1495190    0.1172589   0.1817792
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1085012    0.0484124   0.1685900
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1691301    0.1191209   0.2191392
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1478568    0.1090657   0.1866478
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1739728    0.1552149   0.1927308
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1861989    0.1465155   0.2258822
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1205024    0.0949329   0.1460720
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1324738    0.1174630   0.1474846
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1428917    0.1185752   0.1672081
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1577131    0.1354133   0.1800128
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1326225    0.1182406   0.1470045
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1539396    0.1314866   0.1763927
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1561264    0.1441218   0.1681310
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1604820    0.1110551   0.2099088
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1521952    0.1229000   0.1814905
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1209143    0.1001678   0.1416607
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1464787    0.0980626   0.1948947
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1167367    0.0695048   0.1639686
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1487572    0.0997937   0.1977207
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1494883    0.1293881   0.1695885
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1434182    0.1135258   0.1733106
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1760300    0.1505611   0.2014989
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1832379    0.1349080   0.2315678
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1915254    0.1466657   0.2363851
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1635417    0.1139161   0.2131673
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.1570116    0.1381851   0.1758382
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1343224    0.1054966   0.1631482
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1367165    0.1042539   0.1691791
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.1428078    0.0962390   0.1893766
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1643200    0.1182493   0.2103907
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1803284    0.1518970   0.2087597
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.1415751    0.1238528   0.1592974
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.1620488    0.1363213   0.1877762
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1485245    0.0933993   0.2036496
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1672191    0.1456123   0.1888259
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1856455    0.1385440   0.2327470
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1520250    0.1205216   0.1835285
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.1963544    0.1682442   0.2244645
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.1724720    0.1299370   0.2150069
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.1948651    0.1663827   0.2233476
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.1517214    0.0913817   0.2120611
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.1710618    0.1114513   0.2306724
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1640082    0.1267100   0.2013064
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0843279    0.0170924   0.1515634
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1289831    0.0821669   0.1757994
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1588125    0.1227017   0.1949233
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1415404    0.1230224   0.1600585
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1301967    0.0945097   0.1658837
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1470763    0.1197056   0.1744470
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1407949    0.1261322   0.1554576
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1411861    0.1170225   0.1653496
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1966114    0.1671951   0.2260277
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1643908    0.1491353   0.1796463
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1814276    0.1528189   0.2100364
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1640569    0.1520728   0.1760409
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1520783    0.1046338   0.1995227
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1783371    0.1510235   0.2056507
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0958889    0.0608686   0.1309092
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0853974   -0.0063702   0.1771650
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1375778    0.0686072   0.2065484
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1495737    0.1049724   0.1941750
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1656634    0.1496302   0.1816965
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1782150    0.1408687   0.2155613
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1820924    0.1446464   0.2195384
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.1785797    0.1285841   0.2285754
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.1715293    0.1190743   0.2239844


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.0654150   1.0310488   1.0997812
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7611021   0.7390455   0.7831587
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.9706290   0.9455271   0.9957310
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.9399583   0.9128554   0.9670613
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7960212   0.7712578   0.8207846
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9018330   0.8870586   0.9166074
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9225695   0.9123674   0.9327716
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9237858   0.9123458   0.9352259
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.8251484   0.8083607   0.8419362
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9439252   0.9385241   0.9493263
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7747272   0.7492351   0.8002193
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8087705   0.7998524   0.8176886
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8505919   0.8465707   0.8546130
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4444966   0.4269381   0.4620550
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.4984134   0.4793907   0.5174361
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4617801   0.4360641   0.4874961
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4244181   0.4104375   0.4383986
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4894576   0.4764038   0.5025113
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196681   0.4109298   0.4284065
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4449828   0.4352937   0.4546718
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.6678311   0.6523922   0.6832699
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4795969   0.4748910   0.4843028
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4507802   0.4342367   0.4673238
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4843064   0.4767948   0.4918179
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4456970   0.4414085   0.4499854
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2306925   0.2158356   0.2455494
6-9 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     ki0047075b-MAL-ED          PERU                           NA                   NA                0.2612740   0.2457204   0.2768277
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2586445   0.2373164   0.2799725
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2504063   0.2356209   0.2651917
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1966666   0.1644047   0.2289285
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2549836   0.2460532   0.2639139
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2021918   0.1891288   0.2152548
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2461017   0.2267560   0.2654474
6-9 months     ki1119695-PROBIT           BELARUS                        NA                   NA                0.4783842   0.4637579   0.4930106
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2585071   0.2537594   0.2632548
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2025786   0.1878480   0.2173092
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2819658   0.2745981   0.2893334
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2839155   0.2713587   0.2964722
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1783231   0.1642419   0.1924043
9-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1866354   0.1713488   0.2019219
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2149952   0.1925566   0.2374338
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2207664   0.2134116   0.2281212
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1532469   0.1125153   0.1939785
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052776   0.1951180   0.2154371
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1566911   0.1447215   0.1686608
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2014702   0.1792367   0.2237036
9-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.3694940   0.3438588   0.3951292
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1802018   0.1754568   0.1849468
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1429027   0.1309945   0.1548108
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2217834   0.2139450   0.2296219
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2018320   0.1859333   0.2177307
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1744574   0.1585285   0.1903862
12-15 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1414020   0.1246466   0.1581574
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1922381   0.1667974   0.2176788
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1502728   0.1373265   0.1632191
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1846069   0.1556992   0.2135147
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1732366   0.1618629   0.1846102
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1844674   0.1743510   0.1945839
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1937372   0.1638096   0.2236648
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1513473   0.1429271   0.1597675
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1494391   0.1359443   0.1629339
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1628133   0.1478080   0.1778186
15-18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2190068   0.1913206   0.2466931
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1503422   0.1363770   0.1643074
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1760595   0.1427086   0.2094103
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1565394   0.1447539   0.1683249
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1709581   0.1566361   0.1852802
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1597553   0.1496149   0.1698958
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1314637   0.1202509   0.1426764
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1168291   0.1008745   0.1327837
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1719622   0.1570466   0.1868778
18-21 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1806346   0.1548130   0.2064562
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1325181   0.1210527   0.1439835
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1557380   0.1448618   0.1666141
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1223425   0.1044399   0.1402452
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1480938   0.1321293   0.1640584
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1806494   0.1604901   0.2008088
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1564363   0.1432171   0.1696555
21-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1870402   0.1629923   0.2110880
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1421605   0.1307059   0.1536151
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1655857   0.1548036   0.1763679
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1029472   0.0733006   0.1325937
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1663460   0.1520015   0.1806904
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1791857   0.1524049   0.2059664


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0301081   -0.1206586    0.0604423
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0213655   -0.0733862    0.1161172
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0762913   -0.1539485    0.0013658
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0221156   -0.1107059    0.0664747
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0686213   -0.1255642   -0.0116785
0-3 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0452538   -0.1043918    0.0138842
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0906027   -0.1620698   -0.0191355
0-3 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0586865   -0.1353928    0.0180199
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0088211   -0.0721713    0.0545290
0-3 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0093950   -0.0661460    0.0849359
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0554974   -0.1421560    0.0311612
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0103549   -0.0759243    0.0552145
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0469240   -0.1122604    0.0184123
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0149999   -0.0730108    0.1030106
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0963118   -0.1282140   -0.0644095
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0888363   -0.1523373   -0.0253354
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0835533   -0.1357299   -0.0313766
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0171059   -0.0777132    0.0435013
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0867556   -0.1268412   -0.0466700
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0503800   -0.0953974   -0.0053626
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0450923   -0.0835634   -0.0066211
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0219116   -0.0668958    0.0230726
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0172627   -0.0456350    0.0111096
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0343524   -0.0598296   -0.0088753
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1142282   -0.1735359   -0.0549204
0-3 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0334040   -0.0672160    0.0004080
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0227160   -0.0377349   -0.0076972
0-3 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0023514   -0.0295526    0.0248497
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0395855   -0.0626446   -0.0165265
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0243035   -0.0395767   -0.0090304
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0281125   -0.0580920    0.1143170
0-3 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0394833   -0.0558189    0.1347855
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0607598   -0.0819418   -0.0395778
0-3 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0479357   -0.0721323   -0.0237391
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0593394   -0.0712245   -0.0474543
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0368783   -0.0492860   -0.0244706
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0091028   -0.0365598    0.0547655
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0178762   -0.0351444    0.0708969
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0782999   -0.1404065   -0.0161933
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0299172   -0.0573956    0.1172301
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0036307   -0.0456185    0.0383571
3-6 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0101952   -0.0538842    0.0334939
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0688733   -0.1219091   -0.0158375
3-6 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0238680   -0.0848092    0.0370733
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0362322   -0.0911061    0.0186416
3-6 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0192213   -0.0813204    0.0428779
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0534013   -0.0211291    0.1279317
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0049694   -0.0840185    0.0740796
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0163628   -0.0813667    0.0486412
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0252854   -0.0897155    0.0391447
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0475067   -0.1342091    0.0391956
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0254980   -0.0712606    0.0202647
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0279150   -0.0230177    0.0788478
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0415106   -0.0169100    0.0999312
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0166721   -0.0469371    0.0135930
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0017817   -0.0374630    0.0338996
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0260347   -0.0577329    0.0056635
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0081015   -0.0449231    0.0287201
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0000097   -0.0245830    0.0245636
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0180057   -0.0393506    0.0033392
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0258992   -0.0706784    0.0188800
3-6 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0002673   -0.0296178    0.0290832
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0091211   -0.0106237    0.0288659
3-6 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0463502   -0.0866297   -0.0060707
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0239974   -0.0443086   -0.0036863
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0100622   -0.0231980    0.0030736
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0028212   -0.0494692    0.0438267
3-6 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0172877   -0.0718606    0.0372853
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0530308   -0.0713989   -0.0346627
3-6 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0253744   -0.0454431   -0.0053057
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0270061   -0.0417244   -0.0122878
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0207023   -0.0360437   -0.0053609
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0066824   -0.0357089    0.0490736
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0192239   -0.0334403    0.0718881
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0664913   -0.1238873   -0.0090953
6-9 months     ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0110393   -0.0890905    0.0670119
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0047844   -0.0381363    0.0285675
6-9 months     ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0100236   -0.0298942    0.0499413
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0005683   -0.0406712    0.0395345
6-9 months     ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0191475   -0.0283298    0.0666248
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0205459   -0.0533058    0.0122141
6-9 months     ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0114149   -0.0308027    0.0536324
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0001328   -0.0643935    0.0641279
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0406419   -0.0192367    0.1005205
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0431136   -0.0963677    0.0101405
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0085686   -0.0841594    0.0670222
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0017346   -0.0947893    0.0913202
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0120172   -0.0636482    0.0876826
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0371561   -0.0475252    0.1218375
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0424848   -0.1470976    0.0621281
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0448565   -0.0860037   -0.0037092
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0219761   -0.0656539    0.0217016
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0376087   -0.0661339   -0.0090835
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0098344   -0.0418507    0.0221818
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0343333   -0.0621496   -0.0065171
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0357490   -0.0705029   -0.0009951
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0401463   -0.0641538   -0.0161389
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0245872   -0.0453489   -0.0038256
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0194732   -0.0229285    0.0618748
6-9 months     ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0166074   -0.0535296    0.0203148
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0906602   -0.1386772   -0.0426432
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0473830   -0.1075865    0.0128205
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0291885   -0.0515312   -0.0068459
6-9 months     ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0090903   -0.0353365    0.0535170
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0093809   -0.0280346    0.0092728
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0096396   -0.0231942    0.0039150
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0431488   -0.0899571    0.0036594
6-9 months     ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0275454   -0.0783970    0.0233063
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0297869   -0.0476598   -0.0119141
6-9 months     ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0350093   -0.0544131   -0.0156054
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0506688   -0.0863998   -0.0149378
6-9 months     ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0151162   -0.0449046    0.0146721
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0025467   -0.0432327    0.0483262
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0005099   -0.0519744    0.0529941
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0311330   -0.0984348    0.0361688
9-12 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0449173   -0.1253527    0.0355181
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0114622   -0.0484166    0.0254921
9-12 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0074349   -0.0468051    0.0319354
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0273653   -0.0605926    0.0058620
9-12 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0310921   -0.0025718    0.0647560
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0076624   -0.0423227    0.0269979
9-12 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0129456   -0.0588915    0.0330003
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0689782   -0.1370142   -0.0009422
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0043218   -0.0628122    0.0714557
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0036991   -0.0608789    0.0534807
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0199739   -0.0693543    0.0294066
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0553060   -0.0822134   -0.0283985
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0555960   -0.0900265   -0.0211655
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0721467   -0.0323419    0.1766353
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0165699   -0.1115146    0.1446545
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0123568   -0.0503141    0.0256005
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0099705   -0.0342661    0.0542071
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0102292   -0.0357662    0.0153079
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0095007   -0.0394536    0.0204521
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0221219   -0.0516237    0.0073800
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0215663   -0.0555565    0.0124238
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0078233   -0.0397774    0.0241308
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0200382   -0.0447717    0.0046953
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0422580   -0.0077212    0.0922373
9-12 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0185319   -0.0533374    0.0162735
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0509564   -0.1161890    0.0142762
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm           0.0030793   -0.0764413    0.0826000
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0170475   -0.0067535    0.0408486
9-12 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0005592   -0.0545143    0.0533960
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0170256   -0.0350944    0.0010432
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0025309   -0.0107985    0.0158603
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0046927   -0.0427568    0.0333715
9-12 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0106747   -0.0532423    0.0318929
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.0188325   -0.0371945   -0.0004705
9-12 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0269368   -0.0483438   -0.0055297
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0210434   -0.0652779    0.0231911
9-12 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0082416   -0.0438286    0.0273454
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0654449   -0.1160242   -0.0148656
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0397663   -0.0956809    0.0161484
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0145242   -0.0711816    0.0421331
12-15 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0711889   -0.1336942   -0.0086837
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0384341   -0.0781815    0.0013134
12-15 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0024011   -0.0478459    0.0430438
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0089630   -0.0380405    0.0559665
12-15 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0068591   -0.0399194    0.0536377
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0129795   -0.0308308    0.0567898
12-15 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0065366   -0.0444437    0.0575169
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0004010   -0.0829856    0.0837876
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0031651   -0.0610547    0.0547245
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0161185   -0.0859853    0.0537482
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0697525   -0.1308747   -0.0086302
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm           0.0246848   -0.0071933    0.0565629
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0064665   -0.0198722    0.0069391
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0059422   -0.0764190    0.0883035
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0232157   -0.0656557    0.1120872
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0214124   -0.0139094    0.0567342
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0152610   -0.0546233    0.0241014
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0139407   -0.0449900    0.0171087
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0164614   -0.0534602    0.0205375
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0302958   -0.0597176   -0.0008741
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0100662   -0.0433650    0.0232326
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0115274   -0.0459438    0.0228891
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0310140   -0.0582918   -0.0037363
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0188706   -0.0661059    0.0283647
12-15 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0096782   -0.0228799    0.0422363
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm           0.0125016   -0.0683773    0.0933805
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm           0.0029828   -0.0825771    0.0885428
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0072404   -0.0484897    0.0340090
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0105221   -0.0109470    0.0319912
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0111606   -0.0444240    0.0221028
12-15 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0169236   -0.0567635    0.0229162
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0560809   -0.1251103    0.0129486
12-15 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0569086   -0.1452879    0.0314706
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0395017   -0.0899060    0.0109025
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0152577   -0.0716327    0.0411173
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0329354   -0.0898463    0.0239755
15-18 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0160190   -0.0744332    0.0423953
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0344669   -0.0762039    0.0072701
15-18 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0145285   -0.0607219    0.0316649
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0610273   -0.1111183   -0.0109363
15-18 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0723545   -0.1272010   -0.0175080
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0081846   -0.0401341    0.0565033
15-18 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0214159   -0.0373617    0.0801935
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0221988   -0.0606708    0.1050684
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0696020   -0.1338592   -0.0053449
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0114403   -0.0483636    0.0712442
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0344249   -0.0217587    0.0906085
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm           0.0063115   -0.0344141    0.0470371
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0142668   -0.0540389    0.0825725
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.1101933   -0.1909047   -0.0294818
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm           0.0017807   -0.1026180    0.1061795
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0228577   -0.0663530    0.0206375
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0096669   -0.0602805    0.0409466
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0196314   -0.0490415    0.0097787
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0203785   -0.0548283    0.0140713
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0024916   -0.0290525    0.0240693
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0048472   -0.0379517    0.0282573
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0229921   -0.0599986    0.0140144
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0084699   -0.0447965    0.0278566
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0060324   -0.0490845    0.0370197
15-18 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0052234   -0.0248676    0.0353145
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0053716   -0.0506650    0.0399217
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0003388   -0.0290277    0.0297053
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0023157   -0.0530758    0.0484444
15-18 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0220665   -0.0821448    0.0380119
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0469537   -0.0239178    0.1178253
15-18 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0340073   -0.0535848    0.1215994
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0001943   -0.0529458    0.0533344
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0042411   -0.0704352    0.0619530
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0460437   -0.0244330    0.1165204
18-21 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0308067   -0.0792245    0.0176110
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0101917   -0.0517441    0.0313606
18-21 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0325425   -0.0746807    0.0095958
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.0052535   -0.0687945    0.0582875
18-21 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0136665   -0.0533901    0.0807230
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0393112   -0.0824799    0.0038574
18-21 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0462678   -0.1016583    0.0091228
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.0108090   -0.0633196    0.0849376
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0188723   -0.0348614    0.0726059
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0410179   -0.1092189    0.0271832
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0196110   -0.0399006    0.0791226
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0261161   -0.0169723    0.0692045
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0383421   -0.0171513    0.0938355
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm           0.0119713   -0.0176787    0.0416214
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0223892   -0.0128966    0.0576751
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0250905   -0.0516258    0.0014448
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0037734   -0.0354187    0.0278718
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0043556   -0.0465082    0.0552193
18-21 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0039312   -0.0355907    0.0277283
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0255644   -0.0271094    0.0782382
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0041776   -0.0557651    0.0474099
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0007311   -0.0521975    0.0536598
18-21 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0053390   -0.0627060    0.0520281
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0072079   -0.0474221    0.0618380
18-21 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0154954   -0.0360901    0.0670808
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0065300   -0.0596067    0.0465467
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0292193   -0.0866094    0.0281708
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.0060912   -0.0506756    0.0628581
21-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0276035   -0.0287555    0.0839624
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0387533   -0.0722559   -0.0052507
21-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0182796   -0.0566234    0.0200641
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm           0.0186946   -0.0405138    0.0779030
21-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm           0.0371210   -0.0353865    0.1096285
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0443294    0.0021079    0.0865508
21-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0204469   -0.0324840    0.0733779
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0431437   -0.1098680    0.0235805
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0238033   -0.0898690    0.0422624
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0796803   -0.1565683   -0.0027923
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0350251   -0.0948825    0.0248324
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0172721   -0.0578542    0.0233100
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0286158   -0.0793854    0.0221538
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.0062814   -0.0373322    0.0247694
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0058902   -0.0424009    0.0306205
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0322206   -0.0653574    0.0009163
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0151838   -0.0562177    0.0258501
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0119786   -0.0609132    0.0369560
21-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0142803   -0.0155468    0.0441073
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0104915   -0.1087143    0.0877312
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0416889   -0.0356633    0.1190411
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0160896   -0.0313059    0.0634852
21-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0286413   -0.0295310    0.0868137
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0035127   -0.0659768    0.0589515
21-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0105630   -0.0750125    0.0538864


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0141109   -0.0948452    0.0666235
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0222565   -0.0507800    0.0062670
0-3 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0459857   -0.0867351   -0.0052363
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0663146   -0.1224869   -0.0101424
0-3 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0031108   -0.0513528    0.0451311
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0079821   -0.0224125    0.0064483
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0059350   -0.0299870    0.0181171
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0539671   -0.0608670   -0.0470672
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0523270   -0.0945791   -0.0100749
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0593100   -0.0897045   -0.0289155
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0312940   -0.0614659   -0.0011221
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0100134   -0.0177808   -0.0022461
0-3 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0086096   -0.0138094   -0.0034099
0-3 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0002732   -0.0011364    0.0005900
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0059332   -0.0087111   -0.0031554
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0269480   -0.0471594    0.1010554
0-3 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0392094   -0.0531499   -0.0252689
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0446759   -0.0543660   -0.0349857
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0104258   -0.0295109    0.0503626
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0135003   -0.0391388    0.0121383
3-6 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0046952   -0.0334407    0.0240504
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0447783   -0.0869839   -0.0025727
3-6 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0249509   -0.0669652    0.0170635
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0063443   -0.0082016    0.0208902
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0085449   -0.0289843    0.0118944
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0217988   -0.0624069    0.0188092
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0262754   -0.0146599    0.0672108
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0095139   -0.0317529    0.0127252
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0169498   -0.0420694    0.0081699
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0039368   -0.0106457    0.0027721
3-6 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0009577   -0.0049492    0.0030338
3-6 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0012061   -0.0024047   -0.0000076
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0029246   -0.0053287   -0.0005205
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0052313   -0.0450832    0.0346206
3-6 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0299086   -0.0419472   -0.0178700
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0211432   -0.0331364   -0.0091500
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0091316   -0.0285396    0.0468028
6-9 months     ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0185178   -0.0416001    0.0045645
6-9 months     ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0005032   -0.0230325    0.0240388
6-9 months     ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0048427   -0.0277168    0.0374023
6-9 months     ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0097021   -0.0339910    0.0145867
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0044578   -0.0074519    0.0163676
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0102972   -0.0314794    0.0108851
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0022199   -0.0404575    0.0448972
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0107545   -0.0570249    0.0785338
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0311465   -0.0636193    0.0013264
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0230711   -0.0441416   -0.0020006
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0281782   -0.0502871   -0.0060693
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0116027   -0.0183066   -0.0048988
6-9 months     ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0015128   -0.0066338    0.0036082
6-9 months     ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0657292   -0.1050832   -0.0263751
6-9 months     ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0000193   -0.0014164    0.0013778
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0019820   -0.0043809    0.0004169
6-9 months     ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0345278   -0.0743717    0.0053160
6-9 months     ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0224395   -0.0340451   -0.0108339
6-9 months     ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0114598   -0.0211331   -0.0017865
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0017885   -0.0387628    0.0423398
9-12 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0161092   -0.0428238    0.0106053
9-12 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0076337   -0.0341080    0.0188406
9-12 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0068779   -0.0320740    0.0183181
9-12 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0071314   -0.0332426    0.0189797
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0088470   -0.0219900    0.0042960
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0050232   -0.0223557    0.0123092
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0302636   -0.0399833   -0.0205439
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0432219   -0.0377639    0.1242077
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047273   -0.0348244    0.0253698
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0079145   -0.0275402    0.0117113
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0178451   -0.0411642    0.0054740
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0055333   -0.0134661    0.0023995
9-12 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0011530   -0.0060995    0.0037934
9-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0299374   -0.0834719    0.0235972
9-12 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0001377   -0.0014580    0.0017333
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0007069   -0.0031404    0.0017266
9-12 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0053012   -0.0379036    0.0273013
9-12 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0154083   -0.0274617   -0.0033550
9-12 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0052084   -0.0169876    0.0065707
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0527847   -0.0974721   -0.0080974
12-15 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0170935   -0.0385413    0.0043543
12-15 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0192915   -0.0482503    0.0096674
12-15 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0068761   -0.0297591    0.0435112
12-15 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0087114   -0.0239859    0.0414086
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0003579   -0.0146260    0.0139103
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0187361   -0.0399224    0.0024502
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0065143   -0.0063571    0.0193857
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0094062   -0.0535523    0.0723648
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0087137   -0.0193042    0.0367315
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0116599   -0.0355422    0.0122223
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0197650   -0.0428448    0.0033149
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0087633   -0.0178770    0.0003503
12-15 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0005165   -0.0041410    0.0051741
12-15 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.0087911   -0.0592803    0.0768625
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0010363   -0.0032834    0.0053559
12-15 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0109262   -0.0387580    0.0169057
12-15 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0246506   -0.0534098    0.0041087
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0296422   -0.0742060    0.0149217
15-18 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0110167   -0.0329548    0.0109213
15-18 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0207653   -0.0516339    0.0101034
15-18 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0541739   -0.0953118   -0.0130360
15-18 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0089838   -0.0274587    0.0454264
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0056909   -0.0204089    0.0090271
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0097994   -0.0091877    0.0287866
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0051378   -0.0215763    0.0318518
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0592428   -0.1239366    0.0054509
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0156044   -0.0507950    0.0195862
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0157918   -0.0380854    0.0065019
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0025539   -0.0231657    0.0180579
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0058899   -0.0174063    0.0056265
15-18 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0004686   -0.0038251    0.0047623
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0003274   -0.0060281    0.0053733
15-18 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0062689   -0.0495676    0.0370299
15-18 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0174032   -0.0100616    0.0448679
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0009085   -0.0482829    0.0464660
18-21 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0058612   -0.0161302    0.0278527
18-21 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0141486   -0.0439365    0.0156394
18-21 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0007704   -0.0513993    0.0529400
18-21 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0320915   -0.0643629    0.0001799
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0035467   -0.0087662    0.0158597
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0031652   -0.0243669    0.0180364
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0245824   -0.0106872    0.0598520
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0120156   -0.0106681    0.0346994
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0150521   -0.0355814    0.0054771
18-21 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0003885   -0.0050008    0.0042239
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0014283   -0.0082736    0.0111302
18-21 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0006634   -0.0459727    0.0446460
18-21 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0046194   -0.0116827    0.0209216
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0114261   -0.0579881    0.0351358
21-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0067735   -0.0141233    0.0276703
21-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0238921   -0.0484333    0.0006491
21-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0205167   -0.0286532    0.0696866
21-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0294421   -0.0010595    0.0599437
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0078250   -0.0199219    0.0042719
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0226895   -0.0455437    0.0001647
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0168395   -0.0494792    0.0158003
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0049158   -0.0289363    0.0191047
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0215613   -0.0476866    0.0045639
21-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0015289   -0.0027375    0.0057953
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0070582   -0.0123903    0.0265067
21-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0167722   -0.0246671    0.0582116
21-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0029067   -0.0238057    0.0179923

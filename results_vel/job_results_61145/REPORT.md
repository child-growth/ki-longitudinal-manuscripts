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

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        mhtcm           n_cell       n
-------------  ---------------  -----------------------------  -------------  -------  ------
0-3 months     COHORTS          GUATEMALA                      >=155 cm           105     791
0-3 months     COHORTS          GUATEMALA                      <151 cm            519     791
0-3 months     COHORTS          GUATEMALA                      [151-155) cm       167     791
0-3 months     COHORTS          INDIA                          >=155 cm           522    1755
0-3 months     COHORTS          INDIA                          <151 cm            757    1755
0-3 months     COHORTS          INDIA                          [151-155) cm       476    1755
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm          3029   20207
0-3 months     JiVitA-3         BANGLADESH                     <151 cm          12079   20207
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm      5099   20207
0-3 months     Keneba           GAMBIA                         >=155 cm          1219    1463
0-3 months     Keneba           GAMBIA                         <151 cm             55    1463
0-3 months     Keneba           GAMBIA                         [151-155) cm       189    1463
0-3 months     MAL-ED           BANGLADESH                     >=155 cm            23     246
0-3 months     MAL-ED           BANGLADESH                     <151 cm            160     246
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm        63     246
0-3 months     MAL-ED           BRAZIL                         >=155 cm           126     217
0-3 months     MAL-ED           BRAZIL                         <151 cm             52     217
0-3 months     MAL-ED           BRAZIL                         [151-155) cm        39     217
0-3 months     MAL-ED           INDIA                          >=155 cm            54     237
0-3 months     MAL-ED           INDIA                          <151 cm            112     237
0-3 months     MAL-ED           INDIA                          [151-155) cm        71     237
0-3 months     MAL-ED           NEPAL                          >=155 cm            40     232
0-3 months     MAL-ED           NEPAL                          <151 cm            129     232
0-3 months     MAL-ED           NEPAL                          [151-155) cm        63     232
0-3 months     MAL-ED           PERU                           >=155 cm            58     281
0-3 months     MAL-ED           PERU                           <151 cm            163     281
0-3 months     MAL-ED           PERU                           [151-155) cm        60     281
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm           200     264
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm             32     264
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm        32     264
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           145     237
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             45     237
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     237
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm           103     565
0-3 months     NIH-Birth        BANGLADESH                     <151 cm            326     565
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm       136     565
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm           136     725
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm            422     725
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm       167     725
0-3 months     PROBIT           BELARUS                        >=155 cm         12122   12605
0-3 months     PROBIT           BELARUS                        <151 cm            114   12605
0-3 months     PROBIT           BELARUS                        [151-155) cm       369   12605
0-3 months     PROVIDE          BANGLADESH                     >=155 cm           138     639
0-3 months     PROVIDE          BANGLADESH                     <151 cm            348     639
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm       153     639
0-3 months     SAS-CompFeed     INDIA                          >=155 cm           470    1169
0-3 months     SAS-CompFeed     INDIA                          <151 cm            415    1169
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm       284    1169
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1256    1989
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            308    1989
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       425    1989
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm          5675    7161
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm            417    7161
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm      1069    7161
3-6 months     COHORTS          GUATEMALA                      >=155 cm           101     800
3-6 months     COHORTS          GUATEMALA                      <151 cm            535     800
3-6 months     COHORTS          GUATEMALA                      [151-155) cm       164     800
3-6 months     COHORTS          INDIA                          >=155 cm           527    1784
3-6 months     COHORTS          INDIA                          <151 cm            776    1784
3-6 months     COHORTS          INDIA                          [151-155) cm       481    1784
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm          1991   12686
3-6 months     JiVitA-3         BANGLADESH                     <151 cm           7423   12686
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm      3272   12686
3-6 months     Keneba           GAMBIA                         >=155 cm          1087    1287
3-6 months     Keneba           GAMBIA                         <151 cm             46    1287
3-6 months     Keneba           GAMBIA                         [151-155) cm       154    1287
3-6 months     MAL-ED           BANGLADESH                     >=155 cm            23     233
3-6 months     MAL-ED           BANGLADESH                     <151 cm            151     233
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm        59     233
3-6 months     MAL-ED           BRAZIL                         >=155 cm           121     208
3-6 months     MAL-ED           BRAZIL                         <151 cm             50     208
3-6 months     MAL-ED           BRAZIL                         [151-155) cm        37     208
3-6 months     MAL-ED           INDIA                          >=155 cm            54     229
3-6 months     MAL-ED           INDIA                          <151 cm            108     229
3-6 months     MAL-ED           INDIA                          [151-155) cm        67     229
3-6 months     MAL-ED           NEPAL                          >=155 cm            41     233
3-6 months     MAL-ED           NEPAL                          <151 cm            130     233
3-6 months     MAL-ED           NEPAL                          [151-155) cm        62     233
3-6 months     MAL-ED           PERU                           >=155 cm            57     266
3-6 months     MAL-ED           PERU                           <151 cm            154     266
3-6 months     MAL-ED           PERU                           [151-155) cm        55     266
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm           180     239
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm             31     239
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm        28     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           142     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             46     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     239
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm            93     522
3-6 months     NIH-Birth        BANGLADESH                     <151 cm            301     522
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm       128     522
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm           132     702
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm            406     702
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm       164     702
3-6 months     PROBIT           BELARUS                        >=155 cm         10641   11068
3-6 months     PROBIT           BELARUS                        <151 cm            104   11068
3-6 months     PROBIT           BELARUS                        [151-155) cm       323   11068
3-6 months     PROVIDE          BANGLADESH                     >=155 cm           129     600
3-6 months     PROVIDE          BANGLADESH                     <151 cm            327     600
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm       144     600
3-6 months     SAS-CompFeed     INDIA                          >=155 cm           423    1032
3-6 months     SAS-CompFeed     INDIA                          <151 cm            363    1032
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm       246    1032
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025    1638
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            255    1638
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       358    1638
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm          4437    5601
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm            335    5601
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm       829    5601
6-9 months     COHORTS          GUATEMALA                      >=155 cm           108     815
6-9 months     COHORTS          GUATEMALA                      <151 cm            536     815
6-9 months     COHORTS          GUATEMALA                      [151-155) cm       171     815
6-9 months     COHORTS          INDIA                          >=155 cm           484    1648
6-9 months     COHORTS          INDIA                          <151 cm            722    1648
6-9 months     COHORTS          INDIA                          [151-155) cm       442    1648
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm            30     182
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm            110     182
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm        42     182
6-9 months     Keneba           GAMBIA                         >=155 cm           687     818
6-9 months     Keneba           GAMBIA                         <151 cm             26     818
6-9 months     Keneba           GAMBIA                         [151-155) cm       105     818
6-9 months     LCNI-5           MALAWI                         >=155 cm           349     558
6-9 months     LCNI-5           MALAWI                         <151 cm             91     558
6-9 months     LCNI-5           MALAWI                         [151-155) cm       118     558
6-9 months     MAL-ED           BANGLADESH                     >=155 cm            23     224
6-9 months     MAL-ED           BANGLADESH                     <151 cm            145     224
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm        56     224
6-9 months     MAL-ED           BRAZIL                         >=155 cm           112     198
6-9 months     MAL-ED           BRAZIL                         <151 cm             49     198
6-9 months     MAL-ED           BRAZIL                         [151-155) cm        37     198
6-9 months     MAL-ED           INDIA                          >=155 cm            55     229
6-9 months     MAL-ED           INDIA                          <151 cm            110     229
6-9 months     MAL-ED           INDIA                          [151-155) cm        64     229
6-9 months     MAL-ED           NEPAL                          >=155 cm            39     230
6-9 months     MAL-ED           NEPAL                          <151 cm            129     230
6-9 months     MAL-ED           NEPAL                          [151-155) cm        62     230
6-9 months     MAL-ED           PERU                           >=155 cm            51     244
6-9 months     MAL-ED           PERU                           <151 cm            143     244
6-9 months     MAL-ED           PERU                           [151-155) cm        50     244
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm           171     227
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm             31     227
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm        25     227
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           132     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             44     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     225
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm            91     498
6-9 months     NIH-Birth        BANGLADESH                     <151 cm            287     498
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm       120     498
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm           131     693
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm            398     693
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm       164     693
6-9 months     PROBIT           BELARUS                        >=155 cm         10044   10435
6-9 months     PROBIT           BELARUS                        <151 cm             97   10435
6-9 months     PROBIT           BELARUS                        [151-155) cm       294   10435
6-9 months     PROVIDE          BANGLADESH                     >=155 cm           120     576
6-9 months     PROVIDE          BANGLADESH                     <151 cm            317     576
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm       139     576
6-9 months     SAS-CompFeed     INDIA                          >=155 cm           434    1050
6-9 months     SAS-CompFeed     INDIA                          <151 cm            363    1050
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm       253    1050
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm            62     309
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm            168     309
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm        79     309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           917    1468
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            224    1468
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       327    1468
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm          4002    5048
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm            301    5048
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm       745    5048
9-12 months    COHORTS          GUATEMALA                      >=155 cm           121     909
9-12 months    COHORTS          GUATEMALA                      <151 cm            595     909
9-12 months    COHORTS          GUATEMALA                      [151-155) cm       193     909
9-12 months    COHORTS          INDIA                          >=155 cm           432    1460
9-12 months    COHORTS          INDIA                          <151 cm            641    1460
9-12 months    COHORTS          INDIA                          [151-155) cm       387    1460
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm            28     163
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm             98     163
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm        37     163
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm           997    1106
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1106
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm        79    1106
9-12 months    Keneba           GAMBIA                         >=155 cm           679     808
9-12 months    Keneba           GAMBIA                         <151 cm             24     808
9-12 months    Keneba           GAMBIA                         [151-155) cm       105     808
9-12 months    LCNI-5           MALAWI                         >=155 cm           240     382
9-12 months    LCNI-5           MALAWI                         <151 cm             64     382
9-12 months    LCNI-5           MALAWI                         [151-155) cm        78     382
9-12 months    MAL-ED           BANGLADESH                     >=155 cm            23     225
9-12 months    MAL-ED           BANGLADESH                     <151 cm            147     225
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm        55     225
9-12 months    MAL-ED           BRAZIL                         >=155 cm           110     194
9-12 months    MAL-ED           BRAZIL                         <151 cm             47     194
9-12 months    MAL-ED           BRAZIL                         [151-155) cm        37     194
9-12 months    MAL-ED           INDIA                          >=155 cm            53     226
9-12 months    MAL-ED           INDIA                          <151 cm            109     226
9-12 months    MAL-ED           INDIA                          [151-155) cm        64     226
9-12 months    MAL-ED           NEPAL                          >=155 cm            39     229
9-12 months    MAL-ED           NEPAL                          <151 cm            128     229
9-12 months    MAL-ED           NEPAL                          [151-155) cm        62     229
9-12 months    MAL-ED           PERU                           >=155 cm            50     234
9-12 months    MAL-ED           PERU                           <151 cm            135     234
9-12 months    MAL-ED           PERU                           [151-155) cm        49     234
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm           172     229
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm             31     229
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm        26     229
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           131     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             45     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     224
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm            91     481
9-12 months    NIH-Birth        BANGLADESH                     <151 cm            276     481
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm       114     481
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm           128     683
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm            394     683
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm       161     683
9-12 months    PROBIT           BELARUS                        >=155 cm         10269   10670
9-12 months    PROBIT           BELARUS                        <151 cm             98   10670
9-12 months    PROBIT           BELARUS                        [151-155) cm       303   10670
9-12 months    PROVIDE          BANGLADESH                     >=155 cm           119     569
9-12 months    PROVIDE          BANGLADESH                     <151 cm            313     569
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm       137     569
9-12 months    SAS-CompFeed     INDIA                          >=155 cm           448    1050
9-12 months    SAS-CompFeed     INDIA                          <151 cm            353    1050
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm       249    1050
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm            59     298
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm            159     298
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm        80     298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           673    1067
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163    1067
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       231    1067
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm          3580    4556
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm            291    4556
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm       685    4556
12-15 months   COHORTS          GUATEMALA                      >=155 cm           116     854
12-15 months   COHORTS          GUATEMALA                      <151 cm            552     854
12-15 months   COHORTS          GUATEMALA                      [151-155) cm       186     854
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm            10      85
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm             55      85
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm        20      85
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm           886     966
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm             25     966
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm        55     966
12-15 months   Keneba           GAMBIA                         >=155 cm          1054    1263
12-15 months   Keneba           GAMBIA                         <151 cm             48    1263
12-15 months   Keneba           GAMBIA                         [151-155) cm       161    1263
12-15 months   LCNI-5           MALAWI                         >=155 cm            71     126
12-15 months   LCNI-5           MALAWI                         <151 cm             29     126
12-15 months   LCNI-5           MALAWI                         [151-155) cm        26     126
12-15 months   MAL-ED           BANGLADESH                     >=155 cm            21     212
12-15 months   MAL-ED           BANGLADESH                     <151 cm            140     212
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm        51     212
12-15 months   MAL-ED           BRAZIL                         >=155 cm           104     184
12-15 months   MAL-ED           BRAZIL                         <151 cm             45     184
12-15 months   MAL-ED           BRAZIL                         [151-155) cm        35     184
12-15 months   MAL-ED           INDIA                          >=155 cm            53     225
12-15 months   MAL-ED           INDIA                          <151 cm            109     225
12-15 months   MAL-ED           INDIA                          [151-155) cm        63     225
12-15 months   MAL-ED           NEPAL                          >=155 cm            39     230
12-15 months   MAL-ED           NEPAL                          <151 cm            129     230
12-15 months   MAL-ED           NEPAL                          [151-155) cm        62     230
12-15 months   MAL-ED           PERU                           >=155 cm            50     223
12-15 months   MAL-ED           PERU                           <151 cm            126     223
12-15 months   MAL-ED           PERU                           [151-155) cm        47     223
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm           166     224
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm             29     224
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        29     224
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           133     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             42     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        51     226
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm            85     461
12-15 months   NIH-Birth        BANGLADESH                     <151 cm            266     461
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm       110     461
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm           126     666
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm            382     666
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm       158     666
12-15 months   PROBIT           BELARUS                        >=155 cm           960     993
12-15 months   PROBIT           BELARUS                        <151 cm              7     993
12-15 months   PROBIT           BELARUS                        [151-155) cm        26     993
12-15 months   PROVIDE          BANGLADESH                     >=155 cm           111     537
12-15 months   PROVIDE          BANGLADESH                     <151 cm            298     537
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm       128     537
12-15 months   SAS-CompFeed     INDIA                          >=155 cm           467    1070
12-15 months   SAS-CompFeed     INDIA                          <151 cm            352    1070
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm       251    1070
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm            57     300
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm            158     300
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm        85     300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479     778
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126     778
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173     778
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1308    1655
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm            109    1655
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       238    1655
15-18 months   COHORTS          GUATEMALA                      >=155 cm           106     770
15-18 months   COHORTS          GUATEMALA                      <151 cm            497     770
15-18 months   COHORTS          GUATEMALA                      [151-155) cm       167     770
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm           948    1040
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm             31    1040
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm        61    1040
15-18 months   Keneba           GAMBIA                         >=155 cm          1074    1284
15-18 months   Keneba           GAMBIA                         <151 cm             44    1284
15-18 months   Keneba           GAMBIA                         [151-155) cm       166    1284
15-18 months   LCNI-5           MALAWI                         >=155 cm            68     119
15-18 months   LCNI-5           MALAWI                         <151 cm             26     119
15-18 months   LCNI-5           MALAWI                         [151-155) cm        25     119
15-18 months   MAL-ED           BANGLADESH                     >=155 cm            21     212
15-18 months   MAL-ED           BANGLADESH                     <151 cm            139     212
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm        52     212
15-18 months   MAL-ED           BRAZIL                         >=155 cm            99     175
15-18 months   MAL-ED           BRAZIL                         <151 cm             42     175
15-18 months   MAL-ED           BRAZIL                         [151-155) cm        34     175
15-18 months   MAL-ED           INDIA                          >=155 cm            53     225
15-18 months   MAL-ED           INDIA                          <151 cm            109     225
15-18 months   MAL-ED           INDIA                          [151-155) cm        63     225
15-18 months   MAL-ED           NEPAL                          >=155 cm            37     227
15-18 months   MAL-ED           NEPAL                          <151 cm            128     227
15-18 months   MAL-ED           NEPAL                          [151-155) cm        62     227
15-18 months   MAL-ED           PERU                           >=155 cm            47     214
15-18 months   MAL-ED           PERU                           <151 cm            125     214
15-18 months   MAL-ED           PERU                           [151-155) cm        42     214
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm           166     221
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm             28     221
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     221
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           130     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             41     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     220
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm            79     449
15-18 months   NIH-Birth        BANGLADESH                     <151 cm            260     449
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm       110     449
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm           121     605
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm            340     605
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm       144     605
15-18 months   PROBIT           BELARUS                        >=155 cm           268     277
15-18 months   PROBIT           BELARUS                        <151 cm              1     277
15-18 months   PROBIT           BELARUS                        [151-155) cm         8     277
15-18 months   PROVIDE          BANGLADESH                     >=155 cm           109     532
15-18 months   PROVIDE          BANGLADESH                     <151 cm            293     532
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm       130     532
15-18 months   SAS-CompFeed     INDIA                          >=155 cm           468    1076
15-18 months   SAS-CompFeed     INDIA                          <151 cm            359    1076
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm       249    1076
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm            57     290
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm            151     290
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm        82     290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           397     656
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115     656
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       144     656
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm           834    1067
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm             75    1067
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       158    1067
18-21 months   COHORTS          GUATEMALA                      >=155 cm            98     769
18-21 months   COHORTS          GUATEMALA                      <151 cm            507     769
18-21 months   COHORTS          GUATEMALA                      [151-155) cm       164     769
18-21 months   Keneba           GAMBIA                         >=155 cm          1065    1273
18-21 months   Keneba           GAMBIA                         <151 cm             39    1273
18-21 months   Keneba           GAMBIA                         [151-155) cm       169    1273
18-21 months   LCNI-5           MALAWI                         >=155 cm           275     452
18-21 months   LCNI-5           MALAWI                         <151 cm             79     452
18-21 months   LCNI-5           MALAWI                         [151-155) cm        98     452
18-21 months   MAL-ED           BANGLADESH                     >=155 cm            22     209
18-21 months   MAL-ED           BANGLADESH                     <151 cm            136     209
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm        51     209
18-21 months   MAL-ED           BRAZIL                         >=155 cm            94     167
18-21 months   MAL-ED           BRAZIL                         <151 cm             42     167
18-21 months   MAL-ED           BRAZIL                         [151-155) cm        31     167
18-21 months   MAL-ED           INDIA                          >=155 cm            53     225
18-21 months   MAL-ED           INDIA                          <151 cm            108     225
18-21 months   MAL-ED           INDIA                          [151-155) cm        64     225
18-21 months   MAL-ED           NEPAL                          >=155 cm            37     227
18-21 months   MAL-ED           NEPAL                          <151 cm            128     227
18-21 months   MAL-ED           NEPAL                          [151-155) cm        62     227
18-21 months   MAL-ED           PERU                           >=155 cm            44     202
18-21 months   MAL-ED           PERU                           <151 cm            119     202
18-21 months   MAL-ED           PERU                           [151-155) cm        39     202
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm           174     229
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm             28     229
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     229
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           121     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             39     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     208
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm            73     422
18-21 months   NIH-Birth        BANGLADESH                     <151 cm            246     422
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm       103     422
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm           105     547
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm            308     547
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm       134     547
18-21 months   PROBIT           BELARUS                        >=155 cm           204     211
18-21 months   PROBIT           BELARUS                        <151 cm              0     211
18-21 months   PROBIT           BELARUS                        [151-155) cm         7     211
18-21 months   PROVIDE          BANGLADESH                     >=155 cm           112     541
18-21 months   PROVIDE          BANGLADESH                     <151 cm            298     541
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm       131     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             8      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              2      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1      11
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm           441     578
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm             47     578
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm        90     578
21-24 months   COHORTS          GUATEMALA                      >=155 cm           106     843
21-24 months   COHORTS          GUATEMALA                      <151 cm            556     843
21-24 months   COHORTS          GUATEMALA                      [151-155) cm       181     843
21-24 months   Keneba           GAMBIA                         >=155 cm           960    1141
21-24 months   Keneba           GAMBIA                         <151 cm             32    1141
21-24 months   Keneba           GAMBIA                         [151-155) cm       149    1141
21-24 months   LCNI-5           MALAWI                         >=155 cm           231     385
21-24 months   LCNI-5           MALAWI                         <151 cm             72     385
21-24 months   LCNI-5           MALAWI                         [151-155) cm        82     385
21-24 months   MAL-ED           BANGLADESH                     >=155 cm            22     207
21-24 months   MAL-ED           BANGLADESH                     <151 cm            134     207
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm        51     207
21-24 months   MAL-ED           BRAZIL                         >=155 cm            91     165
21-24 months   MAL-ED           BRAZIL                         <151 cm             43     165
21-24 months   MAL-ED           BRAZIL                         [151-155) cm        31     165
21-24 months   MAL-ED           INDIA                          >=155 cm            53     225
21-24 months   MAL-ED           INDIA                          <151 cm            109     225
21-24 months   MAL-ED           INDIA                          [151-155) cm        63     225
21-24 months   MAL-ED           NEPAL                          >=155 cm            38     227
21-24 months   MAL-ED           NEPAL                          <151 cm            128     227
21-24 months   MAL-ED           NEPAL                          [151-155) cm        61     227
21-24 months   MAL-ED           PERU                           >=155 cm            43     189
21-24 months   MAL-ED           PERU                           <151 cm            108     189
21-24 months   MAL-ED           PERU                           [151-155) cm        38     189
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm           177     231
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm             27     231
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     231
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           121     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             38     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     206
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm            74     411
21-24 months   NIH-Birth        BANGLADESH                     <151 cm            240     411
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm        97     411
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm            97     493
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm            271     493
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       125     493
21-24 months   PROBIT           BELARUS                        >=155 cm           198     207
21-24 months   PROBIT           BELARUS                        <151 cm              0     207
21-24 months   PROBIT           BELARUS                        [151-155) cm         9     207
21-24 months   PROVIDE          BANGLADESH                     >=155 cm            98     484
21-24 months   PROVIDE          BANGLADESH                     <151 cm            270     484
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm       116     484
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm           188     267
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm             27     267
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm        52     267


The following strata were considered:

* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d0ffd63f-ad6c-41f4-b09f-1cb0fabe87fb/d40671f9-f3b8-44e6-b958-b0217481c98a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d0ffd63f-ad6c-41f4-b09f-1cb0fabe87fb/d40671f9-f3b8-44e6-b958-b0217481c98a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d0ffd63f-ad6c-41f4-b09f-1cb0fabe87fb/d40671f9-f3b8-44e6-b958-b0217481c98a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                0.8512163    0.8037813   0.8986513
0-3 months     COHORTS          GUATEMALA                      <151 cm              NA                0.7846349    0.7637587   0.8055111
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         NA                0.8099802    0.7742912   0.8456693
0-3 months     COHORTS          INDIA                          >=155 cm             NA                0.8443020    0.8274657   0.8611384
0-3 months     COHORTS          INDIA                          <151 cm              NA                0.7884870    0.7757463   0.8012278
0-3 months     COHORTS          INDIA                          [151-155) cm         NA                0.8012364    0.7836326   0.8188403
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                0.9078048    0.8998962   0.9157134
0-3 months     JiVitA-3         BANGLADESH                     <151 cm              NA                0.8580801    0.8544105   0.8617497
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.8800306    0.8744456   0.8856155
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                0.9313614    0.9188801   0.9438428
0-3 months     Keneba           GAMBIA                         <151 cm              NA                0.8357807    0.7747827   0.8967788
0-3 months     Keneba           GAMBIA                         [151-155) cm         NA                0.8987190    0.8667416   0.9306965
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                0.8870890    0.7876993   0.9864787
0-3 months     MAL-ED           BANGLADESH                     <151 cm              NA                0.8627111    0.8335515   0.8918706
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                0.9157169    0.8748962   0.9565376
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                1.0873121    1.0387315   1.1358927
0-3 months     MAL-ED           BRAZIL                         <151 cm              NA                1.0248464    0.9619200   1.0877728
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         NA                1.0736514    0.9939282   1.1533746
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                0.8131498    0.7654828   0.8608167
0-3 months     MAL-ED           INDIA                          <151 cm              NA                0.7473151    0.7129146   0.7817156
0-3 months     MAL-ED           INDIA                          [151-155) cm         NA                0.7670606    0.7281810   0.8059402
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                1.0310400    0.9686860   1.0933939
0-3 months     MAL-ED           NEPAL                          <151 cm              NA                0.9328180    0.8955315   0.9701044
0-3 months     MAL-ED           NEPAL                          [151-155) cm         NA                0.9708537    0.9233681   1.0183394
0-3 months     MAL-ED           PERU                           >=155 cm             NA                0.9767776    0.9200309   1.0335244
0-3 months     MAL-ED           PERU                           <151 cm              NA                0.9663670    0.9330116   0.9997225
0-3 months     MAL-ED           PERU                           [151-155) cm         NA                0.9788076    0.9270974   1.0305177
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.9489710    0.9169703   0.9809716
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.8929097    0.8102912   0.9755282
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.9444328    0.8856220   1.0032436
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8912462    0.8523825   0.9301098
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8479124    0.7938301   0.9019947
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9029372    0.8234876   0.9823867
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8633230    0.8137024   0.9129435
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              NA                0.7837355    0.7648669   0.8026041
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.8477918    0.8106344   0.8849491
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.9211705    0.8873363   0.9550047
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                0.8720283    0.8529644   0.8910921
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.8962251    0.8661479   0.9263023
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                0.8376403    0.8267742   0.8485064
0-3 months     PROBIT           BELARUS                        <151 cm              NA                0.7980331    0.7910322   0.8050340
0-3 months     PROBIT           BELARUS                        [151-155) cm         NA                0.8256777    0.8076703   0.8436851
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                0.9596928    0.9246098   0.9947758
0-3 months     PROVIDE          BANGLADESH                     <151 cm              NA                0.8748188    0.8555818   0.8940558
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                0.9114712    0.8828097   0.9401328
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                0.8205739    0.7963047   0.8448431
0-3 months     SAS-CompFeed     INDIA                          <151 cm              NA                0.7639026    0.7323340   0.7954712
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                0.7941185    0.7753015   0.8129356
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9324920    0.9195570   0.9454271
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9163610    0.8913805   0.9413415
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8998465    0.8774997   0.9221933
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.9497407    0.9436886   0.9557927
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.9096687    0.8875511   0.9317864
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.9240443    0.9098304   0.9382582
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                0.4980702    0.4658944   0.5302460
3-6 months     COHORTS          GUATEMALA                      <151 cm              NA                0.4547290    0.4411526   0.4683055
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         NA                0.4619081    0.4405414   0.4832748
3-6 months     COHORTS          INDIA                          >=155 cm             NA                0.5094333    0.4947320   0.5241346
3-6 months     COHORTS          INDIA                          <151 cm              NA                0.4632091    0.4522308   0.4741874
3-6 months     COHORTS          INDIA                          [151-155) cm         NA                0.4900359    0.4763580   0.5037138
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                0.4570524    0.4488762   0.4652285
3-6 months     JiVitA-3         BANGLADESH                     <151 cm              NA                0.4359976    0.4322937   0.4397015
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.4435266    0.4381286   0.4489246
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                0.4455088    0.4348624   0.4561551
3-6 months     Keneba           GAMBIA                         <151 cm              NA                0.4149487    0.3720085   0.4578889
3-6 months     Keneba           GAMBIA                         [151-155) cm         NA                0.4487710    0.4210958   0.4764463
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                0.4508056    0.4049907   0.4966206
3-6 months     MAL-ED           BANGLADESH                     <151 cm              NA                0.4735899    0.4523861   0.4947936
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                0.4791367    0.4448707   0.5134028
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                0.5897037    0.5446990   0.6347083
3-6 months     MAL-ED           BRAZIL                         <151 cm              NA                0.5084342    0.4618740   0.5549944
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         NA                0.6158412    0.5301643   0.7015181
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                0.4499570    0.4183916   0.4815225
3-6 months     MAL-ED           INDIA                          <151 cm              NA                0.4459745    0.4178861   0.4740629
3-6 months     MAL-ED           INDIA                          [151-155) cm         NA                0.4388141    0.4083592   0.4692690
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                0.5646375    0.5174243   0.6118507
3-6 months     MAL-ED           NEPAL                          <151 cm              NA                0.4972896    0.4707992   0.5237800
3-6 months     MAL-ED           NEPAL                          [151-155) cm         NA                0.5433446    0.5027492   0.5839401
3-6 months     MAL-ED           PERU                           >=155 cm             NA                0.5184875    0.4678495   0.5691256
3-6 months     MAL-ED           PERU                           <151 cm              NA                0.4860573    0.4623341   0.5097805
3-6 months     MAL-ED           PERU                           [151-155) cm         NA                0.4965468    0.4577398   0.5353537
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.4551625    0.4252125   0.4851124
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.5145531    0.4390215   0.5900846
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.4554072    0.3766462   0.5341683
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4649050    0.4353556   0.4944545
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4381481    0.3773098   0.4989865
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4357186    0.3760076   0.4954295
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4334755    0.3871214   0.4798297
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              NA                0.4630341    0.4417191   0.4843490
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4698902    0.4324603   0.5073201
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.5165734    0.4867064   0.5464404
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                0.4902738    0.4763342   0.5042134
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.5081535    0.4844830   0.5318239
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                0.6664027    0.6586339   0.6741715
3-6 months     PROBIT           BELARUS                        <151 cm              NA                0.6590247    0.6465184   0.6715310
3-6 months     PROBIT           BELARUS                        [151-155) cm         NA                0.6499307    0.6204496   0.6794118
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                0.5043318    0.4802522   0.5284114
3-6 months     PROVIDE          BANGLADESH                     <151 cm              NA                0.4820727    0.4633800   0.5007653
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                0.4962163    0.4695962   0.5228364
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                0.4602426    0.4358450   0.4846403
3-6 months     SAS-CompFeed     INDIA                          <151 cm              NA                0.4477625    0.4225974   0.4729275
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                0.4513440    0.4320122   0.4706758
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4239172    0.4127083   0.4351262
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4268004    0.4044960   0.4491048
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4052549    0.3867415   0.4237683
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4823822    0.4770909   0.4876734
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4579153    0.4382028   0.4776278
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4731794    0.4610740   0.4852849
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                0.2469044    0.2178145   0.2759944
6-9 months     COHORTS          GUATEMALA                      <151 cm              NA                0.2065791    0.1944445   0.2187137
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         NA                0.2195836    0.2000792   0.2390880
6-9 months     COHORTS          INDIA                          >=155 cm             NA                0.2997032    0.2858952   0.3135111
6-9 months     COHORTS          INDIA                          <151 cm              NA                0.2768530    0.2657143   0.2879917
6-9 months     COHORTS          INDIA                          [151-155) cm         NA                0.2699228    0.2562185   0.2836270
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3105002    0.2679453   0.3530552
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              NA                0.2205800    0.1970235   0.2441364
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2654687    0.2209329   0.3100046
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                0.2035386    0.1889646   0.2181126
6-9 months     Keneba           GAMBIA                         <151 cm              NA                0.2232410    0.1844533   0.2620287
6-9 months     Keneba           GAMBIA                         [151-155) cm         NA                0.1853686    0.1503283   0.2204089
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                0.2949342    0.2787928   0.3110756
6-9 months     LCNI-5           MALAWI                         <151 cm              NA                0.2437297    0.2108944   0.2765650
6-9 months     LCNI-5           MALAWI                         [151-155) cm         NA                0.2849722    0.2593752   0.3105692
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                0.2250479    0.1817599   0.2683358
6-9 months     MAL-ED           BANGLADESH                     <151 cm              NA                0.2407582    0.2239535   0.2575629
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                0.2620253    0.2249430   0.2991077
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                0.3982513    0.3643554   0.4321473
6-9 months     MAL-ED           BRAZIL                         <151 cm              NA                0.3279233    0.2805591   0.3752874
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         NA                0.3823857    0.3088387   0.4559328
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                0.2298151    0.2034748   0.2561554
6-9 months     MAL-ED           INDIA                          <151 cm              NA                0.2261463    0.2039683   0.2483242
6-9 months     MAL-ED           INDIA                          [151-155) cm         NA                0.2408276    0.2094907   0.2721644
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                0.2552986    0.2183217   0.2922755
6-9 months     MAL-ED           NEPAL                          <151 cm              NA                0.2626781    0.2446703   0.2806859
6-9 months     MAL-ED           NEPAL                          [151-155) cm         NA                0.2765146    0.2451184   0.3079108
6-9 months     MAL-ED           PERU                           >=155 cm             NA                0.2598701    0.2341793   0.2855609
6-9 months     MAL-ED           PERU                           <151 cm              NA                0.2505623    0.2287022   0.2724224
6-9 months     MAL-ED           PERU                           [151-155) cm         NA                0.2707173    0.2351275   0.3063071
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.2551324    0.2302619   0.2800028
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.2573577    0.1937941   0.3209214
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.2987826    0.2438898   0.3536753
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2447100    0.2169108   0.2725092
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1946284    0.1494069   0.2398499
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2335887    0.1649430   0.3022343
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2740719    0.2364875   0.3116563
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              NA                0.2217277    0.2034410   0.2400144
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2441669    0.2198595   0.2684743
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2934976    0.2687634   0.3182319
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                0.2609513    0.2479910   0.2739117
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2583009    0.2335711   0.2830306
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                0.4739874    0.4650382   0.4829366
6-9 months     PROBIT           BELARUS                        <151 cm              NA                0.4396626    0.4215037   0.4578214
6-9 months     PROBIT           BELARUS                        [151-155) cm         NA                0.4696719    0.4447968   0.4945470
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                0.2633169    0.2408097   0.2858240
6-9 months     PROVIDE          BANGLADESH                     <151 cm              NA                0.2369066    0.2193500   0.2544631
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                0.2646955    0.2419112   0.2874798
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                0.2238785    0.2006972   0.2470597
6-9 months     SAS-CompFeed     INDIA                          <151 cm              NA                0.1816904    0.1632767   0.2001041
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2041297    0.1794988   0.2287606
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1876264    0.1537248   0.2215280
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              NA                0.2123563    0.1891723   0.2355404
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1806294    0.1492270   0.2120319
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2655621    0.2536942   0.2774299
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2297021    0.2087159   0.2506884
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2417598    0.2240484   0.2594713
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2602601    0.2548969   0.2656234
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2539249    0.2357125   0.2721373
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2509418    0.2384048   0.2634788
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.1592995    0.1351170   0.1834819
9-12 months    COHORTS          GUATEMALA                      <151 cm              NA                0.1513074    0.1407157   0.1618992
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.1590711    0.1403662   0.1777761
9-12 months    COHORTS          INDIA                          >=155 cm             NA                0.2343435    0.2200528   0.2486342
9-12 months    COHORTS          INDIA                          <151 cm              NA                0.2199393    0.2084512   0.2314274
9-12 months    COHORTS          INDIA                          [151-155) cm         NA                0.2102789    0.1944396   0.2261182
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2363652    0.1698245   0.3029059
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                0.1800332    0.1544808   0.2055857
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2370848    0.1816942   0.2924753
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2449255    0.2312995   0.2585515
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1997898    0.1163201   0.2832595
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2292460    0.1736525   0.2848395
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                0.1574137    0.1441504   0.1706770
9-12 months    Keneba           GAMBIA                         <151 cm              NA                0.2023970    0.1533710   0.2514231
9-12 months    Keneba           GAMBIA                         [151-155) cm         NA                0.1493622    0.1183097   0.1804148
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                0.2069172    0.1858334   0.2280010
9-12 months    LCNI-5           MALAWI                         <151 cm              NA                0.1849427    0.1450223   0.2248630
9-12 months    LCNI-5           MALAWI                         [151-155) cm         NA                0.1974579    0.1682977   0.2266181
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                0.1691041    0.1285045   0.2097038
9-12 months    MAL-ED           BANGLADESH                     <151 cm              NA                0.1726025    0.1563199   0.1888851
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                0.1674689    0.1372022   0.1977355
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                0.2950657    0.2478988   0.3422326
9-12 months    MAL-ED           BRAZIL                         <151 cm              NA                0.2601515    0.2099932   0.3103098
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         NA                0.2468617    0.1833367   0.3103866
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                0.1865298    0.1551421   0.2179175
9-12 months    MAL-ED           INDIA                          <151 cm              NA                0.1754750    0.1547239   0.1962261
9-12 months    MAL-ED           INDIA                          [151-155) cm         NA                0.1791754    0.1540523   0.2042984
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                0.1877287    0.1619562   0.2135011
9-12 months    MAL-ED           NEPAL                          <151 cm              NA                0.1643367    0.1427729   0.1859005
9-12 months    MAL-ED           NEPAL                          [151-155) cm         NA                0.2217655    0.1995668   0.2439642
9-12 months    MAL-ED           PERU                           >=155 cm             NA                0.1920320    0.1637124   0.2203515
9-12 months    MAL-ED           PERU                           <151 cm              NA                0.1862508    0.1657312   0.2067703
9-12 months    MAL-ED           PERU                           [151-155) cm         NA                0.1817648    0.1442084   0.2193212
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.2233437    0.1976194   0.2490680
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.1470818    0.0801371   0.2140264
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.2284070    0.1661287   0.2906853
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1717260    0.1462600   0.1971920
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1478586    0.0916915   0.2040257
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1509859    0.1086331   0.1933386
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1571807    0.1229382   0.1914233
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.1538110    0.1375528   0.1700693
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1740896    0.1457190   0.2024601
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.2188690    0.1936772   0.2440608
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1945316    0.1813169   0.2077463
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1905850    0.1690542   0.2121159
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                0.3655896    0.3511780   0.3800012
9-12 months    PROBIT           BELARUS                        <151 cm              NA                0.3637630    0.3478023   0.3797237
9-12 months    PROBIT           BELARUS                        [151-155) cm         NA                0.3531203    0.3206015   0.3856391
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.1811678    0.1582433   0.2040922
9-12 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.1765052    0.1646240   0.1883864
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1759967    0.1558953   0.1960982
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.2024608    0.1874760   0.2174456
9-12 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.1845648    0.1683924   0.2007372
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1966830    0.1771341   0.2162319
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1229367    0.0793859   0.1664874
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1485667    0.1210754   0.1760580
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1449432    0.1090243   0.1808621
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2111042    0.1986343   0.2235742
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2056488    0.1754422   0.2358554
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1866986    0.1643603   0.2090370
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1810605    0.1756694   0.1864516
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1642298    0.1468137   0.1816458
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1835943    0.1717266   0.1954620
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1650771    0.1442492   0.1859050
12-15 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1475259    0.1350319   0.1600200
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1469756    0.1273085   0.1666427
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1937952    0.0818677   0.3057226
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              NA                0.1911307    0.1462112   0.2360503
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2012388    0.1412883   0.2611894
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1931976    0.1813078   0.2050875
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1715503    0.1023278   0.2407728
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1663503    0.1261765   0.2065242
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                0.1841409    0.1731466   0.1951351
12-15 months   Keneba           GAMBIA                         <151 cm              NA                0.1599423    0.1100788   0.2098057
12-15 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1920533    0.1608278   0.2232789
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1772641    0.1288121   0.2257161
12-15 months   LCNI-5           MALAWI                         <151 cm              NA                0.1230942    0.0709235   0.1752649
12-15 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.1215366    0.0439316   0.1991417
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.2046196    0.1548738   0.2543654
12-15 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.1235731    0.1041066   0.1430395
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.1522850    0.1214870   0.1830830
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.2249797    0.1903493   0.2596101
12-15 months   MAL-ED           BRAZIL                         <151 cm              NA                0.2114101    0.1665115   0.2563088
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.1593774    0.1051374   0.2136175
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                0.1934307    0.1587731   0.2280883
12-15 months   MAL-ED           INDIA                          <151 cm              NA                0.1561805    0.1339103   0.1784507
12-15 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1896737    0.1583402   0.2210072
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                0.1392317    0.0987433   0.1797201
12-15 months   MAL-ED           NEPAL                          <151 cm              NA                0.1536078    0.1291469   0.1780687
12-15 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.1444083    0.1194770   0.1693396
12-15 months   MAL-ED           PERU                           >=155 cm             NA                0.1332140    0.0944092   0.1720189
12-15 months   MAL-ED           PERU                           <151 cm              NA                0.1469783    0.1245799   0.1693768
12-15 months   MAL-ED           PERU                           [151-155) cm         NA                0.1380666    0.1034416   0.1726916
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1932536    0.1628788   0.2236283
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.1912414    0.1097655   0.2727172
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.2021919    0.1481907   0.2561931
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1805569    0.1501201   0.2109937
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1801780    0.1166719   0.2436841
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1143523    0.0605127   0.1681918
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1275320    0.0955476   0.1595165
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1430322    0.1277470   0.1583175
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1089403    0.0859413   0.1319392
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1815353    0.1552021   0.2078686
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1548349    0.1410469   0.1686229
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1723883    0.1508236   0.1939529
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                0.2215873    0.1449777   0.2981970
12-15 months   PROBIT           BELARUS                        <151 cm              NA                0.2824384    0.1336005   0.4312764
12-15 months   PROBIT           BELARUS                        [151-155) cm         NA                0.2062442    0.0685915   0.3438970
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1896222    0.1624594   0.2167849
12-15 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1783680    0.1632106   0.1935254
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1726310    0.1469699   0.1982920
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1916017    0.1783586   0.2048448
12-15 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1907243    0.1705769   0.2108718
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1700083    0.1549046   0.1851121
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1899229    0.1518400   0.2280059
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1759733    0.1546944   0.1972522
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1706845    0.1361283   0.2052408
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1822643    0.1681435   0.1963852
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1688241    0.1365698   0.2010784
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1494448    0.1250407   0.1738489
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1502602    0.1407680   0.1597523
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1412303    0.0988696   0.1835911
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1580263    0.1389274   0.1771251
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1234323    0.0918727   0.1549919
15-18 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1412878    0.1274038   0.1551717
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1336453    0.1063127   0.1609778
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1772246    0.1654976   0.1889516
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.1445897    0.0455461   0.2436334
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1498173    0.0920574   0.2075771
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                0.1593068    0.1481017   0.1705119
15-18 months   Keneba           GAMBIA                         <151 cm              NA                0.1584622    0.1136044   0.2033200
15-18 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1633539    0.1346132   0.1920946
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1602620    0.1175550   0.2029690
15-18 months   LCNI-5           MALAWI                         <151 cm              NA                0.2077416    0.1491112   0.2663719
15-18 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.1904139    0.1198041   0.2610237
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.1739429    0.1222665   0.2256194
15-18 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.1322318    0.1130134   0.1514501
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.1571058    0.1247877   0.1894239
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.2137191    0.1722388   0.2551994
15-18 months   MAL-ED           BRAZIL                         <151 cm              NA                0.1833788    0.1429106   0.2238469
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.1987720    0.1571651   0.2403789
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                0.1841155    0.1468893   0.2213417
15-18 months   MAL-ED           INDIA                          <151 cm              NA                0.1512908    0.1317564   0.1708251
15-18 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1707549    0.1438252   0.1976847
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                0.2195216    0.1716992   0.2673440
15-18 months   MAL-ED           NEPAL                          <151 cm              NA                0.1668861    0.1475257   0.1862465
15-18 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.1543041    0.1246656   0.1839426
15-18 months   MAL-ED           PERU                           >=155 cm             NA                0.1388334    0.0974604   0.1802063
15-18 months   MAL-ED           PERU                           <151 cm              NA                0.1466273    0.1218971   0.1713575
15-18 months   MAL-ED           PERU                           [151-155) cm         NA                0.1700346    0.1286534   0.2114158
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.2243198    0.1912180   0.2574215
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.2662504    0.1827498   0.3497510
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.1694831    0.1052903   0.2336758
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1304865    0.0999576   0.1610154
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1445011    0.0930432   0.1959591
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1568437    0.1084249   0.2052625
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1635107    0.1229094   0.2041120
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1469862    0.1292198   0.1647525
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1595987    0.1276891   0.1915083
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1601602    0.1376443   0.1826761
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1632643    0.1497232   0.1768054
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1600429    0.1358101   0.1842757
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1694905    0.1450058   0.1939752
15-18 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1524372    0.1361318   0.1687426
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1549087    0.1293309   0.1804866
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.1885361    0.1605124   0.2165598
15-18 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.1736053    0.1529070   0.1943036
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.1857660    0.1616474   0.2098847
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1714416    0.1321756   0.2107075
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.1569931    0.1350148   0.1789715
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.1893094    0.1609476   0.2176712
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1754330    0.1566987   0.1941673
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1652810    0.1325527   0.1980094
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1688983    0.1371433   0.2006533
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1320928    0.1192148   0.1449709
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1180455    0.0737023   0.1623887
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1307168    0.1040311   0.1574024
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1817306    0.1509687   0.2124926
18-21 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1629249    0.1499426   0.1759071
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1558926    0.1286892   0.1830959
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                0.1562252    0.1442141   0.1682362
18-21 months   Keneba           GAMBIA                         <151 cm              NA                0.1384029    0.0849469   0.1918590
18-21 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1508011    0.1214164   0.1801858
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1774312    0.1516885   0.2031738
18-21 months   LCNI-5           MALAWI                         <151 cm              NA                0.1895585    0.1398567   0.2392603
18-21 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.1919154    0.1461484   0.2376823
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.1398908    0.0865806   0.1932011
18-21 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.1431476    0.1246634   0.1616319
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.1411934    0.0974210   0.1849658
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.1501815    0.1216066   0.1787565
18-21 months   MAL-ED           BRAZIL                         <151 cm              NA                0.1989602    0.1331237   0.2647968
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.1279022    0.0882101   0.1675943
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                0.1788588    0.1426336   0.2150841
18-21 months   MAL-ED           INDIA                          <151 cm              NA                0.1811444    0.1589678   0.2033210
18-21 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1529792    0.1286899   0.1772685
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                0.1337902    0.0716350   0.1959455
18-21 months   MAL-ED           NEPAL                          <151 cm              NA                0.1433611    0.1215067   0.1652155
18-21 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.1668092    0.1348294   0.1987891
18-21 months   MAL-ED           PERU                           >=155 cm             NA                0.1978777    0.1632802   0.2324753
18-21 months   MAL-ED           PERU                           <151 cm              NA                0.1549612    0.1291379   0.1807844
18-21 months   MAL-ED           PERU                           [151-155) cm         NA                0.1605585    0.1182941   0.2028228
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1811248    0.1493893   0.2128604
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.1774323    0.1082989   0.2465657
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.1730188    0.1182792   0.2277584
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1470565    0.1145591   0.1795540
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0934327    0.0343534   0.1525120
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1575859    0.1067955   0.2083763
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1498784    0.1098128   0.1899439
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1726847    0.1537991   0.1915704
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1871429    0.1463328   0.2279530
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1601714    0.1375904   0.1827524
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1327977    0.1184109   0.1471846
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1495414    0.1276226   0.1714602
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1200090    0.0954692   0.1445489
18-21 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1329884    0.1178505   0.1481264
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1421285    0.1175900   0.1666669
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1213343    0.1004989   0.1421697
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1496799    0.0989817   0.2003782
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1205750    0.0707692   0.1703808
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1944400    0.1644237   0.2244562
21-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.1822783    0.1708798   0.1936769
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.1903999    0.1647883   0.2160114
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1645060    0.1525047   0.1765073
21-24 months   Keneba           GAMBIA                         <151 cm              NA                0.1667955    0.1132922   0.2202988
21-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1782754    0.1500566   0.2064942
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1818840    0.1438062   0.2199618
21-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.1691686    0.1203430   0.2179943
21-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.1872708    0.1327544   0.2417871
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.1688923    0.1117142   0.2260705
21-24 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.1579930    0.1391218   0.1768642
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.1353133    0.1058845   0.1647422
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.1310829    0.0982159   0.1639499
21-24 months   MAL-ED           BRAZIL                         <151 cm              NA                0.1377278    0.0905776   0.1848780
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.1608031    0.1133412   0.2082649
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1807276    0.1515067   0.2099486
21-24 months   MAL-ED           INDIA                          <151 cm              NA                0.1421353    0.1241088   0.1601617
21-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.1618617    0.1347765   0.1889469
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                0.1574075    0.1001607   0.2146543
21-24 months   MAL-ED           NEPAL                          <151 cm              NA                0.1679524    0.1460618   0.1898430
21-24 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.1870300    0.1388814   0.2351786
21-24 months   MAL-ED           PERU                           >=155 cm             NA                0.1562694    0.1235829   0.1889558
21-24 months   MAL-ED           PERU                           <151 cm              NA                0.1920567    0.1637792   0.2203343
21-24 months   MAL-ED           PERU                           [151-155) cm         NA                0.1713412    0.1280815   0.2146010
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1944270    0.1657761   0.2230779
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.1368878    0.0753823   0.1983933
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.1591074    0.0962737   0.2219412
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1599978    0.1222942   0.1977014
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0849985    0.0117546   0.1582425
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1223396    0.0710198   0.1736594
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1575563    0.1209161   0.1941965
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.1423361    0.1237311   0.1609411
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1324668    0.0959516   0.1689819
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1964813    0.1669422   0.2260203
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1650603    0.1497659   0.1803546
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1791239    0.1502782   0.2079697
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1460805    0.1183866   0.1737743
21-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.1401980    0.1254638   0.1549321
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1425351    0.1179989   0.1670713
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0968824    0.0614613   0.1323035
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0948039   -0.0035782   0.1931860
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1423031    0.0719836   0.2126226


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7979318   0.7810686   0.8147950
0-3 months     COHORTS          INDIA                          NA                   NA                0.8087705   0.7998524   0.8176886
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710156   0.8679528   0.8740784
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9237858   0.9123458   0.9352259
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0654150   1.0310488   1.0997812
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7611021   0.7390455   0.7831587
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     MAL-ED           PERU                           NA                   NA                0.9706290   0.9455271   0.9957310
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9399583   0.9128554   0.9670613
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8369329   0.8263819   0.8474840
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9018330   0.8870586   0.9166074
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7939916   0.7752982   0.8126850
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9225695   0.9123674   0.9327716
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9439252   0.9385241   0.9493263
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4614037   0.4504936   0.4723138
3-6 months     COHORTS          INDIA                          NA                   NA                0.4843064   0.4767948   0.4918179
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4414185   0.4384501   0.4443868
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4449828   0.4352937   0.4546718
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4444966   0.4269381   0.4620550
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED           PERU                           NA                   NA                0.4984134   0.4793907   0.5174361
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4617801   0.4360641   0.4874961
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6658744   0.6579602   0.6737886
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4894576   0.4764038   0.5025113
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4532568   0.4405110   0.4660027
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196681   0.4109298   0.4284065
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4795969   0.4748910   0.4843028
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2136854   0.2039876   0.2233833
6-9 months     COHORTS          INDIA                          NA                   NA                0.2819658   0.2745981   0.2893334
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                0.2461017   0.2267560   0.2654474
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2021918   0.1891288   0.2152548
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2839155   0.2713587   0.2964722
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2306925   0.2158356   0.2455494
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED           PERU                           NA                   NA                0.2612740   0.2457204   0.2768277
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2586445   0.2373164   0.2799725
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4735965   0.4648317   0.4823613
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2041466   0.1900518   0.2182414
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2549836   0.2460532   0.2639139
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2585071   0.2537594   0.2632548
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1540702   0.1454838   0.1626566
9-12 months    COHORTS          INDIA                          NA                   NA                0.2217834   0.2139450   0.2296219
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.2014702   0.1792367   0.2237036
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2423264   0.2292546   0.2553982
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1566911   0.1447215   0.1686608
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2018320   0.1859333   0.2177307
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1783231   0.1642419   0.1924043
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED           PERU                           NA                   NA                0.1866354   0.1713488   0.2019219
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2149952   0.1925566   0.2374338
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3651439   0.3506175   0.3796704
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1958979   0.1895734   0.2022224
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052776   0.1951180   0.2154371
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1802018   0.1754568   0.1849468
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1505920   0.1411987   0.1599853
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1937372   0.1638096   0.2236648
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1924285   0.1815262   0.2033308
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1844674   0.1743510   0.1945839
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1744574   0.1585285   0.1903862
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED           PERU                           NA                   NA                0.1414020   0.1246466   0.1581574
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1922381   0.1667974   0.2176788
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2216146   0.1471598   0.2960693
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1864503   0.1781112   0.1947894
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1732366   0.1618629   0.1846102
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1513473   0.1429271   0.1597675
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1392609   0.1279901   0.1505317
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1746700   0.1640854   0.1852545
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1597553   0.1496149   0.1698958
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1628133   0.1478080   0.1778186
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2190068   0.1913206   0.2466931
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1565394   0.1447539   0.1683249
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1818676   0.1677889   0.1959462
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1709581   0.1566361   0.1852802
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1314637   0.1202509   0.1426764
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1642719   0.1534657   0.1750782
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1557380   0.1448618   0.1666141
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1806494   0.1604901   0.2008088
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1719622   0.1570466   0.1868778
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1806346   0.1548130   0.2064562
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1325181   0.1210527   0.1439835
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1223425   0.1044399   0.1402452
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1850174   0.1751451   0.1948898
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1655857   0.1548036   0.1763679
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1791857   0.1524049   0.2059664
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1564363   0.1432171   0.1696555
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1870402   0.1629923   0.2110880
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1421605   0.1307059   0.1536151
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1029472   0.0733006   0.1325937


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0665814   -0.1181752   -0.0149876
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0412361   -0.1005232    0.0180511
0-3 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0558150   -0.0768557   -0.0347744
0-3 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0430656   -0.0674071   -0.0187241
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0497247   -0.0581790   -0.0412705
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0277743   -0.0372973   -0.0182512
0-3 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0955807   -0.1578560   -0.0333053
0-3 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0326424   -0.0668576    0.0015728
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0243779   -0.1279796    0.0792238
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0286279   -0.0788140    0.1360697
0-3 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0624657   -0.1416334    0.0167020
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0136607   -0.1071893    0.0798678
0-3 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0658347   -0.1238544   -0.0078149
0-3 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0460891   -0.1085183    0.0163401
0-3 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0982220   -0.1709457   -0.0254983
0-3 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0601862   -0.1386224    0.0182500
0-3 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0104106   -0.0767387    0.0559175
0-3 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0020299   -0.0745313    0.0785912
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0560612   -0.1445670    0.0324445
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0045381   -0.0714552    0.0623789
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0433338   -0.1099726    0.0233050
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0116910   -0.0765511    0.0999331
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0795875   -0.1326808   -0.0264942
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0155312   -0.0776461    0.0465837
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0491422   -0.0879721   -0.0103124
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0249454   -0.0703068    0.0204160
0-3 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0396072   -0.0522478   -0.0269666
0-3 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0119626   -0.0316213    0.0076962
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0848740   -0.1248672   -0.0448808
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0482215   -0.0934899   -0.0029532
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0566713   -0.0884081   -0.0249344
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0264554   -0.0490969   -0.0038138
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0161310   -0.0442747    0.0120126
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0326456   -0.0584878   -0.0068034
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0400719   -0.0629908   -0.0171531
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0256964   -0.0411427   -0.0102500
3-6 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0433412   -0.0781728   -0.0085095
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0361621   -0.0747280    0.0024038
3-6 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0462242   -0.0644944   -0.0279540
3-6 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0193974   -0.0394073    0.0006126
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0210547   -0.0298448   -0.0122646
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0135257   -0.0231967   -0.0038548
3-6 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0305601   -0.0747975    0.0136773
3-6 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0032623   -0.0264068    0.0329313
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0227842   -0.0278208    0.0733892
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0283311   -0.0288197    0.0854819
3-6 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0812695   -0.1459397   -0.0165993
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0261375   -0.0713184    0.1235934
3-6 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0039825   -0.0462621    0.0382972
3-6 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0111429   -0.0550453    0.0327595
3-6 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0673479   -0.1214915   -0.0132043
3-6 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0212928   -0.0836099    0.0410242
3-6 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0324302   -0.0880146    0.0231542
3-6 months     MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0219408   -0.0856961    0.0418146
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0593906   -0.0222234    0.1410046
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0002448   -0.0847046    0.0851942
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0267569   -0.0944342    0.0409203
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0291865   -0.0961543    0.0377814
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0295585   -0.0214740    0.0805911
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0364147   -0.0235227    0.0963520
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0262996   -0.0594416    0.0068425
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0084199   -0.0465992    0.0297594
3-6 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0073780   -0.0205336    0.0057775
3-6 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0164720   -0.0437884    0.0108444
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0222591   -0.0527286    0.0082103
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0081155   -0.0439735    0.0277424
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0124801   -0.0553779    0.0304176
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0088986   -0.0265710    0.0087738
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0028832   -0.0221172    0.0278836
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0186623   -0.0403372    0.0030127
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0244668   -0.0448841   -0.0040496
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0092028   -0.0224138    0.0040083
6-9 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0403253   -0.0718923   -0.0087582
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0273208   -0.0623444    0.0077028
6-9 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0228502   -0.0405195   -0.0051809
6-9 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0297804   -0.0491483   -0.0104126
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0899202   -0.1386282   -0.0412123
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0450315   -0.1067632    0.0167003
6-9 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <151 cm              >=155 cm           0.0197024   -0.0217403    0.0611452
6-9 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0181700   -0.0562148    0.0198749
6-9 months     LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0512045   -0.0879048   -0.0145041
6-9 months     LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0099620   -0.0403328    0.0204088
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0157103   -0.0308621    0.0622827
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0369775   -0.0199492    0.0939042
6-9 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0703281   -0.1288426   -0.0118136
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0158656   -0.0972027    0.0654715
6-9 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0036688   -0.0381921    0.0308544
6-9 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0110125   -0.0301017    0.0521267
6-9 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0073795   -0.0338449    0.0486039
6-9 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0212160   -0.0274373    0.0698693
6-9 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0093078   -0.0430428    0.0244273
6-9 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0108472   -0.0331528    0.0548472
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0022254   -0.0659600    0.0704108
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0436502   -0.0165723    0.1038727
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0500816   -0.1035479    0.0033847
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0111214   -0.0853366    0.0630939
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0523442   -0.0941018   -0.0105866
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0299050   -0.0748495    0.0150395
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0325463   -0.0604873   -0.0046054
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0351968   -0.0701593   -0.0002343
6-9 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0343248   -0.0529076   -0.0157420
6-9 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0043154   -0.0304812    0.0218504
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0264103   -0.0547899    0.0019693
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0013786   -0.0305635    0.0333207
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0421880   -0.0749773   -0.0093987
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0197488   -0.0500240    0.0105265
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0247299   -0.0164975    0.0659574
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0069969   -0.0533230    0.0393291
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0358599   -0.0600032   -0.0117167
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0238022   -0.0450821   -0.0025224
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0063352   -0.0253296    0.0126592
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0093183   -0.0229513    0.0043146
9-12 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0079921   -0.0343575    0.0183734
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0002284   -0.0307839    0.0303272
9-12 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.0144042   -0.0326899    0.0038815
9-12 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0240646   -0.0453723   -0.0027570
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0563320   -0.1278363    0.0151724
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm           0.0007196   -0.0860964    0.0875356
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0451357   -0.1311813    0.0409099
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0156795   -0.0718737    0.0405147
9-12 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <151 cm              >=155 cm           0.0449833   -0.0058111    0.0957777
9-12 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0080515   -0.0418453    0.0257424
9-12 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0219745   -0.0671861    0.0232371
9-12 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0094593   -0.0454640    0.0265454
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0034984   -0.0404333    0.0474300
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0016353   -0.0517243    0.0484538
9-12 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0349142   -0.1042563    0.0344280
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0482040   -0.1276298    0.0312217
9-12 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0110548   -0.0488426    0.0267330
9-12 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0073544   -0.0477213    0.0330124
9-12 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0233920   -0.0568939    0.0101099
9-12 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0340368    0.0000587    0.0680149
9-12 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.0057812   -0.0407289    0.0291664
9-12 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0102672   -0.0573950    0.0368606
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0762619   -0.1480908   -0.0044331
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0050633   -0.0623445    0.0724711
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0238674   -0.0855601    0.0378253
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0207401   -0.0700480    0.0285677
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0033697   -0.0412374    0.0344980
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0169088   -0.0279366    0.0617543
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0243373   -0.0526238    0.0039491
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0282840   -0.0612299    0.0046620
9-12 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0018266   -0.0186374    0.0149843
9-12 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0124693   -0.0403487    0.0154100
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0046626   -0.0304186    0.0210934
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0051710   -0.0356263    0.0252843
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0178960   -0.0438712    0.0080791
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0057778   -0.0354067    0.0238512
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0256300   -0.0260765    0.0773366
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0220065   -0.0345094    0.0785224
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0054554   -0.0381269    0.0272160
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0244056   -0.0500668    0.0012556
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0168307   -0.0350688    0.0014075
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0025338   -0.0104956    0.0155632
12-15 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0175512   -0.0418775    0.0067751
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0181015   -0.0467314    0.0105284
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0026644   -0.1251490    0.1198202
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm           0.0074437   -0.1226955    0.1375829
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0216473   -0.0952895    0.0519948
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0268473   -0.0681566    0.0144619
12-15 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0241986   -0.0752651    0.0268679
12-15 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0079125   -0.0251823    0.0410072
12-15 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0541699   -0.1254393    0.0170995
12-15 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0557274   -0.1474268    0.0359720
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0810465   -0.1345329   -0.0275601
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0523346   -0.1110371    0.0063679
12-15 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0135696   -0.0699088    0.0427697
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0656022   -0.1298700   -0.0013345
12-15 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0372501   -0.0784847    0.0039845
12-15 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0037569   -0.0505986    0.0430847
12-15 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0143761   -0.0329238    0.0616760
12-15 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0051766   -0.0426991    0.0530524
12-15 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <151 cm              >=155 cm           0.0137643   -0.0311274    0.0586560
12-15 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0048526   -0.0472027    0.0569079
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0020122   -0.0892029    0.0851785
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0089383   -0.0530988    0.0709754
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0003789   -0.0710400    0.0702823
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0662046   -0.1281225   -0.0042868
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0155002   -0.0197934    0.0507938
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0185918   -0.0578517    0.0206681
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0267004   -0.0564501    0.0030493
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0091471   -0.0432302    0.0249360
12-15 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <151 cm              >=155 cm           0.0608511   -0.1057125    0.2274147
12-15 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0153431   -0.1703345    0.1396483
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0112542   -0.0423792    0.0198709
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0169912   -0.0543617    0.0203794
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0008774   -0.0289838    0.0272290
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0215934   -0.0417187   -0.0014681
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.0139496   -0.0577979    0.0298986
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0192384   -0.0709126    0.0324358
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0134402   -0.0486610    0.0217805
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0328196   -0.0611188   -0.0045204
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0090298   -0.0524402    0.0343805
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0077661   -0.0135780    0.0291102
15-18 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0178555   -0.0166146    0.0523256
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0102130   -0.0312878    0.0517138
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0326349   -0.1353466    0.0700769
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0274073   -0.0872291    0.0324145
15-18 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0008446   -0.0470770    0.0453878
15-18 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0040471   -0.0267462    0.0348405
15-18 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0474796   -0.0252463    0.1202054
15-18 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0301519   -0.0524535    0.1127572
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0417112   -0.0966924    0.0132701
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0168371   -0.0776594    0.0439852
15-18 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0303403   -0.0883085    0.0276280
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0149471   -0.0733584    0.0434642
15-18 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0328247   -0.0749251    0.0092756
15-18 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0133606   -0.0593620    0.0326409
15-18 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0526355   -0.1043724   -0.0008986
15-18 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0652175   -0.1214968   -0.0089382
15-18 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <151 cm              >=155 cm           0.0077939   -0.0404066    0.0559945
15-18 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0312012   -0.0275630    0.0899655
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0419306   -0.0476678    0.1315290
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0548367   -0.1271120    0.0174385
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0140146   -0.0458124    0.0738416
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0263571   -0.0315379    0.0842521
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0165245   -0.0609387    0.0278898
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0039119   -0.0554590    0.0476351
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0031041   -0.0230926    0.0293008
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0001173   -0.0331215    0.0328869
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0170533   -0.0464093    0.0123027
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0145818   -0.0501209    0.0209574
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0149308   -0.0498041    0.0199425
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0027701   -0.0330167    0.0274765
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.0144484   -0.0595166    0.0306198
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0178678   -0.0307466    0.0664822
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0101520   -0.0478127    0.0275088
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0065347   -0.0437238    0.0306544
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0140473   -0.0602739    0.0321793
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0013761   -0.0310196    0.0282675
18-21 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0188058   -0.0521610    0.0145495
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0258381   -0.0669152    0.0152390
18-21 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0178222   -0.0725989    0.0369544
18-21 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0054241   -0.0371228    0.0262746
18-21 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0121274   -0.0441943    0.0684490
18-21 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0144842   -0.0385022    0.0674706
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0032568   -0.0531343    0.0596479
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0013025   -0.0675014    0.0701064
18-21 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0487787   -0.0238541    0.1214115
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0222793   -0.0712084    0.0266498
18-21 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <151 cm              >=155 cm           0.0022856   -0.0396449    0.0442160
18-21 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0258796   -0.0692099    0.0174507
18-21 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0095708   -0.0567718    0.0759135
18-21 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0330190   -0.0371094    0.1031474
18-21 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0429166   -0.0862129    0.0003797
18-21 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0373193   -0.0922233    0.0175847
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0036925   -0.0799583    0.0725732
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0081060   -0.0718240    0.0556120
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0536239   -0.1210707    0.0138230
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0105294   -0.0495579    0.0706166
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0228064   -0.0217508    0.0673635
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0372646   -0.0200408    0.0945699
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0273737   -0.0541247   -0.0006227
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0106300   -0.0423745    0.0211144
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0129794   -0.0158866    0.0418454
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0221194   -0.0126542    0.0568931
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0283456   -0.0265650    0.0832563
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0007593   -0.0552537    0.0537351
21-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0121617   -0.0441631    0.0198398
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0040401   -0.0434842    0.0354040
21-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm           0.0022895   -0.0525611    0.0571401
21-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0137694   -0.0168706    0.0444094
21-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0127154   -0.0747929    0.0493621
21-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0053868   -0.0612226    0.0719961
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0108993   -0.0711464    0.0493477
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0335790   -0.0980248    0.0308668
21-24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0066449   -0.0513546    0.0646444
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0297202   -0.0279950    0.0874353
21-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0385924   -0.0730771   -0.0041077
21-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0188660   -0.0588528    0.0211209
21-24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0105449   -0.0508166    0.0719064
21-24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0296225   -0.0452316    0.1044765
21-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <151 cm              >=155 cm           0.0357874   -0.0076647    0.0792394
21-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0150719   -0.0390877    0.0692314
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0575392   -0.1252623    0.0101840
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0353196   -0.1045464    0.0339073
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0749993   -0.1573900    0.0073914
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0376582   -0.1014603    0.0261439
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0152202   -0.0563942    0.0259538
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0250895   -0.0769428    0.0267638
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0314210   -0.0646618    0.0018198
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0173573   -0.0586399    0.0239252
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0058825   -0.0372721    0.0255072
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0035453   -0.0404914    0.0334007
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0020785   -0.1067541    0.1025972
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0454207   -0.0335596    0.1244010


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0532845   -0.0971924   -0.0093767
0-3 months     COHORTS          INDIA                          >=155 cm             NA                -0.0355315   -0.0494552   -0.0216078
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0367892   -0.0438480   -0.0297305
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0075756   -0.0127076   -0.0024436
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0083598   -0.1023345    0.0856149
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                -0.0218971   -0.0509619    0.0071677
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0520477   -0.0942874   -0.0098079
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0740899   -0.1316300   -0.0165498
0-3 months     MAL-ED           PERU                           >=155 cm             NA                -0.0061486   -0.0569923    0.0446951
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0090126   -0.0234051    0.0053799
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0066449   -0.0305792    0.0172895
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0469730   -0.0902360   -0.0037100
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0366486   -0.0672234   -0.0060737
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0007074   -0.0013709   -0.0000438
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0578598   -0.0881600   -0.0275596
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0265823   -0.0407773   -0.0123873
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0099225   -0.0177594   -0.0020857
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0058154   -0.0085918   -0.0030391
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0366666   -0.0664756   -0.0068575
3-6 months     COHORTS          INDIA                          >=155 cm             NA                -0.0251269   -0.0371125   -0.0131413
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0156339   -0.0228253   -0.0084425
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0005260   -0.0045253    0.0034733
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0238444   -0.0210387    0.0687276
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                -0.0115061   -0.0382393    0.0152271
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0054604   -0.0344553    0.0235344
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0429212   -0.0862270    0.0003845
3-6 months     MAL-ED           PERU                           >=155 cm             NA                -0.0200741   -0.0630729    0.0229247
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0066176   -0.0084696    0.0217049
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0077753   -0.0284952    0.0129445
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0259219   -0.0152049    0.0670488
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0185190   -0.0449671    0.0079292
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0005283   -0.0013360    0.0002794
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0148742   -0.0373540    0.0076056
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0069858   -0.0251938    0.0112222
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0042491   -0.0110187    0.0025206
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0027853   -0.0051915   -0.0003790
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0332190   -0.0602093   -0.0062287
6-9 months     COHORTS          INDIA                          >=155 cm             NA                -0.0177374   -0.0291855   -0.0062893
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0643985   -0.1044463   -0.0243508
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0013468   -0.0065391    0.0038456
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                -0.0110187   -0.0208787   -0.0011587
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0178073   -0.0238631    0.0594777
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                -0.0151015   -0.0387647    0.0085617
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                 0.0008774   -0.0235952    0.0253499
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                 0.0142747   -0.0194333    0.0479827
6-9 months     MAL-ED           PERU                           >=155 cm             NA                 0.0014039   -0.0240067    0.0268146
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0035121   -0.0084355    0.0154598
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0063496   -0.0280001    0.0153008
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0378123   -0.0710905   -0.0045341
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0259880   -0.0482033   -0.0037726
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0003909   -0.0013660    0.0005842
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0141516   -0.0351358    0.0068327
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0197318   -0.0345796   -0.0048841
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0105922   -0.0204964    0.0416808
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0105785   -0.0173476   -0.0038093
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0017530   -0.0041553    0.0006493
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.0052293   -0.0276720    0.0172135
9-12 months    COHORTS          INDIA                          >=155 cm             NA                -0.0125601   -0.0245860   -0.0005341
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0348950   -0.0946412    0.0248511
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0025991   -0.0068222    0.0016240
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0007226   -0.0057463    0.0043011
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.0050852   -0.0169035    0.0067331
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0039305   -0.0345643    0.0424252
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0104734   -0.0380542    0.0171074
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0082067   -0.0353320    0.0189186
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0017367   -0.0271092    0.0236359
9-12 months    MAL-ED           PERU                           >=155 cm             NA                -0.0053966   -0.0318725    0.0210793
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0083485   -0.0215718    0.0048748
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0048372   -0.0221729    0.0124985
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0064406   -0.0237259    0.0366071
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0210241   -0.0432183    0.0011701
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0004456   -0.0013819    0.0004906
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0036362   -0.0235482    0.0162758
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0065629   -0.0214849    0.0083591
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0181105   -0.0213690    0.0575901
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0058266   -0.0138329    0.0021796
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0008587   -0.0032924    0.0015750
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0144851   -0.0346368    0.0056666
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0000580   -0.1094271    0.1093111
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0007692   -0.0039338    0.0023955
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0003265   -0.0043231    0.0049762
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0254809   -0.0547550    0.0037932
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0692610   -0.1170818   -0.0214402
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0147851   -0.0360920    0.0065217
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0189733   -0.0493299    0.0113834
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0134622   -0.0235632    0.0504876
12-15 months   MAL-ED           PERU                           >=155 cm             NA                 0.0081880   -0.0254884    0.0418643
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0010154   -0.0154829    0.0134520
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0211129   -0.0426925    0.0004667
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0029742   -0.0251689    0.0311173
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0174751   -0.0408946    0.0059444
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0000272   -0.0058867    0.0059412
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0095898   -0.0335665    0.0143869
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0051514   -0.0174842    0.0071813
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0147139   -0.0495084    0.0200805
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0090278   -0.0182294    0.0001739
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0010871   -0.0032345    0.0054087
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0158286   -0.0134942    0.0451514
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0025546   -0.0061369    0.0010276
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0004486   -0.0038236    0.0047207
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0163489   -0.0117479    0.0444458
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0311547   -0.0805329    0.0182234
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0102996   -0.0321943    0.0115951
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0213022   -0.0523956    0.0097912
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0460306   -0.0887521   -0.0033090
15-18 months   MAL-ED           PERU                           >=155 cm             NA                 0.0073555   -0.0288968    0.0436078
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0053130   -0.0202413    0.0096153
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0123157   -0.0072647    0.0318962
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0105264   -0.0465619    0.0255091
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0010371   -0.0192482    0.0213223
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0129511   -0.0352659    0.0093637
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0066685   -0.0220494    0.0087123
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0065570   -0.0415426    0.0284285
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0044749   -0.0162489    0.0072992
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0006292   -0.0063628    0.0051045
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0174587   -0.0463852    0.0114679
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0004872   -0.0050790    0.0041046
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0032183   -0.0135801    0.0200166
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0028238   -0.0478949    0.0535425
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0104676   -0.0123281    0.0332633
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0068966   -0.0372877    0.0234945
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0137095   -0.0410095    0.0684285
18-21 months   MAL-ED           PERU                           >=155 cm             NA                -0.0363125   -0.0687798   -0.0038452
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0004902   -0.0131115    0.0121311
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0007027   -0.0219891    0.0205837
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0225608   -0.0139882    0.0591099
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0175105   -0.0383835    0.0033625
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0125090   -0.0093226    0.0343406
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0010083   -0.0089792    0.0109957
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0094225   -0.0372635    0.0184184
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0010797   -0.0031929    0.0053523
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0026983   -0.0240621    0.0186655
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0167768   -0.0706309    0.0370773
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0124071   -0.0093182    0.0341325
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0242914   -0.0496670    0.0010842
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0116337   -0.0396023    0.0628697
21-24 months   MAL-ED           PERU                           >=155 cm             NA                 0.0251977   -0.0062576    0.0566531
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0073868   -0.0194969    0.0047232
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0186791   -0.0422018    0.0048436
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0155833   -0.0487423    0.0175757
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0214312   -0.0476632    0.0048007
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0039200   -0.0282591    0.0204191
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0060648   -0.0136233    0.0257528

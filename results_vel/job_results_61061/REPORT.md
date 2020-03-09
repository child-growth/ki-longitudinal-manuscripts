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
0-3 months     COHORTS          GUATEMALA                      >=155 cm            99     724
0-3 months     COHORTS          GUATEMALA                      <151 cm            469     724
0-3 months     COHORTS          GUATEMALA                      [151-155) cm       156     724
0-3 months     COHORTS          INDIA                          >=155 cm           514    1721
0-3 months     COHORTS          INDIA                          <151 cm            747    1721
0-3 months     COHORTS          INDIA                          [151-155) cm       460    1721
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm          2963   19797
0-3 months     JiVitA-3         BANGLADESH                     <151 cm          11841   19797
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm      4993   19797
0-3 months     Keneba           GAMBIA                         >=155 cm           984    1184
0-3 months     Keneba           GAMBIA                         <151 cm             44    1184
0-3 months     Keneba           GAMBIA                         [151-155) cm       156    1184
0-3 months     MAL-ED           BANGLADESH                     >=155 cm            23     243
0-3 months     MAL-ED           BANGLADESH                     <151 cm            157     243
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm        63     243
0-3 months     MAL-ED           BRAZIL                         >=155 cm            94     168
0-3 months     MAL-ED           BRAZIL                         <151 cm             48     168
0-3 months     MAL-ED           BRAZIL                         [151-155) cm        26     168
0-3 months     MAL-ED           INDIA                          >=155 cm            44     183
0-3 months     MAL-ED           INDIA                          <151 cm             87     183
0-3 months     MAL-ED           INDIA                          [151-155) cm        52     183
0-3 months     MAL-ED           NEPAL                          >=155 cm            27     156
0-3 months     MAL-ED           NEPAL                          <151 cm             87     156
0-3 months     MAL-ED           NEPAL                          [151-155) cm        42     156
0-3 months     MAL-ED           PERU                           >=155 cm            55     264
0-3 months     MAL-ED           PERU                           <151 cm            154     264
0-3 months     MAL-ED           PERU                           [151-155) cm        55     264
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm           156     205
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm             25     205
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm        24     205
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           138     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             43     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     228
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm           103     566
0-3 months     NIH-Birth        BANGLADESH                     <151 cm            327     566
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm       136     566
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm           134     721
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm            421     721
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm       166     721
0-3 months     PROBIT           BELARUS                        >=155 cm         12119   12602
0-3 months     PROBIT           BELARUS                        <151 cm            115   12602
0-3 months     PROBIT           BELARUS                        [151-155) cm       368   12602
0-3 months     PROVIDE          BANGLADESH                     >=155 cm           138     639
0-3 months     PROVIDE          BANGLADESH                     <151 cm            348     639
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm       153     639
0-3 months     SAS-CompFeed     INDIA                          >=155 cm           470    1164
0-3 months     SAS-CompFeed     INDIA                          <151 cm            413    1164
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm       281    1164
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm          5568    7020
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm            406    7020
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm      1046    7020
3-6 months     COHORTS          GUATEMALA                      >=155 cm           100     796
3-6 months     COHORTS          GUATEMALA                      <151 cm            532     796
3-6 months     COHORTS          GUATEMALA                      [151-155) cm       164     796
3-6 months     COHORTS          INDIA                          >=155 cm           516    1747
3-6 months     COHORTS          INDIA                          <151 cm            765    1747
3-6 months     COHORTS          INDIA                          [151-155) cm       466    1747
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm          1975   12548
3-6 months     JiVitA-3         BANGLADESH                     <151 cm           7354   12548
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm      3219   12548
3-6 months     Keneba           GAMBIA                         >=155 cm          1085    1285
3-6 months     Keneba           GAMBIA                         <151 cm             46    1285
3-6 months     Keneba           GAMBIA                         [151-155) cm       154    1285
3-6 months     MAL-ED           BANGLADESH                     >=155 cm            23     231
3-6 months     MAL-ED           BANGLADESH                     <151 cm            149     231
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm        59     231
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
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm            93     523
3-6 months     NIH-Birth        BANGLADESH                     <151 cm            302     523
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm       128     523
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm           129     695
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm            405     695
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm       161     695
3-6 months     PROBIT           BELARUS                        >=155 cm         10635   11062
3-6 months     PROBIT           BELARUS                        <151 cm            105   11062
3-6 months     PROBIT           BELARUS                        [151-155) cm       322   11062
3-6 months     PROVIDE          BANGLADESH                     >=155 cm           128     597
3-6 months     PROVIDE          BANGLADESH                     <151 cm            327     597
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm       142     597
3-6 months     SAS-CompFeed     INDIA                          >=155 cm           423    1037
3-6 months     SAS-CompFeed     INDIA                          <151 cm            366    1037
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm       248    1037
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1025    1635
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            253    1635
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       357    1635
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm          4471    5639
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm            337    5639
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm       831    5639
6-9 months     COHORTS          GUATEMALA                      >=155 cm           107     813
6-9 months     COHORTS          GUATEMALA                      <151 cm            536     813
6-9 months     COHORTS          GUATEMALA                      [151-155) cm       170     813
6-9 months     COHORTS          INDIA                          >=155 cm           483    1645
6-9 months     COHORTS          INDIA                          <151 cm            722    1645
6-9 months     COHORTS          INDIA                          [151-155) cm       440    1645
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm            30     181
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm            109     181
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm        42     181
6-9 months     Keneba           GAMBIA                         >=155 cm           687     818
6-9 months     Keneba           GAMBIA                         <151 cm             26     818
6-9 months     Keneba           GAMBIA                         [151-155) cm       105     818
6-9 months     LCNI-5           MALAWI                         >=155 cm           351     561
6-9 months     LCNI-5           MALAWI                         <151 cm             92     561
6-9 months     LCNI-5           MALAWI                         [151-155) cm       118     561
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
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm           130     688
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm            396     688
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm       162     688
6-9 months     PROBIT           BELARUS                        >=155 cm         10038   10429
6-9 months     PROBIT           BELARUS                        <151 cm             97   10429
6-9 months     PROBIT           BELARUS                        [151-155) cm       294   10429
6-9 months     PROVIDE          BANGLADESH                     >=155 cm           115     565
6-9 months     PROVIDE          BANGLADESH                     <151 cm            314     565
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm       136     565
6-9 months     SAS-CompFeed     INDIA                          >=155 cm           435    1056
6-9 months     SAS-CompFeed     INDIA                          <151 cm            366    1056
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm       255    1056
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm            62     314
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm            170     314
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm        82     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           914    1460
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            222    1460
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       324    1460
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm          4288    5369
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm            313    5369
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm       768    5369
9-12 months    COHORTS          GUATEMALA                      >=155 cm           123     908
9-12 months    COHORTS          GUATEMALA                      <151 cm            593     908
9-12 months    COHORTS          GUATEMALA                      [151-155) cm       192     908
9-12 months    COHORTS          INDIA                          >=155 cm           431    1457
9-12 months    COHORTS          INDIA                          <151 cm            639    1457
9-12 months    COHORTS          INDIA                          [151-155) cm       387    1457
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm            28     163
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm             99     163
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm        36     163
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm           996    1105
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1105
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm        79    1105
9-12 months    Keneba           GAMBIA                         >=155 cm           680     808
9-12 months    Keneba           GAMBIA                         <151 cm             24     808
9-12 months    Keneba           GAMBIA                         [151-155) cm       104     808
9-12 months    LCNI-5           MALAWI                         >=155 cm           242     385
9-12 months    LCNI-5           MALAWI                         <151 cm             64     385
9-12 months    LCNI-5           MALAWI                         [151-155) cm        79     385
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
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm            91     482
9-12 months    NIH-Birth        BANGLADESH                     <151 cm            277     482
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm       114     482
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm           126     674
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm            390     674
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm       158     674
9-12 months    PROBIT           BELARUS                        >=155 cm         10264   10665
9-12 months    PROBIT           BELARUS                        <151 cm             98   10665
9-12 months    PROBIT           BELARUS                        [151-155) cm       303   10665
9-12 months    PROVIDE          BANGLADESH                     >=155 cm           117     566
9-12 months    PROVIDE          BANGLADESH                     <151 cm            312     566
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm       137     566
9-12 months    SAS-CompFeed     INDIA                          >=155 cm           448    1055
9-12 months    SAS-CompFeed     INDIA                          <151 cm            357    1055
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm       250    1055
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm            60     311
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm            167     311
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm        84     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           672    1065
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            163    1065
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       230    1065
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm          4252    5334
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm            315    5334
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm       767    5334
12-15 months   COHORTS          GUATEMALA                      >=155 cm           117     848
12-15 months   COHORTS          GUATEMALA                      <151 cm            546     848
12-15 months   COHORTS          GUATEMALA                      [151-155) cm       185     848
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm            10      86
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm             56      86
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm        20      86
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm           883     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm             24     962
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm        55     962
12-15 months   Keneba           GAMBIA                         >=155 cm          1054    1262
12-15 months   Keneba           GAMBIA                         <151 cm             48    1262
12-15 months   Keneba           GAMBIA                         [151-155) cm       160    1262
12-15 months   LCNI-5           MALAWI                         >=155 cm            72     127
12-15 months   LCNI-5           MALAWI                         <151 cm             29     127
12-15 months   LCNI-5           MALAWI                         [151-155) cm        26     127
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
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm           124     660
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm            380     660
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm       156     660
12-15 months   PROBIT           BELARUS                        >=155 cm           960     993
12-15 months   PROBIT           BELARUS                        <151 cm              7     993
12-15 months   PROBIT           BELARUS                        [151-155) cm        26     993
12-15 months   PROVIDE          BANGLADESH                     >=155 cm           111     532
12-15 months   PROVIDE          BANGLADESH                     <151 cm            296     532
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm       125     532
12-15 months   SAS-CompFeed     INDIA                          >=155 cm           466    1072
12-15 months   SAS-CompFeed     INDIA                          <151 cm            353    1072
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm       253    1072
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm            57     303
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm            159     303
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm        87     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           479     778
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            126     778
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       173     778
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1828    2266
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm            140    2266
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       298    2266
15-18 months   COHORTS          GUATEMALA                      >=155 cm           106     760
15-18 months   COHORTS          GUATEMALA                      <151 cm            489     760
15-18 months   COHORTS          GUATEMALA                      [151-155) cm       165     760
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm           918    1008
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm             30    1008
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm        60    1008
15-18 months   Keneba           GAMBIA                         >=155 cm          1073    1282
15-18 months   Keneba           GAMBIA                         <151 cm             44    1282
15-18 months   Keneba           GAMBIA                         [151-155) cm       165    1282
15-18 months   LCNI-5           MALAWI                         >=155 cm            69     120
15-18 months   LCNI-5           MALAWI                         <151 cm             26     120
15-18 months   LCNI-5           MALAWI                         [151-155) cm        25     120
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
15-18 months   MAL-ED           PERU                           >=155 cm            47     213
15-18 months   MAL-ED           PERU                           <151 cm            124     213
15-18 months   MAL-ED           PERU                           [151-155) cm        42     213
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm           166     221
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm             28     221
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     221
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           129     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             39     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        49     217
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm            79     449
15-18 months   NIH-Birth        BANGLADESH                     <151 cm            260     449
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm       110     449
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm           121     604
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm            339     604
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm       144     604
15-18 months   PROBIT           BELARUS                        >=155 cm           264     274
15-18 months   PROBIT           BELARUS                        <151 cm              1     274
15-18 months   PROBIT           BELARUS                        [151-155) cm         9     274
15-18 months   PROVIDE          BANGLADESH                     >=155 cm           109     527
15-18 months   PROVIDE          BANGLADESH                     <151 cm            291     527
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm       127     527
15-18 months   SAS-CompFeed     INDIA                          >=155 cm           467    1076
15-18 months   SAS-CompFeed     INDIA                          <151 cm            359    1076
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm       250    1076
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm            57     291
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm            152     291
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm        82     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm           395     656
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            115     656
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       146     656
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1460    1809
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm            114    1809
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       235    1809
18-21 months   COHORTS          GUATEMALA                      >=155 cm            95     752
18-21 months   COHORTS          GUATEMALA                      <151 cm            497     752
18-21 months   COHORTS          GUATEMALA                      [151-155) cm       160     752
18-21 months   Keneba           GAMBIA                         >=155 cm          1064    1272
18-21 months   Keneba           GAMBIA                         <151 cm             39    1272
18-21 months   Keneba           GAMBIA                         [151-155) cm       169    1272
18-21 months   LCNI-5           MALAWI                         >=155 cm           287     474
18-21 months   LCNI-5           MALAWI                         <151 cm             82     474
18-21 months   LCNI-5           MALAWI                         [151-155) cm       105     474
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           120     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             37     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        47     204
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm            73     422
18-21 months   NIH-Birth        BANGLADESH                     <151 cm            246     422
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm       103     422
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm           105     546
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm            308     546
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm       133     546
18-21 months   PROBIT           BELARUS                        >=155 cm           207     215
18-21 months   PROBIT           BELARUS                        <151 cm              0     215
18-21 months   PROBIT           BELARUS                        [151-155) cm         8     215
18-21 months   PROVIDE          BANGLADESH                     >=155 cm           112     540
18-21 months   PROVIDE          BANGLADESH                     <151 cm            297     540
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm       131     540
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             7       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         1       9
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1123    1401
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm             93    1401
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       185    1401
21-24 months   COHORTS          GUATEMALA                      >=155 cm           105     829
21-24 months   COHORTS          GUATEMALA                      <151 cm            546     829
21-24 months   COHORTS          GUATEMALA                      [151-155) cm       178     829
21-24 months   Keneba           GAMBIA                         >=155 cm           957    1138
21-24 months   Keneba           GAMBIA                         <151 cm             32    1138
21-24 months   Keneba           GAMBIA                         [151-155) cm       149    1138
21-24 months   LCNI-5           MALAWI                         >=155 cm           245     408
21-24 months   LCNI-5           MALAWI                         <151 cm             74     408
21-24 months   LCNI-5           MALAWI                         [151-155) cm        89     408
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           120     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             38     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        46     204
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm            74     411
21-24 months   NIH-Birth        BANGLADESH                     <151 cm            240     411
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm        97     411
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm            96     490
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm            271     490
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       123     490
21-24 months   PROBIT           BELARUS                        >=155 cm           197     206
21-24 months   PROBIT           BELARUS                        <151 cm              0     206
21-24 months   PROBIT           BELARUS                        [151-155) cm         9     206
21-24 months   PROVIDE          BANGLADESH                     >=155 cm            97     470
21-24 months   PROVIDE          BANGLADESH                     <151 cm            265     470
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm       108     470
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm           800    1019
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm             74    1019
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       145    1019


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
![](/tmp/1b49afb2-5798-4e30-8f3e-e42b1d67d7dd/4acea36c-f413-4c17-90f4-10b9141d249a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1b49afb2-5798-4e30-8f3e-e42b1d67d7dd/4acea36c-f413-4c17-90f4-10b9141d249a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1b49afb2-5798-4e30-8f3e-e42b1d67d7dd/4acea36c-f413-4c17-90f4-10b9141d249a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                2.6995077   2.5855173   2.8134981
0-3 months     COHORTS          GUATEMALA                      <151 cm              NA                2.5578291   2.5058746   2.6097836
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         NA                2.6079465   2.5002265   2.7156666
0-3 months     COHORTS          INDIA                          >=155 cm             NA                3.5693639   3.5180160   3.6207119
0-3 months     COHORTS          INDIA                          <151 cm              NA                3.4616785   3.4174598   3.5058972
0-3 months     COHORTS          INDIA                          [151-155) cm         NA                3.4948051   3.4410450   3.5485653
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                3.7990472   3.7756887   3.8224057
0-3 months     JiVitA-3         BANGLADESH                     <151 cm              NA                3.6940479   3.6819522   3.7061436
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm         NA                3.7515532   3.7331752   3.7699311
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                3.1084623   3.0573031   3.1596214
0-3 months     Keneba           GAMBIA                         <151 cm              NA                2.8394115   2.4982640   3.1805590
0-3 months     Keneba           GAMBIA                         [151-155) cm         NA                3.0842860   2.9268105   3.2417614
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                3.4738915   3.3234626   3.6243203
0-3 months     MAL-ED           BANGLADESH                     <151 cm              NA                3.2982902   3.2141097   3.3824706
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                3.3991717   3.2588429   3.5395005
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                3.8267335   3.6792243   3.9742427
0-3 months     MAL-ED           BRAZIL                         <151 cm              NA                3.7379395   3.5261204   3.9497586
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         NA                3.8788805   3.5655444   4.1922167
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                3.3854185   3.1996323   3.5712047
0-3 months     MAL-ED           INDIA                          <151 cm              NA                3.3164530   3.1663709   3.4665351
0-3 months     MAL-ED           INDIA                          [151-155) cm         NA                3.3913228   3.1896331   3.5930125
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                3.7979174   3.5982117   3.9976231
0-3 months     MAL-ED           NEPAL                          <151 cm              NA                3.5118705   3.3934942   3.6302469
0-3 months     MAL-ED           NEPAL                          [151-155) cm         NA                3.7659783   3.5735973   3.9583592
0-3 months     MAL-ED           PERU                           >=155 cm             NA                3.0649254   2.9200596   3.2097911
0-3 months     MAL-ED           PERU                           <151 cm              NA                3.0771067   2.9864784   3.1677349
0-3 months     MAL-ED           PERU                           [151-155) cm         NA                2.9878151   2.8246798   3.1509504
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                3.2197685   3.1060338   3.3335032
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                2.9301863   2.5851286   3.2752440
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                3.2050365   2.9804808   3.4295923
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                3.2391158   3.1349913   3.3432402
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                3.2689086   3.1046990   3.4331181
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                3.3344864   3.1666303   3.5023424
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                3.1896219   3.0374233   3.3418206
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              NA                3.0385387   2.9712680   3.1058094
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                3.1938936   3.0873665   3.3004206
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                3.1951925   3.1089062   3.2814788
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                3.0998522   3.0506477   3.1490567
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                3.1438660   3.0713311   3.2164009
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                2.8113573   2.6971963   2.9255184
0-3 months     PROBIT           BELARUS                        <151 cm              NA                2.5824703   2.5419076   2.6230331
0-3 months     PROBIT           BELARUS                        [151-155) cm         NA                2.7642255   2.6403458   2.8881052
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                3.4132987   3.3382603   3.4883372
0-3 months     PROVIDE          BANGLADESH                     <151 cm              NA                3.2074629   3.1554186   3.2595073
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                3.2354624   3.1637297   3.3071951
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                3.4092484   3.3206914   3.4978053
0-3 months     SAS-CompFeed     INDIA                          <151 cm              NA                3.2686137   3.2129209   3.3243065
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                3.3431762   3.2609522   3.4254003
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                3.3586820   3.3341321   3.3832318
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                3.1083371   3.0177086   3.1989655
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                3.1826210   3.1274100   3.2378320
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                1.9021857   1.8077703   1.9966011
3-6 months     COHORTS          GUATEMALA                      <151 cm              NA                1.7396458   1.7026958   1.7765959
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         NA                1.7505136   1.6811795   1.8198477
3-6 months     COHORTS          INDIA                          >=155 cm             NA                1.9116995   1.8664930   1.9569059
3-6 months     COHORTS          INDIA                          <151 cm              NA                1.8647614   1.8272180   1.9023049
3-6 months     COHORTS          INDIA                          [151-155) cm         NA                1.8614257   1.8185272   1.9043242
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                1.9628961   1.9375779   1.9882144
3-6 months     JiVitA-3         BANGLADESH                     <151 cm              NA                1.9051047   1.8915523   1.9186571
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm         NA                1.9250960   1.9047018   1.9454903
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                1.9941575   1.9493280   2.0389870
3-6 months     Keneba           GAMBIA                         <151 cm              NA                2.1029497   1.8882760   2.3176233
3-6 months     Keneba           GAMBIA                         [151-155) cm         NA                1.9229652   1.8103684   2.0355620
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                2.0239476   1.8943928   2.1535024
3-6 months     MAL-ED           BANGLADESH                     <151 cm              NA                1.9429664   1.8808747   2.0050581
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                1.8406892   1.7172635   1.9641148
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                2.1310837   2.0234785   2.2386889
3-6 months     MAL-ED           BRAZIL                         <151 cm              NA                2.0742515   1.9238803   2.2246227
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         NA                2.2455526   2.0444702   2.4466349
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                1.9452833   1.7989616   2.0916050
3-6 months     MAL-ED           INDIA                          <151 cm              NA                1.8446697   1.7496493   1.9396901
3-6 months     MAL-ED           INDIA                          [151-155) cm         NA                1.9350032   1.8312598   2.0387467
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                1.9497780   1.8193507   2.0802053
3-6 months     MAL-ED           NEPAL                          <151 cm              NA                1.9505447   1.8772461   2.0238434
3-6 months     MAL-ED           NEPAL                          [151-155) cm         NA                2.0130746   1.8940018   2.1321473
3-6 months     MAL-ED           PERU                           >=155 cm             NA                2.0293244   1.8575827   2.2010660
3-6 months     MAL-ED           PERU                           <151 cm              NA                1.9734696   1.8923495   2.0545897
3-6 months     MAL-ED           PERU                           [151-155) cm         NA                2.1426794   1.9974258   2.2879330
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                1.9537711   1.8586502   2.0488920
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                1.9972058   1.8034749   2.1909367
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                2.0136374   1.7461718   2.2811030
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8476529   1.7603079   1.9349978
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.6980986   1.5159569   1.8802402
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.7988759   1.6640269   1.9337250
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                1.8525872   1.7380964   1.9670780
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              NA                1.8085981   1.7451325   1.8720638
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.8724135   1.7669234   1.9779035
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                2.0030822   1.9173356   2.0888288
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                1.9983102   1.9504381   2.0461824
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                2.0362875   1.9604760   2.1120989
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                2.0917765   2.0517491   2.1318038
3-6 months     PROBIT           BELARUS                        <151 cm              NA                2.0577396   2.0062238   2.1092553
3-6 months     PROBIT           BELARUS                        [151-155) cm         NA                2.0793225   1.9741035   2.1845414
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                1.9725230   1.8955139   2.0495321
3-6 months     PROVIDE          BANGLADESH                     <151 cm              NA                1.9691129   1.9233993   2.0148264
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                1.9558893   1.8848720   2.0269067
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                1.9880625   1.9359212   2.0402038
3-6 months     SAS-CompFeed     INDIA                          <151 cm              NA                1.9259775   1.8364537   2.0155014
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                1.9471157   1.8696039   2.0246275
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.8129794   1.7670958   1.8588630
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.7765156   1.6747222   1.8783090
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.7633409   1.6916772   1.8350047
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.9868654   1.9638612   2.0098696
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.9047271   1.8251029   1.9843513
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.9803327   1.9269169   2.0337484
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                1.2113393   1.1426738   1.2800048
6-9 months     COHORTS          GUATEMALA                      <151 cm              NA                1.1008026   1.0670028   1.1346024
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         NA                1.0640252   1.0038246   1.1242257
6-9 months     COHORTS          INDIA                          >=155 cm             NA                1.2578454   1.2161615   1.2995293
6-9 months     COHORTS          INDIA                          <151 cm              NA                1.1745516   1.1423418   1.2067614
6-9 months     COHORTS          INDIA                          [151-155) cm         NA                1.1941324   1.1533254   1.2349393
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.3147238   1.1977753   1.4316724
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              NA                1.1409233   1.0794339   1.2024127
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.1700118   1.0647656   1.2752581
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                1.4020034   1.3422336   1.4617732
6-9 months     Keneba           GAMBIA                         <151 cm              NA                1.2309232   1.0226646   1.4391818
6-9 months     Keneba           GAMBIA                         [151-155) cm         NA                1.3942162   1.2658503   1.5225822
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                1.4941750   1.4504689   1.5378812
6-9 months     LCNI-5           MALAWI                         <151 cm              NA                1.3980396   1.2820479   1.5140314
6-9 months     LCNI-5           MALAWI                         [151-155) cm         NA                1.4093333   1.3310749   1.4875917
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                1.2198514   1.1279449   1.3117579
6-9 months     MAL-ED           BANGLADESH                     <151 cm              NA                1.2347985   1.1865486   1.2830484
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                1.2930011   1.2001514   1.3858507
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                1.4684909   1.3780680   1.5589138
6-9 months     MAL-ED           BRAZIL                         <151 cm              NA                1.4494193   1.2082135   1.6906252
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         NA                1.4623579   1.2852952   1.6394206
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                1.2282235   1.1050085   1.3514385
6-9 months     MAL-ED           INDIA                          <151 cm              NA                1.2928435   1.2222272   1.3634598
6-9 months     MAL-ED           INDIA                          [151-155) cm         NA                1.1779628   1.0823480   1.2735775
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                1.4483225   1.3325579   1.5640871
6-9 months     MAL-ED           NEPAL                          <151 cm              NA                1.3016095   1.2438935   1.3593254
6-9 months     MAL-ED           NEPAL                          [151-155) cm         NA                1.4022890   1.3183644   1.4862135
6-9 months     MAL-ED           PERU                           >=155 cm             NA                1.3283740   1.1930688   1.4636792
6-9 months     MAL-ED           PERU                           <151 cm              NA                1.3100274   1.2400218   1.3800330
6-9 months     MAL-ED           PERU                           [151-155) cm         NA                1.3344299   1.2112494   1.4576104
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                1.3603691   1.2922497   1.4284885
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                1.3671552   1.1463241   1.5879863
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                1.2446838   1.0567954   1.4325722
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.1776075   1.0942345   1.2609805
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.2589758   1.0903358   1.4276158
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.1775287   0.9445968   1.4104606
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                1.3430910   1.2490870   1.4370950
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              NA                1.2226547   1.1683648   1.2769446
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.2663999   1.1855525   1.3472473
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                1.4413982   1.3763310   1.5064654
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                1.3063352   1.2674276   1.3452428
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                1.2883001   1.2284353   1.3481649
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                1.5776653   1.5459240   1.6094067
6-9 months     PROBIT           BELARUS                        <151 cm              NA                1.5825314   1.5034726   1.6615903
6-9 months     PROBIT           BELARUS                        [151-155) cm         NA                1.4998109   1.3876675   1.6119544
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                1.3446173   1.2890149   1.4002198
6-9 months     PROVIDE          BANGLADESH                     <151 cm              NA                1.2539081   1.2192957   1.2885204
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                1.2975329   1.2488623   1.3462036
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                1.2659944   1.2393515   1.2926372
6-9 months     SAS-CompFeed     INDIA                          <151 cm              NA                1.1519571   1.0975719   1.2063423
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                1.2362824   1.1540252   1.3185396
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                1.1348940   1.0453089   1.2244790
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              NA                1.1602474   1.1042593   1.2162356
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         NA                1.0810494   0.9913059   1.1707929
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.3320882   1.2851085   1.3790679
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.2883561   1.2010610   1.3756512
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.3087496   1.2267304   1.3907687
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.3548917   1.3322817   1.3775017
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.3448775   1.2748675   1.4148875
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.2899782   1.2385273   1.3414291
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.9280174   0.8566737   0.9993612
9-12 months    COHORTS          GUATEMALA                      <151 cm              NA                0.9469010   0.9172272   0.9765748
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.9699063   0.9136668   1.0261457
9-12 months    COHORTS          INDIA                          >=155 cm             NA                1.0694173   1.0291453   1.1096894
9-12 months    COHORTS          INDIA                          <151 cm              NA                0.9747656   0.9400073   1.0095239
9-12 months    COHORTS          INDIA                          [151-155) cm         NA                0.9555233   0.9125642   0.9984823
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.1348081   1.0115645   1.2580517
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                0.9940956   0.9426366   1.0455546
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                1.0178805   0.9238683   1.1118928
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                1.0978414   1.0661383   1.1295446
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                1.0678460   0.5679312   1.5677609
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                1.0250752   0.9424545   1.1076959
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                0.9754753   0.9272688   1.0236817
9-12 months    Keneba           GAMBIA                         <151 cm              NA                1.1418606   0.8763236   1.4073977
9-12 months    Keneba           GAMBIA                         [151-155) cm         NA                0.9246903   0.8104450   1.0389357
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                1.0939781   1.0317166   1.1562396
9-12 months    LCNI-5           MALAWI                         <151 cm              NA                1.0786664   0.9496362   1.2076966
9-12 months    LCNI-5           MALAWI                         [151-155) cm         NA                1.1365372   1.0422097   1.2308647
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                1.0206621   0.8852849   1.1560393
9-12 months    MAL-ED           BANGLADESH                     <151 cm              NA                0.9760379   0.9305891   1.0214867
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                1.0272849   0.9394960   1.1150738
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                1.3273569   1.2395646   1.4151491
9-12 months    MAL-ED           BRAZIL                         <151 cm              NA                1.3798543   1.1773820   1.5823266
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         NA                1.0865309   0.9333258   1.2397360
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                0.9807863   0.9010354   1.0605372
9-12 months    MAL-ED           INDIA                          <151 cm              NA                0.9990520   0.9386041   1.0595000
9-12 months    MAL-ED           INDIA                          [151-155) cm         NA                0.9513105   0.8829648   1.0196562
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                1.1017110   1.0179472   1.1854747
9-12 months    MAL-ED           NEPAL                          <151 cm              NA                1.0928441   1.0355699   1.1501183
9-12 months    MAL-ED           NEPAL                          [151-155) cm         NA                1.0908108   1.0117606   1.1698611
9-12 months    MAL-ED           PERU                           >=155 cm             NA                1.1041024   0.9901596   1.2180452
9-12 months    MAL-ED           PERU                           <151 cm              NA                1.0884629   1.0183477   1.1585781
9-12 months    MAL-ED           PERU                           [151-155) cm         NA                1.1034240   0.9979391   1.2089090
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                1.0707325   1.0001790   1.1412861
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.8704600   0.7000284   1.0408917
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.7940223   0.5384017   1.0496429
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.8342100   0.7459472   0.9224728
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.8109384   0.6413194   0.9805573
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8063857   0.5452367   1.0675347
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                1.1445631   1.0607281   1.2283982
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              NA                1.0555968   1.0114705   1.0997232
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                1.1503951   1.0706907   1.2300996
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                1.1497579   1.0967244   1.2027914
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                1.1166769   1.0813780   1.1519758
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                1.1286272   1.0705029   1.1867514
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                1.3769942   1.3263713   1.4276170
9-12 months    PROBIT           BELARUS                        <151 cm              NA                1.4271977   1.3743001   1.4800954
9-12 months    PROBIT           BELARUS                        [151-155) cm         NA                1.3722317   1.2508893   1.4935741
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                1.0494206   0.9967318   1.1021093
9-12 months    PROVIDE          BANGLADESH                     <151 cm              NA                1.0505149   1.0140576   1.0869722
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                1.0477861   0.9892533   1.1063189
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.9992983   0.9558876   1.0427090
9-12 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.9627945   0.9061101   1.0194788
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                1.0730232   0.9892707   1.1567757
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.6583158   0.4155895   0.9010422
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.8887421   0.6726133   1.1048708
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.7199172   0.4923344   0.9475000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                1.1068278   1.0643866   1.1492689
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                1.0381272   0.9512966   1.1249578
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                1.0692536   0.9895072   1.1489999
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                1.0844750   1.0630985   1.1058515
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                1.0539572   0.9868459   1.1210685
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                1.0787291   1.0320675   1.1253908
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.8191737   0.7387684   0.8995791
12-15 months   COHORTS          GUATEMALA                      <151 cm              NA                0.7495161   0.7160129   0.7830194
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.8374179   0.7831385   0.8916973
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                1.1211369   0.8489778   1.3932960
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              NA                1.0183243   0.9327923   1.1038564
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.9922141   0.8859475   1.0984807
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.9685519   0.9243469   1.0127569
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.8686549   0.7651155   0.9721943
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.9713565   0.8869954   1.0557175
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                0.9236555   0.8890498   0.9582612
12-15 months   Keneba           GAMBIA                         <151 cm              NA                0.8991751   0.7636103   1.0347400
12-15 months   Keneba           GAMBIA                         [151-155) cm         NA                0.9721472   0.8967453   1.0475491
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                0.9638776   0.8074862   1.1202689
12-15 months   LCNI-5           MALAWI                         <151 cm              NA                0.8700981   0.7310833   1.0091130
12-15 months   LCNI-5           MALAWI                         [151-155) cm         NA                1.0178466   0.8258907   1.2098025
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                1.0104440   0.9059576   1.1149305
12-15 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.8872745   0.8331203   0.9414287
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.9700360   0.9026267   1.0374454
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                1.1871127   1.1074952   1.2667302
12-15 months   MAL-ED           BRAZIL                         <151 cm              NA                1.0532814   0.9543150   1.1522478
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         NA                1.2222995   1.0787607   1.3658384
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                0.9730739   0.8883454   1.0578024
12-15 months   MAL-ED           INDIA                          <151 cm              NA                0.8611525   0.8052465   0.9170585
12-15 months   MAL-ED           INDIA                          [151-155) cm         NA                0.9446300   0.8750253   1.0142348
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                0.9239636   0.8369352   1.0109920
12-15 months   MAL-ED           NEPAL                          <151 cm              NA                0.9425031   0.8873377   0.9976684
12-15 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.9832833   0.9081479   1.0584187
12-15 months   MAL-ED           PERU                           >=155 cm             NA                1.0050298   0.8918381   1.1182214
12-15 months   MAL-ED           PERU                           <151 cm              NA                0.8385997   0.7763756   0.9008238
12-15 months   MAL-ED           PERU                           [151-155) cm         NA                0.8902698   0.8112050   0.9693346
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.9031148   0.8371697   0.9690600
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.9231447   0.7775369   1.0687524
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                1.1669190   0.9654805   1.3683575
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9000486   0.8103104   0.9897868
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.7941412   0.6466886   0.9415938
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7528396   0.6337000   0.8719793
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7352825   0.6603738   0.8101912
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.7270711   0.6597206   0.7944216
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7358027   0.6596283   0.8119772
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.9757253   0.9130869   1.0383636
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.9761773   0.9444877   1.0078668
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.9434619   0.8940901   0.9928337
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                1.1833491   0.8468989   1.5197992
12-15 months   PROBIT           BELARUS                        <151 cm              NA                1.9769863   1.4068285   2.5471440
12-15 months   PROBIT           BELARUS                        [151-155) cm         NA                1.1255339   0.6105892   1.6404785
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.9992914   0.9423218   1.0562609
12-15 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.9494076   0.9138141   0.9850011
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.9488952   0.8953711   1.0024193
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.8673402   0.8216548   0.9130255
12-15 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.8588631   0.8027803   0.9149460
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.7685336   0.6970007   0.8400664
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                1.1048897   1.0227430   1.1870365
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                1.0489077   0.9264205   1.1713950
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.9130068   0.7080138   1.1179998
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9149715   0.8673711   0.9625718
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9577992   0.8692398   1.0463586
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.9755800   0.8910487   1.0601113
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.9274194   0.8956969   0.9591419
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.8665111   0.7533106   0.9797116
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.9050140   0.8331738   0.9768541
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.7868094   0.7048919   0.8687269
15-18 months   COHORTS          GUATEMALA                      <151 cm              NA                0.7452747   0.7073786   0.7831708
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.7220869   0.6545560   0.7896179
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.9311936   0.8959100   0.9664773
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.8625485   0.3432976   1.3817993
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.7953103   0.7002687   0.8903518
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                0.8942884   0.8590587   0.9295180
15-18 months   Keneba           GAMBIA                         <151 cm              NA                0.7673999   0.6386952   0.8961047
15-18 months   Keneba           GAMBIA                         [151-155) cm         NA                0.8078011   0.7173835   0.8982187
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                0.8391640   0.7462063   0.9321218
15-18 months   LCNI-5           MALAWI                         <151 cm              NA                0.8575273   0.7015746   1.0134800
15-18 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.7577029   0.5884911   0.9269147
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.8658970   0.7425830   0.9892109
15-18 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.8216157   0.7742957   0.8689357
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.7780026   0.7101153   0.8458899
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                1.0118995   0.9296718   1.0941273
15-18 months   MAL-ED           BRAZIL                         <151 cm              NA                1.0747392   0.9488933   1.2005852
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.9752900   0.8663796   1.0842005
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                0.8806825   0.8161866   0.9451784
15-18 months   MAL-ED           INDIA                          <151 cm              NA                0.8053191   0.7533142   0.8573240
15-18 months   MAL-ED           INDIA                          [151-155) cm         NA                0.8848605   0.8084441   0.9612770
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                0.9345929   0.8368861   1.0322997
15-18 months   MAL-ED           NEPAL                          <151 cm              NA                0.8102256   0.7561048   0.8643465
15-18 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.8411084   0.7570923   0.9251244
15-18 months   MAL-ED           PERU                           >=155 cm             NA                0.8823262   0.7860653   0.9785870
15-18 months   MAL-ED           PERU                           <151 cm              NA                0.8337363   0.7787746   0.8886979
15-18 months   MAL-ED           PERU                           [151-155) cm         NA                0.8428515   0.7477453   0.9379577
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.8752452   0.8103612   0.9401292
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.9262539   0.7743828   1.0781249
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.9038901   0.7882475   1.0195328
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.6902711   0.6079455   0.7725967
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6403128   0.5067022   0.7739234
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6464538   0.5125124   0.7803952
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7830703   0.6875752   0.8785653
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.7648285   0.7111270   0.8185300
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7729543   0.6906872   0.8552215
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.9769347   0.9244455   1.0294238
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.8990012   0.8680863   0.9299161
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.9237399   0.8784581   0.9690217
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.8305526   0.7836678   0.8774374
15-18 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.8585469   0.8254732   0.8916206
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.8684759   0.8162003   0.9207515
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                0.9479186   0.9067243   0.9891129
15-18 months   SAS-CompFeed     INDIA                          <151 cm              NA                0.8509751   0.7964643   0.9054859
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                0.9012839   0.8030159   0.9995518
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.7880314   0.7150393   0.8610235
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                0.7850782   0.7342371   0.8359192
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.8162822   0.7460605   0.8865039
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.9651085   0.9068597   1.0233573
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.9112086   0.8187607   1.0036565
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.8784877   0.7970555   0.9599200
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.8048092   0.7693496   0.8402689
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.7689384   0.6438197   0.8940572
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7641557   0.6777317   0.8505798
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.7652115   0.6794337   0.8509893
18-21 months   COHORTS          GUATEMALA                      <151 cm              NA                0.7417074   0.7066673   0.7767475
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.7459934   0.6718655   0.8201214
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                0.8198788   0.7819160   0.8578416
18-21 months   Keneba           GAMBIA                         <151 cm              NA                0.7819504   0.6553151   0.9085857
18-21 months   Keneba           GAMBIA                         [151-155) cm         NA                0.8556134   0.7544432   0.9567836
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                0.8387078   0.7843972   0.8930183
18-21 months   LCNI-5           MALAWI                         <151 cm              NA                0.7567402   0.5947223   0.9187582
18-21 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.7941920   0.7072984   0.8810856
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.8791456   0.7933902   0.9649011
18-21 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.7742689   0.7332454   0.8152925
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.8878977   0.8020589   0.9737366
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.8591996   0.7789889   0.9394102
18-21 months   MAL-ED           BRAZIL                         <151 cm              NA                1.0382631   0.8199360   1.2565903
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.8817067   0.7823516   0.9810618
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                0.9627706   0.8735361   1.0520052
18-21 months   MAL-ED           INDIA                          <151 cm              NA                0.8615033   0.8141873   0.9088194
18-21 months   MAL-ED           INDIA                          [151-155) cm         NA                0.8410445   0.7784360   0.9036531
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                0.8887133   0.7994762   0.9779504
18-21 months   MAL-ED           NEPAL                          <151 cm              NA                0.7846676   0.7317392   0.8375959
18-21 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.8599343   0.7891792   0.9306893
18-21 months   MAL-ED           PERU                           >=155 cm             NA                0.8918991   0.7642067   1.0195915
18-21 months   MAL-ED           PERU                           <151 cm              NA                0.8393227   0.7859127   0.8927326
18-21 months   MAL-ED           PERU                           [151-155) cm         NA                0.8124063   0.7207737   0.9040388
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.7633075   0.6998600   0.8267551
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.8091159   0.5627457   1.0554861
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.7383690   0.5997284   0.8770096
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7913458   0.7123448   0.8703468
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6720325   0.5103402   0.8337247
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.6721695   0.4918887   0.8524503
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.7746272   0.6784899   0.8707645
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.7110965   0.6646241   0.7575690
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7514504   0.6747593   0.8281415
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.8520718   0.8014518   0.9026918
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.7643600   0.7327644   0.7959556
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.8253888   0.7797604   0.8710172
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.9014615   0.8497123   0.9532106
18-21 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.8226881   0.7899835   0.8553928
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.8266232   0.7789021   0.8743444
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.6769070   0.6353880   0.7184261
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6557541   0.5285173   0.7829909
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7008964   0.5976550   0.8041379
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.7727315   0.7093843   0.8360787
21-24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.6817156   0.6543608   0.7090705
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.6357726   0.5792302   0.6923150
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                0.7230415   0.6844773   0.7616056
21-24 months   Keneba           GAMBIA                         <151 cm              NA                0.7020511   0.5894932   0.8146090
21-24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.6823279   0.6001375   0.7645184
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.7600875   0.6950082   0.8251669
21-24 months   LCNI-5           MALAWI                         <151 cm              NA                0.7672786   0.6639170   0.8706401
21-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.7150446   0.6358245   0.7942647
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                0.7793100   0.6538976   0.9047224
21-24 months   MAL-ED           BANGLADESH                     <151 cm              NA                0.7559373   0.7134467   0.7984278
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                0.7726830   0.6926985   0.8526676
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                0.8082957   0.7555820   0.8610094
21-24 months   MAL-ED           BRAZIL                         <151 cm              NA                0.8577453   0.7688249   0.9466657
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                0.7281246   0.5995044   0.8567448
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                0.8428745   0.7806889   0.9050601
21-24 months   MAL-ED           INDIA                          <151 cm              NA                0.8088897   0.7623046   0.8554747
21-24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.8391334   0.7828543   0.8954124
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                0.7567680   0.6777033   0.8358327
21-24 months   MAL-ED           NEPAL                          <151 cm              NA                0.7704978   0.7158886   0.8251071
21-24 months   MAL-ED           NEPAL                          [151-155) cm         NA                0.8788478   0.7876935   0.9700022
21-24 months   MAL-ED           PERU                           >=155 cm             NA                0.7691430   0.6619331   0.8763528
21-24 months   MAL-ED           PERU                           <151 cm              NA                0.7539630   0.6887253   0.8192007
21-24 months   MAL-ED           PERU                           [151-155) cm         NA                0.7262248   0.6417841   0.8106655
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.8566356   0.8004199   0.9128514
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.8239952   0.6036124   1.0443780
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.8576730   0.7129847   1.0023613
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.7135038   0.6320706   0.7949371
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5861784   0.4307179   0.7416388
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.7808548   0.6355424   0.9261672
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.8150249   0.7310884   0.8989614
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.6786625   0.6357025   0.7216224
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.7292919   0.6450729   0.8135110
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.8222023   0.7624442   0.8819604
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.8036809   0.7711778   0.8361840
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.7746228   0.7267968   0.8224489
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.7852480   0.7267347   0.8437612
21-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.7556172   0.7212776   0.7899568
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.7657494   0.7127991   0.8186997
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.7027069   0.6583534   0.7470605
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5943109   0.4194880   0.7691338
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.7367917   0.6138095   0.8597739


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5843659   2.5410548   2.6276770
0-3 months     COHORTS          INDIA                          NA                   NA                3.5013455   3.4730048   3.5296863
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7234741   3.7131652   3.7337830
0-3 months     Keneba           GAMBIA                         NA                   NA                3.0979093   3.0490622   3.1467564
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED           PERU                           NA                   NA                3.0531076   2.9864257   3.1197894
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1891095   3.0900536   3.2881654
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8080335   2.6949552   2.9211117
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2592091   3.2222694   3.2961487
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3435169   3.2877986   3.3992351
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3182367   3.2964206   3.3400527
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7631705   1.7322799   1.7940611
3-6 months     COHORTS          INDIA                          NA                   NA                1.8785516   1.8544247   1.9026785
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9199874   1.9095160   1.9304587
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9875768   1.9468863   2.0282674
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8890965   1.8255097   1.9526834
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0152678   1.9488079   2.0817277
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9612733   1.8804053   2.0421413
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0909143   2.0501990   2.1316295
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657091   1.9317726   1.9996455
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9550595   1.9132701   1.9968488
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7976251   1.7615794   1.8336707
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9811859   1.9607885   2.0015832
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1068575   1.0796527   1.1340622
6-9 months     COHORTS          INDIA                          NA                   NA                1.2030136   1.1814691   1.2245580
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                1.1697941   1.1215573   1.2180309
6-9 months     Keneba           GAMBIA                         NA                   NA                1.3961653   1.3431178   1.4492128
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4610468   1.4243885   1.4977051
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2442866   1.1923459   1.2962273
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3210643   1.2665463   1.3755823
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3644626   1.3017940   1.4271311
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5754548   1.5440875   1.6068222
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2170838   1.1948907   1.2392769
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3224695   1.2858028   1.3591362
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3458662   1.3260206   1.3657117
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9460743   0.9213224   0.9708262
9-12 months    COHORTS          INDIA                          NA                   NA                0.9990319   0.9764860   1.0215779
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                1.0236630   0.9818595   1.0654665
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0921536   1.0584176   1.1258896
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9735017   0.9296910   1.0173125
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.0985921   1.0516237   1.1455606
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9799614   0.9416888   1.0182340
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0999922   1.0489406   1.1510437
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0212609   0.9562969   1.0862249
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3772100   1.3258386   1.4285814
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                1.0050337   0.9730422   1.0370252
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0884870   1.0545720   1.1224021
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0819122   1.0632328   1.1005917
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7819704   0.7548886   0.8090522
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                1.0179099   0.9523693   1.0834505
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9671630   0.9258651   1.0084609
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9295076   0.8988557   0.9601596
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9107851   0.8714474   0.9501228
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8906860   0.8442322   0.9371397
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9252117   0.8670403   0.9833831
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1874299   0.8604526   1.5144072
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8400621   0.7982166   0.8819077
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9338162   0.8966318   0.9710006
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205803   0.8924958   0.9486649
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7478483   0.7176882   0.7780084
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9213229   0.8837045   0.9589414
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8794020   0.8473815   0.9114224
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8445838   0.8081021   0.8810654
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8883347   0.8348067   0.9418626
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8552334   0.8311623   0.8793044
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9032224   0.8728719   0.9335728
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9354850   0.8932537   0.9777164
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7989606   0.7673627   0.8305585
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7441729   0.7154564   0.7728895
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8213042   0.7867369   0.8558716
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8171398   0.7705868   0.8636928
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8795431   0.8441522   0.9149339
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7842913   0.7280906   0.8404919
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8397160   0.8156938   0.8637381
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6832299   0.6463288   0.7201311
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6787427   0.6552973   0.7021881
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7185082   0.6843368   0.7526795
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7508459   0.7047755   0.7969163
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8246636   0.7937212   0.8556061
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8455789   0.7937438   0.8974141
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7640933   0.7387145   0.7894720
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7005480   0.6597161   0.7413799


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1416786   -0.2664574   -0.0168998
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0915612   -0.2481258    0.0650035
0-3 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.1076854   -0.1754912   -0.0398797
0-3 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0745588   -0.1491139   -0.0000036
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.1049994   -0.1292335   -0.0807652
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0474941   -0.0754561   -0.0195321
0-3 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2690507   -0.6139984    0.0758969
0-3 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0241763   -0.1898968    0.1415442
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.1756013   -0.3482226   -0.0029800
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0747198   -0.2803962    0.1309566
0-3 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0887940   -0.3482653    0.1706774
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0521471   -0.2951740    0.3994682
0-3 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0689655   -0.3095589    0.1716279
0-3 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0059043   -0.2715349    0.2833435
0-3 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2860469   -0.5214798   -0.0506139
0-3 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0319391   -0.3103669    0.2464887
0-3 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <151 cm              >=155 cm           0.0121813   -0.1599673    0.1843298
0-3 months     MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0771103   -0.2966146    0.1423941
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.2895822   -0.6534234    0.0742589
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0147320   -0.2666989    0.2372349
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0297928   -0.1648917    0.2244773
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0953706   -0.1023538    0.2930950
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1510832   -0.3180078    0.0158413
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0042716   -0.1818814    0.1904247
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0953403   -0.1946429    0.0039623
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0513265   -0.1644264    0.0617735
0-3 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.2288870   -0.3258513   -0.1319227
0-3 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0471318   -0.1378608    0.0435971
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2058358   -0.2970664   -0.1146052
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.1778364   -0.2822104   -0.0734623
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1406347   -0.2407912   -0.0404782
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0660722   -0.1392627    0.0071183
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2503449   -0.3442564   -0.1564334
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1760609   -0.2364654   -0.1156565
3-6 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1625398   -0.2637478   -0.0613319
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1516720   -0.2687499   -0.0345941
3-6 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0469380   -0.1054980    0.0116220
3-6 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0502738   -0.1125812    0.0120336
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0577915   -0.0857799   -0.0298030
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0378001   -0.0705291   -0.0050711
3-6 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <151 cm              >=155 cm           0.1087922   -0.1104576    0.3280420
3-6 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0711923   -0.1923869    0.0500023
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0809812   -0.2239015    0.0619391
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.1832584   -0.3610763   -0.0054406
3-6 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0568322   -0.2424071    0.1287427
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.1144689   -0.1142203    0.3431581
3-6 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.1006136   -0.2753832    0.0741559
3-6 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0102801   -0.1895394    0.1689793
3-6 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0007667   -0.1488538    0.1503872
3-6 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0632966   -0.1135090    0.2401022
3-6 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0558548   -0.2463358    0.1346263
3-6 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.1133550   -0.1118041    0.3385142
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0434347   -0.1721248    0.2589941
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0598662   -0.2240770    0.3438095
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1495543   -0.3524785    0.0533699
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0487770   -0.2089334    0.1113794
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0439891   -0.1749850    0.0870068
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0198262   -0.1358278    0.1754803
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0047719   -0.1031093    0.0935655
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm           0.0332053   -0.0813082    0.1477187
3-6 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0340369   -0.0910304    0.0229566
3-6 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0124540   -0.0989765    0.0740685
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0034102   -0.0927847    0.0859644
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0166337   -0.1217435    0.0884761
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0620850   -0.1501823    0.0260123
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0409468   -0.1163180    0.0344243
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0364638   -0.1481935    0.0752658
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0496385   -0.1349541    0.0356772
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0821383   -0.1650363    0.0007598
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0065327   -0.0646975    0.0516320
6-9 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.1105367   -0.1869451   -0.0341283
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1473142   -0.2386381   -0.0559902
6-9 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0832938   -0.1360365   -0.0305510
6-9 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0637130   -0.1221787   -0.0052473
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1738005   -0.3060054   -0.0415955
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1447120   -0.3026331    0.0132091
6-9 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1710802   -0.3880096    0.0458492
6-9 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0077872   -0.1493288    0.1337545
6-9 months     LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0961354   -0.2200320    0.0277612
6-9 months     LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0848417   -0.1749726    0.0052892
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0149471   -0.0886275    0.1185217
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0731497   -0.0574448    0.2037441
6-9 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0190716   -0.2761071    0.2379640
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0061330   -0.2060187    0.1937526
6-9 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <151 cm              >=155 cm           0.0646200   -0.0774722    0.2067122
6-9 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0502607   -0.2066051    0.1060837
6-9 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.1467131   -0.2764734   -0.0169527
6-9 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0460335   -0.1894612    0.0973942
6-9 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0183466   -0.1710039    0.1343106
6-9 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0060559   -0.1776522    0.1897640
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0067861   -0.2241122    0.2376844
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.1156853   -0.3159162    0.0845457
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0813683   -0.1066668    0.2694034
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0000789   -0.2470841    0.2469264
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1204363   -0.2289745   -0.0118981
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0766911   -0.2009638    0.0475815
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1350630   -0.2108056   -0.0593204
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1530981   -0.2414711   -0.0647251
6-9 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <151 cm              >=155 cm           0.0048661   -0.0708929    0.0806251
6-9 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0778544   -0.1928568    0.0371480
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0907093   -0.1563122   -0.0251064
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0470844   -0.1209395    0.0267707
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1140373   -0.1622392   -0.0658353
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0297120   -0.1275614    0.0681375
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0253535   -0.0812921    0.1319991
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0538446   -0.1807688    0.0730797
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0437321   -0.1426403    0.0551761
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0233386   -0.1180868    0.0714095
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0100142   -0.0836136    0.0635852
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0649135   -0.1211466   -0.0086804
9-12 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0188836   -0.0585264    0.0962935
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0418888   -0.0485694    0.1323471
9-12 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.0946518   -0.1477162   -0.0415873
9-12 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.1138941   -0.1726449   -0.0551433
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1407125   -0.2746394   -0.0067856
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1169276   -0.2721700    0.0383149
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0299954   -0.5244949    0.4645040
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0727662   -0.1532740    0.0077415
9-12 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <151 cm              >=155 cm           0.1663854   -0.1036540    0.4364248
9-12 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0507849   -0.1747718    0.0732019
9-12 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0153117   -0.1606995    0.1300761
9-12 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0425591   -0.0705449    0.1556631
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0446242   -0.1872676    0.0980192
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0066228   -0.1543391    0.1675848
9-12 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0524974   -0.1677510    0.2727458
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.2408259   -0.4175039   -0.0641480
9-12 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <151 cm              >=155 cm           0.0182657   -0.0816817    0.1182132
9-12 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0294759   -0.1346512    0.0756995
9-12 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0088669   -0.1105512    0.0928175
9-12 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0109001   -0.1262229    0.1044226
9-12 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.0156395   -0.1501435    0.1188645
9-12 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0006783   -0.1560294    0.1546728
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.2002725   -0.3845033   -0.0160416
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2767103   -0.5418119   -0.0116086
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0232716   -0.2154707    0.1689275
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0278243   -0.3042355    0.2485870
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0889663   -0.1833738    0.0054413
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0058320   -0.1098701    0.1215342
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0330810   -0.0969678    0.0308058
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0211308   -0.0999293    0.0576678
9-12 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0502036   -0.0109852    0.1113923
9-12 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0047625   -0.1005686    0.0910436
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0010943   -0.0628719    0.0650605
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0016344   -0.0806152    0.0773463
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0365038   -0.1133866    0.0403789
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0737249   -0.0404178    0.1878676
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.2304262   -0.0961816    0.5570340
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0616013   -0.2717331    0.3949358
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0687005   -0.1652487    0.0278476
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0375742   -0.1283596    0.0532112
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0305178   -0.1009842    0.0399486
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0057459   -0.0571252    0.0456334
12-15 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0696576   -0.1568752    0.0175600
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0182442   -0.0785187    0.1150071
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.1028126   -0.3898629    0.1842377
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1289228   -0.4215524    0.1637068
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0998970   -0.2156668    0.0158728
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm           0.0028046   -0.0857918    0.0914010
12-15 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0244804   -0.1642887    0.1153279
12-15 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0484917   -0.0345848    0.1315681
12-15 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0937794   -0.3057198    0.1181610
12-15 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0539690   -0.1967337    0.3046718
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.1231695   -0.2411267   -0.0052124
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0404080   -0.1647514    0.0839354
12-15 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.1338313   -0.2612838   -0.0063788
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0351869   -0.1288164    0.1991902
12-15 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.1119214   -0.2136141   -0.0102287
12-15 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0284439   -0.1382311    0.0813434
12-15 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0185395   -0.0845776    0.1216565
12-15 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0593197   -0.0557795    0.1744189
12-15 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.1664301   -0.2964618   -0.0363984
12-15 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.1147599   -0.2536728    0.0241529
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0200298   -0.1398113    0.1798709
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.2638042    0.0513057    0.4763026
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1059074   -0.2789508    0.0671360
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1472090   -0.2973599    0.0029419
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0082114   -0.1097242    0.0933015
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0005202   -0.1066466    0.1076870
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0004520   -0.0695882    0.0704922
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0322634   -0.1118844    0.0473575
12-15 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <151 cm              >=155 cm           0.7936372    0.0983444    1.4889300
12-15 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0578152   -0.6103880    0.4947577
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0498838   -0.1169956    0.0172280
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0503961   -0.1283072    0.0275150
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0084770   -0.0640353    0.0470812
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0988066   -0.1632161   -0.0343971
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.0559820   -0.2036782    0.0917142
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.1918830   -0.4127817    0.0290158
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0428277   -0.0577833    0.1434388
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0606085   -0.0368745    0.1580915
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0609083   -0.1784826    0.0566660
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0224055   -0.1010852    0.0562742
15-18 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0415346   -0.1318658    0.0487965
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0647224   -0.1710024    0.0415576
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0686452   -0.5864200    0.4491297
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.1358834   -0.2343791   -0.0373876
15-18 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1268884   -0.2601956    0.0064187
15-18 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0864873   -0.1835216    0.0105471
15-18 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0183633   -0.1642901    0.2010166
15-18 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0814611   -0.2752114    0.1122891
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0442813   -0.1768015    0.0882390
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0878944   -0.2287612    0.0529725
15-18 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0628397   -0.0880172    0.2136965
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0366095   -0.1737533    0.1005342
15-18 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0753634   -0.1587334    0.0080066
15-18 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0041781   -0.0961325    0.1044886
15-18 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.1243673   -0.2360784   -0.0126561
15-18 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0934845   -0.2225293    0.0355603
15-18 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0485899   -0.1595449    0.0623650
15-18 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0394746   -0.1748377    0.0958884
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0510087   -0.1143232    0.2163406
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0286449   -0.1039203    0.1612101
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0499583   -0.2073877    0.1074710
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0438173   -0.2017871    0.1141525
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0182417   -0.1277914    0.0913079
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0101160   -0.1363175    0.1160855
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0779335   -0.1387556   -0.0171114
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0531947   -0.1225676    0.0161781
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0279942   -0.0295059    0.0854944
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0379233   -0.0322952    0.1081418
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0969436   -0.1723031   -0.0215840
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0466347   -0.1414811    0.0482116
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.0029532   -0.0919707    0.0860642
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0282507   -0.0730942    0.1295957
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0538999   -0.1633034    0.0555036
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0866208   -0.1871660    0.0139245
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0358708   -0.1660687    0.0943271
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0406535   -0.1341236    0.0528165
18-21 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0235041   -0.1166509    0.0696427
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0192181   -0.1330683    0.0946321
18-21 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0379284   -0.1699409    0.0940841
18-21 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0357346   -0.0722114    0.1436805
18-21 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0819675   -0.2535868    0.0896517
18-21 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0445158   -0.1467609    0.0577294
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.1048767   -0.1996551   -0.0100982
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0087521   -0.1125991    0.1301033
18-21 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.1790636   -0.0557000    0.4138272
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0225072   -0.1054623    0.1504766
18-21 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.1012673   -0.2031513    0.0006167
18-21 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.1217261   -0.2309763   -0.0124759
18-21 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.1040457   -0.2080968    0.0000053
18-21 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0287790   -0.1427275    0.0851694
18-21 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0525764   -0.1911074    0.0859546
18-21 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0794928   -0.2368386    0.0778529
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0458084   -0.2099044    0.3015212
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0249386   -0.1781213    0.1282442
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1193134   -0.2993772    0.0607505
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1191763   -0.3161776    0.0778250
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0635307   -0.1709648    0.0439035
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0231768   -0.1460386    0.0996850
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0877118   -0.1473844   -0.0280393
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0266830   -0.0948524    0.0414865
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0787733   -0.1397182   -0.0178284
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0748382   -0.1450202   -0.0046563
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0211529   -0.1550683    0.1127624
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0239894   -0.0876280    0.1356068
21-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0910159   -0.1599760   -0.0220557
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1369589   -0.2218867   -0.0520310
21-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0209903   -0.1398458    0.0978651
21-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0407135   -0.1314765    0.0500495
21-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0071910   -0.1158124    0.1301945
21-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0450429   -0.1476658    0.0575800
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0233727   -0.1558947    0.1091492
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0066270   -0.1559521    0.1426981
21-24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0494496   -0.0542494    0.1531486
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0801711   -0.2190389    0.0586968
21-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0339849   -0.1119499    0.0439802
21-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0037412   -0.0878210    0.0803387
21-24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0137298   -0.0837294    0.1111890
21-24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.1220798    0.0016093    0.2425504
21-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0151799   -0.1412291    0.1108693
21-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0429182   -0.1792208    0.0933844
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0326404   -0.2601239    0.1948431
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0010374   -0.1553524    0.1574272
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.1273255   -0.3027062    0.0480552
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0673509   -0.0989073    0.2336092
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1363625   -0.2307982   -0.0419267
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0857330   -0.2047803    0.0333144
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0185215   -0.0865540    0.0495111
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0475795   -0.1241871    0.0290281
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0296307   -0.0975408    0.0382794
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0194985   -0.0985097    0.0595126
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1083961   -0.2889483    0.0721562
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0340848   -0.0973017    0.1654713


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.1151418   -0.2219269   -0.0083567
0-3 months     COHORTS          INDIA                          >=155 cm             NA                -0.0680184   -0.1115222   -0.0245145
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0755732   -0.0958050   -0.0553414
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0105529   -0.0360205    0.0149147
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.1347684   -0.2863779    0.0168411
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                -0.0280321   -0.1293592    0.0732950
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0371935   -0.2069306    0.1325436
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.1744999   -0.3641316    0.0151318
0-3 months     MAL-ED           PERU                           >=155 cm             NA                -0.0118178   -0.1436813    0.1200457
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0306591   -0.0864672    0.0251491
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0253834   -0.0360583    0.0868251
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0796104   -0.2147387    0.0555180
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0659476   -0.1439278    0.0120326
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0033239   -0.0064889   -0.0001589
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1540897   -0.2219422   -0.0862371
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0657315   -0.1126418   -0.0188212
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0404453   -0.0515332   -0.0293573
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.1390152   -0.2265408   -0.0514896
3-6 months     COHORTS          INDIA                          >=155 cm             NA                -0.0331478   -0.0707456    0.0044499
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0429088   -0.0662810   -0.0195366
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0065807   -0.0231530    0.0099917
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0963069   -0.2239597    0.0313459
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0149978   -0.0531204    0.0831161
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0561868   -0.1798455    0.0674719
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                 0.0146821   -0.1047319    0.1340960
3-6 months     MAL-ED           PERU                           >=155 cm             NA                -0.0140566   -0.1606168    0.1325036
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0075022   -0.0376083    0.0526126
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0175627   -0.0743765    0.0392511
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0198957   -0.1248304    0.0850390
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0027151   -0.0748054    0.0802356
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0008622   -0.0035939    0.0018695
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0068140   -0.0746025    0.0609746
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0330031   -0.0600668   -0.0059393
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0153543   -0.0434786    0.0127699
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0056795   -0.0160274    0.0046684
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.1044818   -0.1695972   -0.0393664
6-9 months     COHORTS          INDIA                          >=155 cm             NA                -0.0548318   -0.0895222   -0.0201415
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1449297   -0.2538819   -0.0359776
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0058381   -0.0256431    0.0139668
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                -0.0331282   -0.0631053   -0.0031511
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0281937   -0.0629368    0.1193242
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0146250   -0.0596198    0.0888699
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                 0.0160631   -0.0877301    0.1198562
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0911817   -0.1958463    0.0134829
6-9 months     MAL-ED           PERU                           >=155 cm             NA                -0.0073097   -0.1257466    0.1111272
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0040935   -0.0363818    0.0445688
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0131480   -0.0566608    0.0829569
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0874960   -0.1729914   -0.0020005
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.1131287   -0.1723385   -0.0539189
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0022105   -0.0064713    0.0020503
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0621988   -0.1121027   -0.0122950
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0489105   -0.0723053   -0.0255158
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0077215   -0.0744063    0.0898493
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0096187   -0.0380299    0.0187925
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0090255   -0.0185297    0.0004786
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0180569   -0.0477441    0.0838578
9-12 months    COHORTS          INDIA                          >=155 cm             NA                -0.0703854   -0.1045365   -0.0362343
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1111451   -0.2223661    0.0000759
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0056878   -0.0179702    0.0065946
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0019735   -0.0207170    0.0167700
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0046140   -0.0321056    0.0413337
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0310175   -0.1578666    0.0958315
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0291009   -0.0963499    0.0381481
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0008249   -0.0706854    0.0690356
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0124738   -0.0922997    0.0673521
9-12 months    MAL-ED           PERU                           >=155 cm             NA                -0.0041102   -0.1054201    0.0971996
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0494716   -0.0906410   -0.0083022
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0211023   -0.0939733    0.0517686
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0559822   -0.1313592    0.0193947
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0262835   -0.0760976    0.0235307
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                 0.0002158   -0.0024619    0.0028936
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0005544   -0.0477962    0.0489051
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0057354   -0.0482416    0.0597124
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.1523491   -0.0860594    0.3907575
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0183407   -0.0446998    0.0080183
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0025628   -0.0114353    0.0063097
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0372034   -0.1106776    0.0362709
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.1032270   -0.3610859    0.1546319
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0013889   -0.0078097    0.0050319
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0058521   -0.0063281    0.0180324
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0050257   -0.0983738    0.0883224
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0963436   -0.1992052    0.0065180
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0449353   -0.0970479    0.0071773
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0622888   -0.1351549    0.0105773
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0274488   -0.0539927    0.1088904
12-15 months   MAL-ED           PERU                           >=155 cm             NA                -0.1143438   -0.2117036   -0.0169840
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0220968   -0.0145823    0.0587760
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0436928   -0.0967745    0.0093889
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0111203   -0.0865072    0.0642667
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0045858   -0.0599780    0.0508064
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0040808   -0.0211987    0.0293604
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0395413   -0.0905217    0.0114391
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0272780   -0.0494462   -0.0051098
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0781072   -0.1894507    0.0332363
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0188447   -0.0108187    0.0485082
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0068391   -0.0200312    0.0063530
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0389611   -0.1154818    0.0375596
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0098707   -0.0259034    0.0061619
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0148864   -0.0286289   -0.0011439
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0144076   -0.0783776    0.0495624
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0417744   -0.1595081    0.0759593
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0097882   -0.0630020    0.0434256
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0360987   -0.0958101    0.0236126
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0937567   -0.1842664   -0.0032471
15-18 months   MAL-ED           PERU                           >=155 cm             NA                -0.0288954   -0.1124566    0.0546657
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0130895   -0.0147817    0.0409606
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0035232   -0.0541129    0.0470666
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0102984   -0.0974210    0.0768243
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0592179   -0.1060215   -0.0124143
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0246807   -0.0188951    0.0682565
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0446963   -0.0786492   -0.0107433
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0067547   -0.0607650    0.0742744
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0296235   -0.0635008    0.0042538
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0058487   -0.0210066    0.0093093
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0210386   -0.1019914    0.0599142
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0014254   -0.0135249    0.0163757
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0215680   -0.0614876    0.0183517
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0657609   -0.1499848    0.0184630
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0568763   -0.0121319    0.1258845
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0832276   -0.1585421   -0.0079130
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0704335   -0.1540796    0.0132125
18-21 months   MAL-ED           PERU                           >=155 cm             NA                -0.0504552   -0.1578102    0.0568997
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0209837   -0.0138773    0.0558448
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0476420   -0.1070258    0.0117418
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0454804   -0.1321634    0.0412027
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0542963   -0.1005020   -0.0080905
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0617455   -0.1081365   -0.0153545
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0063229   -0.0119696    0.0246153
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0939888   -0.1526762   -0.0353014
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0045333   -0.0171109    0.0080443
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0092416   -0.0455942    0.0271109
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0098918   -0.1286307    0.1088472
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0121438   -0.0532945    0.0290069
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0182109   -0.0730651    0.0366433
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0265885   -0.0518875    0.1050645
21-24 months   MAL-ED           PERU                           >=155 cm             NA                -0.0080924   -0.1019734    0.0857886
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0110567   -0.0433156    0.0212022
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0054289   -0.0492820    0.0601399
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0978071   -0.1740439   -0.0215704
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0228670   -0.0758269    0.0300929
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0211547   -0.0731403    0.0308309
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0021590   -0.0260491    0.0217311

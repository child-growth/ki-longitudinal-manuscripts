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

**Outcome Variable:** y_rate_haz

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
![](/tmp/d4a1e475-0edf-48ca-95ff-ef3dbbc3792f/fc42ac8a-4e46-47be-86b3-74539c88cbc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d4a1e475-0edf-48ca-95ff-ef3dbbc3792f/fc42ac8a-4e46-47be-86b3-74539c88cbc2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d4a1e475-0edf-48ca-95ff-ef3dbbc3792f/fc42ac8a-4e46-47be-86b3-74539c88cbc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.4916595   -0.5491905   -0.4341286
0-3 months     COHORTS          GUATEMALA                      <151 cm              NA                -0.5396234   -0.5660304   -0.5132163
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         NA                -0.5509113   -0.6032127   -0.4986100
0-3 months     COHORTS          INDIA                          >=155 cm             NA                -0.0400007   -0.0651843   -0.0148172
0-3 months     COHORTS          INDIA                          <151 cm              NA                -0.0733331   -0.0953367   -0.0513295
0-3 months     COHORTS          INDIA                          [151-155) cm         NA                -0.0555311   -0.0812603   -0.0298020
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0977209    0.0864556    0.1089861
0-3 months     JiVitA-3         BANGLADESH                     <151 cm              NA                 0.0645870    0.0587394    0.0704347
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm         NA                 0.0833773    0.0747030    0.0920515
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                -0.2868575   -0.3126867   -0.2610283
0-3 months     Keneba           GAMBIA                         <151 cm              NA                -0.3938937   -0.5696580   -0.2181294
0-3 months     Keneba           GAMBIA                         [151-155) cm         NA                -0.2821158   -0.3616503   -0.2025813
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0686005   -0.1403870    0.0031860
0-3 months     MAL-ED           BANGLADESH                     <151 cm              NA                -0.1396721   -0.1827687   -0.0965756
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.1047852   -0.1729481   -0.0366223
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.1377169    0.0625639    0.2128698
0-3 months     MAL-ED           BRAZIL                         <151 cm              NA                 0.1140448   -0.0054524    0.2335421
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         NA                 0.1475297    0.0015460    0.2935134
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0618888   -0.1603079    0.0365303
0-3 months     MAL-ED           INDIA                          <151 cm              NA                -0.0790645   -0.1533147   -0.0048144
0-3 months     MAL-ED           INDIA                          [151-155) cm         NA                -0.0333827   -0.1402904    0.0735251
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                 0.1052294    0.0216744    0.1887844
0-3 months     MAL-ED           NEPAL                          <151 cm              NA                 0.0180542   -0.0388140    0.0749223
0-3 months     MAL-ED           NEPAL                          [151-155) cm         NA                 0.1208362    0.0147518    0.2269205
0-3 months     MAL-ED           PERU                           >=155 cm             NA                -0.2663111   -0.3385541   -0.1940682
0-3 months     MAL-ED           PERU                           <151 cm              NA                -0.2499288   -0.2954185   -0.2044391
0-3 months     MAL-ED           PERU                           [151-155) cm         NA                -0.2843879   -0.3628661   -0.2059097
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1692202   -0.2266332   -0.1118073
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.2978948   -0.4741094   -0.1216802
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.1796332   -0.2938134   -0.0654530
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1552341   -0.2080481   -0.1024201
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1035841   -0.1866125   -0.0205556
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1235916   -0.2099845   -0.0371986
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.2052116   -0.2777423   -0.1326810
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              NA                -0.2563079   -0.2907772   -0.2218385
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.1919521   -0.2452728   -0.1386315
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2189242   -0.2619381   -0.1759104
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.2363225   -0.2594804   -0.2131646
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.2296440   -0.2649527   -0.1943353
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                -0.4302430   -0.4895965   -0.3708895
0-3 months     PROBIT           BELARUS                        <151 cm              NA                -0.5286659   -0.5496794   -0.5076525
0-3 months     PROBIT           BELARUS                        [151-155) cm         NA                -0.4485672   -0.5169541   -0.3801804
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1215666   -0.1547710   -0.0883623
0-3 months     PROVIDE          BANGLADESH                     <151 cm              NA                -0.2086210   -0.2330259   -0.1842160
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.1977760   -0.2346416   -0.1609104
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.1053858   -0.1487833   -0.0619882
0-3 months     SAS-CompFeed     INDIA                          <151 cm              NA                -0.1575404   -0.1838216   -0.1312592
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.1325914   -0.1770883   -0.0880946
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1321468   -0.1443702   -0.1199235
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.2447737   -0.2909661   -0.1985813
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.2071565   -0.2346393   -0.1796737
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0335818   -0.0788134    0.0116498
3-6 months     COHORTS          GUATEMALA                      <151 cm              NA                -0.1026155   -0.1201657   -0.0850653
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1079948   -0.1423084   -0.0736811
3-6 months     COHORTS          INDIA                          >=155 cm             NA                -0.0429308   -0.0638882   -0.0219733
3-6 months     COHORTS          INDIA                          <151 cm              NA                -0.0539981   -0.0713971   -0.0365990
3-6 months     COHORTS          INDIA                          [151-155) cm         NA                -0.0582141   -0.0779918   -0.0384363
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                 0.0075080   -0.0040739    0.0190898
3-6 months     JiVitA-3         BANGLADESH                     <151 cm              NA                -0.0063912   -0.0126879   -0.0000945
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.0044145   -0.0140274    0.0051984
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0186689   -0.0396668    0.0023290
3-6 months     Keneba           GAMBIA                         <151 cm              NA                 0.0212822   -0.0768704    0.1194347
3-6 months     Keneba           GAMBIA                         [151-155) cm         NA                -0.0453852   -0.0989925    0.0082222
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0073994   -0.0571727    0.0719715
3-6 months     MAL-ED           BANGLADESH                     <151 cm              NA                -0.0131294   -0.0418675    0.0156087
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0627195   -0.1155232   -0.0099158
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0491797   -0.0001391    0.0984984
3-6 months     MAL-ED           BRAZIL                         <151 cm              NA                 0.0495781   -0.0196944    0.1188506
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         NA                 0.1343150    0.0402846    0.2283453
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0266139   -0.0979975    0.0447697
3-6 months     MAL-ED           INDIA                          <151 cm              NA                -0.0558112   -0.1014028   -0.0102196
3-6 months     MAL-ED           INDIA                          [151-155) cm         NA                -0.0187266   -0.0674174    0.0299643
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0314541   -0.0954987    0.0325904
3-6 months     MAL-ED           NEPAL                          <151 cm              NA                -0.0204440   -0.0552822    0.0143942
3-6 months     MAL-ED           NEPAL                          [151-155) cm         NA                 0.0011066   -0.0550053    0.0572186
3-6 months     MAL-ED           PERU                           >=155 cm             NA                 0.0241685   -0.0590764    0.1074133
3-6 months     MAL-ED           PERU                           <151 cm              NA                 0.0063781   -0.0319233    0.0446794
3-6 months     MAL-ED           PERU                           [151-155) cm         NA                 0.0809682    0.0106196    0.1513169
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0212205   -0.0662998    0.0238587
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0255501   -0.0712957    0.1223959
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.0162705   -0.0924061    0.1249471
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0601481   -0.1018476   -0.0184486
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0893925   -0.1743679   -0.0044171
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0597681   -0.1208260    0.0012899
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0569591   -0.1113560   -0.0025621
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0559555   -0.0849872   -0.0269239
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0343017   -0.0835126    0.0149093
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0140493   -0.0245679    0.0526666
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0280284    0.0058180    0.0502388
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0380399    0.0032610    0.0728189
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                 0.0493991    0.0306811    0.0681171
3-6 months     PROBIT           BELARUS                        <151 cm              NA                 0.0401639    0.0159008    0.0644270
3-6 months     PROBIT           BELARUS                        [151-155) cm         NA                 0.0507184    0.0009708    0.1004660
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0292143   -0.0650421    0.0066134
3-6 months     PROVIDE          BANGLADESH                     <151 cm              NA                -0.0208780   -0.0421396    0.0003836
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0374781   -0.0707594   -0.0041968
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0006202   -0.0254555    0.0242151
3-6 months     SAS-CompFeed     INDIA                          <151 cm              NA                -0.0161027   -0.0522615    0.0200560
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0174833   -0.0464006    0.0114340
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0804166   -0.1016086   -0.0592246
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0787871   -0.1252556   -0.0323186
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0950532   -0.1287672   -0.0613392
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021802   -0.0085930    0.0129534
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0203838   -0.0573733    0.0166057
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0079525   -0.0171153    0.0330204
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0863384   -0.1170190   -0.0556579
6-9 months     COHORTS          GUATEMALA                      <151 cm              NA                -0.1202970   -0.1350797   -0.1055143
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1439333   -0.1708831   -0.1169835
6-9 months     COHORTS          INDIA                          >=155 cm             NA                -0.0768021   -0.0952649   -0.0583393
6-9 months     COHORTS          INDIA                          <151 cm              NA                -0.1002645   -0.1145521   -0.0859770
6-9 months     COHORTS          INDIA                          [151-155) cm         NA                -0.0985633   -0.1162636   -0.0808630
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0437654   -0.0929468    0.0054160
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.1077720   -0.1345210   -0.0810231
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0993080   -0.1476592   -0.0509568
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0150957   -0.0413769    0.0111855
6-9 months     Keneba           GAMBIA                         <151 cm              NA                -0.0869504   -0.1769401    0.0030392
6-9 months     Keneba           GAMBIA                         [151-155) cm         NA                -0.0136417   -0.0693092    0.0420257
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                 0.0405916    0.0213822    0.0598010
6-9 months     LCNI-5           MALAWI                         <151 cm              NA                 0.0144560   -0.0351831    0.0640951
6-9 months     LCNI-5           MALAWI                         [151-155) cm         NA                 0.0112598   -0.0218502    0.0443698
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0876739   -0.1300904   -0.0452575
6-9 months     MAL-ED           BANGLADESH                     <151 cm              NA                -0.0743206   -0.0952080   -0.0534332
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0546975   -0.0949594   -0.0144356
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0014360   -0.0387421    0.0416140
6-9 months     MAL-ED           BRAZIL                         <151 cm              NA                 0.0275476   -0.0672653    0.1223605
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         NA                 0.0182463   -0.0541839    0.0906765
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0756804   -0.1287320   -0.0226289
6-9 months     MAL-ED           INDIA                          <151 cm              NA                -0.0439486   -0.0744072   -0.0134900
6-9 months     MAL-ED           INDIA                          [151-155) cm         NA                -0.1023674   -0.1472452   -0.0574896
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0059484   -0.0568705    0.0449737
6-9 months     MAL-ED           NEPAL                          <151 cm              NA                -0.0545996   -0.0798211   -0.0293780
6-9 months     MAL-ED           NEPAL                          [151-155) cm         NA                -0.0180935   -0.0548114    0.0186244
6-9 months     MAL-ED           PERU                           >=155 cm             NA                -0.0412844   -0.1019371    0.0193684
6-9 months     MAL-ED           PERU                           <151 cm              NA                -0.0359024   -0.0669857   -0.0048191
6-9 months     MAL-ED           PERU                           [151-155) cm         NA                -0.0255604   -0.0801952    0.0290743
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0252318   -0.0553533    0.0048897
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.0359581   -0.1356438    0.0637275
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.0959635   -0.1797893   -0.0121378
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1067777   -0.1431184   -0.0704371
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0674020   -0.1406916    0.0058877
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1080596   -0.2107420   -0.0053773
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0285145   -0.0694785    0.0124496
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0688258   -0.0928558   -0.0447957
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0567664   -0.0928405   -0.0206923
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0123228   -0.0166587    0.0413042
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0379857   -0.0549421   -0.0210292
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0540396   -0.0807375   -0.0273416
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                 0.0527301    0.0380266    0.0674336
6-9 months     PROBIT           BELARUS                        <151 cm              NA                 0.0672044    0.0326686    0.1017403
6-9 months     PROBIT           BELARUS                        [151-155) cm         NA                 0.0258179   -0.0243535    0.0759892
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0405704   -0.0644884   -0.0166524
6-9 months     PROVIDE          BANGLADESH                     <151 cm              NA                -0.0698304   -0.0849008   -0.0547601
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0592097   -0.0797691   -0.0386503
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0651334   -0.0766635   -0.0536033
6-9 months     SAS-CompFeed     INDIA                          <151 cm              NA                -0.1060596   -0.1298859   -0.0822332
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0720485   -0.1102323   -0.0338647
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.1107587   -0.1492681   -0.0722493
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.0924217   -0.1166013   -0.0682422
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.1187680   -0.1569632   -0.0805728
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0531086   -0.0739340   -0.0322832
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0614045   -0.1001842   -0.0226249
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0489354   -0.0838904   -0.0139803
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0298082   -0.0397520   -0.0198644
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0213724   -0.0522180    0.0094732
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0510842   -0.0734937   -0.0286746
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.1099831   -0.1388717   -0.0810946
9-12 months    COHORTS          GUATEMALA                      <151 cm              NA                -0.0868235   -0.0989698   -0.0746772
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0866470   -0.1098407   -0.0634533
9-12 months    COHORTS          INDIA                          >=155 cm             NA                -0.0670217   -0.0835134   -0.0505300
9-12 months    COHORTS          INDIA                          <151 cm              NA                -0.0919239   -0.1060972   -0.0777506
9-12 months    COHORTS          INDIA                          [151-155) cm         NA                -0.1050953   -0.1225140   -0.0876767
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0301653   -0.0796917    0.0193611
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0742122   -0.0948225   -0.0536018
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0692025   -0.1073834   -0.0310217
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0484651   -0.0619361   -0.0349941
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0429869   -0.2207018    0.1347280
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0634571   -0.0970216   -0.0298926
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                -0.1054781   -0.1257434   -0.0852128
9-12 months    Keneba           GAMBIA                         <151 cm              NA                -0.0111639   -0.1204582    0.0981303
9-12 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.1122940   -0.1601225   -0.0644656
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.0485129   -0.0741156   -0.0229103
9-12 months    LCNI-5           MALAWI                         <151 cm              NA                -0.0291037   -0.0800610    0.0218535
9-12 months    LCNI-5           MALAWI                         [151-155) cm         NA                -0.0337251   -0.0719216    0.0044713
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0834599   -0.1427796   -0.0241401
9-12 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.0902030   -0.1091951   -0.0712109
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0759293   -0.1133774   -0.0384811
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                 0.0175339   -0.0186745    0.0537423
9-12 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.0497473   -0.0265756    0.1260701
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0808751   -0.1501941   -0.0115561
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0968474   -0.1294727   -0.0642220
9-12 months    MAL-ED           INDIA                          <151 cm              NA                -0.0803240   -0.1052577   -0.0553902
9-12 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.1072057   -0.1339308   -0.0804805
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0820302   -0.1184293   -0.0456312
9-12 months    MAL-ED           NEPAL                          <151 cm              NA                -0.0581802   -0.0816656   -0.0346947
9-12 months    MAL-ED           NEPAL                          [151-155) cm         NA                -0.0718974   -0.1055323   -0.0382625
9-12 months    MAL-ED           PERU                           >=155 cm             NA                -0.0506196   -0.0972285   -0.0040108
9-12 months    MAL-ED           PERU                           <151 cm              NA                -0.0449520   -0.0745475   -0.0153566
9-12 months    MAL-ED           PERU                           [151-155) cm         NA                -0.0400139   -0.0845187    0.0044910
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0624198   -0.0918271   -0.0330125
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.1150340   -0.1841446   -0.0459233
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.1447132   -0.2471295   -0.0422969
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1554044   -0.1934539   -0.1173549
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1202222   -0.1953939   -0.0450506
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1185406   -0.2391230    0.0020418
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0358689   -0.0705611   -0.0011768
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0514395   -0.0696847   -0.0331944
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0274447   -0.0601943    0.0053048
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0314671   -0.0542778   -0.0086564
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0337485   -0.0484269   -0.0190702
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0327895   -0.0574420   -0.0081370
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                 0.0383187    0.0175244    0.0591129
9-12 months    PROBIT           BELARUS                        <151 cm              NA                 0.0662223    0.0443219    0.0881227
9-12 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.0472320   -0.0013641    0.0958282
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0727680   -0.0944907   -0.0510453
9-12 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.0575554   -0.0724506   -0.0426602
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0677187   -0.0912731   -0.0441642
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0876979   -0.1062879   -0.0691078
9-12 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.0888211   -0.1134069   -0.0642352
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0485574   -0.0835943   -0.0135204
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.1928823   -0.2863532   -0.0994113
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.1080495   -0.1959267   -0.0201724
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.1797310   -0.2718200   -0.0876421
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0614681   -0.0792949   -0.0436413
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0723458   -0.1085080   -0.0361835
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0698001   -0.1022372   -0.0373630
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0599664   -0.0688851   -0.0510478
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0570557   -0.0852854   -0.0288259
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0552751   -0.0749160   -0.0356342
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0911813   -0.1244723   -0.0578903
12-15 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.0980169   -0.1109944   -0.0850394
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0712367   -0.0930425   -0.0494309
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.0159202   -0.0732758    0.1051162
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0016197   -0.0344744    0.0312351
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0289560   -0.0710842    0.0131722
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0437480   -0.0617245   -0.0257714
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0627106   -0.1310723    0.0056511
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0376094   -0.0738860   -0.0013328
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0596888   -0.0733618   -0.0460159
12-15 months   Keneba           GAMBIA                         <151 cm              NA                -0.0656312   -0.1157433   -0.0155192
12-15 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.0344913   -0.0639308   -0.0050518
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0308104   -0.0865279    0.0249071
12-15 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0506721   -0.1106074    0.0092633
12-15 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0144918   -0.0840772    0.0550936
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0423012   -0.0817065   -0.0028959
12-15 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.0640617   -0.0851598   -0.0429636
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0519965   -0.0771382   -0.0268547
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0081684   -0.0229204    0.0392572
12-15 months   MAL-ED           BRAZIL                         <151 cm              NA                -0.0498528   -0.0871534   -0.0125522
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.0309025   -0.0294939    0.0912989
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0350967   -0.0691230   -0.0010703
12-15 months   MAL-ED           INDIA                          <151 cm              NA                -0.0731473   -0.0949147   -0.0513800
12-15 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.0468929   -0.0740316   -0.0197541
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0855034   -0.1184779   -0.0525290
12-15 months   MAL-ED           NEPAL                          <151 cm              NA                -0.0569424   -0.0782832   -0.0356017
12-15 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.0475925   -0.0771812   -0.0180039
12-15 months   MAL-ED           PERU                           >=155 cm             NA                -0.0157381   -0.0603696    0.0288934
12-15 months   MAL-ED           PERU                           <151 cm              NA                -0.0826839   -0.1070887   -0.0582791
12-15 months   MAL-ED           PERU                           [151-155) cm         NA                -0.0609701   -0.0913156   -0.0306246
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0679733   -0.0938587   -0.0420880
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.0595871   -0.1123962   -0.0067781
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.0539117   -0.0291402    0.1369636
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0559215   -0.0905860   -0.0212569
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0804366   -0.1371275   -0.0237457
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1002692   -0.1450867   -0.0554518
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1378686   -0.1677635   -0.1079737
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.1204536   -0.1455623   -0.0953449
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.1323484   -0.1625667   -0.1021301
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0383900   -0.0622076   -0.0145724
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0335201   -0.0456345   -0.0214057
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0480922   -0.0676236   -0.0285608
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0057918   -0.1233106    0.1348943
12-15 months   PROBIT           BELARUS                        <151 cm              NA                 0.3157818    0.1129130    0.5186506
12-15 months   PROBIT           BELARUS                        [151-155) cm         NA                -0.0075912   -0.2114323    0.1962500
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0345095   -0.0563798   -0.0126392
12-15 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.0404787   -0.0542422   -0.0267152
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0468701   -0.0672862   -0.0264539
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0788710   -0.0956883   -0.0620537
12-15 months   SAS-CompFeed     INDIA                          <151 cm              NA                -0.0673679   -0.0893238   -0.0454120
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.1112428   -0.1397027   -0.0827829
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0422443    0.0113089    0.0731796
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                 0.0222259   -0.0265416    0.0709933
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.0328778   -0.1190378    0.0532821
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0762874   -0.0948028   -0.0577720
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0474685   -0.0831486   -0.0117884
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0406824   -0.0745147   -0.0068500
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0618705   -0.0743612   -0.0493799
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0746525   -0.1190651   -0.0302400
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0630422   -0.0912466   -0.0348377
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0559729   -0.0858481   -0.0260977
15-18 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.0504382   -0.0643240   -0.0365524
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0689890   -0.0960124   -0.0419656
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0155072   -0.0274641   -0.0035502
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0205397   -0.1647378    0.1236584
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0490360   -0.0864086   -0.0116635
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0280690   -0.0411142   -0.0150238
15-18 months   Keneba           GAMBIA                         <151 cm              NA                -0.0602242   -0.1074784   -0.0129700
15-18 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.0523042   -0.0847307   -0.0198777
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0444700   -0.0786414   -0.0102987
15-18 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0243966   -0.0736390    0.0248458
15-18 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0725057   -0.1321841   -0.0128273
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0350751   -0.0826707    0.0125205
15-18 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.0413903   -0.0586240   -0.0241565
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0656975   -0.0905659   -0.0408291
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0228733   -0.0515784    0.0058317
15-18 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0013212   -0.0455817    0.0482242
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0393365   -0.0803757    0.0017026
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0244633   -0.0500939    0.0011674
15-18 months   MAL-ED           INDIA                          <151 cm              NA                -0.0474664   -0.0656183   -0.0293146
15-18 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.0274749   -0.0542006   -0.0007492
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0152072   -0.0539869    0.0235725
15-18 months   MAL-ED           NEPAL                          <151 cm              NA                -0.0604501   -0.0806374   -0.0402628
15-18 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.0566266   -0.0859972   -0.0272560
15-18 months   MAL-ED           PERU                           >=155 cm             NA                -0.0242892   -0.0608736    0.0122951
15-18 months   MAL-ED           PERU                           <151 cm              NA                -0.0385859   -0.0586851   -0.0184868
15-18 months   MAL-ED           PERU                           [151-155) cm         NA                -0.0317609   -0.0656606    0.0021389
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0357212   -0.0593607   -0.0120817
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0029166   -0.0552364    0.0610696
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.0055606   -0.0462053    0.0350841
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0855302   -0.1156659   -0.0553945
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0872955   -0.1336138   -0.0409772
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0976951   -0.1468340   -0.0485562
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0579150   -0.0926395   -0.0231906
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0545534   -0.0741419   -0.0349649
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0590477   -0.0892571   -0.0288383
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0010864   -0.0210733    0.0189006
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0211427   -0.0321773   -0.0101082
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0179890   -0.0348907   -0.0010872
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0567966   -0.0734609   -0.0401323
15-18 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.0327284   -0.0446918   -0.0207649
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0352027   -0.0540052   -0.0164003
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0027178   -0.0184828    0.0130471
15-18 months   SAS-CompFeed     INDIA                          <151 cm              NA                -0.0243041   -0.0455473   -0.0030608
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0109266   -0.0464204    0.0245672
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0433150   -0.0709591   -0.0156710
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.0355788   -0.0538673   -0.0172903
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.0286340   -0.0544892   -0.0027788
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0141725   -0.0353159    0.0069710
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0168117   -0.0503609    0.0167376
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0360150   -0.0659425   -0.0060874
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0629150   -0.0758828   -0.0499473
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0615084   -0.1067215   -0.0162954
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0683571   -0.1001202   -0.0365939
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0271597   -0.0557842    0.0014649
18-21 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.0182397   -0.0303480   -0.0061314
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0270920   -0.0528097   -0.0013742
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0219641   -0.0352557   -0.0086724
18-21 months   Keneba           GAMBIA                         <151 cm              NA                -0.0284196   -0.0713018    0.0144626
18-21 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.0030869   -0.0369682    0.0307945
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0148086   -0.0335169    0.0038996
18-21 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0266985   -0.0838155    0.0304186
18-21 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0179584   -0.0478186    0.0119017
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0100778   -0.0230493    0.0432048
18-21 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.0231367   -0.0368690   -0.0094045
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                 0.0059771   -0.0212153    0.0331694
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0361083   -0.0631690   -0.0090477
18-21 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0529372   -0.0188921    0.1247664
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0068113   -0.0470861    0.0334635
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0243299   -0.0034724    0.0521322
18-21 months   MAL-ED           INDIA                          <151 cm              NA                 0.0021972   -0.0130118    0.0174063
18-21 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.0152983   -0.0370273    0.0064306
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0187841   -0.0501766    0.0126084
18-21 months   MAL-ED           NEPAL                          <151 cm              NA                -0.0344134   -0.0525690   -0.0162577
18-21 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.0202489   -0.0446801    0.0041822
18-21 months   MAL-ED           PERU                           >=155 cm             NA                -0.0076013   -0.0486947    0.0334921
18-21 months   MAL-ED           PERU                           <151 cm              NA                -0.0036063   -0.0220116    0.0147989
18-21 months   MAL-ED           PERU                           [151-155) cm         NA                -0.0215056   -0.0549104    0.0118992
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0345275   -0.0564048   -0.0126502
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0034370   -0.0709156    0.0777895
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.0468033   -0.0929112   -0.0006953
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0144471   -0.0411884    0.0122943
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0376371   -0.0934419    0.0181677
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0326513   -0.0965147    0.0312121
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0336446   -0.0676083    0.0003190
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0396054   -0.0555190   -0.0236918
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0351342   -0.0620540   -0.0082143
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0171348   -0.0348427    0.0005731
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0363485   -0.0473414   -0.0253557
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0198317   -0.0353952   -0.0042683
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0017341   -0.0158893    0.0193576
18-21 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.0128982   -0.0242026   -0.0015938
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0166715   -0.0323297   -0.0010134
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0725605   -0.0869406   -0.0581803
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0476989   -0.0945697   -0.0008281
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0530259   -0.0889936   -0.0170582
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0084451   -0.0129285    0.0298187
21-24 months   COHORTS          GUATEMALA                      <151 cm              NA                 0.0008010   -0.0085194    0.0101214
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0249657   -0.0441921   -0.0057393
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0160177    0.0031512    0.0288842
21-24 months   Keneba           GAMBIA                         <151 cm              NA                 0.0239848   -0.0150395    0.0630091
21-24 months   Keneba           GAMBIA                         [151-155) cm         NA                 0.0043008   -0.0234606    0.0320623
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0269259    0.0053187    0.0485331
21-24 months   LCNI-5           MALAWI                         <151 cm              NA                 0.0423255    0.0078693    0.0767818
21-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                 0.0079021   -0.0188458    0.0346500
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0365457   -0.0041948    0.0772862
21-24 months   MAL-ED           BANGLADESH                     <151 cm              NA                 0.0253546    0.0098551    0.0408540
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                 0.0215746   -0.0026777    0.0458268
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0193374   -0.0014818    0.0401566
21-24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0247527   -0.0065427    0.0560480
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0104784   -0.0543670    0.0334102
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0221599   -0.0012492    0.0455689
21-24 months   MAL-ED           INDIA                          <151 cm              NA                 0.0287127    0.0126227    0.0448027
21-24 months   MAL-ED           INDIA                          [151-155) cm         NA                 0.0363843    0.0158047    0.0569639
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0244257   -0.0489595    0.0001082
21-24 months   MAL-ED           NEPAL                          <151 cm              NA                 0.0074875   -0.0108054    0.0257804
21-24 months   MAL-ED           NEPAL                          [151-155) cm         NA                 0.0229168   -0.0089235    0.0547570
21-24 months   MAL-ED           PERU                           >=155 cm             NA                 0.0682353    0.0331424    0.1033283
21-24 months   MAL-ED           PERU                           <151 cm              NA                 0.0583988    0.0366955    0.0801021
21-24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.0510358    0.0257342    0.0763373
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0478720    0.0291017    0.0666423
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0358797   -0.0315801    0.1033396
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.0337624   -0.0077819    0.0753068
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0019316   -0.0261517    0.0300150
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0133264   -0.0641521    0.0374993
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0405669   -0.0083413    0.0894752
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0630708    0.0334515    0.0926901
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                 0.0330488    0.0185649    0.0475327
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                 0.0419938    0.0140429    0.0699446
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0651459    0.0453538    0.0849380
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0616659    0.0506533    0.0726785
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0530421    0.0373088    0.0687755
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0477388    0.0279924    0.0674852
21-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                 0.0473186    0.0357955    0.0588417
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                 0.0443638    0.0260626    0.0626650
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0185660    0.0038782    0.0332538
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0004829   -0.0651468    0.0641809
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0365573   -0.0017384    0.0748530


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5365497   -0.5583847   -0.5147148
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0582849   -0.0721635   -0.0444062
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0741071    0.0691789    0.0790353
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2887887   -0.3134896   -0.2640878
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2618635   -0.2960359   -0.2276911
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1762601   -0.2261696   -0.1263506
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4316590   -0.4904652   -0.3728527
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1875263   -0.2048955   -0.1701570
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1310305   -0.1594783   -0.1025827
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1495856   -0.1604488   -0.1387225
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0957993   -0.1105012   -0.0810975
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0514792   -0.0626143   -0.0403442
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0035307   -0.0084020    0.0013406
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0195798   -0.0386524   -0.0005072
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0375957   -0.0670579   -0.0081335
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0256338   -0.0057477    0.0570153
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0091896   -0.0472785    0.0288994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0492863    0.0302583    0.0683143
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0271792   -0.0431005   -0.0112579
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0098351   -0.0281172    0.0084471
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0837277   -0.1004553   -0.0670001
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0014297   -0.0081164    0.0109757
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1207922   -0.1327588   -0.1088255
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0937321   -0.1032138   -0.0842503
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                -0.0954873   -0.1168026   -0.0741720
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0166431   -0.0399582    0.0066721
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0289231    0.0129358    0.0449105
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0713068   -0.0942272   -0.0483864
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0330997   -0.0572939   -0.0089056
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0231170   -0.0506622    0.0044281
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0520877    0.0375450    0.0666303
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823248   -0.0908399   -0.0738096
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0527773   -0.0688986   -0.0366560
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0321314   -0.0408532   -0.0234097
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0906593   -0.1007699   -0.0805488
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0876183   -0.0967695   -0.0784672
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0642537   -0.0813044   -0.0472030
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0492418   -0.0639013   -0.0345823
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1040073   -0.1223963   -0.0856184
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0441370   -0.0635936   -0.0246805
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0919508   -0.1077840   -0.0761177
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0413365   -0.0628572   -0.0198159
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0814634   -0.1083205   -0.0546062
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0388341    0.0177812    0.0598870
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0790426   -0.0933302   -0.0647549
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0648773   -0.0790908   -0.0506638
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0589491   -0.0667403   -0.0511580
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0890448   -0.0994790   -0.0786107
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                -0.0059822   -0.0310598    0.0190953
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0428959   -0.0591047   -0.0266870
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0561392   -0.0682695   -0.0440088
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0398116   -0.0766125   -0.0030107
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0564431   -0.0717375   -0.0411487
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0658390   -0.0837720   -0.0479060
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0566955   -0.0797700   -0.0336210
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0076266   -0.1179475    0.1332008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0826021   -0.0977850   -0.0674191
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0637337   -0.0783330   -0.0491344
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624783   -0.0735129   -0.0514437
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0539992   -0.0650725   -0.0429259
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0176373   -0.0308203   -0.0044542
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0321094   -0.0438971   -0.0203218
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0456083   -0.0712437   -0.0199728
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380016   -0.0508948   -0.0251084
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0279240   -0.0472295   -0.0086185
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0379764   -0.0467131   -0.0292397
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0124388   -0.0250108    0.0001332
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0200720   -0.0354178   -0.0047262
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0628851   -0.0744481   -0.0513220
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0211359   -0.0310704   -0.0112015
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0200082   -0.0320465   -0.0079700
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0156975   -0.0319463    0.0005513
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0059994   -0.0054729    0.0174717
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0313891   -0.0507513   -0.0120268
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0108178   -0.0189879   -0.0026477
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0681355   -0.0808990   -0.0553719
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0050892   -0.0130144    0.0028360
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0159349    0.0045018    0.0273680
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0260736    0.0105895    0.0415576
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0295109    0.0185329    0.0404890
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0458597    0.0290311    0.0626883
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0466450    0.0380173    0.0552728
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0201135    0.0066785    0.0335484


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0479638   -0.1111347    0.0152071
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0592518   -0.1368867    0.0183831
0-3 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0333324   -0.0668398    0.0001751
0-3 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0155304   -0.0516077    0.0205470
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0331338   -0.0449261   -0.0213415
0-3 months     JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0143436   -0.0276684   -0.0010188
0-3 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1070362   -0.2846991    0.0706266
0-3 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0047417   -0.0789448    0.0884282
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0710716   -0.1547007    0.0125574
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0361847   -0.1351850    0.0628156
0-3 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0236720   -0.1648563    0.1175122
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0098128   -0.1543962    0.1740219
0-3 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0171757   -0.1406030    0.1062516
0-3 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0285062   -0.1170531    0.1740654
0-3 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0871752   -0.1889526    0.0146022
0-3 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0156068   -0.1199860    0.1511996
0-3 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <151 cm              >=155 cm           0.0163823   -0.0690853    0.1018499
0-3 months     MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0180767   -0.1246722    0.0885187
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.1286746   -0.3145691    0.0572200
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0104130   -0.1380325    0.1172066
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0516500   -0.0473173    0.1506173
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0316425   -0.0695842    0.1328693
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0510962   -0.1317320    0.0295396
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0132595   -0.0766943    0.1032133
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0173982   -0.0663789    0.0315824
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0107198   -0.0665332    0.0450936
0-3 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0984229   -0.1510238   -0.0458220
0-3 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0183242   -0.0667070    0.0300586
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0870544   -0.1281957   -0.0459131
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0762094   -0.1261043   -0.0263145
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0521546   -0.0991371   -0.0051722
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0272057   -0.0543472   -0.0000642
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1126269   -0.1604157   -0.0648380
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0750097   -0.1050791   -0.0449402
3-6 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0690337   -0.1174432   -0.0206243
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0744130   -0.1313435   -0.0174825
3-6 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0110673   -0.0382413    0.0161068
3-6 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0152833   -0.0441078    0.0135412
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0138992   -0.0267058   -0.0010926
3-6 months     JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0119225   -0.0270823    0.0032373
3-6 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <151 cm              >=155 cm           0.0399511   -0.0604352    0.1403374
3-6 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0267163   -0.0842788    0.0308463
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0205288   -0.0909838    0.0499261
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0701189   -0.1528043    0.0125665
3-6 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0003985   -0.0846355    0.0854324
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0851353   -0.0214980    0.1917687
3-6 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0291973   -0.1158398    0.0574451
3-6 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0078873   -0.0788076    0.0945822
3-6 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0110101   -0.0621543    0.0841746
3-6 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0325608   -0.0527424    0.1178640
3-6 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0177904   -0.1095492    0.0739684
3-6 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0567998   -0.0524446    0.1660442
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0467706   -0.0602657    0.1538069
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0374910   -0.0797253    0.1547073
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0292444   -0.1240669    0.0655781
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0003800   -0.0734816    0.0742417
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0010035   -0.0607635    0.0627706
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0226574   -0.0507965    0.0961113
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0139791   -0.0306439    0.0586020
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm           0.0239906   -0.0279489    0.0759301
3-6 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0092352   -0.0361776    0.0177072
3-6 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0013193   -0.0395353    0.0421739
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0083363   -0.0332281    0.0499007
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0082638   -0.0572154    0.0406878
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0154826   -0.0554762    0.0245110
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0168631   -0.0471698    0.0134436
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0016295   -0.0494437    0.0527028
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0146366   -0.0545158    0.0252427
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0225640   -0.0610990    0.0159710
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0057723   -0.0215246    0.0330693
6-9 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0339586   -0.0680360    0.0001188
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0575949   -0.0984449   -0.0167449
6-9 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0234624   -0.0468768   -0.0000480
6-9 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0217612   -0.0474588    0.0039365
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0640066   -0.1200363   -0.0079770
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0555426   -0.1246156    0.0135305
6-9 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0718547   -0.1655783    0.0218689
6-9 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0014540   -0.0601619    0.0630698
6-9 months     LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0261356   -0.0794138    0.0271426
6-9 months     LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0293318   -0.0678042    0.0091407
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0133533   -0.0339983    0.0607049
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0329764   -0.0255677    0.0915205
6-9 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0261116   -0.0764958    0.1287191
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0168103   -0.0657283    0.0993489
6-9 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <151 cm              >=155 cm           0.0317318   -0.0295314    0.0929951
6-9 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0266870   -0.0966442    0.0432702
6-9 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0486512   -0.1055301    0.0082278
6-9 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0121451   -0.0751497    0.0508595
6-9 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <151 cm              >=155 cm           0.0053819   -0.0627850    0.0735488
6-9 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0157239   -0.0661350    0.0975829
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0107263   -0.1152439    0.0937912
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0707317   -0.1603764    0.0189130
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0393757   -0.0425366    0.1212880
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0012819   -0.1101628    0.1075990
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0403113   -0.0878640    0.0072413
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0282520   -0.0830313    0.0265274
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0503085   -0.0840654   -0.0165516
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0663624   -0.1058105   -0.0269143
6-9 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <151 cm              >=155 cm           0.0144743   -0.0185121    0.0474608
6-9 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0269122   -0.0785610    0.0247366
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0292600   -0.0575394   -0.0009807
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0186393   -0.0501744    0.0128957
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0409262   -0.0616403   -0.0202121
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0069151   -0.0530604    0.0392302
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0183370   -0.0272162    0.0638901
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0080093   -0.0622909    0.0462723
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0082959   -0.0522306    0.0356387
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0041733   -0.0367087    0.0450552
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0084357   -0.0239819    0.0408534
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0212760   -0.0458110    0.0032591
9-12 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0231596   -0.0082837    0.0546029
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0233361   -0.0135767    0.0602489
9-12 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.0249022   -0.0466469   -0.0031574
9-12 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0380736   -0.0620736   -0.0140737
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0440469   -0.0977188    0.0096250
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0390373   -0.1017033    0.0236287
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm           0.0054782   -0.1693190    0.1802754
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0149920   -0.0487293    0.0187453
9-12 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <151 cm              >=155 cm           0.0943142   -0.0168889    0.2055173
9-12 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0068159   -0.0587232    0.0450913
9-12 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0194092   -0.0381423    0.0769607
9-12 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0147878   -0.0312701    0.0608457
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0067431   -0.0690616    0.0555754
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0075306   -0.0627115    0.0777727
9-12 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0322134   -0.0522412    0.1166679
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0984090   -0.1765402   -0.0202778
9-12 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <151 cm              >=155 cm           0.0165234   -0.0245133    0.0575601
9-12 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0103583   -0.0525299    0.0318133
9-12 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0238501   -0.0196528    0.0673530
9-12 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0101328   -0.0395511    0.0598167
9-12 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <151 cm              >=155 cm           0.0056676   -0.0497273    0.0610625
9-12 months    MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0106058   -0.0542036    0.0754152
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0526141   -0.1279115    0.0226832
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0822934   -0.1888991    0.0243124
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0351822   -0.0490167    0.1193810
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0368638   -0.0898154    0.1635429
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0155706   -0.0547522    0.0236110
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0084242   -0.0392764    0.0561248
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0022815   -0.0294531    0.0248902
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0013225   -0.0349670    0.0323220
9-12 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0279036    0.0022047    0.0536025
9-12 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0089133   -0.0303594    0.0481861
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0152126   -0.0111197    0.0415449
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0050493   -0.0270189    0.0371175
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0011232   -0.0343123    0.0320659
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0391405   -0.0083450    0.0866261
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0848327   -0.0441898    0.2138552
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0131512   -0.1187979    0.1451003
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0108776   -0.0510951    0.0293399
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0083320   -0.0454967    0.0288327
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0029108   -0.0267063    0.0325278
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0046913   -0.0169022    0.0262849
12-15 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0068356   -0.0426604    0.0289892
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0199446   -0.0197923    0.0596816
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0175399   -0.1126236    0.0775438
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0448762   -0.1437743    0.0540220
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0189626   -0.0950097    0.0570844
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm           0.0061385   -0.0346643    0.0469414
12-15 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0059424   -0.0578371    0.0459524
12-15 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0251976   -0.0073092    0.0577043
12-15 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0198616   -0.1020752    0.0623520
12-15 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0163187   -0.0729667    0.1056040
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0217605   -0.0666185    0.0230975
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0096952   -0.0563850    0.0369945
12-15 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0580212   -0.1064148   -0.0096277
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0227341   -0.0454369    0.0909051
12-15 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0380507   -0.0784691    0.0023678
12-15 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0117962   -0.0553470    0.0317546
12-15 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0285610   -0.0105041    0.0676262
12-15 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0379109   -0.0061787    0.0820005
12-15 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0669458   -0.1186334   -0.0152582
12-15 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0452320   -0.0997110    0.0092469
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0083862   -0.0505020    0.0672744
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.1218851    0.0349898    0.2087804
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0245151   -0.0910130    0.0419828
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0443478   -0.1011104    0.0124148
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0174150   -0.0218427    0.0566727
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0055202   -0.0370759    0.0481163
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0048699   -0.0218512    0.0315910
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0097022   -0.0405098    0.0211054
12-15 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <151 cm              >=155 cm           0.3099899    0.0571791    0.5628008
12-15 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0133830   -0.2294971    0.2027311
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0059692   -0.0317768    0.0198384
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0123606   -0.0422181    0.0174969
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm           0.0115031   -0.0122007    0.0352068
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0323718   -0.0574214   -0.0073223
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.0200184   -0.0778408    0.0378040
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0751221   -0.1667788    0.0165346
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0288189   -0.0113619    0.0689996
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0356050   -0.0030693    0.0742794
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0127820   -0.0589350    0.0333710
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0011716   -0.0321175    0.0297742
15-18 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0055347   -0.0274177    0.0384872
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0130161   -0.0533262    0.0272940
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0050325   -0.1472915    0.1372265
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0335288   -0.0696490    0.0025913
15-18 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0321552   -0.0811574    0.0168470
15-18 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0242352   -0.0592044    0.0107340
15-18 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0200735   -0.0401607    0.0803076
15-18 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0280357   -0.0969411    0.0408697
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0063152   -0.0569847    0.0443543
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0306224   -0.0843359    0.0230910
15-18 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0241945   -0.0309060    0.0792951
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0164632   -0.0666145    0.0336881
15-18 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0230032   -0.0544794    0.0084731
15-18 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0030117   -0.0402075    0.0341841
15-18 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0452429   -0.0889131   -0.0015727
15-18 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0414194   -0.0903953    0.0075565
15-18 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0142967   -0.0561188    0.0275253
15-18 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0074716   -0.0573766    0.0424333
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0386378   -0.0242396    0.1015152
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0301606   -0.0168892    0.0772103
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0017653   -0.0571562    0.0536257
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0121649   -0.0699741    0.0456443
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0033616   -0.0365658    0.0432890
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0011327   -0.0471047    0.0448393
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0200564   -0.0428512    0.0027384
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0169026   -0.0431060    0.0093008
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0240682    0.0034729    0.0446635
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0215938   -0.0035313    0.0467189
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0215862   -0.0499282    0.0067558
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0082087   -0.0417570    0.0253396
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0077363   -0.0254316    0.0409041
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0146810   -0.0231860    0.0525480
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0026392   -0.0424459    0.0371675
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0218425   -0.0585462    0.0148612
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0014066   -0.0456708    0.0484839
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0054421   -0.0397837    0.0288996
18-21 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0089200   -0.0222808    0.0401207
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0000677   -0.0383871    0.0385225
18-21 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0064555   -0.0513067    0.0383956
18-21 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0188772   -0.0175097    0.0552641
18-21 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0118898   -0.0723852    0.0486055
18-21 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0031498   -0.0383780    0.0320784
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0332145   -0.0689664    0.0025374
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0041007   -0.0472105    0.0390091
18-21 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0890455    0.0113569    0.1667341
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0292970   -0.0190458    0.0776399
18-21 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0221327   -0.0539151    0.0096498
18-21 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0396282   -0.0750371   -0.0042194
18-21 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0156292   -0.0520908    0.0208323
18-21 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0014648   -0.0412951    0.0383655
18-21 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <151 cm              >=155 cm           0.0039950   -0.0409822    0.0489721
18-21 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0139043   -0.0667013    0.0388927
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0379645   -0.0393290    0.1152580
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0122757   -0.0633535    0.0388020
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0231900   -0.0851655    0.0387855
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0182042   -0.0874566    0.0510481
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0059607   -0.0436709    0.0317494
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0014895   -0.0449136    0.0419345
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0192137   -0.0400556    0.0016281
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0026969   -0.0262714    0.0208776
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0146323   -0.0355074    0.0062428
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0184056   -0.0418818    0.0050706
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0248616   -0.0244943    0.0742175
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0195346   -0.0192754    0.0583446
21-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0076441   -0.0309181    0.0156300
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0334108   -0.0621547   -0.0046669
21-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm           0.0079671   -0.0331011    0.0490353
21-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0117169   -0.0422997    0.0188659
21-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0153996   -0.0254357    0.0562349
21-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0190239   -0.0533895    0.0153417
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0111911   -0.0548312    0.0324489
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0149711   -0.0625536    0.0326114
21-24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0054153   -0.0322817    0.0431122
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0298159   -0.0785427    0.0189110
21-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm           0.0065528   -0.0218137    0.0349194
21-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0142244   -0.0169001    0.0453490
21-24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0319131    0.0011115    0.0627148
21-24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0473424    0.0070639    0.0876210
21-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0098365   -0.0511786    0.0315055
21-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0171996   -0.0605252    0.0261261
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0119923   -0.0820610    0.0580765
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0141096   -0.0598535    0.0316344
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0152580   -0.0733719    0.0428559
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0386353   -0.0178126    0.0950832
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0300220   -0.0630239    0.0029799
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0210770   -0.0618619    0.0197078
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0034800   -0.0260942    0.0191342
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0121037   -0.0373906    0.0131831
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0004202   -0.0234254    0.0225851
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0033750   -0.0302950    0.0235450
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0190489   -0.0854460    0.0473481
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0179913   -0.0232523    0.0592349


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0448902   -0.0990920    0.0093116
0-3 months     COHORTS          INDIA                          >=155 cm             NA                -0.0182841   -0.0396709    0.0031027
0-3 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0236138   -0.0334054   -0.0138222
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0019312   -0.0149062    0.0110437
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0536422   -0.1266754    0.0193910
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                -0.0036455   -0.0553512    0.0480602
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                 0.0028505   -0.0853780    0.0910791
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0504668   -0.1321597    0.0312262
0-3 months     MAL-ED           PERU                           >=155 cm             NA                 0.0044477   -0.0604008    0.0692961
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0070399   -0.0352002    0.0211204
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0176475   -0.0135905    0.0488856
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0267748   -0.0913888    0.0378391
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0123365   -0.0510132    0.0263401
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0014160   -0.0031273    0.0002953
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0659596   -0.0965694   -0.0353499
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0256447   -0.0453337   -0.0059558
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0174388   -0.0229676   -0.0119100
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0622176   -0.1042044   -0.0202307
3-6 months     COHORTS          INDIA                          >=155 cm             NA                -0.0085485   -0.0259631    0.0088661
3-6 months     JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0110387   -0.0217482   -0.0003292
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0009109   -0.0087042    0.0068824
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0298402   -0.0927909    0.0331105
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0105495   -0.0204223    0.0415213
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0109819   -0.0725033    0.0505395
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                 0.0083757   -0.0499897    0.0667411
3-6 months     MAL-ED           PERU                           >=155 cm             NA                 0.0014654   -0.0696044    0.0725351
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0120310   -0.0088132    0.0328751
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0103967   -0.0373408    0.0165474
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0060584   -0.0437086    0.0558254
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0127247   -0.0222528    0.0477022
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0001128   -0.0013849    0.0011593
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0020352   -0.0294825    0.0335528
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0092149   -0.0233790    0.0049492
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0033111   -0.0163580    0.0097359
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0007505   -0.0056032    0.0041022
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0344537   -0.0634638   -0.0054437
6-9 months     COHORTS          INDIA                          >=155 cm             NA                -0.0169300   -0.0323059   -0.0015540
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0517219   -0.0974335   -0.0060102
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0015474   -0.0101111    0.0070164
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                -0.0116685   -0.0246776    0.0013407
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0176508   -0.0241523    0.0594538
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0073474   -0.0243124    0.0390072
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                 0.0043736   -0.0408547    0.0496019
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0286111   -0.0745294    0.0173071
6-9 months     MAL-ED           PERU                           >=155 cm             NA                 0.0081846   -0.0449865    0.0613558
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0021148   -0.0156913    0.0199209
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0133679   -0.0168644    0.0436002
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0310404   -0.0684235    0.0063427
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0436866   -0.0701447   -0.0172284
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0006424   -0.0024993    0.0012145
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0208560   -0.0423270    0.0006150
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0171914   -0.0278005   -0.0065822
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0055283   -0.0296417    0.0406982
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0003313   -0.0122306    0.0128933
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0023232   -0.0064919    0.0018455
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0193238   -0.0073525    0.0460001
9-12 months    COHORTS          INDIA                          >=155 cm             NA                -0.0205966   -0.0345761   -0.0066172
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0340884   -0.0786260    0.0104492
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0007767   -0.0055926    0.0040393
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0014708   -0.0064011    0.0093426
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0043759   -0.0106096    0.0193614
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0037455   -0.0593322    0.0518412
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0093555   -0.0372429    0.0185319
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                 0.0048965   -0.0238653    0.0336583
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.0197337   -0.0147448    0.0542123
9-12 months    MAL-ED           PERU                           >=155 cm             NA                 0.0092831   -0.0325923    0.0511586
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0190435   -0.0361743   -0.0019128
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0004383   -0.0303562    0.0312329
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0066059   -0.0376458    0.0244339
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0028324   -0.0241272    0.0184623
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                 0.0005155   -0.0005923    0.0016232
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0097210   -0.0101512    0.0295931
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0086553   -0.0140052    0.0313158
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0466186   -0.0452404    0.1384776
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0034091   -0.0144103    0.0075920
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0010173   -0.0026796    0.0047142
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0021365   -0.0284226    0.0326956
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0219024   -0.1052432    0.0614384
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0008521   -0.0024466    0.0041508
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0035497   -0.0011872    0.0082865
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0090011   -0.0403688    0.0223665
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0134111   -0.0523613    0.0255392
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0112114   -0.0310432    0.0086204
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0213464   -0.0505852    0.0078923
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0280485   -0.0028532    0.0589501
12-15 months   MAL-ED           PERU                           >=155 cm             NA                -0.0501009   -0.0889830   -0.0112188
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0112778   -0.0031204    0.0256761
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0134348   -0.0338298    0.0069602
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0119098   -0.0176388    0.0414584
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0000587   -0.0210103    0.0211277
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0018348   -0.0076724    0.0113421
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0064012   -0.0259764    0.0131739
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0037311   -0.0123053    0.0048432
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0333697   -0.0768475    0.0101082
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0125537    0.0008498    0.0242576
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0006077   -0.0057891    0.0045736
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0019737   -0.0258522    0.0297996
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0021301   -0.0065984    0.0023383
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0040404   -0.0090045    0.0009236
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0011382   -0.0249040    0.0226276
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0107192   -0.0561205    0.0346820
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0025311   -0.0160164    0.0210786
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0135383   -0.0365712    0.0094945
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0397273   -0.0757092   -0.0037455
15-18 months   MAL-ED           PERU                           >=155 cm             NA                -0.0117673   -0.0434556    0.0199210
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0077972   -0.0026699    0.0182643
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0001040   -0.0185553    0.0183473
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0002244   -0.0315443    0.0319931
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0158210   -0.0335244    0.0018824
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0188202    0.0032535    0.0343868
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0097210   -0.0223336    0.0028917
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0064025   -0.0191110    0.0319160
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0058995   -0.0182071    0.0064080
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0000300   -0.0055410    0.0056010
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0060237   -0.0208383    0.0328858
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0019558   -0.0031595    0.0070712
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0008889   -0.0149230    0.0131453
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0255996   -0.0576038    0.0064045
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0157494   -0.0080608    0.0395595
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0183305   -0.0420808    0.0054198
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0093211   -0.0386357    0.0199935
18-21 months   MAL-ED           PERU                           >=155 cm             NA                -0.0005128   -0.0350102    0.0339846
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0031385   -0.0082305    0.0145075
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0137562   -0.0338529    0.0063405
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047444   -0.0354086    0.0259198
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0108339   -0.0268881    0.0052203
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0125519   -0.0283602    0.0032564
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0044250   -0.0020140    0.0108640
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0135343   -0.0333563    0.0062877
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0000828   -0.0043228    0.0041572
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0008523   -0.0129923    0.0112876
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0109275   -0.0496119    0.0277569
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0028504   -0.0179006    0.0121997
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0073510   -0.0131239    0.0278260
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0298804    0.0051681    0.0545928
21-24 months   MAL-ED           PERU                           >=155 cm             NA                -0.0112610   -0.0417636    0.0192417
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0020123   -0.0125009    0.0084763
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0069081   -0.0118074    0.0256236
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0223793   -0.0489730    0.0042144
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0063838   -0.0239317    0.0111642
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0010938   -0.0185742    0.0163867
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0015475   -0.0062213    0.0093163

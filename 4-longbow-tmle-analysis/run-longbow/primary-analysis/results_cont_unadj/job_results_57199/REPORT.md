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

unadjusted

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




# Results Detail

## Results Plots
![](/tmp/952dd4a7-2662-4eb1-ac47-53d7751e0fcc/49104601-3b62-4000-acf1-43c6c74ebf06/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/952dd4a7-2662-4eb1-ac47-53d7751e0fcc/49104601-3b62-4000-acf1-43c6c74ebf06/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/952dd4a7-2662-4eb1-ac47-53d7751e0fcc/49104601-3b62-4000-acf1-43c6c74ebf06/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.4859720   -0.5414123   -0.4305317
0-3 months     COHORTS          GUATEMALA                      <151 cm              NA                -0.5382619   -0.5645521   -0.5119718
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         NA                -0.5634996   -0.6157098   -0.5112894
0-3 months     COHORTS          INDIA                          >=155 cm             NA                -0.0345174   -0.0591640   -0.0098709
0-3 months     COHORTS          INDIA                          <151 cm              NA                -0.0765328   -0.0985398   -0.0545258
0-3 months     COHORTS          INDIA                          [151-155) cm         NA                -0.0552093   -0.0807173   -0.0297012
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                -0.2854117   -0.3112682   -0.2595552
0-3 months     Keneba           GAMBIA                         <151 cm              NA                -0.3933645   -0.5676147   -0.2191144
0-3 months     Keneba           GAMBIA                         [151-155) cm         NA                -0.2805939   -0.3583850   -0.2028029
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0556175   -0.1255262    0.0142912
0-3 months     MAL-ED           BANGLADESH                     <151 cm              NA                -0.1408119   -0.1840187   -0.0976050
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.1002907   -0.1674399   -0.0331415
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.1340138    0.0597932    0.2082345
0-3 months     MAL-ED           BRAZIL                         <151 cm              NA                 0.1217986    0.0077201    0.2358771
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         NA                 0.1569368    0.0156399    0.2982337
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0513674   -0.1452340    0.0424991
0-3 months     MAL-ED           INDIA                          <151 cm              NA                -0.0799390   -0.1527961   -0.0070819
0-3 months     MAL-ED           INDIA                          [151-155) cm         NA                -0.0305605   -0.1298385    0.0687176
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                 0.0981920    0.0147802    0.1816039
0-3 months     MAL-ED           NEPAL                          <151 cm              NA                 0.0176267   -0.0389172    0.0741707
0-3 months     MAL-ED           NEPAL                          [151-155) cm         NA                 0.1037679    0.0043923    0.2031436
0-3 months     MAL-ED           PERU                           >=155 cm             NA                -0.2709150   -0.3440528   -0.1977773
0-3 months     MAL-ED           PERU                           <151 cm              NA                -0.2513344   -0.2966114   -0.2060574
0-3 months     MAL-ED           PERU                           [151-155) cm         NA                -0.2822933   -0.3559619   -0.2086246
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1678195   -0.2250249   -0.1106141
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.2590754   -0.4271472   -0.0910036
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.1448581   -0.2518452   -0.0378711
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1543850   -0.2069292   -0.1018407
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1113759   -0.1902758   -0.0324760
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1122437   -0.1954680   -0.0290194
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.2060662   -0.2744805   -0.1376518
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              NA                -0.2551210   -0.2891391   -0.2211029
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.1959924   -0.2488701   -0.1431146
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2243307   -0.2662045   -0.1824569
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.2343936   -0.2574074   -0.2113797
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.2289096   -0.2630986   -0.1947205
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                -0.4301461   -0.4894400   -0.3708523
0-3 months     PROBIT           BELARUS                        <151 cm              NA                -0.5279597   -0.5505193   -0.5054001
0-3 months     PROBIT           BELARUS                        [151-155) cm         NA                -0.4513862   -0.5189763   -0.3837960
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1157190   -0.1492821   -0.0821559
0-3 months     PROVIDE          BANGLADESH                     <151 cm              NA                -0.2122203   -0.2360796   -0.1883610
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.1961267   -0.2314425   -0.1608109
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0993017   -0.1412622   -0.0573413
0-3 months     SAS-CompFeed     INDIA                          <151 cm              NA                -0.1634266   -0.1896370   -0.1372161
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.1364858   -0.1826618   -0.0903099
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1323667   -0.1445827   -0.1201507
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.2417913   -0.2870595   -0.1965231
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.2054549   -0.2328143   -0.1780956
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0410402   -0.0858333    0.0037528
3-6 months     COHORTS          GUATEMALA                      <151 cm              NA                -0.1018107   -0.1192973   -0.0843240
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1096888   -0.1425229   -0.0768548
3-6 months     COHORTS          INDIA                          >=155 cm             NA                -0.0378222   -0.0587681   -0.0168764
3-6 months     COHORTS          INDIA                          <151 cm              NA                -0.0558331   -0.0732519   -0.0384143
3-6 months     COHORTS          INDIA                          [151-155) cm         NA                -0.0594542   -0.0790628   -0.0398455
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0184773   -0.0394622    0.0025077
3-6 months     Keneba           GAMBIA                         <151 cm              NA                 0.0380829   -0.0502454    0.1264112
3-6 months     Keneba           GAMBIA                         [151-155) cm         NA                -0.0445714   -0.0968332    0.0076905
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0263291   -0.0354267    0.0880849
3-6 months     MAL-ED           BANGLADESH                     <151 cm              NA                -0.0139377   -0.0424908    0.0146155
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0629267   -0.1136462   -0.0122072
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0486824   -0.0003393    0.0977042
3-6 months     MAL-ED           BRAZIL                         <151 cm              NA                 0.0421559   -0.0250096    0.1093214
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         NA                 0.1196026    0.0314671    0.2077382
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0211689   -0.0896654    0.0473275
3-6 months     MAL-ED           INDIA                          <151 cm              NA                -0.0547011   -0.0976510   -0.0117512
3-6 months     MAL-ED           INDIA                          [151-155) cm         NA                -0.0232624   -0.0706747    0.0241499
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0460743   -0.1089206    0.0167720
3-6 months     MAL-ED           NEPAL                          <151 cm              NA                -0.0235178   -0.0580664    0.0110308
3-6 months     MAL-ED           NEPAL                          [151-155) cm         NA                -0.0069503   -0.0615407    0.0476400
3-6 months     MAL-ED           PERU                           >=155 cm             NA                 0.0216052   -0.0591054    0.1023157
3-6 months     MAL-ED           PERU                           <151 cm              NA                 0.0085698   -0.0293573    0.0464969
3-6 months     MAL-ED           PERU                           [151-155) cm         NA                 0.0775882    0.0104086    0.1447678
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0182409   -0.0631918    0.0267101
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0167057   -0.0681903    0.1016017
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.0203277   -0.0939853    0.1346406
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0618524   -0.1033107   -0.0203941
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1008040   -0.1845456   -0.0170624
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0674547   -0.1277256   -0.0071838
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0529167   -0.1040667   -0.0017668
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0589297   -0.0873758   -0.0304836
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0304925   -0.0780092    0.0170241
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0119071   -0.0266169    0.0504312
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0267905    0.0046530    0.0489281
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0386445    0.0039086    0.0733804
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                 0.0494686    0.0307705    0.0681666
3-6 months     PROBIT           BELARUS                        <151 cm              NA                 0.0319002    0.0075241    0.0562764
3-6 months     PROBIT           BELARUS                        [151-155) cm         NA                 0.0489361    0.0005218    0.0973503
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0262358   -0.0617919    0.0093203
3-6 months     PROVIDE          BANGLADESH                     <151 cm              NA                -0.0212286   -0.0423748   -0.0000824
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0417326   -0.0745051   -0.0089601
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0016636   -0.0275430    0.0242159
3-6 months     SAS-CompFeed     INDIA                          <151 cm              NA                -0.0159649   -0.0486896    0.0167599
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0147264   -0.0450306    0.0155778
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0809575   -0.1020062   -0.0599087
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0818237   -0.1286097   -0.0350377
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0930309   -0.1264405   -0.0596212
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0021309   -0.0086252    0.0128869
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0184891   -0.0547250    0.0177468
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0057349   -0.0193726    0.0308424
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0872889   -0.1175337   -0.0570441
6-9 months     COHORTS          GUATEMALA                      <151 cm              NA                -0.1201415   -0.1349121   -0.1053710
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         NA                -0.1439309   -0.1706852   -0.1171766
6-9 months     COHORTS          INDIA                          >=155 cm             NA                -0.0765521   -0.0947152   -0.0583890
6-9 months     COHORTS          INDIA                          <151 cm              NA                -0.1022053   -0.1164529   -0.0879577
6-9 months     COHORTS          INDIA                          [151-155) cm         NA                -0.0986872   -0.1162495   -0.0811248
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0463285   -0.0946079    0.0019510
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.1078306   -0.1345271   -0.0811341
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0985669   -0.1460278   -0.0511059
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0148222   -0.0411345    0.0114901
6-9 months     Keneba           GAMBIA                         <151 cm              NA                -0.0746203   -0.1659852    0.0167447
6-9 months     Keneba           GAMBIA                         [151-155) cm         NA                -0.0142004   -0.0672114    0.0388107
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                 0.0410707    0.0220667    0.0600746
6-9 months     LCNI-5           MALAWI                         <151 cm              NA                 0.0150712   -0.0342782    0.0644207
6-9 months     LCNI-5           MALAWI                         [151-155) cm         NA                 0.0035892   -0.0289858    0.0361642
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0849951   -0.1254537   -0.0445366
6-9 months     MAL-ED           BANGLADESH                     <151 cm              NA                -0.0739377   -0.0947227   -0.0531526
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0537382   -0.0933059   -0.0141705
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0019693   -0.0375864    0.0415251
6-9 months     MAL-ED           BRAZIL                         <151 cm              NA                 0.0204184   -0.0725685    0.1134053
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         NA                 0.0140011   -0.0585863    0.0865885
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0880336   -0.1407014   -0.0353658
6-9 months     MAL-ED           INDIA                          <151 cm              NA                -0.0472049   -0.0772268   -0.0171831
6-9 months     MAL-ED           INDIA                          [151-155) cm         NA                -0.0983574   -0.1419008   -0.0548140
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0038782   -0.0536554    0.0458991
6-9 months     MAL-ED           NEPAL                          <151 cm              NA                -0.0539990   -0.0790365   -0.0289616
6-9 months     MAL-ED           NEPAL                          [151-155) cm         NA                -0.0134125   -0.0495408    0.0227157
6-9 months     MAL-ED           PERU                           >=155 cm             NA                -0.0333854   -0.0904149    0.0236440
6-9 months     MAL-ED           PERU                           <151 cm              NA                -0.0354294   -0.0663146   -0.0045442
6-9 months     MAL-ED           PERU                           [151-155) cm         NA                -0.0261455   -0.0785744    0.0262834
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0236732   -0.0538443    0.0064979
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0134862   -0.0791201    0.1060925
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.0647007   -0.1437974    0.0143961
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1033745   -0.1390685   -0.0676806
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0660202   -0.1387688    0.0067283
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0911609   -0.1912988    0.0089769
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0321937   -0.0726811    0.0082937
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0696394   -0.0935341   -0.0457446
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0561848   -0.0916512   -0.0207184
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0139475   -0.0142033    0.0420982
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0378303   -0.0547573   -0.0209032
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0519176   -0.0775859   -0.0262494
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                 0.0526773    0.0379978    0.0673569
6-9 months     PROBIT           BELARUS                        <151 cm              NA                 0.0763422    0.0436146    0.1090697
6-9 months     PROBIT           BELARUS                        [151-155) cm         NA                 0.0239534   -0.0238261    0.0717329
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0388534   -0.0624988   -0.0152080
6-9 months     PROVIDE          BANGLADESH                     <151 cm              NA                -0.0716604   -0.0865984   -0.0567225
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0568853   -0.0773824   -0.0363882
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0652624   -0.0777735   -0.0527513
6-9 months     SAS-CompFeed     INDIA                          <151 cm              NA                -0.1060157   -0.1268297   -0.0852018
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0774277   -0.1123262   -0.0425292
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.1155002   -0.1534883   -0.0775121
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.0937899   -0.1178860   -0.0696939
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.1211836   -0.1592481   -0.0831191
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0526422   -0.0732882   -0.0319962
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0585666   -0.0967550   -0.0203782
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0491917   -0.0838341   -0.0145492
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0297028   -0.0396319   -0.0197736
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0231778   -0.0531877    0.0068322
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0493405   -0.0715424   -0.0271386
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.1122599   -0.1415220   -0.0829978
9-12 months    COHORTS          GUATEMALA                      <151 cm              NA                -0.0855059   -0.0975912   -0.0734207
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0927380   -0.1158436   -0.0696325
9-12 months    COHORTS          INDIA                          >=155 cm             NA                -0.0641278   -0.0806132   -0.0476424
9-12 months    COHORTS          INDIA                          <151 cm              NA                -0.0935532   -0.1076671   -0.0794394
9-12 months    COHORTS          INDIA                          [151-155) cm         NA                -0.1039801   -0.1212277   -0.0867324
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0239946   -0.0692713    0.0212821
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0742598   -0.0949107   -0.0536089
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0680496   -0.1044970   -0.0316023
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0483526   -0.0619144   -0.0347909
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0413498   -0.2048019    0.1221023
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0634488   -0.0988475   -0.0280502
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                -0.1050137   -0.1251688   -0.0848586
9-12 months    Keneba           GAMBIA                         <151 cm              NA                -0.0200964   -0.1415634    0.1013706
9-12 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.1167911   -0.1636140   -0.0699681
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.0502694   -0.0757685   -0.0247703
9-12 months    LCNI-5           MALAWI                         <151 cm              NA                -0.0281663   -0.0759977    0.0196651
9-12 months    LCNI-5           MALAWI                         [151-155) cm         NA                -0.0382901   -0.0753109   -0.0012692
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0886889   -0.1462987   -0.0310790
9-12 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.0906659   -0.1094142   -0.0719177
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0773359   -0.1129886   -0.0416831
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                 0.0184320   -0.0174793    0.0543433
9-12 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.0521349   -0.0243701    0.1286398
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0781418   -0.1429800   -0.0133037
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                -0.1006336   -0.1327258   -0.0685414
9-12 months    MAL-ED           INDIA                          <151 cm              NA                -0.0799862   -0.1040679   -0.0559045
9-12 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.1051377   -0.1317576   -0.0785178
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0719699   -0.1076371   -0.0363026
9-12 months    MAL-ED           NEPAL                          <151 cm              NA                -0.0564537   -0.0797300   -0.0331774
9-12 months    MAL-ED           NEPAL                          [151-155) cm         NA                -0.0682741   -0.1010064   -0.0355419
9-12 months    MAL-ED           PERU                           >=155 cm             NA                -0.0407608   -0.0863941    0.0048725
9-12 months    MAL-ED           PERU                           <151 cm              NA                -0.0439023   -0.0731442   -0.0146604
9-12 months    MAL-ED           PERU                           [151-155) cm         NA                -0.0348549   -0.0784264    0.0087165
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0626337   -0.0919714   -0.0332961
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.1268563   -0.1946463   -0.0590662
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.1519061   -0.2534272   -0.0503850
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1511882   -0.1883510   -0.1140253
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1492677   -0.2169234   -0.0816120
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.1706188   -0.2730665   -0.0681711
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0342063   -0.0684663    0.0000538
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0506847   -0.0688594   -0.0325099
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0291267   -0.0610768    0.0028234
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0373356   -0.0592301   -0.0154410
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0345184   -0.0490961   -0.0199407
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0313379   -0.0553789   -0.0072969
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                 0.0382917    0.0175019    0.0590816
9-12 months    PROBIT           BELARUS                        <151 cm              NA                 0.0674239    0.0425026    0.0923452
9-12 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.0479612    0.0017981    0.0941243
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0691614   -0.0914238   -0.0468990
9-12 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.0586004   -0.0734624   -0.0437384
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0679518   -0.0912893   -0.0446144
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0850868   -0.1036503   -0.0665233
9-12 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.0937080   -0.1167760   -0.0706400
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0472691   -0.0805866   -0.0139516
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.1897990   -0.2850942   -0.0945038
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.1202744   -0.2059381   -0.0346108
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.1668362   -0.2567062   -0.0769662
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0604451   -0.0782363   -0.0426539
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0792820   -0.1148528   -0.0437112
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0676182   -0.0990903   -0.0361461
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0594019   -0.0683182   -0.0504857
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0594145   -0.0871817   -0.0316473
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0562478   -0.0752860   -0.0372097
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0742295   -0.1064178   -0.0420413
12-15 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.0978793   -0.1108087   -0.0849499
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0723408   -0.0924285   -0.0522531
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.0125217   -0.0670440    0.0920875
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0021507   -0.0344815    0.0301801
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.0259625   -0.0675743    0.0156492
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0435536   -0.0615991   -0.0255081
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0620811   -0.1492143    0.0250521
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0239638   -0.0560281    0.0081006
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0592450   -0.0729007   -0.0455893
12-15 months   Keneba           GAMBIA                         <151 cm              NA                -0.0565629   -0.1055949   -0.0075309
12-15 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.0355523   -0.0644308   -0.0066738
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0337350   -0.0888646    0.0213946
12-15 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0667326   -0.1259497   -0.0075155
12-15 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0266117   -0.0935578    0.0403343
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0315648   -0.0683193    0.0051898
12-15 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.0627468   -0.0837340   -0.0417596
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0463450   -0.0705952   -0.0220948
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0090070   -0.0218773    0.0398913
12-15 months   MAL-ED           BRAZIL                         <151 cm              NA                -0.0527434   -0.0888003   -0.0166864
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.0250517   -0.0299778    0.0800811
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0335040   -0.0671559    0.0001480
12-15 months   MAL-ED           INDIA                          <151 cm              NA                -0.0729077   -0.0945640   -0.0512513
12-15 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.0472549   -0.0740365   -0.0204733
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0794565   -0.1123543   -0.0465586
12-15 months   MAL-ED           NEPAL                          <151 cm              NA                -0.0565593   -0.0779122   -0.0352063
12-15 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.0454789   -0.0747099   -0.0162479
12-15 months   MAL-ED           PERU                           >=155 cm             NA                -0.0242208   -0.0666449    0.0182033
12-15 months   MAL-ED           PERU                           <151 cm              NA                -0.0826725   -0.1066292   -0.0587158
12-15 months   MAL-ED           PERU                           [151-155) cm         NA                -0.0649855   -0.0943845   -0.0355865
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0687679   -0.0946364   -0.0428993
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.0786928   -0.1294129   -0.0279727
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.0344056   -0.0429752    0.1117864
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0554259   -0.0901283   -0.0207235
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0787478   -0.1347799   -0.0227157
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0979506   -0.1415896   -0.0543115
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1387007   -0.1672035   -0.1101979
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.1193503   -0.1444679   -0.0942326
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.1320934   -0.1612379   -0.1029489
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0391452   -0.0630007   -0.0152897
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0336139   -0.0457428   -0.0214850
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0491756   -0.0684967   -0.0298546
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0057918   -0.1233106    0.1348943
12-15 months   PROBIT           BELARUS                        <151 cm              NA                 0.3157818    0.1129130    0.5186506
12-15 months   PROBIT           BELARUS                        [151-155) cm         NA                -0.0075912   -0.2114323    0.1962500
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0335282   -0.0550715   -0.0119849
12-15 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.0412015   -0.0549123   -0.0274908
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0467778   -0.0673480   -0.0262075
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0757690   -0.0933607   -0.0581772
12-15 months   SAS-CompFeed     INDIA                          <151 cm              NA                -0.0706558   -0.0891152   -0.0521963
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.1118560   -0.1402951   -0.0834170
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0390128    0.0089556    0.0690700
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                 0.0217697   -0.0264749    0.0700143
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.0344380   -0.1192115    0.0503356
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0756623   -0.0941269   -0.0571977
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0475187   -0.0822137   -0.0128236
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0425157   -0.0746908   -0.0103406
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0619403   -0.0744242   -0.0494565
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0711783   -0.1149027   -0.0274540
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0616910   -0.0891450   -0.0342370
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0530391   -0.0827119   -0.0233663
15-18 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.0507342   -0.0646655   -0.0368029
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0642921   -0.0873179   -0.0412663
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0155428   -0.0274973   -0.0035884
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                -0.0194032   -0.1642593    0.1254528
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                -0.0487990   -0.0839854   -0.0136125
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0281235   -0.0411513   -0.0150958
15-18 months   Keneba           GAMBIA                         <151 cm              NA                -0.0607111   -0.1044043   -0.0170179
15-18 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.0504028   -0.0829538   -0.0178517
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0440796   -0.0767494   -0.0114098
15-18 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0213145   -0.0754123    0.0327833
15-18 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0750928   -0.1352159   -0.0149698
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0213467   -0.0628911    0.0201977
15-18 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.0421915   -0.0594007   -0.0249824
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0652979   -0.0892239   -0.0413718
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0230877   -0.0516196    0.0054442
15-18 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0039013   -0.0419427    0.0497453
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0422959   -0.0813869   -0.0032050
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0293705   -0.0541496   -0.0045915
15-18 months   MAL-ED           INDIA                          <151 cm              NA                -0.0474119   -0.0655513   -0.0292726
15-18 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.0289813   -0.0551085   -0.0028541
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0283458   -0.0644142    0.0077227
15-18 months   MAL-ED           NEPAL                          <151 cm              NA                -0.0612193   -0.0810623   -0.0413763
15-18 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.0578271   -0.0872604   -0.0283938
15-18 months   MAL-ED           PERU                           >=155 cm             NA                -0.0284906   -0.0643186    0.0073374
15-18 months   MAL-ED           PERU                           <151 cm              NA                -0.0392906   -0.0592253   -0.0193558
15-18 months   MAL-ED           PERU                           [151-155) cm         NA                -0.0349750   -0.0680228   -0.0019271
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0346265   -0.0579766   -0.0112764
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.0050504   -0.0548868    0.0447861
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.0104367   -0.0495370    0.0286637
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0844181   -0.1143381   -0.0544981
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0807543   -0.1268055   -0.0347032
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0927197   -0.1400133   -0.0454261
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0605156   -0.0945879   -0.0264433
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0561011   -0.0755582   -0.0366439
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0594188   -0.0890848   -0.0297528
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0036963   -0.0232522    0.0158595
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0207430   -0.0317539   -0.0097321
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0189786   -0.0356893   -0.0022678
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0541975   -0.0706644   -0.0377306
15-18 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.0330796   -0.0450243   -0.0211349
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0352746   -0.0541635   -0.0163856
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0014919   -0.0176085    0.0146246
15-18 months   SAS-CompFeed     INDIA                          <151 cm              NA                -0.0260952   -0.0473750   -0.0048155
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.0132768   -0.0482187    0.0216650
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0480639   -0.0748003   -0.0213275
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.0366069   -0.0548393   -0.0183744
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -0.0297275   -0.0556062   -0.0038488
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0143617   -0.0353389    0.0066155
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0238958   -0.0565926    0.0088010
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0325093   -0.0618914   -0.0031272
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0627701   -0.0757249   -0.0498154
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0569060   -0.1014854   -0.0123266
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0664994   -0.0977553   -0.0352435
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0230400   -0.0519885    0.0059086
18-21 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.0193106   -0.0312752   -0.0073461
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0256752   -0.0480957   -0.0032546
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0219372   -0.0352181   -0.0086564
18-21 months   Keneba           GAMBIA                         <151 cm              NA                -0.0300243   -0.0712619    0.0112133
18-21 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.0055522   -0.0390480    0.0279436
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0169766   -0.0356337    0.0016804
18-21 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0155570   -0.0718234    0.0407093
18-21 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0123109   -0.0414387    0.0168169
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0000024   -0.0307083    0.0307131
18-21 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.0239572   -0.0376374   -0.0102770
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                 0.0002756   -0.0266031    0.0271544
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0393492   -0.0657516   -0.0129467
18-21 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0158655   -0.0555196    0.0872506
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0118541   -0.0488029    0.0250947
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0314100    0.0050546    0.0577655
18-21 months   MAL-ED           INDIA                          <151 cm              NA                 0.0030052   -0.0120659    0.0180763
18-21 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.0099911   -0.0313206    0.0113384
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0178627   -0.0472165    0.0114910
18-21 months   MAL-ED           NEPAL                          <151 cm              NA                -0.0351765   -0.0532053   -0.0171477
18-21 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.0196191   -0.0434338    0.0041957
18-21 months   MAL-ED           PERU                           >=155 cm             NA                -0.0037481   -0.0446397    0.0371435
18-21 months   MAL-ED           PERU                           <151 cm              NA                -0.0045308   -0.0227806    0.0137190
18-21 months   MAL-ED           PERU                           [151-155) cm         NA                -0.0239736   -0.0551697    0.0072224
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0368388   -0.0586441   -0.0150335
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0036144   -0.0664906    0.0737194
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.0325684   -0.0741261    0.0089893
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0152108   -0.0418710    0.0114495
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0468963   -0.0989742    0.0051817
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0466598   -0.1057279    0.0124084
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0333580   -0.0650523   -0.0016637
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.0398682   -0.0556153   -0.0241210
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.0384220   -0.0643868   -0.0124572
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0156517   -0.0332658    0.0019624
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0364806   -0.0474288   -0.0255324
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0179810   -0.0334789   -0.0024832
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0039573   -0.0135196    0.0214342
18-21 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.0133370   -0.0246679   -0.0020060
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.0177385   -0.0333496   -0.0021275
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0720541   -0.0863617   -0.0577465
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0552904   -0.1000438   -0.0105370
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.0508056   -0.0866332   -0.0149781
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0004493   -0.0251019    0.0242032
21-24 months   COHORTS          GUATEMALA                      <151 cm              NA                 0.0003290   -0.0090132    0.0096712
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.0244461   -0.0423175   -0.0065746
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0156438    0.0027938    0.0284937
21-24 months   Keneba           GAMBIA                         <151 cm              NA                 0.0386821    0.0017262    0.0756380
21-24 months   Keneba           GAMBIA                         [151-155) cm         NA                 0.0129196   -0.0144162    0.0402553
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0264225    0.0047738    0.0480712
21-24 months   LCNI-5           MALAWI                         <151 cm              NA                 0.0442442    0.0110496    0.0774387
21-24 months   LCNI-5           MALAWI                         [151-155) cm         NA                 0.0100050   -0.0164950    0.0365049
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0334644   -0.0038810    0.0708099
21-24 months   MAL-ED           BANGLADESH                     <151 cm              NA                 0.0264235    0.0109681    0.0418789
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                 0.0201177   -0.0027551    0.0429905
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0204425    0.0000841    0.0408008
21-24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0260794   -0.0040586    0.0562175
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0084297   -0.0512673    0.0344079
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0238792    0.0011555    0.0466030
21-24 months   MAL-ED           INDIA                          <151 cm              NA                 0.0277940    0.0117908    0.0437972
21-24 months   MAL-ED           INDIA                          [151-155) cm         NA                 0.0372192    0.0172307    0.0572078
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0220546   -0.0462131    0.0021038
21-24 months   MAL-ED           NEPAL                          <151 cm              NA                 0.0091697   -0.0088787    0.0272181
21-24 months   MAL-ED           NEPAL                          [151-155) cm         NA                 0.0147966   -0.0151884    0.0447816
21-24 months   MAL-ED           PERU                           >=155 cm             NA                 0.0653178    0.0315737    0.0990619
21-24 months   MAL-ED           PERU                           <151 cm              NA                 0.0576211    0.0361078    0.0791344
21-24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.0456950    0.0215703    0.0698197
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0489765    0.0305635    0.0673895
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.0346525   -0.0305532    0.0998581
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.0366344   -0.0065891    0.0798580
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0029397   -0.0246713    0.0305508
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.0131494   -0.0635148    0.0372161
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0423960   -0.0047363    0.0895282
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0594074    0.0300988    0.0887160
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                 0.0351578    0.0207812    0.0495344
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                 0.0401049    0.0136346    0.0665752
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0630392    0.0433287    0.0827497
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0604416    0.0494509    0.0714322
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0517235    0.0359162    0.0675308
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0496206    0.0296881    0.0695531
21-24 months   PROVIDE          BANGLADESH                     <151 cm              NA                 0.0467621    0.0354289    0.0580953
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                 0.0436852    0.0259268    0.0614436
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0190414    0.0043859    0.0336968
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.0073329   -0.0668112    0.0521455
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.0400357    0.0021671    0.0779043


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5365497   -0.5583847   -0.5147148
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0582849   -0.0721635   -0.0444062
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
0-3 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0522899   -0.1136478    0.0090680
0-3 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0775276   -0.1536822   -0.0013730
0-3 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0420154   -0.0750572   -0.0089736
0-3 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0206919   -0.0561617    0.0147780
0-3 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1079528   -0.2841109    0.0682053
0-3 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0048178   -0.0771579    0.0867935
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0851944   -0.1673775   -0.0030113
0-3 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0446732   -0.1416075    0.0522610
0-3 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0122152   -0.1483130    0.1238825
0-3 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0229230   -0.1366813    0.1825273
0-3 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0285716   -0.1473954    0.0902521
0-3 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0208069   -0.1158205    0.1574344
0-3 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0805653   -0.1813361    0.0202055
0-3 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0055759   -0.1241664    0.1353181
0-3 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <151 cm              >=155 cm           0.0195806   -0.0664377    0.1055989
0-3 months     MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0113782   -0.1151867    0.0924303
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0912559   -0.2687963    0.0862845
0-3 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0229614   -0.0983592    0.1442819
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0430091   -0.0517860    0.1378041
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0421412   -0.0562822    0.1405647
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0490549   -0.1254601    0.0273504
0-3 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0100738   -0.0763934    0.0965411
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0100629   -0.0578441    0.0377184
0-3 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0045788   -0.0586372    0.0494795
0-3 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0978136   -0.1470014   -0.0486258
0-3 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0212401   -0.0698416    0.0273615
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0965013   -0.1376808   -0.0553219
0-3 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0804077   -0.1291282   -0.0316872
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0641249   -0.1135915   -0.0146583
0-3 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0371841   -0.0660639   -0.0083043
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1094246   -0.1563122   -0.0625371
0-3 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0730882   -0.1030510   -0.0431255
3-6 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0607704   -0.1088558   -0.0126851
3-6 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0686486   -0.1241868   -0.0131104
3-6 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0180108   -0.0452532    0.0092315
3-6 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0216319   -0.0503239    0.0070600
3-6 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <151 cm              >=155 cm           0.0565602   -0.0342267    0.1473471
3-6 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0260941   -0.0824117    0.0302234
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0402667   -0.1083040    0.0277705
3-6 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0892558   -0.1691698   -0.0093418
3-6 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0065265   -0.0896790    0.0766259
3-6 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0709202   -0.0299312    0.1717716
3-6 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0335321   -0.1143805    0.0473162
3-6 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0020935   -0.0853983    0.0812113
3-6 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0225565   -0.0491601    0.0942730
3-6 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0391239   -0.0441213    0.1223692
3-6 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0130354   -0.1022130    0.0761423
3-6 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0559831   -0.0490278    0.1609939
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0349466   -0.0611155    0.1310086
3-6 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0385685   -0.0842649    0.1614019
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0389516   -0.1323938    0.0544906
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0056024   -0.0787555    0.0675507
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0060130   -0.0645408    0.0525148
3-6 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0224242   -0.0473909    0.0922393
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0148834   -0.0295483    0.0593151
3-6 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm           0.0267374   -0.0251345    0.0786092
3-6 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0175683   -0.0448942    0.0097575
3-6 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0005325   -0.0400425    0.0389775
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0050072   -0.0363618    0.0463763
3-6 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0154968   -0.0638524    0.0328589
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0143013   -0.0498152    0.0212125
3-6 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0130629   -0.0458008    0.0196751
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0008662   -0.0521691    0.0504366
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0120734   -0.0515608    0.0274140
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0206199   -0.0584185    0.0171787
3-6 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0036041   -0.0237104    0.0309185
6-9 months     COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0328526   -0.0665114    0.0008062
6-9 months     COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0566420   -0.0970220   -0.0162621
6-9 months     COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <151 cm              >=155 cm          -0.0256532   -0.0487377   -0.0025687
6-9 months     COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0221350   -0.0474003    0.0031303
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0615022   -0.1166711   -0.0063332
6-9 months     Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0522384   -0.1199395    0.0154627
6-9 months     Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0597981   -0.1548764    0.0352803
6-9 months     Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0006219   -0.0585601    0.0598039
6-9 months     LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0259994   -0.0788816    0.0268827
6-9 months     LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0374814   -0.0751946    0.0002317
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0110575   -0.0344278    0.0565428
6-9 months     MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0312569   -0.0253337    0.0878475
6-9 months     MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0184491   -0.0826015    0.1194997
6-9 months     MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0120318   -0.0706337    0.0946973
6-9 months     MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <151 cm              >=155 cm           0.0408287   -0.0197948    0.1014522
6-9 months     MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0103238   -0.0786607    0.0580130
6-9 months     MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0501209   -0.1058402    0.0055985
6-9 months     MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0095344   -0.0710407    0.0519719
6-9 months     MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <151 cm              >=155 cm          -0.0020440   -0.0668996    0.0628117
6-9 months     MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0072399   -0.0702271    0.0847070
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0371594   -0.0602379    0.1345566
6-9 months     MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0410275   -0.1256832    0.0436283
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0373543   -0.0436790    0.1183876
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0122136   -0.0940956    0.1185228
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0374457   -0.0844583    0.0095669
6-9 months     NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0239911   -0.0778158    0.0298336
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0517778   -0.0846258   -0.0189298
6-9 months     NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0658651   -0.1039614   -0.0277689
6-9 months     PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <151 cm              >=155 cm           0.0236648   -0.0076963    0.0550259
6-9 months     PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0287239   -0.0780819    0.0206340
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0328070   -0.0607757   -0.0048384
6-9 months     PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0180319   -0.0493246    0.0132608
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0407533   -0.0574802   -0.0240264
6-9 months     SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0121653   -0.0559184    0.0315878
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0217102   -0.0232755    0.0666959
6-9 months     SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0056834   -0.0594608    0.0480939
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0059244   -0.0493365    0.0374877
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0034505   -0.0368776    0.0437787
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0065250   -0.0250849    0.0381349
6-9 months     ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0196378   -0.0439588    0.0046833
9-12 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0267540   -0.0049055    0.0584135
9-12 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0195219   -0.0177627    0.0568064
9-12 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.0294254   -0.0511273   -0.0077236
9-12 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0398523   -0.0637112   -0.0159933
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0502652   -0.1000291   -0.0005013
9-12 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0440550   -0.1021790    0.0140689
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm           0.0070029   -0.1532608    0.1672665
9-12 months    iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0150962   -0.0508632    0.0206708
9-12 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <151 cm              >=155 cm           0.0849173   -0.0382105    0.2080452
9-12 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0117773   -0.0627539    0.0391993
9-12 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0221031   -0.0321007    0.0763069
9-12 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0119793   -0.0329734    0.0569321
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0019771   -0.0625608    0.0586067
9-12 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0113530   -0.0563966    0.0791026
9-12 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0337029   -0.0508112    0.1182170
9-12 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0965738   -0.1706927   -0.0224549
9-12 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <151 cm              >=155 cm           0.0206474   -0.0194754    0.0607702
9-12 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0045040   -0.0461997    0.0371916
9-12 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0155162   -0.0270741    0.0581065
9-12 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0036957   -0.0447145    0.0521060
9-12 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.0031415   -0.0573400    0.0510571
9-12 months    MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0059059   -0.0571882    0.0690000
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0642225   -0.1380886    0.0096435
9-12 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0892724   -0.1949475    0.0164027
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0019205   -0.0752700    0.0791110
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0194306   -0.1284105    0.0895493
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0164784   -0.0552608    0.0223040
9-12 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0050796   -0.0417666    0.0519257
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0028171   -0.0234865    0.0291208
9-12 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm           0.0059976   -0.0265192    0.0385144
9-12 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0291321    0.0017414    0.0565228
9-12 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0096695   -0.0268255    0.0461644
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0105610   -0.0162064    0.0373284
9-12 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0012096   -0.0310434    0.0334625
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0086212   -0.0398387    0.0225963
9-12 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0378177   -0.0084897    0.0841251
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0695246   -0.0586138    0.1976630
9-12 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0229628   -0.1080249    0.1539506
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0188369   -0.0586089    0.0209351
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0071731   -0.0433258    0.0289796
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0000126   -0.0291762    0.0291511
9-12 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0031541   -0.0178685    0.0241767
12-15 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0236498   -0.0583377    0.0110381
12-15 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0018888   -0.0360533    0.0398308
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.0146724   -0.1005560    0.0712111
12-15 months   Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.0384843   -0.1282743    0.0513057
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0185274   -0.1131314    0.0760765
12-15 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm           0.0195899   -0.0160378    0.0552175
12-15 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <151 cm              >=155 cm           0.0026821   -0.0482160    0.0535802
12-15 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0236927   -0.0082518    0.0556371
12-15 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0329976   -0.1139045    0.0479094
12-15 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0071233   -0.0796006    0.0938472
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0311820   -0.0735065    0.0111424
12-15 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0147802   -0.0588140    0.0292535
12-15 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.0617504   -0.1092261   -0.0142747
12-15 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0160447   -0.0470591    0.0791484
12-15 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0394037   -0.0794218    0.0006145
12-15 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0137509   -0.0567592    0.0292573
12-15 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0228972   -0.0163229    0.0621173
12-15 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0339775   -0.0100306    0.0779857
12-15 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0584517   -0.1071726   -0.0097308
12-15 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0407647   -0.0923796    0.0108503
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0099250   -0.0668610    0.0470110
12-15 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.1031735    0.0215832    0.1847637
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0233219   -0.0892298    0.0425860
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0425247   -0.0982797    0.0132304
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0193504   -0.0186404    0.0573413
12-15 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0066073   -0.0341581    0.0473726
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm           0.0055313   -0.0212305    0.0322931
12-15 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0100305   -0.0407288    0.0206679
12-15 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <151 cm              >=155 cm           0.3099899    0.0571791    0.5628008
12-15 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0133830   -0.2294971    0.2027311
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0076733   -0.0332096    0.0178629
12-15 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0132496   -0.0430363    0.0165372
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm           0.0051132   -0.0157408    0.0259671
12-15 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0360871   -0.0606275   -0.0115466
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.0172432   -0.0740849    0.0395985
12-15 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0734508   -0.1633952    0.0164936
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0281437   -0.0111588    0.0674462
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0331467   -0.0039502    0.0702435
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0092380   -0.0547096    0.0362336
12-15 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0002493   -0.0299097    0.0304084
15-18 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0023049   -0.0304756    0.0350853
15-18 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0112530   -0.0488118    0.0263058
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          -0.0038604   -0.1466746    0.1389538
15-18 months   iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          -0.0332562   -0.0686924    0.0021801
15-18 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0325875   -0.0781816    0.0130065
15-18 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0222792   -0.0573405    0.0127821
15-18 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0227650   -0.0404322    0.0859623
15-18 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0310133   -0.0994392    0.0374126
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0208448   -0.0658125    0.0241229
15-18 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0439512   -0.0918927    0.0039904
15-18 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0269890   -0.0270086    0.0809866
15-18 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0192082   -0.0676042    0.0291878
15-18 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0180414   -0.0487503    0.0126675
15-18 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0003892   -0.0356196    0.0363980
15-18 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0328736   -0.0740400    0.0082929
15-18 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0294814   -0.0760351    0.0170724
15-18 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0108000   -0.0518004    0.0302005
15-18 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0064844   -0.0552266    0.0422579
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0295762   -0.0254593    0.0846116
15-18 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0241898   -0.0213521    0.0697317
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0036638   -0.0512536    0.0585811
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0083016   -0.0642649    0.0476617
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0044145   -0.0348219    0.0436510
15-18 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0010968   -0.0440805    0.0462741
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0170467   -0.0394893    0.0053959
15-18 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0152822   -0.0410054    0.0104409
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm           0.0211179    0.0007750    0.0414608
15-18 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm           0.0189229   -0.0061360    0.0439819
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0246033   -0.0538178    0.0046112
15-18 months   SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0117849   -0.0440394    0.0204697
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0114571   -0.0209043    0.0438184
15-18 months   SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm           0.0183364   -0.0188730    0.0555458
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0095341   -0.0483815    0.0293134
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0181476   -0.0542496    0.0179543
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0058641   -0.0405595    0.0522877
15-18 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.0037293   -0.0375636    0.0301049
18-21 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0037293   -0.0275943    0.0350529
18-21 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0026352   -0.0392508    0.0339803
18-21 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0080870   -0.0514105    0.0352364
18-21 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.0163851   -0.0196476    0.0524177
18-21 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0014196   -0.0578593    0.0606985
18-21 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0046657   -0.0299250    0.0392564
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0239596   -0.0575795    0.0096603
18-21 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0002732   -0.0405387    0.0410852
18-21 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0552146   -0.0208966    0.1313259
18-21 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0274951   -0.0179175    0.0729077
18-21 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0284048   -0.0587651    0.0019555
18-21 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.0414011   -0.0753063   -0.0074960
18-21 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.0173137   -0.0517619    0.0171345
18-21 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0017563   -0.0395556    0.0360430
18-21 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0007827   -0.0455619    0.0439965
18-21 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0202256   -0.0716582    0.0312071
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.0404532   -0.0329647    0.1138711
18-21 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0042704   -0.0426606    0.0512014
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0316855   -0.0901909    0.0268199
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0314490   -0.0962550    0.0333570
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0065102   -0.0419009    0.0288805
18-21 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0050640   -0.0460359    0.0359079
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0208289   -0.0415682   -0.0000896
18-21 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0023294   -0.0257908    0.0211321
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0172942   -0.0381229    0.0035344
18-21 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0216958   -0.0451297    0.0017381
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0167637   -0.0302212    0.0637485
18-21 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0212484   -0.0173303    0.0598272
21-24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0007783   -0.0255850    0.0271416
21-24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0239967   -0.0544456    0.0064522
21-24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <151 cm              >=155 cm           0.0230384   -0.0160878    0.0621646
21-24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0027242   -0.0329296    0.0274812
21-24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0178217   -0.0218085    0.0574518
21-24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0164175   -0.0506362    0.0178011
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0070409   -0.0474581    0.0333763
21-24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0133467   -0.0571400    0.0304465
21-24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.0056370   -0.0307328    0.0420068
21-24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0288721   -0.0763013    0.0185570
21-24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <151 cm              >=155 cm           0.0039148   -0.0238786    0.0317081
21-24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.0133400   -0.0169240    0.0436040
21-24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm           0.0312243    0.0010685    0.0613801
21-24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm           0.0368513   -0.0016550    0.0753575
21-24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0076967   -0.0477153    0.0323219
21-24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0196228   -0.0611037    0.0218581
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0143241   -0.0820796    0.0534315
21-24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0123421   -0.0593242    0.0346400
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.0160891   -0.0735265    0.0413482
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0394562   -0.0151681    0.0940806
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0242496   -0.0568943    0.0083951
21-24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.0193025   -0.0587951    0.0201902
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0025977   -0.0251653    0.0199700
21-24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0113157   -0.0365818    0.0139504
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0028585   -0.0257877    0.0200706
21-24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0059354   -0.0326311    0.0207604
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0263742   -0.0876315    0.0348831
21-24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0209944   -0.0196112    0.0615999


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0505777   -0.1026336    0.0014781
0-3 months     COHORTS          INDIA                          >=155 cm             NA                -0.0237674   -0.0446773   -0.0028576
0-3 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0033770   -0.0163168    0.0095629
0-3 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0666252   -0.1380423    0.0047918
0-3 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0000575   -0.0510520    0.0511671
0-3 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0076709   -0.0918636    0.0765219
0-3 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0434295   -0.1241201    0.0372612
0-3 months     MAL-ED           PERU                           >=155 cm             NA                 0.0090516   -0.0564319    0.0745350
0-3 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0084406   -0.0364210    0.0195398
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0167984   -0.0140766    0.0476734
0-3 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0259203   -0.0866225    0.0347819
0-3 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0069300   -0.0444114    0.0305513
0-3 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0015128   -0.0031918    0.0001661
0-3 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0718073   -0.1024930   -0.0411215
0-3 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0317288   -0.0504499   -0.0130077
0-3 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0172189   -0.0227425   -0.0116953
3-6 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0547591   -0.0962131   -0.0133050
3-6 months     COHORTS          INDIA                          >=155 cm             NA                -0.0136570   -0.0310797    0.0037657
3-6 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0011025   -0.0088792    0.0066742
3-6 months     MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0487699   -0.1088604    0.0113207
3-6 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0110467   -0.0196360    0.0417295
3-6 months     MAL-ED           INDIA                          >=155 cm             NA                -0.0164268   -0.0742807    0.0414271
3-6 months     MAL-ED           NEPAL                          >=155 cm             NA                 0.0229958   -0.0341637    0.0801554
3-6 months     MAL-ED           PERU                           >=155 cm             NA                 0.0040286   -0.0645803    0.0726376
3-6 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0090513   -0.0116319    0.0297345
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0086925   -0.0353741    0.0179892
3-6 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0020160   -0.0446172    0.0486492
3-6 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0148669   -0.0200025    0.0497363
3-6 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0001823   -0.0014633    0.0010988
3-6 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0009433   -0.0321780    0.0302913
3-6 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0081715   -0.0224397    0.0060967
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0027702   -0.0157069    0.0101664
3-6 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0007012   -0.0055345    0.0041322
6-9 months     COHORTS          GUATEMALA                      >=155 cm             NA                -0.0335033   -0.0620894   -0.0049171
6-9 months     COHORTS          INDIA                          >=155 cm             NA                -0.0171800   -0.0322157   -0.0021442
6-9 months     Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0491588   -0.0940205   -0.0042971
6-9 months     Keneba           GAMBIA                         >=155 cm             NA                -0.0018208   -0.0103655    0.0067238
6-9 months     LCNI-5           MALAWI                         >=155 cm             NA                -0.0121475   -0.0249859    0.0006909
6-9 months     MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0149720   -0.0250104    0.0549543
6-9 months     MAL-ED           BRAZIL                         >=155 cm             NA                 0.0068141   -0.0249662    0.0385943
6-9 months     MAL-ED           INDIA                          >=155 cm             NA                 0.0167268   -0.0276219    0.0610754
6-9 months     MAL-ED           NEPAL                          >=155 cm             NA                -0.0306814   -0.0755036    0.0141408
6-9 months     MAL-ED           PERU                           >=155 cm             NA                 0.0002857   -0.0494951    0.0500665
6-9 months     MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0005562   -0.0166941    0.0178065
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0099647   -0.0200214    0.0399508
6-9 months     NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0273611   -0.0642269    0.0095046
6-9 months     NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0453113   -0.0709158   -0.0197067
6-9 months     PROBIT           BELARUS                        >=155 cm             NA                -0.0005896   -0.0024178    0.0012385
6-9 months     PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0225730   -0.0437642   -0.0013818
6-9 months     SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0170624   -0.0281787   -0.0059460
6-9 months     SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0102697   -0.0243773    0.0449167
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0001351   -0.0124824    0.0122122
6-9 months     ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0024287   -0.0065736    0.0017163
9-12 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0216006   -0.0053532    0.0485544
9-12 months    COHORTS          INDIA                          >=155 cm             NA                -0.0234905   -0.0374449   -0.0095361
9-12 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0402591   -0.0807118    0.0001936
9-12 months    iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0008892   -0.0057142    0.0039359
9-12 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0010064   -0.0067803    0.0087931
9-12 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0061324   -0.0084059    0.0206706
9-12 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0014835   -0.0523828    0.0553498
9-12 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0102536   -0.0381287    0.0176215
9-12 months    MAL-ED           INDIA                          >=155 cm             NA                 0.0086828   -0.0195580    0.0369236
9-12 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.0096734   -0.0238571    0.0432039
9-12 months    MAL-ED           PERU                           >=155 cm             NA                -0.0005757   -0.0412650    0.0401137
9-12 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0188296   -0.0358318   -0.0018274
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0037779   -0.0338759    0.0263201
9-12 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0082686   -0.0389171    0.0223800
9-12 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0030361   -0.0174537    0.0235258
9-12 months    PROBIT           BELARUS                        >=155 cm             NA                 0.0005424   -0.0005625    0.0016473
9-12 months    PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0061144   -0.0141608    0.0263896
9-12 months    SAS-CompFeed     INDIA                          >=155 cm             NA                 0.0060442   -0.0161449    0.0282333
9-12 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0435353   -0.0493667    0.1364374
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0044321   -0.0153456    0.0064813
9-12 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0004528   -0.0032154    0.0041210
12-15 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0148153   -0.0441249    0.0144943
12-15 months   Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.0185040   -0.0925805    0.0555726
12-15 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0006578   -0.0026224    0.0039380
12-15 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0031058   -0.0015992    0.0078108
12-15 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0060766   -0.0368576    0.0247045
12-15 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0241475   -0.0605436    0.0122485
12-15 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0120500   -0.0316765    0.0075764
12-15 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0229392   -0.0517985    0.0059202
12-15 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0220015   -0.0088839    0.0528869
12-15 months   MAL-ED           PERU                           >=155 cm             NA                -0.0416182   -0.0778716   -0.0053648
12-15 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0120724   -0.0024119    0.0265566
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0139304   -0.0342949    0.0064341
12-15 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0127419   -0.0155315    0.0410153
12-15 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.0008138   -0.0202858    0.0219135
12-15 months   PROBIT           BELARUS                        >=155 cm             NA                 0.0018348   -0.0076724    0.0113421
12-15 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0073825   -0.0266787    0.0119137
12-15 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0068331   -0.0160128    0.0023466
12-15 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0301382   -0.0730223    0.0127458
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0119286    0.0003417    0.0235156
12-15 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0005380   -0.0056531    0.0045771
15-18 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0009601   -0.0284826    0.0265624
15-18 months   iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                -0.0020944   -0.0065930    0.0024041
15-18 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0039859   -0.0089422    0.0009704
15-18 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0015287   -0.0238240    0.0207666
15-18 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0244476   -0.0640157    0.0151205
15-18 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0027455   -0.0156270    0.0211180
15-18 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0086311   -0.0307890    0.0135268
15-18 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0265888   -0.0598092    0.0066316
15-18 months   MAL-ED           PERU                           >=155 cm             NA                -0.0075659   -0.0385036    0.0233718
15-18 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0067025   -0.0032401    0.0166451
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0012161   -0.0193836    0.0169515
15-18 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0028250   -0.0282899    0.0339399
15-18 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0132110   -0.0304997    0.0040777
15-18 months   PROVIDE          BANGLADESH                     >=155 cm             NA                 0.0162211    0.0008809    0.0315613
15-18 months   SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0109468   -0.0234286    0.0015349
15-18 months   SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0111514   -0.0134781    0.0357809
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0057103   -0.0177771    0.0063565
15-18 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0001149   -0.0056497    0.0054198
18-21 months   COHORTS          GUATEMALA                      >=155 cm             NA                 0.0019040   -0.0250214    0.0288294
18-21 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0019290   -0.0031918    0.0070498
18-21 months   LCNI-5           MALAWI                         >=155 cm             NA                 0.0012791   -0.0125262    0.0150844
18-21 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0155243   -0.0451849    0.0141364
18-21 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0189902   -0.0037079    0.0416883
18-21 months   MAL-ED           INDIA                          >=155 cm             NA                -0.0254106   -0.0477486   -0.0030727
18-21 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.0102425   -0.0376360    0.0171510
18-21 months   MAL-ED           PERU                           >=155 cm             NA                -0.0043660   -0.0386593    0.0299272
18-21 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0054497   -0.0058559    0.0167554
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0129925   -0.0329798    0.0069948
18-21 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0050310   -0.0335184    0.0234563
18-21 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0123171   -0.0283001    0.0036660
18-21 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0147751   -0.0304432    0.0008931
18-21 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0039186   -0.0023616    0.0101988
21-24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0046399   -0.0273688    0.0180891
21-24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0002911   -0.0039657    0.0045480
21-24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0003489   -0.0124139    0.0117161
21-24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0078462   -0.0431464    0.0274540
21-24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0039554   -0.0185610    0.0106501
21-24 months   MAL-ED           INDIA                          >=155 cm             NA                 0.0056317   -0.0142081    0.0254715
21-24 months   MAL-ED           NEPAL                          >=155 cm             NA                 0.0275094    0.0035143    0.0515046
21-24 months   MAL-ED           PERU                           >=155 cm             NA                -0.0083434   -0.0375836    0.0208967
21-24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0031168   -0.0132496    0.0070160
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0059000   -0.0124610    0.0242610
21-24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0187159   -0.0449415    0.0075097
21-24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0042771   -0.0217132    0.0131589
21-24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0029756   -0.0205183    0.0145672
21-24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0010721   -0.0065461    0.0086903

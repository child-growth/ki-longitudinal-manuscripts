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

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        birthlen      n_cell       n
-------------  ---------------  -----------------------------  -----------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm           13      83
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm            35      83
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm        35      83
0-3 months     CMIN             BANGLADESH                     >=50 cm            0      11
0-3 months     CMIN             BANGLADESH                     <48 cm             5      11
0-3 months     CMIN             BANGLADESH                     [48-50) cm         6      11
0-3 months     COHORTS          GUATEMALA                      >=50 cm          371     728
0-3 months     COHORTS          GUATEMALA                      <48 cm           136     728
0-3 months     COHORTS          GUATEMALA                      [48-50) cm       221     728
0-3 months     COHORTS          INDIA                          >=50 cm         1385    6465
0-3 months     COHORTS          INDIA                          <48 cm          2688    6465
0-3 months     COHORTS          INDIA                          [48-50) cm      2392    6465
0-3 months     CONTENT          PERU                           >=50 cm            1       2
0-3 months     CONTENT          PERU                           <48 cm             1       2
0-3 months     CONTENT          PERU                           [48-50) cm         0       2
0-3 months     EE               PAKISTAN                       >=50 cm           19     202
0-3 months     EE               PAKISTAN                       <48 cm           137     202
0-3 months     EE               PAKISTAN                       [48-50) cm        46     202
0-3 months     GMS-Nepal        NEPAL                          >=50 cm           88     509
0-3 months     GMS-Nepal        NEPAL                          <48 cm           270     509
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm       151     509
0-3 months     IRC              INDIA                          >=50 cm          138     377
0-3 months     IRC              INDIA                          <48 cm           104     377
0-3 months     IRC              INDIA                          [48-50) cm       135     377
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm         1091   19023
0-3 months     JiVitA-3         BANGLADESH                     <48 cm         13544   19023
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm      4388   19023
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm          150    1807
0-3 months     JiVitA-4         BANGLADESH                     <48 cm          1176    1807
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm       481    1807
0-3 months     Keneba           GAMBIA                         >=50 cm          617    1254
0-3 months     Keneba           GAMBIA                         <48 cm           232    1254
0-3 months     Keneba           GAMBIA                         [48-50) cm       405    1254
0-3 months     MAL-ED           BANGLADESH                     >=50 cm           37     216
0-3 months     MAL-ED           BANGLADESH                     <48 cm           102     216
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm        77     216
0-3 months     MAL-ED           BRAZIL                         >=50 cm           29      62
0-3 months     MAL-ED           BRAZIL                         <48 cm            17      62
0-3 months     MAL-ED           BRAZIL                         [48-50) cm        16      62
0-3 months     MAL-ED           INDIA                          >=50 cm            8      42
0-3 months     MAL-ED           INDIA                          <48 cm            19      42
0-3 months     MAL-ED           INDIA                          [48-50) cm        15      42
0-3 months     MAL-ED           NEPAL                          >=50 cm            8      27
0-3 months     MAL-ED           NEPAL                          <48 cm            12      27
0-3 months     MAL-ED           NEPAL                          [48-50) cm         7      27
0-3 months     MAL-ED           PERU                           >=50 cm           49     218
0-3 months     MAL-ED           PERU                           <48 cm            84     218
0-3 months     MAL-ED           PERU                           [48-50) cm        85     218
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm           36     102
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm            25     102
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm        41     102
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     119
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            37     119
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        50     119
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm          125     550
0-3 months     NIH-Birth        BANGLADESH                     <48 cm           217     550
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm       208     550
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm          156     721
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm           278     721
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm       287     721
0-3 months     PROBIT           BELARUS                        >=50 cm        13904   15323
0-3 months     PROBIT           BELARUS                        <48 cm           168   15323
0-3 months     PROBIT           BELARUS                        [48-50) cm      1251   15323
0-3 months     PROVIDE          BANGLADESH                     >=50 cm          154     640
0-3 months     PROVIDE          BANGLADESH                     <48 cm           228     640
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm       258     640
0-3 months     ResPak           PAKISTAN                       >=50 cm           11      32
0-3 months     ResPak           PAKISTAN                       <48 cm            12      32
0-3 months     ResPak           PAKISTAN                       [48-50) cm         9      32
0-3 months     SAS-CompFeed     INDIA                          >=50 cm          189    1261
0-3 months     SAS-CompFeed     INDIA                          <48 cm           667    1261
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm       405    1261
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm         2371    7982
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm          2487    7982
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm      3124    7982
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm           12      87
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm            44      87
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm        31      87
3-6 months     CMIN             BANGLADESH                     >=50 cm            0       9
3-6 months     CMIN             BANGLADESH                     <48 cm             3       9
3-6 months     CMIN             BANGLADESH                     [48-50) cm         6       9
3-6 months     COHORTS          GUATEMALA                      >=50 cm          313     620
3-6 months     COHORTS          GUATEMALA                      <48 cm           118     620
3-6 months     COHORTS          GUATEMALA                      [48-50) cm       189     620
3-6 months     COHORTS          INDIA                          >=50 cm         1293    5975
3-6 months     COHORTS          INDIA                          <48 cm          2452    5975
3-6 months     COHORTS          INDIA                          [48-50) cm      2230    5975
3-6 months     CONTENT          PERU                           >=50 cm            1       2
3-6 months     CONTENT          PERU                           <48 cm             1       2
3-6 months     CONTENT          PERU                           [48-50) cm         0       2
3-6 months     EE               PAKISTAN                       >=50 cm           17     175
3-6 months     EE               PAKISTAN                       <48 cm           118     175
3-6 months     EE               PAKISTAN                       [48-50) cm        40     175
3-6 months     GMS-Nepal        NEPAL                          >=50 cm           81     469
3-6 months     GMS-Nepal        NEPAL                          <48 cm           243     469
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm       145     469
3-6 months     IRC              INDIA                          >=50 cm          138     379
3-6 months     IRC              INDIA                          <48 cm           106     379
3-6 months     IRC              INDIA                          [48-50) cm       135     379
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm          616   10596
3-6 months     JiVitA-3         BANGLADESH                     <48 cm          7452   10596
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm      2528   10596
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm          486    1748
3-6 months     JiVitA-4         BANGLADESH                     <48 cm           818    1748
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm       444    1748
3-6 months     Keneba           GAMBIA                         >=50 cm          477     959
3-6 months     Keneba           GAMBIA                         <48 cm           171     959
3-6 months     Keneba           GAMBIA                         [48-50) cm       311     959
3-6 months     MAL-ED           BANGLADESH                     >=50 cm           35     203
3-6 months     MAL-ED           BANGLADESH                     <48 cm            94     203
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm        74     203
3-6 months     MAL-ED           BRAZIL                         >=50 cm           28      59
3-6 months     MAL-ED           BRAZIL                         <48 cm            15      59
3-6 months     MAL-ED           BRAZIL                         [48-50) cm        16      59
3-6 months     MAL-ED           INDIA                          >=50 cm            8      41
3-6 months     MAL-ED           INDIA                          <48 cm            18      41
3-6 months     MAL-ED           INDIA                          [48-50) cm        15      41
3-6 months     MAL-ED           NEPAL                          >=50 cm            8      26
3-6 months     MAL-ED           NEPAL                          <48 cm            11      26
3-6 months     MAL-ED           NEPAL                          [48-50) cm         7      26
3-6 months     MAL-ED           PERU                           >=50 cm           48     211
3-6 months     MAL-ED           PERU                           <48 cm            84     211
3-6 months     MAL-ED           PERU                           [48-50) cm        79     211
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm           34      92
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm            20      92
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm        38      92
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     113
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            35     113
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        47     113
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm          118     505
3-6 months     NIH-Birth        BANGLADESH                     <48 cm           193     505
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm       194     505
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm          153     695
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm           264     695
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm       278     695
3-6 months     PROBIT           BELARUS                        >=50 cm        12089   13308
3-6 months     PROBIT           BELARUS                        <48 cm           146   13308
3-6 months     PROBIT           BELARUS                        [48-50) cm      1073   13308
3-6 months     PROVIDE          BANGLADESH                     >=50 cm          142     598
3-6 months     PROVIDE          BANGLADESH                     <48 cm           210     598
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm       246     598
3-6 months     ResPak           PAKISTAN                       >=50 cm           10      23
3-6 months     ResPak           PAKISTAN                       <48 cm             6      23
3-6 months     ResPak           PAKISTAN                       [48-50) cm         7      23
3-6 months     SAS-CompFeed     INDIA                          >=50 cm          166    1114
3-6 months     SAS-CompFeed     INDIA                          <48 cm           584    1114
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm       364    1114
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm         1811    6109
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm          1884    6109
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm      2414    6109
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm           12      86
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm            41      86
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm        33      86
6-9 months     CMIN             BANGLADESH                     >=50 cm            0       8
6-9 months     CMIN             BANGLADESH                     <48 cm             4       8
6-9 months     CMIN             BANGLADESH                     [48-50) cm         4       8
6-9 months     COHORTS          GUATEMALA                      >=50 cm          298     598
6-9 months     COHORTS          GUATEMALA                      <48 cm           122     598
6-9 months     COHORTS          GUATEMALA                      [48-50) cm       178     598
6-9 months     COHORTS          INDIA                          >=50 cm         1162    5274
6-9 months     COHORTS          INDIA                          <48 cm          2167    5274
6-9 months     COHORTS          INDIA                          [48-50) cm      1945    5274
6-9 months     CONTENT          PERU                           >=50 cm            1       2
6-9 months     CONTENT          PERU                           <48 cm             1       2
6-9 months     CONTENT          PERU                           [48-50) cm         0       2
6-9 months     EE               PAKISTAN                       >=50 cm           20     194
6-9 months     EE               PAKISTAN                       <48 cm           131     194
6-9 months     EE               PAKISTAN                       [48-50) cm        43     194
6-9 months     GMS-Nepal        NEPAL                          >=50 cm           84     480
6-9 months     GMS-Nepal        NEPAL                          <48 cm           244     480
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm       152     480
6-9 months     IRC              INDIA                          >=50 cm          142     389
6-9 months     IRC              INDIA                          <48 cm           109     389
6-9 months     IRC              INDIA                          [48-50) cm       138     389
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm          690    2674
6-9 months     JiVitA-4         BANGLADESH                     <48 cm          1267    2674
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm       717    2674
6-9 months     Keneba           GAMBIA                         >=50 cm          293     574
6-9 months     Keneba           GAMBIA                         <48 cm            95     574
6-9 months     Keneba           GAMBIA                         [48-50) cm       186     574
6-9 months     MAL-ED           BANGLADESH                     >=50 cm           37     197
6-9 months     MAL-ED           BANGLADESH                     <48 cm            88     197
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm        72     197
6-9 months     MAL-ED           BRAZIL                         >=50 cm           25      53
6-9 months     MAL-ED           BRAZIL                         <48 cm            14      53
6-9 months     MAL-ED           BRAZIL                         [48-50) cm        14      53
6-9 months     MAL-ED           INDIA                          >=50 cm            8      41
6-9 months     MAL-ED           INDIA                          <48 cm            18      41
6-9 months     MAL-ED           INDIA                          [48-50) cm        15      41
6-9 months     MAL-ED           NEPAL                          >=50 cm            8      26
6-9 months     MAL-ED           NEPAL                          <48 cm            11      26
6-9 months     MAL-ED           NEPAL                          [48-50) cm         7      26
6-9 months     MAL-ED           PERU                           >=50 cm           41     192
6-9 months     MAL-ED           PERU                           <48 cm            81     192
6-9 months     MAL-ED           PERU                           [48-50) cm        70     192
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm           34      86
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm            18      86
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm        34      86
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     108
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     108
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     108
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm          108     480
6-9 months     NIH-Birth        BANGLADESH                     <48 cm           187     480
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm       185     480
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm          160     688
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm           257     688
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm       271     688
6-9 months     PROBIT           BELARUS                        >=50 cm        11295   12426
6-9 months     PROBIT           BELARUS                        <48 cm           130   12426
6-9 months     PROBIT           BELARUS                        [48-50) cm      1001   12426
6-9 months     PROVIDE          BANGLADESH                     >=50 cm          134     565
6-9 months     PROVIDE          BANGLADESH                     <48 cm           199     565
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm       232     565
6-9 months     ResPak           PAKISTAN                       >=50 cm            8      20
6-9 months     ResPak           PAKISTAN                       <48 cm             4      20
6-9 months     ResPak           PAKISTAN                       [48-50) cm         8      20
6-9 months     SAS-CompFeed     INDIA                          >=50 cm          171    1133
6-9 months     SAS-CompFeed     INDIA                          <48 cm           598    1133
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm       364    1133
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm         1748    5860
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm          1805    5860
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm      2307    5860
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm           12      89
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm            40      89
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm        37      89
9-12 months    CMIN             BANGLADESH                     >=50 cm            0       7
9-12 months    CMIN             BANGLADESH                     <48 cm             3       7
9-12 months    CMIN             BANGLADESH                     [48-50) cm         4       7
9-12 months    COHORTS          GUATEMALA                      >=50 cm          319     632
9-12 months    COHORTS          GUATEMALA                      <48 cm           129     632
9-12 months    COHORTS          GUATEMALA                      [48-50) cm       184     632
9-12 months    COHORTS          INDIA                          >=50 cm          993    4531
9-12 months    COHORTS          INDIA                          <48 cm          1853    4531
9-12 months    COHORTS          INDIA                          [48-50) cm      1685    4531
9-12 months    CONTENT          PERU                           >=50 cm            1       2
9-12 months    CONTENT          PERU                           <48 cm             1       2
9-12 months    CONTENT          PERU                           [48-50) cm         0       2
9-12 months    EE               PAKISTAN                       >=50 cm           21     214
9-12 months    EE               PAKISTAN                       <48 cm           145     214
9-12 months    EE               PAKISTAN                       [48-50) cm        48     214
9-12 months    GMS-Nepal        NEPAL                          >=50 cm           74     468
9-12 months    GMS-Nepal        NEPAL                          <48 cm           244     468
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm       150     468
9-12 months    IRC              INDIA                          >=50 cm          139     382
9-12 months    IRC              INDIA                          <48 cm           108     382
9-12 months    IRC              INDIA                          [48-50) cm       135     382
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm          752    2961
9-12 months    JiVitA-4         BANGLADESH                     <48 cm          1455    2961
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm       754    2961
9-12 months    Keneba           GAMBIA                         >=50 cm          295     568
9-12 months    Keneba           GAMBIA                         <48 cm            90     568
9-12 months    Keneba           GAMBIA                         [48-50) cm       183     568
9-12 months    MAL-ED           BANGLADESH                     >=50 cm           38     198
9-12 months    MAL-ED           BANGLADESH                     <48 cm            88     198
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm        72     198
9-12 months    MAL-ED           BRAZIL                         >=50 cm           25      52
9-12 months    MAL-ED           BRAZIL                         <48 cm            13      52
9-12 months    MAL-ED           BRAZIL                         [48-50) cm        14      52
9-12 months    MAL-ED           INDIA                          >=50 cm            7      40
9-12 months    MAL-ED           INDIA                          <48 cm            18      40
9-12 months    MAL-ED           INDIA                          [48-50) cm        15      40
9-12 months    MAL-ED           NEPAL                          >=50 cm            8      26
9-12 months    MAL-ED           NEPAL                          <48 cm            11      26
9-12 months    MAL-ED           NEPAL                          [48-50) cm         7      26
9-12 months    MAL-ED           PERU                           >=50 cm           40     183
9-12 months    MAL-ED           PERU                           <48 cm            76     183
9-12 months    MAL-ED           PERU                           [48-50) cm        67     183
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm           31      83
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm            19      83
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm        33      83
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     109
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            33     109
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     109
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm          107     466
9-12 months    NIH-Birth        BANGLADESH                     <48 cm           183     466
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm       176     466
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm          153     674
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm           261     674
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm       260     674
9-12 months    PROBIT           BELARUS                        >=50 cm        11527   12681
9-12 months    PROBIT           BELARUS                        <48 cm           127   12681
9-12 months    PROBIT           BELARUS                        [48-50) cm      1027   12681
9-12 months    PROVIDE          BANGLADESH                     >=50 cm          137     566
9-12 months    PROVIDE          BANGLADESH                     <48 cm           203     566
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm       226     566
9-12 months    ResPak           PAKISTAN                       >=50 cm            8      21
9-12 months    ResPak           PAKISTAN                       <48 cm             6      21
9-12 months    ResPak           PAKISTAN                       [48-50) cm         7      21
9-12 months    SAS-CompFeed     INDIA                          >=50 cm          161    1136
9-12 months    SAS-CompFeed     INDIA                          <48 cm           604    1136
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm       371    1136
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm         1736    5860
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm          1835    5860
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm      2289    5860
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      93
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm            44      93
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        35      93
12-15 months   CMIN             BANGLADESH                     >=50 cm            0       7
12-15 months   CMIN             BANGLADESH                     <48 cm             2       7
12-15 months   CMIN             BANGLADESH                     [48-50) cm         5       7
12-15 months   COHORTS          GUATEMALA                      >=50 cm          273     555
12-15 months   COHORTS          GUATEMALA                      <48 cm           114     555
12-15 months   COHORTS          GUATEMALA                      [48-50) cm       168     555
12-15 months   CONTENT          PERU                           >=50 cm            1       2
12-15 months   CONTENT          PERU                           <48 cm             1       2
12-15 months   CONTENT          PERU                           [48-50) cm         0       2
12-15 months   EE               PAKISTAN                       >=50 cm           21     194
12-15 months   EE               PAKISTAN                       <48 cm           134     194
12-15 months   EE               PAKISTAN                       [48-50) cm        39     194
12-15 months   GMS-Nepal        NEPAL                          >=50 cm           71     468
12-15 months   GMS-Nepal        NEPAL                          <48 cm           252     468
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm       145     468
12-15 months   IRC              INDIA                          >=50 cm          138     374
12-15 months   IRC              INDIA                          <48 cm           106     374
12-15 months   IRC              INDIA                          [48-50) cm       130     374
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm          787    2990
12-15 months   JiVitA-4         BANGLADESH                     <48 cm          1469    2990
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm       734    2990
12-15 months   Keneba           GAMBIA                         >=50 cm          456     888
12-15 months   Keneba           GAMBIA                         <48 cm           149     888
12-15 months   Keneba           GAMBIA                         [48-50) cm       283     888
12-15 months   MAL-ED           BANGLADESH                     >=50 cm           36     186
12-15 months   MAL-ED           BANGLADESH                     <48 cm            82     186
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm        68     186
12-15 months   MAL-ED           BRAZIL                         >=50 cm           22      47
12-15 months   MAL-ED           BRAZIL                         <48 cm            12      47
12-15 months   MAL-ED           BRAZIL                         [48-50) cm        13      47
12-15 months   MAL-ED           INDIA                          >=50 cm            7      40
12-15 months   MAL-ED           INDIA                          <48 cm            18      40
12-15 months   MAL-ED           INDIA                          [48-50) cm        15      40
12-15 months   MAL-ED           NEPAL                          >=50 cm            8      26
12-15 months   MAL-ED           NEPAL                          <48 cm            11      26
12-15 months   MAL-ED           NEPAL                          [48-50) cm         7      26
12-15 months   MAL-ED           PERU                           >=50 cm           38     175
12-15 months   MAL-ED           PERU                           <48 cm            70     175
12-15 months   MAL-ED           PERU                           [48-50) cm        67     175
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm           28      83
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm            20      83
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        35      83
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     111
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     111
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     111
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm          105     445
12-15 months   NIH-Birth        BANGLADESH                     <48 cm           172     445
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm       168     445
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm          151     660
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm           252     660
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm       257     660
12-15 months   PROBIT           BELARUS                        >=50 cm          904    1001
12-15 months   PROBIT           BELARUS                        <48 cm            10    1001
12-15 months   PROBIT           BELARUS                        [48-50) cm        87    1001
12-15 months   PROVIDE          BANGLADESH                     >=50 cm          134     532
12-15 months   PROVIDE          BANGLADESH                     <48 cm           188     532
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm       210     532
12-15 months   ResPak           PAKISTAN                       >=50 cm            5      14
12-15 months   ResPak           PAKISTAN                       <48 cm             4      14
12-15 months   ResPak           PAKISTAN                       [48-50) cm         5      14
12-15 months   SAS-CompFeed     INDIA                          >=50 cm          169    1157
12-15 months   SAS-CompFeed     INDIA                          <48 cm           611    1157
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm       377    1157
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm          632    2513
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm           922    2513
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       959    2513
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      91
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm            46      91
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91
15-18 months   CMIN             BANGLADESH                     >=50 cm            0       6
15-18 months   CMIN             BANGLADESH                     <48 cm             3       6
15-18 months   CMIN             BANGLADESH                     [48-50) cm         3       6
15-18 months   COHORTS          GUATEMALA                      >=50 cm          244     509
15-18 months   COHORTS          GUATEMALA                      <48 cm           108     509
15-18 months   COHORTS          GUATEMALA                      [48-50) cm       157     509
15-18 months   CONTENT          PERU                           >=50 cm            1       2
15-18 months   CONTENT          PERU                           <48 cm             1       2
15-18 months   CONTENT          PERU                           [48-50) cm         0       2
15-18 months   EE               PAKISTAN                       >=50 cm           21     180
15-18 months   EE               PAKISTAN                       <48 cm           120     180
15-18 months   EE               PAKISTAN                       [48-50) cm        39     180
15-18 months   GMS-Nepal        NEPAL                          >=50 cm           82     480
15-18 months   GMS-Nepal        NEPAL                          <48 cm           251     480
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm       147     480
15-18 months   IRC              INDIA                          >=50 cm          137     366
15-18 months   IRC              INDIA                          <48 cm           102     366
15-18 months   IRC              INDIA                          [48-50) cm       127     366
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm          793    2997
15-18 months   JiVitA-4         BANGLADESH                     <48 cm          1458    2997
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm       746    2997
15-18 months   Keneba           GAMBIA                         >=50 cm          463     886
15-18 months   Keneba           GAMBIA                         <48 cm           148     886
15-18 months   Keneba           GAMBIA                         [48-50) cm       275     886
15-18 months   MAL-ED           BANGLADESH                     >=50 cm           36     186
15-18 months   MAL-ED           BANGLADESH                     <48 cm            83     186
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm        67     186
15-18 months   MAL-ED           BRAZIL                         >=50 cm           22      44
15-18 months   MAL-ED           BRAZIL                         <48 cm             9      44
15-18 months   MAL-ED           BRAZIL                         [48-50) cm        13      44
15-18 months   MAL-ED           INDIA                          >=50 cm            6      39
15-18 months   MAL-ED           INDIA                          <48 cm            18      39
15-18 months   MAL-ED           INDIA                          [48-50) cm        15      39
15-18 months   MAL-ED           NEPAL                          >=50 cm            8      26
15-18 months   MAL-ED           NEPAL                          <48 cm            11      26
15-18 months   MAL-ED           NEPAL                          [48-50) cm         7      26
15-18 months   MAL-ED           PERU                           >=50 cm           37     165
15-18 months   MAL-ED           PERU                           <48 cm            68     165
15-18 months   MAL-ED           PERU                           [48-50) cm        60     165
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm           30      85
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm            20      85
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        35      85
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     107
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     107
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        43     107
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm          101     432
15-18 months   NIH-Birth        BANGLADESH                     <48 cm           167     432
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm       164     432
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm          143     604
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm           231     604
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm       230     604
15-18 months   PROBIT           BELARUS                        >=50 cm          245     275
15-18 months   PROBIT           BELARUS                        <48 cm             6     275
15-18 months   PROBIT           BELARUS                        [48-50) cm        24     275
15-18 months   PROVIDE          BANGLADESH                     >=50 cm          132     528
15-18 months   PROVIDE          BANGLADESH                     <48 cm           185     528
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm       211     528
15-18 months   SAS-CompFeed     INDIA                          >=50 cm          173    1161
15-18 months   SAS-CompFeed     INDIA                          <48 cm           614    1161
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm       374    1161
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm          480    2012
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm           779    2012
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       753    2012
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      82
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm            39      82
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        29      82
18-21 months   CMIN             BANGLADESH                     >=50 cm            0       7
18-21 months   CMIN             BANGLADESH                     <48 cm             4       7
18-21 months   CMIN             BANGLADESH                     [48-50) cm         3       7
18-21 months   COHORTS          GUATEMALA                      >=50 cm          232     490
18-21 months   COHORTS          GUATEMALA                      <48 cm           108     490
18-21 months   COHORTS          GUATEMALA                      [48-50) cm       150     490
18-21 months   CONTENT          PERU                           >=50 cm            1       2
18-21 months   CONTENT          PERU                           <48 cm             1       2
18-21 months   CONTENT          PERU                           [48-50) cm         0       2
18-21 months   EE               PAKISTAN                       >=50 cm           18     165
18-21 months   EE               PAKISTAN                       <48 cm           104     165
18-21 months   EE               PAKISTAN                       [48-50) cm        43     165
18-21 months   GMS-Nepal        NEPAL                          >=50 cm           79     445
18-21 months   GMS-Nepal        NEPAL                          <48 cm           228     445
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm       138     445
18-21 months   IRC              INDIA                          >=50 cm          132     362
18-21 months   IRC              INDIA                          <48 cm           102     362
18-21 months   IRC              INDIA                          [48-50) cm       128     362
18-21 months   Keneba           GAMBIA                         >=50 cm          447     869
18-21 months   Keneba           GAMBIA                         <48 cm           145     869
18-21 months   Keneba           GAMBIA                         [48-50) cm       277     869
18-21 months   MAL-ED           BANGLADESH                     >=50 cm           37     186
18-21 months   MAL-ED           BANGLADESH                     <48 cm            81     186
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm        68     186
18-21 months   MAL-ED           BRAZIL                         >=50 cm           20      41
18-21 months   MAL-ED           BRAZIL                         <48 cm             9      41
18-21 months   MAL-ED           BRAZIL                         [48-50) cm        12      41
18-21 months   MAL-ED           INDIA                          >=50 cm            6      39
18-21 months   MAL-ED           INDIA                          <48 cm            18      39
18-21 months   MAL-ED           INDIA                          [48-50) cm        15      39
18-21 months   MAL-ED           NEPAL                          >=50 cm            8      26
18-21 months   MAL-ED           NEPAL                          <48 cm            11      26
18-21 months   MAL-ED           NEPAL                          [48-50) cm         7      26
18-21 months   MAL-ED           PERU                           >=50 cm           36     162
18-21 months   MAL-ED           PERU                           <48 cm            68     162
18-21 months   MAL-ED           PERU                           [48-50) cm        58     162
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm           32      88
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm            21      88
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        35      88
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     102
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     102
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39     102
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm           93     407
18-21 months   NIH-Birth        BANGLADESH                     <48 cm           156     407
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm       158     407
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm          129     546
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm           209     546
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm       208     546
18-21 months   PROBIT           BELARUS                        >=50 cm          193     218
18-21 months   PROBIT           BELARUS                        <48 cm             4     218
18-21 months   PROBIT           BELARUS                        [48-50) cm        21     218
18-21 months   PROVIDE          BANGLADESH                     >=50 cm          130     541
18-21 months   PROVIDE          BANGLADESH                     <48 cm           192     541
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm       219     541
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm          361    1568
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm           624    1568
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       583    1568
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      83
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm            38      83
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        31      83
21-24 months   CMIN             BANGLADESH                     >=50 cm            0       1
21-24 months   CMIN             BANGLADESH                     <48 cm             0       1
21-24 months   CMIN             BANGLADESH                     [48-50) cm         1       1
21-24 months   COHORTS          GUATEMALA                      >=50 cm          242     519
21-24 months   COHORTS          GUATEMALA                      <48 cm           111     519
21-24 months   COHORTS          GUATEMALA                      [48-50) cm       166     519
21-24 months   EE               PAKISTAN                       >=50 cm            6      70
21-24 months   EE               PAKISTAN                       <48 cm            46      70
21-24 months   EE               PAKISTAN                       [48-50) cm        18      70
21-24 months   GMS-Nepal        NEPAL                          >=50 cm           61     341
21-24 months   GMS-Nepal        NEPAL                          <48 cm           169     341
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm       111     341
21-24 months   IRC              INDIA                          >=50 cm          133     371
21-24 months   IRC              INDIA                          <48 cm           105     371
21-24 months   IRC              INDIA                          [48-50) cm       133     371
21-24 months   Keneba           GAMBIA                         >=50 cm          403     788
21-24 months   Keneba           GAMBIA                         <48 cm           137     788
21-24 months   Keneba           GAMBIA                         [48-50) cm       248     788
21-24 months   MAL-ED           BANGLADESH                     >=50 cm           38     184
21-24 months   MAL-ED           BANGLADESH                     <48 cm            79     184
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm        67     184
21-24 months   MAL-ED           BRAZIL                         >=50 cm           19      41
21-24 months   MAL-ED           BRAZIL                         <48 cm            10      41
21-24 months   MAL-ED           BRAZIL                         [48-50) cm        12      41
21-24 months   MAL-ED           INDIA                          >=50 cm            6      39
21-24 months   MAL-ED           INDIA                          <48 cm            18      39
21-24 months   MAL-ED           INDIA                          [48-50) cm        15      39
21-24 months   MAL-ED           NEPAL                          >=50 cm            8      26
21-24 months   MAL-ED           NEPAL                          <48 cm            11      26
21-24 months   MAL-ED           NEPAL                          [48-50) cm         7      26
21-24 months   MAL-ED           PERU                           >=50 cm           33     154
21-24 months   MAL-ED           PERU                           <48 cm            66     154
21-24 months   MAL-ED           PERU                           [48-50) cm        55     154
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm           32      89
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm            21      89
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        36      89
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     101
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            33     101
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        39     101
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm           94     396
21-24 months   NIH-Birth        BANGLADESH                     <48 cm           151     396
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm       151     396
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm          121     490
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm           190     490
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm       179     490
21-24 months   PROBIT           BELARUS                        >=50 cm          184     209
21-24 months   PROBIT           BELARUS                        <48 cm             4     209
21-24 months   PROBIT           BELARUS                        [48-50) cm        21     209
21-24 months   PROVIDE          BANGLADESH                     >=50 cm          108     471
21-24 months   PROVIDE          BANGLADESH                     <48 cm           173     471
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm       190     471
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm          215    1144
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm           501    1144
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       428    1144


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 0-3 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
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
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
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
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
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
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
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
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/7bd44ca3-9b72-4e72-a92d-02444858a15d/9d65e3ac-eb96-4fa1-9f0d-e031805fef4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7bd44ca3-9b72-4e72-a92d-02444858a15d/9d65e3ac-eb96-4fa1-9f0d-e031805fef4e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7bd44ca3-9b72-4e72-a92d-02444858a15d/9d65e3ac-eb96-4fa1-9f0d-e031805fef4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                2.9797319    2.4353834   3.5240804
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                3.8412440    3.4890184   4.1934696
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                3.3018610    3.0120996   3.5916225
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                2.4879195    2.4283157   2.5475233
0-3 months     COHORTS          GUATEMALA                      <48 cm               NA                2.7833184    2.6724392   2.8941975
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           NA                2.6218504    2.5505691   2.6931318
0-3 months     COHORTS          INDIA                          >=50 cm              NA                3.3171658    3.2887340   3.3455976
0-3 months     COHORTS          INDIA                          <48 cm               NA                3.6521113    3.6298597   3.6743629
0-3 months     COHORTS          INDIA                          [48-50) cm           NA                3.4647572    3.4431723   3.4863422
0-3 months     EE               PAKISTAN                       >=50 cm              NA                2.5500621    2.0826507   3.0174736
0-3 months     EE               PAKISTAN                       <48 cm               NA                3.1596820    3.0351140   3.2842500
0-3 months     EE               PAKISTAN                       [48-50) cm           NA                2.8684358    2.7277565   3.0091151
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                3.4179250    3.3031849   3.5326652
0-3 months     GMS-Nepal        NEPAL                          <48 cm               NA                3.6916171    3.6174082   3.7658260
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                3.5394070    3.4558961   3.6229179
0-3 months     IRC              INDIA                          >=50 cm              NA                2.5542411    2.3836097   2.7248724
0-3 months     IRC              INDIA                          <48 cm               NA                3.7124350    3.5003952   3.9244748
0-3 months     IRC              INDIA                          [48-50) cm           NA                3.2876675    3.1440896   3.4312455
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                3.4207864    3.3794118   3.4621611
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               NA                3.7980287    3.7861271   3.8099303
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                3.6003519    3.5816791   3.6190247
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                3.3812505    3.2697029   3.4927982
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               NA                3.7106393    3.6738919   3.7473868
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                3.5478063    3.4862506   3.6093620
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                2.8337631    2.7745624   2.8929639
0-3 months     Keneba           GAMBIA                         <48 cm               NA                3.7154507    3.5858858   3.8450156
0-3 months     Keneba           GAMBIA                         [48-50) cm           NA                3.1858482    3.1207490   3.2509474
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                3.1205881    2.9549541   3.2862221
0-3 months     MAL-ED           BANGLADESH                     <48 cm               NA                3.5224630    3.4185593   3.6263668
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                3.2231350    3.1219645   3.3243055
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                3.7373130    3.5157350   3.9588911
0-3 months     MAL-ED           BRAZIL                         <48 cm               NA                4.1798233    3.8768053   4.4828413
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           NA                3.8418874    3.4647430   4.2190318
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                2.9817880    2.7987324   3.1648436
0-3 months     MAL-ED           INDIA                          <48 cm               NA                3.4364443    3.1758303   3.6970583
0-3 months     MAL-ED           INDIA                          [48-50) cm           NA                2.9258197    2.7134362   3.1382033
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                3.1825187    2.8139392   3.5510981
0-3 months     MAL-ED           NEPAL                          <48 cm               NA                3.5173766    3.2295900   3.8051631
0-3 months     MAL-ED           NEPAL                          [48-50) cm           NA                3.3087792    2.8412038   3.7763547
0-3 months     MAL-ED           PERU                           >=50 cm              NA                2.9698102    2.8199930   3.1196275
0-3 months     MAL-ED           PERU                           <48 cm               NA                3.1538394    3.0567916   3.2508872
0-3 months     MAL-ED           PERU                           [48-50) cm           NA                2.9954684    2.8877064   3.1032304
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                2.8782873    2.6464835   3.1100910
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                3.1654238    2.8815527   3.4492949
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                3.1076280    2.9050846   3.3101713
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                3.0516309    2.8752828   3.2279789
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                3.4890698    3.3114246   3.6667150
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                3.1866371    3.0443095   3.3289646
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                2.8309215    2.7240569   2.9377861
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               NA                3.2784356    3.1914310   3.3654403
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                3.0842271    3.0016125   3.1668417
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                2.9553739    2.8795720   3.0311757
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                3.2462281    3.1867442   3.3057119
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                3.1113939    3.0562746   3.1665133
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                2.7693494    2.6587861   2.8799127
0-3 months     PROBIT           BELARUS                        <48 cm               NA                3.5530973    3.4646746   3.6415200
0-3 months     PROBIT           BELARUS                        [48-50) cm           NA                3.2119829    3.0824047   3.3415612
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                3.2093891    3.1320763   3.2867018
0-3 months     PROVIDE          BANGLADESH                     <48 cm               NA                3.3070672    3.2460570   3.3680773
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                3.2425157    3.1835295   3.3015020
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                2.0063740    1.3247806   2.6879674
0-3 months     ResPak           PAKISTAN                       <48 cm               NA                3.3239316    2.6885503   3.9593129
0-3 months     ResPak           PAKISTAN                       [48-50) cm           NA                2.7987213    1.9183105   3.6791320
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                2.7517798    2.6803879   2.8231718
0-3 months     SAS-CompFeed     INDIA                          <48 cm               NA                3.5478004    3.4933770   3.6022239
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                3.3043214    3.2494756   3.3591672
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                2.8537266    2.8179451   2.8895080
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                3.7680616    3.7332362   3.8028871
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                3.3532643    3.3238481   3.3826805
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.5921935    1.2376392   1.9467477
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                2.0144247    1.7269125   2.3019370
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.8810115    1.5646845   2.1973385
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                1.6928560    1.6464874   1.7392245
3-6 months     COHORTS          GUATEMALA                      <48 cm               NA                1.8323613    1.7510667   1.9136558
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           NA                1.7859398    1.7234419   1.8484377
3-6 months     COHORTS          INDIA                          >=50 cm              NA                1.7992428    1.7723634   1.8261222
3-6 months     COHORTS          INDIA                          <48 cm               NA                1.9236052    1.9034095   1.9438008
3-6 months     COHORTS          INDIA                          [48-50) cm           NA                1.8661270    1.8454977   1.8867563
3-6 months     EE               PAKISTAN                       >=50 cm              NA                2.1497766    1.9583256   2.3412275
3-6 months     EE               PAKISTAN                       <48 cm               NA                2.1084174    2.0242068   2.1926280
3-6 months     EE               PAKISTAN                       [48-50) cm           NA                2.0607974    1.9025753   2.2190194
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                1.5714887    1.4777271   1.6652504
3-6 months     GMS-Nepal        NEPAL                          <48 cm               NA                1.7855884    1.7295119   1.8416649
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                1.6653215    1.5993788   1.7312642
3-6 months     IRC              INDIA                          >=50 cm              NA                1.8532622    1.7314045   1.9751199
3-6 months     IRC              INDIA                          <48 cm               NA                1.8928346    1.7720052   2.0136641
3-6 months     IRC              INDIA                          [48-50) cm           NA                1.9437294    1.8391246   2.0483342
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                1.7924431    1.7469736   1.8379127
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               NA                1.9357374    1.9224777   1.9489971
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                1.8768800    1.8543624   1.8993976
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                1.8453276    1.7896036   1.9010515
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               NA                1.9412796    1.8937291   1.9888302
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                1.8776834    1.8252004   1.9301664
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                1.9100999    1.8444145   1.9757854
3-6 months     Keneba           GAMBIA                         <48 cm               NA                2.0599038    1.9635661   2.1562415
3-6 months     Keneba           GAMBIA                         [48-50) cm           NA                1.9492245    1.8676777   2.0307714
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                1.8879758    1.7562328   2.0197188
3-6 months     MAL-ED           BANGLADESH                     <48 cm               NA                1.9593157    1.8773181   2.0413132
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                1.9139439    1.8285600   1.9993278
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                2.0216546    1.8124336   2.2308756
3-6 months     MAL-ED           BRAZIL                         <48 cm               NA                2.0708633    1.7740157   2.3677110
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           NA                2.0656913    1.7730265   2.3583560
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                1.8465470    1.4799670   2.2131269
3-6 months     MAL-ED           INDIA                          <48 cm               NA                1.9985049    1.7346587   2.2623511
3-6 months     MAL-ED           INDIA                          [48-50) cm           NA                1.7980779    1.6550463   1.9411096
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                1.9466695    1.5843663   2.3089727
3-6 months     MAL-ED           NEPAL                          <48 cm               NA                2.1608314    1.9777977   2.3438651
3-6 months     MAL-ED           NEPAL                          [48-50) cm           NA                1.8530405    1.6014589   2.1046221
3-6 months     MAL-ED           PERU                           >=50 cm              NA                1.8229986    1.6762840   1.9697133
3-6 months     MAL-ED           PERU                           <48 cm               NA                2.0175524    1.8929331   2.1421716
3-6 months     MAL-ED           PERU                           [48-50) cm           NA                2.0267928    1.9048800   2.1487057
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                1.8347242    1.5738028   2.0956455
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                1.9632363    1.7201953   2.2062772
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.9555579    1.7679300   2.1431859
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.7267875    1.5550032   1.8985718
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.7726000    1.5939203   1.9512796
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.8309581    1.6798513   1.9820650
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                1.8091374    1.7094326   1.9088421
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               NA                1.8305671    1.7447246   1.9164096
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.8354082    1.7637333   1.9070830
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                1.9665112    1.8914431   2.0415794
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                2.0828744    2.0181486   2.1476002
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                1.9603976    1.9067808   2.0140145
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                2.0812526    2.0391669   2.1233383
3-6 months     PROBIT           BELARUS                        <48 cm               NA                2.3580020    2.2935078   2.4224962
3-6 months     PROBIT           BELARUS                        [48-50) cm           NA                2.1794152    2.1279863   2.2308440
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                1.8822760    1.8142599   1.9502921
3-6 months     PROVIDE          BANGLADESH                     <48 cm               NA                2.0045281    1.9441375   2.0649188
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                1.9798785    1.9298271   2.0299299
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                1.8383272    1.4059771   2.2706774
3-6 months     ResPak           PAKISTAN                       <48 cm               NA                2.0231752    1.4541012   2.5922492
3-6 months     ResPak           PAKISTAN                       [48-50) cm           NA                2.4180878    1.8202878   3.0158878
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                1.8870001    1.8222964   1.9517038
3-6 months     SAS-CompFeed     INDIA                          <48 cm               NA                1.9467799    1.8770546   2.0165051
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                1.9739766    1.8991338   2.0488195
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.9464471    1.9113864   1.9815077
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                2.0254015    1.9877953   2.0630077
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.9615395    1.9299587   1.9931204
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.3756902    0.8923530   1.8590274
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.3229756    1.0870300   1.5589213
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.3516750    1.0960324   1.6073176
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                1.0992301    1.0569111   1.1415492
6-9 months     COHORTS          GUATEMALA                      <48 cm               NA                1.1772233    1.1048540   1.2495926
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           NA                1.0879687    1.0260672   1.1498702
6-9 months     COHORTS          INDIA                          >=50 cm              NA                1.2035741    1.1788738   1.2282743
6-9 months     COHORTS          INDIA                          <48 cm               NA                1.2016700    1.1824781   1.2208619
6-9 months     COHORTS          INDIA                          [48-50) cm           NA                1.1814472    1.1616822   1.2012123
6-9 months     EE               PAKISTAN                       >=50 cm              NA                1.1711451    1.0223698   1.3199205
6-9 months     EE               PAKISTAN                       <48 cm               NA                1.1308943    1.0542438   1.2075448
6-9 months     EE               PAKISTAN                       [48-50) cm           NA                1.2367575    1.1317645   1.3417505
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                1.2874026    1.1942106   1.3805947
6-9 months     GMS-Nepal        NEPAL                          <48 cm               NA                1.3381727    1.2701023   1.4062431
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                1.2896967    1.2414350   1.3379584
6-9 months     IRC              INDIA                          >=50 cm              NA                1.3393837    1.2614292   1.4173381
6-9 months     IRC              INDIA                          <48 cm               NA                1.4658446    1.3679823   1.5637069
6-9 months     IRC              INDIA                          [48-50) cm           NA                1.3281310    1.2427761   1.4134858
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                1.3346778    1.2899589   1.3793966
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               NA                1.3515861    1.3196826   1.3834896
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                1.3007890    1.2625962   1.3389817
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                1.4950207    1.4019984   1.5880431
6-9 months     Keneba           GAMBIA                         <48 cm               NA                1.2697523    1.1713855   1.3681190
6-9 months     Keneba           GAMBIA                         [48-50) cm           NA                1.3714070    1.2570529   1.4857611
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                1.2509662    1.1613386   1.3405939
6-9 months     MAL-ED           BANGLADESH                     <48 cm               NA                1.2522920    1.1800152   1.3245688
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                1.2770406    1.2105091   1.3435722
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                1.4966997    1.2549418   1.7384576
6-9 months     MAL-ED           BRAZIL                         <48 cm               NA                1.3733258    1.1749954   1.5716562
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           NA                1.4233856    1.1674370   1.6793342
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                1.1172692    0.9081854   1.3263529
6-9 months     MAL-ED           INDIA                          <48 cm               NA                1.1760474    0.8679775   1.4841173
6-9 months     MAL-ED           INDIA                          [48-50) cm           NA                1.3145811    1.1256642   1.5034981
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                1.4231646    1.1266115   1.7197176
6-9 months     MAL-ED           NEPAL                          <48 cm               NA                1.2552098    1.0483993   1.4620202
6-9 months     MAL-ED           NEPAL                          [48-50) cm           NA                1.2242873    1.0834491   1.3651256
6-9 months     MAL-ED           PERU                           >=50 cm              NA                1.2977205    1.1714491   1.4239920
6-9 months     MAL-ED           PERU                           <48 cm               NA                1.3272131    1.2272550   1.4271712
6-9 months     MAL-ED           PERU                           [48-50) cm           NA                1.3180979    1.2128398   1.4233559
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                1.2581025    1.1286587   1.3875463
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                1.7428855    1.4934206   1.9923504
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.3267084    1.1986912   1.4547256
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.2706871    1.0931311   1.4482430
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.4060738    1.0716436   1.7405039
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.1641448    1.0209133   1.3073763
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                1.2411077    1.1566989   1.3255165
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               NA                1.2317341    1.1626457   1.3008225
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.2785083    1.2121930   1.3448236
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                1.3285642    1.2714385   1.3856899
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                1.3397099    1.2889596   1.3904602
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                1.3153804    1.2681737   1.3625872
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                1.5687081    1.5362146   1.6012017
6-9 months     PROBIT           BELARUS                        <48 cm               NA                1.6660821    1.5667991   1.7653652
6-9 months     PROBIT           BELARUS                        [48-50) cm           NA                1.6532594    1.5882383   1.7182806
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                1.3191727    1.2691750   1.3691704
6-9 months     PROVIDE          BANGLADESH                     <48 cm               NA                1.2397021    1.1995112   1.2798930
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                1.2989494    1.2572867   1.3406121
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                1.2255994    1.1277205   1.3234783
6-9 months     SAS-CompFeed     INDIA                          <48 cm               NA                1.2122671    1.1872917   1.2372425
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                1.2077818    1.1483844   1.2671791
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.3524428    1.3175647   1.3873208
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.3536412    1.3180369   1.3892455
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.3379579    1.3074720   1.3684438
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.1063323    0.5214171   1.6912474
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.0085636    0.7832942   1.2338330
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.9434947    0.7213695   1.1656199
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                0.9426481    0.9025863   0.9827099
9-12 months    COHORTS          GUATEMALA                      <48 cm               NA                0.9292082    0.8616447   0.9967717
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           NA                0.9844925    0.9271032   1.0418819
9-12 months    COHORTS          INDIA                          >=50 cm              NA                1.0561968    1.0301416   1.0822521
9-12 months    COHORTS          INDIA                          <48 cm               NA                0.9674379    0.9469541   0.9879216
9-12 months    COHORTS          INDIA                          [48-50) cm           NA                1.0012167    0.9806471   1.0217863
9-12 months    EE               PAKISTAN                       >=50 cm              NA                0.8963148    0.7606799   1.0319497
9-12 months    EE               PAKISTAN                       <48 cm               NA                0.9050073    0.8522001   0.9578146
9-12 months    EE               PAKISTAN                       [48-50) cm           NA                0.8926693    0.7924206   0.9929180
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                0.9933303    0.9267256   1.0599350
9-12 months    GMS-Nepal        NEPAL                          <48 cm               NA                0.9938702    0.9424998   1.0452406
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                1.0114206    0.9612755   1.0615657
9-12 months    IRC              INDIA                          >=50 cm              NA                1.1279872    1.0603838   1.1955906
9-12 months    IRC              INDIA                          <48 cm               NA                1.1258406    1.0421412   1.2095400
9-12 months    IRC              INDIA                          [48-50) cm           NA                1.1164382    1.0519481   1.1809282
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                1.0803957    1.0331706   1.1276208
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               NA                1.0637068    1.0381561   1.0892574
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                1.0781086    1.0399790   1.1162382
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                0.9416407    0.8588254   1.0244561
9-12 months    Keneba           GAMBIA                         <48 cm               NA                0.9979373    0.9077391   1.0881354
9-12 months    Keneba           GAMBIA                         [48-50) cm           NA                0.9833546    0.9057436   1.0609657
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                0.9096971    0.8084210   1.0109732
9-12 months    MAL-ED           BANGLADESH                     <48 cm               NA                1.0325015    0.9664922   1.0985108
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                0.9746570    0.9143343   1.0349796
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                1.3269476    1.1184215   1.5354737
9-12 months    MAL-ED           BRAZIL                         <48 cm               NA                1.4939967    1.1841805   1.8038128
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           NA                1.3756255    0.8815591   1.8696919
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                1.1257876    0.9422056   1.3093695
9-12 months    MAL-ED           INDIA                          <48 cm               NA                0.9962376    0.8401923   1.1522829
9-12 months    MAL-ED           INDIA                          [48-50) cm           NA                1.0316972    0.9253385   1.1380559
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                0.9683314    0.8479517   1.0887111
9-12 months    MAL-ED           NEPAL                          <48 cm               NA                1.0499564    0.9250570   1.1748558
9-12 months    MAL-ED           NEPAL                          [48-50) cm           NA                0.8794095    0.7672287   0.9915902
9-12 months    MAL-ED           PERU                           >=50 cm              NA                1.0460233    0.9078300   1.1842166
9-12 months    MAL-ED           PERU                           <48 cm               NA                1.1250591    1.0344900   1.2156282
9-12 months    MAL-ED           PERU                           [48-50) cm           NA                1.1344020    1.0364106   1.2323934
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.9214731    0.7437647   1.0991814
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.9374524    0.7270411   1.1478637
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.0768346    0.8959329   1.2577363
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.7703748    0.6168820   0.9238676
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.6971730    0.3765629   1.0177831
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7904420    0.6442801   0.9366040
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                1.1021442    1.0338110   1.1704774
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               NA                1.0681783    1.0110181   1.1253384
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.1069996    1.0473053   1.1666940
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                1.1077568    1.0582894   1.1572241
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                1.1097967    1.0641589   1.1554346
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                1.1475853    1.1061130   1.1890577
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                1.3678144    1.3164202   1.4192087
9-12 months    PROBIT           BELARUS                        <48 cm               NA                1.4012174    1.3531056   1.4493292
9-12 months    PROBIT           BELARUS                        [48-50) cm           NA                1.4135513    1.3292137   1.4978888
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                1.0606510    1.0025265   1.1187755
9-12 months    PROVIDE          BANGLADESH                     <48 cm               NA                1.0644510    1.0237994   1.1051026
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                1.0301493    0.9873949   1.0729038
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                1.3443657    1.1698970   1.5188344
9-12 months    ResPak           PAKISTAN                       <48 cm               NA                1.4089121    0.9578370   1.8599872
9-12 months    ResPak           PAKISTAN                       [48-50) cm           NA                1.3110788    0.9026035   1.7195541
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                1.0537759    0.9797215   1.1278303
9-12 months    SAS-CompFeed     INDIA                          <48 cm               NA                1.0108910    0.9752469   1.0465350
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                0.9672225    0.8918226   1.0426224
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.0863396    1.0558913   1.1167880
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.1016373    1.0672172   1.1360575
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.0643647    1.0344114   1.0943181
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.1424873    0.7833308   1.5016438
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.8344295    0.6646044   1.0042545
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7506436    0.5913295   0.9099577
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7773692    0.7288586   0.8258799
12-15 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7935144    0.7084589   0.8785699
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.7171469    0.6470505   0.7872432
12-15 months   EE               PAKISTAN                       >=50 cm              NA                0.9749550    0.8087339   1.1411762
12-15 months   EE               PAKISTAN                       <48 cm               NA                1.0340034    0.9864068   1.0815999
12-15 months   EE               PAKISTAN                       [48-50) cm           NA                0.9561406    0.8645050   1.0477762
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.9330948    0.8624160   1.0037736
12-15 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.8616759    0.8187487   0.9046030
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.8951943    0.8504303   0.9399583
12-15 months   IRC              INDIA                          >=50 cm              NA                0.9419485    0.8652249   1.0186722
12-15 months   IRC              INDIA                          <48 cm               NA                0.9513208    0.8680143   1.0346273
12-15 months   IRC              INDIA                          [48-50) cm           NA                0.9565375    0.8972351   1.0158399
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                0.9338822    0.9015174   0.9662470
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               NA                0.9336257    0.9108124   0.9564391
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                0.9365228    0.8990634   0.9739821
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                0.9479209    0.8957983   1.0000436
12-15 months   Keneba           GAMBIA                         <48 cm               NA                0.9868082    0.9029512   1.0706653
12-15 months   Keneba           GAMBIA                         [48-50) cm           NA                0.9280672    0.8804631   0.9756714
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.9678058    0.8905182   1.0450934
12-15 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.8890522    0.8189692   0.9591351
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.8961946    0.8258587   0.9665304
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                1.0272087    0.8707285   1.1836888
12-15 months   MAL-ED           BRAZIL                         <48 cm               NA                1.1195877    0.8036053   1.4355701
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.9704282    0.6819453   1.2589111
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                0.7478316    0.4322279   1.0634354
12-15 months   MAL-ED           INDIA                          <48 cm               NA                0.8509626    0.7061047   0.9958206
12-15 months   MAL-ED           INDIA                          [48-50) cm           NA                0.8942383    0.7712483   1.0172283
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                0.8745856    0.6878925   1.0612788
12-15 months   MAL-ED           NEPAL                          <48 cm               NA                0.8180386    0.7482967   0.8877806
12-15 months   MAL-ED           NEPAL                          [48-50) cm           NA                1.1189397    0.9464330   1.2914464
12-15 months   MAL-ED           PERU                           >=50 cm              NA                0.8769494    0.7711467   0.9827521
12-15 months   MAL-ED           PERU                           <48 cm               NA                0.9201726    0.8223681   1.0179771
12-15 months   MAL-ED           PERU                           [48-50) cm           NA                0.9092300    0.8385807   0.9798794
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.8376833    0.5975836   1.0777830
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.9188453    0.7559846   1.0817060
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.9001693    0.7473114   1.0530271
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.7987680    0.6265199   0.9710161
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8213004    0.6495809   0.9930199
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8706651    0.7110666   1.0302635
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7151830    0.6395589   0.7908071
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7410755    0.6438285   0.8383225
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7097097    0.6536452   0.7657742
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.9249417    0.8775994   0.9722840
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.9748187    0.9322123   1.0174251
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.9948234    0.9571467   1.0325001
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                1.1682906    0.8139475   1.5226337
12-15 months   PROBIT           BELARUS                        <48 cm               NA                1.7376639    1.3680461   2.1072817
12-15 months   PROBIT           BELARUS                        [48-50) cm           NA                1.3190874    1.1297972   1.5083776
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.9599790    0.9113824   1.0085755
12-15 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.9135967    0.8676193   0.9595740
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                1.0001104    0.9596159   1.0406049
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                0.8393316    0.7080567   0.9706065
12-15 months   SAS-CompFeed     INDIA                          <48 cm               NA                0.8538471    0.7876701   0.9200241
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                0.7820912    0.7312678   0.8329146
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.9170854    0.8695005   0.9646703
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.9085802    0.8593716   0.9577888
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.9316152    0.8868164   0.9764141
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.5561763    0.3122719   0.8000806
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7246228    0.5494728   0.8997729
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.6868789    0.5351375   0.8386203
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7444569    0.6935721   0.7953417
15-18 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7142224    0.6112114   0.8172335
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.7737587    0.7074368   0.8400805
15-18 months   EE               PAKISTAN                       >=50 cm              NA                0.7372388    0.6038360   0.8706417
15-18 months   EE               PAKISTAN                       <48 cm               NA                0.8360305    0.7924277   0.8796332
15-18 months   EE               PAKISTAN                       [48-50) cm           NA                0.8308277    0.7629900   0.8986654
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.7249429    0.6261085   0.8237773
15-18 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.7701384    0.7190060   0.8212707
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.7387162    0.6944940   0.7829383
15-18 months   IRC              INDIA                          >=50 cm              NA                0.8193241    0.7522626   0.8863856
15-18 months   IRC              INDIA                          <48 cm               NA                0.8979268    0.8003058   0.9955478
15-18 months   IRC              INDIA                          [48-50) cm           NA                0.8888308    0.8310074   0.9466542
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                0.8861205    0.8507481   0.9214929
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               NA                0.8418685    0.8177492   0.8659877
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                0.8450090    0.8078592   0.8821587
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                0.9167650    0.8596429   0.9738871
15-18 months   Keneba           GAMBIA                         <48 cm               NA                0.8402533    0.7584144   0.9220922
15-18 months   Keneba           GAMBIA                         [48-50) cm           NA                0.8729435    0.8203336   0.9255533
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.7975951    0.7293445   0.8658457
15-18 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.8180925    0.7504975   0.8856874
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.8357441    0.7727622   0.8987260
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                0.9915575    0.8352191   1.1478958
15-18 months   MAL-ED           BRAZIL                         <48 cm               NA                1.0705358    0.9045388   1.2365329
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.8543630    0.7335301   0.9751960
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                0.8942104    0.6629492   1.1254715
15-18 months   MAL-ED           INDIA                          <48 cm               NA                0.7863257    0.6831383   0.8895131
15-18 months   MAL-ED           INDIA                          [48-50) cm           NA                0.8062050    0.6934808   0.9189292
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                0.8581242    0.6136482   1.1026001
15-18 months   MAL-ED           NEPAL                          <48 cm               NA                0.9193378    0.7253225   1.1133530
15-18 months   MAL-ED           NEPAL                          [48-50) cm           NA                0.7150814    0.5314257   0.8987371
15-18 months   MAL-ED           PERU                           >=50 cm              NA                0.8154509    0.7287723   0.9021296
15-18 months   MAL-ED           PERU                           <48 cm               NA                0.8964672    0.8110807   0.9818537
15-18 months   MAL-ED           PERU                           [48-50) cm           NA                0.8886395    0.8053917   0.9718873
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.9411400    0.7793246   1.1029553
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.8703893    0.6836438   1.0571347
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.9057725    0.7577720   1.0537731
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.7729854    0.5889712   0.9569996
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.6954932    0.5371360   0.8538503
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7790802    0.6625002   0.8956603
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7803291    0.7049916   0.8556666
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7796854    0.7095359   0.8498350
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7568475    0.6900772   0.8236178
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.9278728    0.8828918   0.9728539
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.9261679    0.8870840   0.9652519
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.9027866    0.8665407   0.9390325
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                1.0473332    0.6538635   1.4408030
15-18 months   PROBIT           BELARUS                        <48 cm               NA                0.3689257   -0.2212794   0.9591308
15-18 months   PROBIT           BELARUS                        [48-50) cm           NA                1.0641373   -2.1038399   4.2321146
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.8644883    0.8163220   0.9126546
15-18 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.8402803    0.7976971   0.8828635
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.8660534    0.8283473   0.9037596
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                0.8911046    0.8096233   0.9725858
15-18 months   SAS-CompFeed     INDIA                          <48 cm               NA                0.8941302    0.8498255   0.9384350
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                0.9332511    0.8845996   0.9819026
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.8194817    0.7617456   0.8772179
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.7853849    0.7376236   0.8331462
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7997571    0.7465025   0.8530118
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.3555079    0.2021838   0.5088321
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.6752908    0.4616844   0.8888973
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7636354    0.5411350   0.9861358
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7551796    0.7075614   0.8027979
18-21 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7408516    0.6482425   0.8334606
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.7688268    0.7039360   0.8337177
18-21 months   EE               PAKISTAN                       >=50 cm              NA                0.7108187    0.5963734   0.8252640
18-21 months   EE               PAKISTAN                       <48 cm               NA                0.7352497    0.6879779   0.7825216
18-21 months   EE               PAKISTAN                       [48-50) cm           NA                0.7414744    0.6748567   0.8080921
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.9533704    0.8158312   1.0909096
18-21 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.8847277    0.8425562   0.9268992
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.9188063    0.8737173   0.9638954
18-21 months   IRC              INDIA                          >=50 cm              NA                0.7135643    0.6430892   0.7840393
18-21 months   IRC              INDIA                          <48 cm               NA                0.7751028    0.7096369   0.8405688
18-21 months   IRC              INDIA                          [48-50) cm           NA                0.8137630    0.7448446   0.8826814
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                0.8291383    0.7708818   0.8873948
18-21 months   Keneba           GAMBIA                         <48 cm               NA                0.8063399    0.7124932   0.9001865
18-21 months   Keneba           GAMBIA                         [48-50) cm           NA                0.8571813    0.7916934   0.9226691
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.8338962    0.7474163   0.9203762
18-21 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.7789455    0.7163320   0.8415590
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.8407599    0.7848664   0.8966534
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                0.8612611    0.7235862   0.9989360
18-21 months   MAL-ED           BRAZIL                         <48 cm               NA                0.8614128    0.7434664   0.9793591
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.9431874    0.7508077   1.1355671
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                0.9744292    0.7866548   1.1622037
18-21 months   MAL-ED           INDIA                          <48 cm               NA                0.8605984    0.7636390   0.9575579
18-21 months   MAL-ED           INDIA                          [48-50) cm           NA                0.8688946    0.7547946   0.9829947
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                0.9762766    0.7431103   1.2094428
18-21 months   MAL-ED           NEPAL                          <48 cm               NA                0.9153585    0.7778440   1.0528730
18-21 months   MAL-ED           NEPAL                          [48-50) cm           NA                0.7653704    0.5173762   1.0133647
18-21 months   MAL-ED           PERU                           >=50 cm              NA                0.8012341    0.6890805   0.9133878
18-21 months   MAL-ED           PERU                           <48 cm               NA                0.8066446    0.7287347   0.8845544
18-21 months   MAL-ED           PERU                           [48-50) cm           NA                0.8593209    0.7814737   0.9371681
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.8429161    0.6588719   1.0269603
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.6767368    0.5111028   0.8423707
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.7330827    0.5773512   0.8888141
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8705244    0.6883638   1.0526850
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.6382639    0.4718349   0.8046929
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.6613102    0.5185519   0.8040684
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7716018    0.6923977   0.8508059
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7150573    0.6547274   0.7753873
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7390852    0.6813598   0.7968105
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.7641521    0.7209545   0.8073498
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.8291794    0.7905519   0.8678069
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.7796200    0.7412193   0.8180207
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.8459262    0.7970133   0.8948392
18-21 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.8364755    0.7973047   0.8756463
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.8369636    0.7985122   0.8754150
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.6137660    0.5385476   0.6889845
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.6639693    0.6060256   0.7219129
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7338004    0.6789418   0.7886589
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.7125406    0.4549651   0.9701161
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7780830    0.6177619   0.9384041
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.5536939    0.3591981   0.7481896
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.6883409    0.6423895   0.7342923
21-24 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7027462    0.6406802   0.7648121
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.6508338    0.5943043   0.7073632
21-24 months   EE               PAKISTAN                       >=50 cm              NA                0.7721849    0.6680957   0.8762740
21-24 months   EE               PAKISTAN                       <48 cm               NA                0.6525063    0.5911250   0.7138876
21-24 months   EE               PAKISTAN                       [48-50) cm           NA                0.6926066    0.5937935   0.7914197
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.7473511    0.6137584   0.8809439
21-24 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.7972571    0.7391415   0.8553727
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.8253509    0.7408444   0.9098574
21-24 months   IRC              INDIA                          >=50 cm              NA                0.7151147    0.6472336   0.7829958
21-24 months   IRC              INDIA                          <48 cm               NA                0.7028856    0.6188035   0.7869676
21-24 months   IRC              INDIA                          [48-50) cm           NA                0.7459240    0.6664788   0.8253691
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                0.6994880    0.6433619   0.7556141
21-24 months   Keneba           GAMBIA                         <48 cm               NA                0.7087291    0.6439528   0.7735054
21-24 months   Keneba           GAMBIA                         [48-50) cm           NA                0.7448632    0.6667212   0.8230051
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.7975475    0.7153871   0.8797079
21-24 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.7695114    0.7073610   0.8316619
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.7588914    0.6964334   0.8213494
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                0.8882869    0.7455306   1.0310432
21-24 months   MAL-ED           BRAZIL                         <48 cm               NA                0.7181420    0.5629893   0.8732948
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.8481196    0.6875317   1.0087074
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                0.7561604    0.5631256   0.9491952
21-24 months   MAL-ED           INDIA                          <48 cm               NA                0.8171008    0.6791277   0.9550740
21-24 months   MAL-ED           INDIA                          [48-50) cm           NA                0.7911986    0.6666821   0.9157151
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                0.7380914    0.5515837   0.9245990
21-24 months   MAL-ED           NEPAL                          <48 cm               NA                0.8082759    0.6895680   0.9269838
21-24 months   MAL-ED           NEPAL                          [48-50) cm           NA                0.6504490    0.5563123   0.7445858
21-24 months   MAL-ED           PERU                           >=50 cm              NA                0.7894892    0.6385298   0.9404487
21-24 months   MAL-ED           PERU                           <48 cm               NA                0.7191955    0.6460806   0.7923103
21-24 months   MAL-ED           PERU                           [48-50) cm           NA                0.7426751    0.6504795   0.8348706
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.7988145    0.6842053   0.9134237
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.8255788    0.6403457   1.0108119
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.0239639    0.8283551   1.2195727
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.7412862    0.5979818   0.8845905
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8220289    0.6678699   0.9761879
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.6946428    0.5746712   0.8146145
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7091178    0.6422267   0.7760089
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.6765212    0.6147730   0.7382694
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7501387    0.6918665   0.8084110
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.8002849    0.7539885   0.8465813
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.7954477    0.7550707   0.8358247
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.8011479    0.7594177   0.8428780
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.7502079    0.6965414   0.8038743
21-24 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.7349940    0.6929217   0.7770663
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.7995230    0.7604832   0.8385628
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.7611627    0.6637997   0.8585258
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.6939386    0.6331913   0.7546858
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.6724675    0.6144833   0.7304517


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4904155   3.2740036   3.7068274
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     COHORTS          INDIA                          NA                   NA                3.5089109   3.4948295   3.5229924
0-3 months     EE               PAKISTAN                       NA                   NA                3.0360901   2.9324950   3.1396851
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7307799   3.7202407   3.7413190
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1061627   3.0599463   3.1523792
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3381144   3.2680821   3.4081467
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.8423890   3.6776693   4.0071087
0-3 months     MAL-ED           INDIA                          NA                   NA                3.1674772   3.0046748   3.3302796
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.3640786   3.1494051   3.5787522
0-3 months     MAL-ED           PERU                           NA                   NA                3.0506278   2.9850894   3.1161661
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.0831860   2.9500513   3.2163208
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2456715   3.1496784   3.3416646
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.1045079   3.0503454   3.1586704
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8134007   2.6999348   2.9268665
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ResPak           PAKISTAN                       NA                   NA                2.7233058   2.2630483   3.1835633
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370617   3.3165207   3.3576028
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8615517   1.6707264   2.0523769
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7456394   1.7115844   1.7796945
3-6 months     COHORTS          INDIA                          NA                   NA                1.8751782   1.8624443   1.8879121
3-6 months     EE               PAKISTAN                       NA                   NA                2.0837031   2.0139070   2.1534991
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8963844   1.8303319   1.9624368
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9157168   1.9040672   1.9273664
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.9000274   1.8695360   1.9305188
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9507505   1.9059588   1.9955422
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9430741   1.8895320   1.9966162
3-6 months     MAL-ED           BRAZIL                         NA                   NA                1.9946196   1.8572903   2.1319490
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8955276   1.7468738   2.0441814
3-6 months     MAL-ED           NEPAL                          NA                   NA                2.0120686   1.8517601   2.1723772
3-6 months     MAL-ED           PERU                           NA                   NA                1.9804098   1.9060668   2.0547528
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9274394   1.7975575   2.0573213
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8060525   1.7128891   1.8992158
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8284951   1.7795462   1.8774440
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915582   2.0504573   2.1326590
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ResPak           PAKISTAN                       NA                   NA                2.0629973   1.7450643   2.3809303
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9466547   1.9003261   1.9929832
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9760533   1.9562736   1.9958330
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.3332342   1.1800541   1.4864143
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1114652   1.0801624   1.1427680
6-9 months     COHORTS          INDIA                          NA                   NA                1.1948816   1.1830403   1.2067228
6-9 months     EE               PAKISTAN                       NA                   NA                1.1477771   1.0894464   1.2061078
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3179573   1.2772204   1.3586943
6-9 months     IRC              INDIA                          NA                   NA                1.3711353   1.3213481   1.4209225
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3267865   1.3051725   1.3484005
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4202127   1.3576869   1.4827385
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2499779   1.2065843   1.2933714
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4439338   1.3084002   1.5794673
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2152615   1.0561220   1.3744010
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.2985629   1.1625337   1.4345921
6-9 months     MAL-ED           PERU                           NA                   NA                1.3164777   1.2531671   1.3797882
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.4087709   1.3141055   1.5034362
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.2497270   1.1192557   1.3801983
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2484616   1.2072078   1.2897155
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5766123   1.5455111   1.6077135
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2149436   1.1946616   1.2352257
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3466210   1.3275127   1.3657293
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9717651   0.8024124   1.1411178
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9521771   0.9236946   0.9806596
9-12 months    COHORTS          INDIA                          NA                   NA                0.9987869   0.9860597   1.0115142
9-12 months    EE               PAKISTAN                       NA                   NA                0.9007356   0.8578657   0.9436055
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9980141   0.9654660   1.0305622
9-12 months    IRC              INDIA                          NA                   NA                1.1226151   1.0817887   1.1634415
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0722360   1.0535985   1.0908735
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9646719   0.9133593   1.0159845
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9851594   0.9440621   1.0262567
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.3271517   1.1578093   1.4964941
9-12 months    MAL-ED           INDIA                          NA                   NA                1.0322062   0.9441033   1.1203091
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.9789246   0.9026393   1.0552098
9-12 months    MAL-ED           PERU                           NA                   NA                1.1072832   1.0485689   1.1659975
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0354643   0.9312962   1.1396323
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7837971   0.6609083   0.9066860
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0882312   1.0525404   1.1239219
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3719414   1.3218894   1.4219934
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ResPak           PAKISTAN                       NA                   NA                1.3517119   1.1520734   1.5513504
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                1.0025134   0.9726273   1.0323994
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0807767   1.0628144   1.0987389
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8222591   0.7136830   0.9308351
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7651176   0.7305855   0.7996497
12-15 months   EE               PAKISTAN                       NA                   NA                1.0127323   0.9714760   1.0539886
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8802996   0.8513400   0.9092592
12-15 months   IRC              INDIA                          NA                   NA                0.9487591   0.9070419   0.9904762
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9336171   0.9165979   0.9506362
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9445101   0.9104291   0.9785911
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9054278   0.8626926   0.9481629
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.0377891   0.9011291   1.1744491
12-15 months   MAL-ED           INDIA                          NA                   NA                0.8491431   0.7507612   0.9475250
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9164495   0.8229819   1.0099171
12-15 months   MAL-ED           PERU                           NA                   NA                0.8954656   0.8430609   0.9478703
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8864616   0.7797432   0.9931801
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8371664   0.7421509   0.9321819
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7243319   0.6786653   0.7699985
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1869393   0.8605053   1.5133732
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8302163   0.7911776   0.8692550
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9214211   0.8942339   0.9486082
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6728213   0.5667854   0.7788572
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7419068   0.7040097   0.7798040
15-18 months   EE               PAKISTAN                       NA                   NA                0.8250125   0.7893587   0.8606662
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   IRC              INDIA                          NA                   NA                0.8633844   0.8225675   0.9042013
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8551846   0.8372768   0.8730924
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8891195   0.8516050   0.9266340
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8213670   0.7817814   0.8609527
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.9671774   0.8718070   1.0625478
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8105692   0.7360667   0.8850718
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8455107   0.7193888   0.9716326
15-18 months   MAL-ED           PERU                           NA                   NA                0.8755130   0.8253940   0.9256321
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9073204   0.8157932   0.9988477
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7396381   0.6557436   0.8235327
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7757022   0.7349342   0.8164703
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9090153   0.8838772   0.9341535
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7983880   0.7682058   0.8285702
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6483895   0.5168933   0.7798857
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7566700   0.7208762   0.7924638
18-21 months   EE               PAKISTAN                       NA                   NA                0.7417815   0.7058751   0.7776879
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7638749   0.7240049   0.8037448
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8359482   0.7951898   0.8767066
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8091078   0.7710650   0.8471506
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.8852728   0.7931627   0.9773829
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8813017   0.8111314   0.9514720
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8937211   0.7752979   1.0121443
18-21 months   MAL-ED           PERU                           NA                   NA                0.8290356   0.7799563   0.8781148
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7979007   0.7037059   0.8920955
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7196904   0.6260949   0.8132858
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7343577   0.6975310   0.7711845
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6792522   0.6449086   0.7135958
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7031193   0.5947945   0.8114441
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6805386   0.6502643   0.7108129
21-24 months   EE               PAKISTAN                       NA                   NA                0.6730760   0.6238820   0.7222700
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7982404   0.7527824   0.8436984
21-24 months   IRC              INDIA                          NA                   NA                0.7161799   0.6738335   0.7585262
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7189400   0.6804627   0.7574172
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7723882   0.7344609   0.8103155
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.8242330   0.7377181   0.9107478
21-24 months   MAL-ED           INDIA                          NA                   NA                0.7977630   0.7124596   0.8830664
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7441888   0.6599855   0.8283921
21-24 months   MAL-ED           PERU                           NA                   NA                0.7424804   0.6896824   0.7952785
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8209010   0.7269807   0.9148213
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7481384   0.6682146   0.8280622
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7123568   0.6763975   0.7483161
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6955637   0.6574758   0.7336517


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.8615121    0.2100092    1.5130151
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.3221292   -0.2973042    0.9415625
0-3 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2953989    0.1702619    0.4205358
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1339309    0.0420387    0.2258231
0-3 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.3349455    0.2992965    0.3705945
0-3 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1475914    0.1123586    0.1828243
0-3 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.6096199    0.1254824    1.0937573
0-3 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3183737   -0.1700015    0.8067488
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2736920    0.1370090    0.4103751
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1214819   -0.0207719    0.2637358
0-3 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <48 cm               >=50 cm            1.1581939    0.8888181    1.4275698
0-3 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.7334265    0.5128303    0.9540227
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.3772423    0.3351581    0.4193264
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.1795655    0.1364821    0.2226488
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.3293888    0.2122413    0.4465363
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.1665557    0.0403559    0.2927556
0-3 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.8816876    0.7401800    1.0231952
0-3 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.3520851    0.2655574    0.4386129
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.4018749    0.2062494    0.5975004
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.1025469   -0.0918487    0.2969425
0-3 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.4425103    0.0651573    0.8198633
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.1045744   -0.3358812    0.5450300
0-3 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.4546563    0.1361771    0.7731355
0-3 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0559683   -0.3363540    0.2244174
0-3 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <48 cm               >=50 cm            0.3348579   -0.1327657    0.8024816
0-3 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1262606   -0.4691197    0.7216408
0-3 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.1840292    0.0057716    0.3622867
0-3 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0256582   -0.1586716    0.2099880
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.2871365   -0.0839106    0.6581836
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.2293407   -0.0779480    0.5366294
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.4374389    0.1867500    0.6881279
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1350062   -0.0919105    0.3619228
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.4475142    0.3098193    0.5852091
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2533056    0.1183676    0.3882436
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.2908542    0.1945488    0.3871596
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.1560201    0.0622034    0.2498368
0-3 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.7837479    0.6608079    0.9066879
0-3 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.4426335    0.3273096    0.5579575
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0976781   -0.0008262    0.1961824
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0331266   -0.0641802    0.1304335
0-3 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            1.3175576    0.3857427    2.2493724
0-3 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.7923473   -0.3210676    1.9057621
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.7960206    0.7466124    0.8454288
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.5525416    0.4416022    0.6634810
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.9143351    0.8646926    0.9639776
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.4995377    0.4535607    0.5455148
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.4222313   -0.0427412    0.8872037
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2888180   -0.1842617    0.7618976
3-6 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1395053    0.0459434    0.2330672
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0930838    0.0152791    0.1708886
3-6 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.1243624    0.0908790    0.1578458
3-6 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0668842    0.0331405    0.1006280
3-6 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.0413592   -0.2508342    0.1681157
3-6 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0889792   -0.3367260    0.1587676
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2140997    0.1046246    0.3235747
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0938328   -0.0202061    0.2078717
3-6 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <48 cm               >=50 cm            0.0395725   -0.1323168    0.2114617
3-6 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.0904672   -0.0704424    0.2513768
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.1432943    0.0963986    0.1901899
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.0844369    0.0347742    0.1340995
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0959521    0.0238891    0.1680151
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0323558   -0.0424553    0.1071670
3-6 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.1498039    0.0332766    0.2663311
3-6 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0391246   -0.0652324    0.1434815
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0713399   -0.0840240    0.2267038
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0259681   -0.1310218    0.1829580
3-6 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0492087   -0.3243267    0.4227442
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0440367   -0.3149549    0.4030282
3-6 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.1519579   -0.2997009    0.6036167
3-6 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0484690   -0.4419648    0.3450267
3-6 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <48 cm               >=50 cm            0.2141619   -0.1917505    0.6200744
3-6 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0936290   -0.5347150    0.3474570
3-6 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.1945538    0.0020346    0.3870729
3-6 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.2037942    0.0122106    0.3953779
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1285121   -0.2297252    0.4867494
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1208338   -0.2020580    0.4437256
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0458125   -0.2007463    0.2923713
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1041707   -0.1250350    0.3333764
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0214297   -0.1095226    0.1523821
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0262708   -0.0960747    0.1486163
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.1163632    0.0175810    0.2151453
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0061136   -0.0982343    0.0860071
3-6 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.2767494    0.2124700    0.3410288
3-6 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0981626    0.0533955    0.1429297
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.1222521    0.0309650    0.2135393
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0976025    0.0132702    0.1819348
3-6 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1848479   -0.5298351    0.8995310
3-6 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.5797606   -0.1580006    1.3175217
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0597798   -0.0455075    0.1650671
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0869766   -0.0105270    0.1844801
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0789544    0.0275772    0.1303316
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0150924   -0.0320816    0.0622665
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0527146   -0.5887502    0.4833211
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0240152   -0.5742271    0.5261967
6-9 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0779931   -0.0058624    0.1618487
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0112615   -0.0862530    0.0637300
6-9 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0019040   -0.0331578    0.0293497
6-9 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0221268   -0.0537293    0.0094757
6-9 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.0402508   -0.2081728    0.1276711
6-9 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0656123   -0.1176575    0.2488822
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0507700   -0.0648043    0.1663444
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0022941   -0.1026420    0.1072302
6-9 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <48 cm               >=50 cm            0.1264609    0.0012554    0.2516665
6-9 months     IRC              INDIA                          [48-50) cm           >=50 cm           -0.0112527   -0.1265084    0.1040030
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0169083   -0.0370004    0.0708170
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0338888   -0.0931790    0.0254015
6-9 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2252685   -0.3612547   -0.0892822
6-9 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1236137   -0.2717632    0.0245358
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0013258   -0.1140304    0.1166819
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0260744   -0.0861034    0.1382522
6-9 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.1233739   -0.4390433    0.1922954
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0733141   -0.4264099    0.2797817
6-9 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.0587782   -0.3135430    0.4310994
6-9 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.1973120   -0.0844781    0.4791020
6-9 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.1679548   -0.5294991    0.1935895
6-9 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.1988772   -0.5271745    0.1294201
6-9 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.0294926   -0.1308247    0.1898099
6-9 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0203773   -0.1439979    0.1847526
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.4847830    0.2032731    0.7662929
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0686059   -0.1132852    0.2504970
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.1353867   -0.2398280    0.5106014
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.1065423   -0.3399851    0.1269006
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0093736   -0.1180353    0.0992881
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0374006   -0.0696278    0.1444290
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0111458   -0.0653427    0.0876342
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0131837   -0.0873016    0.0609341
6-9 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.0973740   -0.0011984    0.1959463
6-9 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0845513    0.0180962    0.1510064
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0794706   -0.1432710   -0.0156703
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0202233   -0.0848307    0.0443841
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0133323   -0.1320065    0.1053419
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0178177   -0.1134561    0.0778208
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0011984   -0.0485868    0.0509836
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0144849   -0.0608060    0.0318362
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0977686   -0.7294362    0.5338989
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1628376   -0.7925398    0.4668646
9-12 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0134399   -0.0922644    0.0653845
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0418444   -0.0282163    0.1119051
9-12 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.0887590   -0.1218204   -0.0556976
9-12 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0549802   -0.0881042   -0.0218561
9-12 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       <48 cm               >=50 cm            0.0086925   -0.1355088    0.1528939
9-12 months    EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0036454   -0.1721902    0.1648993
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0005399   -0.0844903    0.0855701
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0180903   -0.0650210    0.1012017
9-12 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <48 cm               >=50 cm           -0.0021467   -0.1092434    0.1049501
9-12 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.0115490   -0.1049483    0.0818502
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0166889   -0.0711716    0.0377938
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0022871   -0.0631960    0.0586219
9-12 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <48 cm               >=50 cm            0.0562966   -0.0674747    0.1800678
9-12 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0417139   -0.0732926    0.1567204
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.1228044    0.0015278    0.2440809
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0649599   -0.0529779    0.1828976
9-12 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.1670491   -0.2047870    0.5388852
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0486779   -0.4951060    0.5924618
9-12 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <48 cm               >=50 cm           -0.1295500   -0.3704907    0.1113908
9-12 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0940903   -0.3062566    0.1180759
9-12 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0816250   -0.0918430    0.2550929
9-12 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0889220   -0.2534692    0.0756252
9-12 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <48 cm               >=50 cm            0.0790358   -0.0867252    0.2447968
9-12 months    MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0883787   -0.0809640    0.2577214
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0159793   -0.2635134    0.2954721
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1553615   -0.0988505    0.4095736
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0732018   -0.4347166    0.2883131
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0200672   -0.1936331    0.2337676
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0339660   -0.1226935    0.0547616
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0048554   -0.0854219    0.0951327
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0020400   -0.0653076    0.0693875
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0398286   -0.0248704    0.1045275
9-12 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <48 cm               >=50 cm            0.0334029   -0.0291210    0.0959269
9-12 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0457368   -0.0289694    0.1204430
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0038000   -0.0665117    0.0741118
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0305016   -0.1017898    0.0407866
9-12 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0645464   -0.4190941    0.5481868
9-12 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0332869   -0.4774619    0.4108881
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0428850   -0.1458149    0.0600450
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0865534   -0.2046548    0.0315480
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0152977   -0.0306536    0.0612490
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0219749   -0.0647258    0.0207760
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.3080578   -0.7130130    0.0968974
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3918436   -0.7793683   -0.0043190
12-15 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0161452   -0.0815787    0.1138691
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0602223   -0.1460155    0.0255708
12-15 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0590483   -0.1137483    0.2318449
12-15 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0188144   -0.2090102    0.1713813
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0714189   -0.1540437    0.0112058
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0379005   -0.1216805    0.0458796
12-15 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <48 cm               >=50 cm            0.0093723   -0.1030403    0.1217848
12-15 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0145890   -0.0820888    0.1112668
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0002564   -0.0390241    0.0385113
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0026406   -0.0467540    0.0520351
12-15 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0388873   -0.0600972    0.1378718
12-15 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0198537   -0.0906256    0.0509182
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0787536   -0.1831679    0.0256606
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0716112   -0.1761589    0.0329364
12-15 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0923790   -0.2518035    0.4365615
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0567804   -0.3653928    0.2518319
12-15 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.1031310   -0.2441291    0.4503911
12-15 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.1464067   -0.1923149    0.4851282
12-15 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0565470   -0.2558414    0.1427474
12-15 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.2443541   -0.0098366    0.4985448
12-15 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0432232   -0.1002136    0.1866601
12-15 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0322806   -0.0948027    0.1593640
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0811620   -0.2092636    0.3715876
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0624859   -0.2218467    0.3468186
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0225324   -0.2211595    0.2662243
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0718970   -0.1631676    0.3069617
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0258925   -0.0975784    0.1493634
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0054733   -0.1001872    0.0892406
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0498770   -0.0137193    0.1134733
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0698817    0.0096110    0.1301524
12-15 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <48 cm               >=50 cm            0.5693732    0.1045019    1.0342446
12-15 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.1507968   -0.1841789    0.4857724
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0463823   -0.1129368    0.0201722
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0401314   -0.0227284    0.1029913
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0145155   -0.1595774    0.1886083
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0572404   -0.2066022    0.0921214
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0085052   -0.0771435    0.0601332
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0145299   -0.0510173    0.0800770
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1684466   -0.1312877    0.4681809
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1307026   -0.1537944    0.4151997
15-18 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0302345   -0.1456379    0.0851690
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0293018   -0.0548679    0.1134714
15-18 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0987916   -0.0417889    0.2393721
15-18 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0935888   -0.0562520    0.2434296
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0451955   -0.0640644    0.1544554
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0137733   -0.0932519    0.1207985
15-18 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <48 cm               >=50 cm            0.0786027   -0.0407291    0.1979345
15-18 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0695067   -0.0197593    0.1587727
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0442520   -0.0860247   -0.0024793
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0411115   -0.0919295    0.0097065
15-18 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0765117   -0.1769509    0.0239275
15-18 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0438216   -0.1215319    0.0338888
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0204974   -0.0758184    0.1168131
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0381490   -0.0548963    0.1311943
15-18 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0789784   -0.1490494    0.3070062
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.1371944   -0.3347856    0.0603968
15-18 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.1078846   -0.3611223    0.1453531
15-18 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0880054   -0.3452765    0.1692658
15-18 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0612136   -0.2508928    0.3733200
15-18 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.1430428   -0.4488171    0.1627316
15-18 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0810163   -0.0408960    0.2029286
15-18 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0731886   -0.0473427    0.1937198
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0707507   -0.3183850    0.1768836
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0353674   -0.2552477    0.1845129
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0774923   -0.3210494    0.1660649
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0060948   -0.2127050    0.2248946
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0006436   -0.1032652    0.1019780
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0234816   -0.1244728    0.0775097
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0017049   -0.0612428    0.0578329
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0250862   -0.0828377    0.0326653
15-18 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.6784075   -1.3832017    0.0263866
15-18 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0168041   -3.1939904    3.2275986
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0242080   -0.0885127    0.0400967
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0015651   -0.0596855    0.0628158
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0030257   -0.1015325    0.1075839
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0421465   -0.0334502    0.1177432
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0340968   -0.1090950    0.0409014
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0197246   -0.0983602    0.0589111
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.3197829    0.0529875    0.5865783
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.4081275    0.1333880    0.6828670
18-21 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0143281   -0.1186280    0.0899719
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0136472   -0.0671701    0.0944645
18-21 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0244310   -0.0997363    0.1485984
18-21 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0306557   -0.1020335    0.1633449
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0686426   -0.2140475    0.0767622
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0345640   -0.1799958    0.1108677
18-21 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <48 cm               >=50 cm            0.0615386   -0.0339682    0.1570453
18-21 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.1001987    0.0007781    0.1996193
18-21 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0227984   -0.1340078    0.0884110
18-21 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0280430   -0.0606824    0.1167683
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0549508   -0.1617722    0.0518707
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0068636   -0.0964165    0.1101437
18-21 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0001517   -0.1811374    0.1814407
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0819263   -0.1546415    0.3184941
18-21 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.1138308   -0.3251608    0.0974992
18-21 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.1055346   -0.3252573    0.1141881
18-21 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0609181   -0.3316148    0.2097787
18-21 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.2109061   -0.5512995    0.1294872
18-21 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0054104   -0.1316819    0.1425028
18-21 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0580868   -0.0784705    0.1946440
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.1661793   -0.4141212    0.0817626
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1098334   -0.3557845    0.1361177
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.2322605   -0.4767717    0.0122508
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.2092142   -0.4402193    0.0217909
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0565445   -0.1560288    0.0429399
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0325166   -0.1304709    0.0654377
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0650273    0.0068111    0.1232435
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0154679   -0.0421826    0.0731183
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0094507   -0.0719833    0.0530818
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0089626   -0.0710390    0.0531137
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0502032   -0.0451492    0.1455556
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.1200343    0.0264652    0.2136035
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0655425   -0.2385070    0.3695919
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1588467   -0.4825220    0.1648287
21-24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0144053   -0.0627101    0.0915207
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0375071   -0.1104242    0.0354100
21-24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.1196785   -0.2405181    0.0011611
21-24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0795783   -0.2231003    0.0639438
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0499059   -0.0961301    0.1959420
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0779998   -0.0797644    0.2357639
21-24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0122291   -0.1197318    0.0952736
21-24 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0308093   -0.0722096    0.1338282
21-24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0092411   -0.0767157    0.0951979
21-24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0453752   -0.0510622    0.1418126
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0280361   -0.1313275    0.0752554
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0386561   -0.1423862    0.0650740
21-24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.1701449   -0.3839688    0.0436791
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0401674   -0.2570294    0.1766947
21-24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.0609405   -0.1763337    0.2982146
21-24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0350382   -0.1946720    0.2647484
21-24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0701845   -0.1508961    0.2912652
21-24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0876423   -0.2965606    0.1212759
21-24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0702938   -0.2373581    0.0967706
21-24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0468142   -0.2246895    0.1310612
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0267643   -0.1943757    0.2479043
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.2251494    0.0044769    0.4458219
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0807427   -0.1263748    0.2878603
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0466433   -0.2312884    0.1380017
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0325966   -0.1237175    0.0585243
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0410209   -0.0475637    0.1296056
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0048372   -0.0663305    0.0566561
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0008630   -0.0613259    0.0630519
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0152139   -0.0832890    0.0528613
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0493151   -0.0166706    0.1153008
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0672242   -0.1827188    0.0482704
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0886953   -0.2024988    0.0251083


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.5106836    0.0022158    1.0191514
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0949187    0.0532672    0.1365701
0-3 months     COHORTS          INDIA                          >=50 cm              NA                 0.1917451    0.1663011    0.2171892
0-3 months     EE               PAKISTAN                       >=50 cm              NA                 0.4860279    0.0512483    0.9208075
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1810433    0.0750139    0.2870727
0-3 months     IRC              INDIA                          >=50 cm              NA                 0.5840082    0.4430729    0.7249436
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.3099934    0.2703931    0.3495937
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2568661    0.1501017    0.3636305
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                 0.2723996    0.2261657    0.3186335
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2175263    0.0643355    0.3707171
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.1050760   -0.0776279    0.2877799
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                 0.1856892   -0.0316781    0.4030564
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.1815600   -0.1369229    0.5000428
0-3 months     MAL-ED           PERU                           >=50 cm              NA                 0.0808175   -0.0509720    0.2126070
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2048988    0.0157800    0.3940176
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1940406    0.0374424    0.3506388
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2735864    0.1779474    0.3692254
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1738710    0.1058385    0.2419036
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0440513    0.0291806    0.0589219
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0482919   -0.0185528    0.1151367
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.7169317    0.1194245    1.3144390
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.5997808    0.5443305    0.6552311
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4833352    0.4526057    0.5140647
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2693582   -0.0968713    0.6355876
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0527835    0.0189464    0.0866205
3-6 months     COHORTS          INDIA                          >=50 cm              NA                 0.0759354    0.0519712    0.0998997
3-6 months     EE               PAKISTAN                       >=50 cm              NA                -0.0660735   -0.2506889    0.1185419
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1380798    0.0518773    0.2242823
3-6 months     IRC              INDIA                          >=50 cm              NA                 0.0431222   -0.0500608    0.1363052
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.1232737    0.0795830    0.1669643
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0546999    0.0063877    0.1030120
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                 0.0406505   -0.0048689    0.0861700
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0550983   -0.0652895    0.1754861
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0270350   -0.1832932    0.1292233
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0489807   -0.2735678    0.3715291
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.0653992   -0.2106168    0.3414151
3-6 months     MAL-ED           PERU                           >=50 cm              NA                 0.1574112    0.0241889    0.2906334
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0927153   -0.1000262    0.2854567
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0792650   -0.0712066    0.2297366
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0193578   -0.0679274    0.1066430
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0392860   -0.0277779    0.1063499
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0103056    0.0059356    0.0146756
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0834697    0.0235218    0.1434176
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.2246701   -0.1295376    0.5788778
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0596546   -0.0182161    0.1375253
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0296062   -0.0005528    0.0597652
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0424560   -0.4945710    0.4096591
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0122350   -0.0199901    0.0444602
6-9 months     COHORTS          INDIA                          >=50 cm              NA                -0.0086925   -0.0308316    0.0134466
6-9 months     EE               PAKISTAN                       >=50 cm              NA                -0.0233681   -0.1690261    0.1222900
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0305547   -0.0552398    0.1163492
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.0317516   -0.0327396    0.0962429
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0078912   -0.0459521    0.0301696
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0748080   -0.1362617   -0.0133543
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0009884   -0.0853368    0.0833600
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0527659   -0.2076278    0.1020959
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0979924   -0.1300021    0.3259868
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.1246017   -0.3533558    0.1041524
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.0187571   -0.0965334    0.1340477
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1506684    0.0355622    0.2657746
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0209601   -0.1983358    0.1564156
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0073539   -0.0674717    0.0821796
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0002947   -0.0516093    0.0510199
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0079041    0.0031242    0.0126840
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0367542   -0.0810577    0.0075492
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0106558   -0.1021426    0.0808310
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0058218   -0.0354991    0.0238555
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1345672   -0.6414751    0.3723407
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.0095290   -0.0195157    0.0385737
9-12 months    COHORTS          INDIA                          >=50 cm              NA                -0.0574099   -0.0806303   -0.0341896
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.0044208   -0.1257033    0.1345450
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0046838   -0.0599050    0.0692727
9-12 months    IRC              INDIA                          >=50 cm              NA                -0.0053721   -0.0595751    0.0488308
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0081597   -0.0490604    0.0327410
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                 0.0230312   -0.0269972    0.0730596
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0754623   -0.0150454    0.1659701
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.0002041   -0.1794471    0.1798554
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                -0.0935814   -0.2658272    0.0786645
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                 0.0105931   -0.0961449    0.1173311
9-12 months    MAL-ED           PERU                           >=50 cm              NA                 0.0612599   -0.0588430    0.1813628
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1139912   -0.0329262    0.2609086
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0134223   -0.1521353    0.1789800
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0139130   -0.0751368    0.0473107
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0157177   -0.0294591    0.0608946
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                 0.0041270   -0.0017865    0.0100404
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0106760   -0.0597026    0.0383506
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0073462   -0.2096860    0.2243784
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0512626   -0.1398396    0.0373144
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0055630   -0.0324171    0.0212912
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3202282   -0.6501892    0.0097328
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0122517   -0.0473567    0.0228533
12-15 months   EE               PAKISTAN                       >=50 cm              NA                 0.0377772   -0.1177509    0.1933054
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0527952   -0.1186015    0.0130112
12-15 months   IRC              INDIA                          >=50 cm              NA                 0.0068105   -0.0517217    0.0653428
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0002651   -0.0276967    0.0271665
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0034109   -0.0358753    0.0290536
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0623780   -0.1370718    0.0123157
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0105805   -0.1214685    0.1426294
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1013115   -0.1714939    0.3741168
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0418639   -0.1069370    0.1906648
12-15 months   MAL-ED           PERU                           >=50 cm              NA                 0.0185162   -0.0771218    0.1141543
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0487783   -0.1294459    0.2270025
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0383984   -0.1123911    0.1891878
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0091489   -0.0632108    0.0815085
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0461978    0.0036930    0.0887026
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0186486   -0.0153000    0.0525973
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0002289   -0.0429389    0.0424811
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0091153   -0.1452386    0.1270080
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0043357   -0.0395215    0.0481929
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1166450   -0.1163380    0.3496281
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0025501   -0.0432355    0.0381353
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0877736   -0.0352500    0.2107973
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0300091   -0.0555018    0.1155200
15-18 months   IRC              INDIA                          >=50 cm              NA                 0.0440603   -0.0111752    0.0992957
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0309358   -0.0605466   -0.0013251
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0276455   -0.0628981    0.0076070
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0237719   -0.0431611    0.0907050
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0243800   -0.1197505    0.0709904
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0836411   -0.2899817    0.1226995
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0126134   -0.2098307    0.1846038
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.0600621   -0.0227779    0.1429021
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0338195   -0.1636930    0.0960539
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0333473   -0.1830595    0.1163650
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0046269   -0.0735477    0.0642940
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0101561   -0.0499363    0.0296242
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0133351   -0.2967219    0.2700517
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0083885   -0.0504132    0.0336362
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0179108   -0.0576155    0.0934370
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0210937   -0.0731196    0.0309322
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2928816    0.1022475    0.4835156
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0014904   -0.0361025    0.0390832
18-21 months   EE               PAKISTAN                       >=50 cm              NA                 0.0309628   -0.0777100    0.1396355
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0494748   -0.1677192    0.0687695
18-21 months   IRC              INDIA                          >=50 cm              NA                 0.0503106   -0.0039313    0.1045525
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0068099   -0.0329479    0.0465677
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0247885   -0.1023054    0.0527285
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0240117   -0.0705746    0.1185980
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0931275   -0.2643996    0.0781446
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0825555   -0.2694625    0.1043516
18-21 months   MAL-ED           PERU                           >=50 cm              NA                 0.0278014   -0.0704269    0.1260298
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0450154   -0.1841260    0.0940952
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1508340   -0.3033256    0.0016576
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0372441   -0.1063233    0.0318352
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0336234   -0.0059766    0.0732234
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0065886   -0.0490834    0.0359063
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0654862   -0.0005255    0.1314978
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0094213   -0.2548018    0.2359593
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0078023   -0.0418782    0.0262736
21-24 months   EE               PAKISTAN                       >=50 cm              NA                -0.0991089   -0.2058668    0.0076490
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0508892   -0.0666285    0.1684070
21-24 months   IRC              INDIA                          >=50 cm              NA                 0.0010652   -0.0564176    0.0585480
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0194520   -0.0204473    0.0593512
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0251593   -0.0999440    0.0496254
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0640540   -0.1638162    0.0357082
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0416026   -0.1402592    0.2234644
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0060974   -0.1369727    0.1491676
21-24 months   MAL-ED           PERU                           >=50 cm              NA                -0.0470088   -0.1780057    0.0839881
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0220865   -0.0967343    0.1409073
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0068522   -0.1147020    0.1284065
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0032390   -0.0573172    0.0637951
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0009495   -0.0420942    0.0401951
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0129312   -0.0339722    0.0598346
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0655990   -0.1523154    0.0211174

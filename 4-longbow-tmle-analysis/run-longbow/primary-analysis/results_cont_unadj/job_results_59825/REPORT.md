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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/10c335d1-208e-47dc-adb6-8486e736c3c3/3b85e893-ee3f-4275-9ace-f3b24ec089ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/10c335d1-208e-47dc-adb6-8486e736c3c3/3b85e893-ee3f-4275-9ace-f3b24ec089ff/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/10c335d1-208e-47dc-adb6-8486e736c3c3/3b85e893-ee3f-4275-9ace-f3b24ec089ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                2.9871695    2.4852862   3.4890529
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                3.8444507    3.4951788   4.1937225
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                3.3233002    3.0419441   3.6046562
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                2.4881004    2.4278110   2.5483898
0-3 months     COHORTS          GUATEMALA                      <48 cm               NA                2.7844222    2.6769624   2.8918819
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           NA                2.6178260    2.5476505   2.6880016
0-3 months     COHORTS          INDIA                          >=50 cm              NA                3.3523651    3.3231263   3.3816039
0-3 months     COHORTS          INDIA                          <48 cm               NA                3.6263081    3.6039753   3.6486409
0-3 months     COHORTS          INDIA                          [48-50) cm           NA                3.4676284    3.4456825   3.4895744
0-3 months     EE               PAKISTAN                       >=50 cm              NA                2.5336002    2.0758151   2.9913853
0-3 months     EE               PAKISTAN                       <48 cm               NA                3.1616450    3.0374927   3.2857972
0-3 months     EE               PAKISTAN                       [48-50) cm           NA                2.8697049    2.7302073   3.0092025
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                3.4202455    3.3041001   3.5363908
0-3 months     GMS-Nepal        NEPAL                          <48 cm               NA                3.6888240    3.6152624   3.7623856
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                3.5424556    3.4598770   3.6250342
0-3 months     IRC              INDIA                          >=50 cm              NA                2.5627214    2.3920264   2.7334163
0-3 months     IRC              INDIA                          <48 cm               NA                3.6993354    3.4900221   3.9086487
0-3 months     IRC              INDIA                          [48-50) cm           NA                3.2943226    3.1463745   3.4422706
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                3.5059063    3.4647187   3.5470938
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               NA                3.7820488    3.7702314   3.7938662
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                3.6284440    3.6103418   3.6465463
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                3.3868923    3.2708539   3.5029307
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               NA                3.7078850    3.6705085   3.7452615
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                3.5458840    3.4835045   3.6082634
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                2.8521041    2.7922619   2.9119463
0-3 months     Keneba           GAMBIA                         <48 cm               NA                3.6662661    3.5403056   3.7922266
0-3 months     Keneba           GAMBIA                         [48-50) cm           NA                3.1723608    3.1069480   3.2377736
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                3.1065223    2.9488398   3.2642048
0-3 months     MAL-ED           BANGLADESH                     <48 cm               NA                3.5150357    3.4113592   3.6187121
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                3.2150357    3.1157260   3.3143454
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                3.7026827    3.4905183   3.9148471
0-3 months     MAL-ED           BRAZIL                         <48 cm               NA                4.1159553    3.8289477   4.4029629
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           NA                3.8049426    3.4332375   4.1766478
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                2.9817880    2.7987324   3.1648436
0-3 months     MAL-ED           INDIA                          <48 cm               NA                3.4364443    3.1758303   3.6970583
0-3 months     MAL-ED           INDIA                          [48-50) cm           NA                2.9258197    2.7134362   3.1382033
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                3.1825187    2.8139392   3.5510981
0-3 months     MAL-ED           NEPAL                          <48 cm               NA                3.5173766    3.2295900   3.8051631
0-3 months     MAL-ED           NEPAL                          [48-50) cm           NA                3.3087792    2.8412038   3.7763547
0-3 months     MAL-ED           PERU                           >=50 cm              NA                2.9490059    2.8065287   3.0914832
0-3 months     MAL-ED           PERU                           <48 cm               NA                3.1498194    3.0499981   3.2496407
0-3 months     MAL-ED           PERU                           [48-50) cm           NA                3.0111851    2.9063351   3.1160352
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                2.9485755    2.7252855   3.1718655
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                3.2319630    2.9573522   3.5065738
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                3.1106630    2.9097378   3.3115882
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                3.0480434    2.8806366   3.2154502
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                3.4929013    3.3194878   3.6663149
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                3.1892033    3.0529657   3.3254410
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                2.8325994    2.7256506   2.9395482
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               NA                3.2789103    3.1921100   3.3657106
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                3.0859658    3.0037189   3.1682126
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                2.9522181    2.8772637   3.0271725
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                3.2412272    3.1818288   3.3006256
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                3.1169978    3.0622616   3.1717339
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                2.7734819    2.6622745   2.8846892
0-3 months     PROBIT           BELARUS                        <48 cm               NA                3.5321426    3.4423266   3.6219586
0-3 months     PROBIT           BELARUS                        [48-50) cm           NA                3.1605487    3.0529007   3.2681968
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                3.2082275    3.1305392   3.2859157
0-3 months     PROVIDE          BANGLADESH                     <48 cm               NA                3.3065866    3.2462260   3.3669472
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                3.2439809    3.1858966   3.3020652
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                2.0063740    1.3247806   2.6879674
0-3 months     ResPak           PAKISTAN                       <48 cm               NA                3.3239316    2.6885503   3.9593129
0-3 months     ResPak           PAKISTAN                       [48-50) cm           NA                2.7987213    1.9183105   3.6791320
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                2.8127855    2.7304645   2.8951066
0-3 months     SAS-CompFeed     INDIA                          <48 cm               NA                3.5280430    3.4732410   3.5828450
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                3.3123378    3.2634929   3.3611827
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                2.8631654    2.8273661   2.8989648
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                3.7648984    3.7301249   3.7996719
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                3.3561329    3.3267958   3.3854700
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.4416295    1.1323564   1.7509026
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.9825513    1.7010667   2.2640360
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.8523607    1.5334898   2.1712316
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                1.6862939    1.6399149   1.7326730
3-6 months     COHORTS          GUATEMALA                      <48 cm               NA                1.8256192    1.7432464   1.9079920
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           NA                1.7939861    1.7332549   1.8547174
3-6 months     COHORTS          INDIA                          >=50 cm              NA                1.8218416    1.7948029   1.8488803
3-6 months     COHORTS          INDIA                          <48 cm               NA                1.9116823    1.8915442   1.9318203
3-6 months     COHORTS          INDIA                          [48-50) cm           NA                1.8659658    1.8454112   1.8865204
3-6 months     EE               PAKISTAN                       >=50 cm              NA                2.0845738    1.8800677   2.2890800
3-6 months     EE               PAKISTAN                       <48 cm               NA                2.1019441    2.0183847   2.1855034
3-6 months     EE               PAKISTAN                       [48-50) cm           NA                2.0295220    1.8728425   2.1862014
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                1.6008169    1.5105692   1.6910647
3-6 months     GMS-Nepal        NEPAL                          <48 cm               NA                1.7831380    1.7276716   1.8386044
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                1.6470272    1.5801195   1.7139348
3-6 months     IRC              INDIA                          >=50 cm              NA                1.8493665    1.7300886   1.9686443
3-6 months     IRC              INDIA                          <48 cm               NA                1.8972999    1.7784287   2.0161710
3-6 months     IRC              INDIA                          [48-50) cm           NA                1.9437283    1.8403843   2.0470723
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                1.8162828    1.7656872   1.8668784
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               NA                1.9373896    1.9242437   1.9505354
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                1.8760593    1.8541672   1.8979514
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                1.8786715    1.8251696   1.9321734
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               NA                1.9245393    1.8763625   1.9727161
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                1.8782443    1.8261190   1.9303695
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                1.9176341    1.8525605   1.9827077
3-6 months     Keneba           GAMBIA                         <48 cm               NA                2.0507954    1.9567578   2.1448331
3-6 months     Keneba           GAMBIA                         [48-50) cm           NA                1.9465344    1.8668286   2.0262403
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                1.9114758    1.7836181   2.0393336
3-6 months     MAL-ED           BANGLADESH                     <48 cm               NA                1.9666910    1.8853772   2.0480047
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                1.9280194    1.8433195   2.0127194
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                1.9892963    1.7794057   2.1991869
3-6 months     MAL-ED           BRAZIL                         <48 cm               NA                2.0433622    1.8050278   2.2816966
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           NA                1.9582393    1.6923007   2.2241779
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                1.8465470    1.4799670   2.2131269
3-6 months     MAL-ED           INDIA                          <48 cm               NA                1.9985049    1.7346587   2.2623511
3-6 months     MAL-ED           INDIA                          [48-50) cm           NA                1.7980779    1.6550463   1.9411096
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                1.9466695    1.5843663   2.3089727
3-6 months     MAL-ED           NEPAL                          <48 cm               NA                2.1608314    1.9777977   2.3438651
3-6 months     MAL-ED           NEPAL                          [48-50) cm           NA                1.8530405    1.6014589   2.1046221
3-6 months     MAL-ED           PERU                           >=50 cm              NA                1.8368594    1.6968450   1.9768738
3-6 months     MAL-ED           PERU                           <48 cm               NA                2.0229873    1.9008145   2.1451602
3-6 months     MAL-ED           PERU                           [48-50) cm           NA                2.0223579    1.9018498   2.1428661
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                1.8513179    1.6013195   2.1013163
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                1.9704490    1.7312196   2.2096783
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.9729115    1.7936034   2.1522196
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.7630827    1.6043377   1.9218277
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.8071066    1.6336569   1.9805564
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.8336092    1.6840724   1.9831461
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                1.8244854    1.7235068   1.9254640
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               NA                1.8216309    1.7355655   1.9076963
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.8377629    1.7661449   1.9093809
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                1.9733987    1.8987470   2.0480503
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                2.0704138    2.0064368   2.1343909
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                1.9622657    1.9091458   2.0153856
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                2.0823141    2.0401503   2.1244778
3-6 months     PROBIT           BELARUS                        <48 cm               NA                2.3217367    2.2551932   2.3882801
3-6 months     PROBIT           BELARUS                        [48-50) cm           NA                2.1643879    2.1165891   2.2121867
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                1.8863218    1.8177715   1.9548720
3-6 months     PROVIDE          BANGLADESH                     <48 cm               NA                2.0046644    1.9445360   2.0647929
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                1.9783688    1.9283415   2.0283961
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                1.8383272    1.4059771   2.2706774
3-6 months     ResPak           PAKISTAN                       <48 cm               NA                2.0231752    1.4541012   2.5922492
3-6 months     ResPak           PAKISTAN                       [48-50) cm           NA                2.4180878    1.8202878   3.0158878
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                1.9173526    1.8612906   1.9734146
3-6 months     SAS-CompFeed     INDIA                          <48 cm               NA                1.9399528    1.8689038   2.0110017
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                1.9707702    1.8921260   2.0494144
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.9588409    1.9241637   1.9935180
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                2.0095616    1.9721333   2.0469900
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.9628147    1.9316141   1.9940153
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.3140512    0.9166612   1.7114411
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                1.3270347    1.0994185   1.5546509
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                1.3479123    1.1061357   1.5896889
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                1.0955865    1.0542548   1.1369182
6-9 months     COHORTS          GUATEMALA                      <48 cm               NA                1.1812308    1.1070970   1.2553645
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           NA                1.0902317    1.0302438   1.1502196
6-9 months     COHORTS          INDIA                          >=50 cm              NA                1.2096551    1.1853440   1.2339662
6-9 months     COHORTS          INDIA                          <48 cm               NA                1.2000126    1.1811713   1.2188539
6-9 months     COHORTS          INDIA                          [48-50) cm           NA                1.1803388    1.1608810   1.1997965
6-9 months     EE               PAKISTAN                       >=50 cm              NA                1.1364777    0.9891909   1.2837645
6-9 months     EE               PAKISTAN                       <48 cm               NA                1.1263968    1.0502177   1.2025760
6-9 months     EE               PAKISTAN                       [48-50) cm           NA                1.2181678    1.1175360   1.3187995
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                1.2840064    1.1931906   1.3748222
6-9 months     GMS-Nepal        NEPAL                          <48 cm               NA                1.3398601    1.2723585   1.4073616
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                1.3015601    1.2541641   1.3489560
6-9 months     IRC              INDIA                          >=50 cm              NA                1.3364127    1.2591085   1.4137170
6-9 months     IRC              INDIA                          <48 cm               NA                1.4705799    1.3741299   1.5670300
6-9 months     IRC              INDIA                          [48-50) cm           NA                1.3283175    1.2431055   1.4135295
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                1.3249286    1.2792964   1.3705607
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               NA                1.3375079    1.3053910   1.3696248
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                1.3096290    1.2711930   1.3480649
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                1.4907181    1.3971401   1.5842961
6-9 months     Keneba           GAMBIA                         <48 cm               NA                1.2625135    1.1666882   1.3583387
6-9 months     Keneba           GAMBIA                         [48-50) cm           NA                1.3896932    1.2771648   1.5022216
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                1.2195796    1.1323729   1.3067864
6-9 months     MAL-ED           BANGLADESH                     <48 cm               NA                1.2446487    1.1734129   1.3158845
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                1.2721126    1.2053722   1.3388529
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                1.4946597    1.2617196   1.7275999
6-9 months     MAL-ED           BRAZIL                         <48 cm               NA                1.3631413    1.1845052   1.5417774
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           NA                1.4341442    1.1992232   1.6690652
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                1.1172692    0.9081854   1.3263529
6-9 months     MAL-ED           INDIA                          <48 cm               NA                1.1760474    0.8679775   1.4841173
6-9 months     MAL-ED           INDIA                          [48-50) cm           NA                1.3145811    1.1256642   1.5034981
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                1.4231646    1.1266115   1.7197176
6-9 months     MAL-ED           NEPAL                          <48 cm               NA                1.2552098    1.0483993   1.4620202
6-9 months     MAL-ED           NEPAL                          [48-50) cm           NA                1.2242873    1.0834491   1.3651256
6-9 months     MAL-ED           PERU                           >=50 cm              NA                1.2981869    1.1756616   1.4207123
6-9 months     MAL-ED           PERU                           <48 cm               NA                1.3164419    1.2157960   1.4170878
6-9 months     MAL-ED           PERU                           [48-50) cm           NA                1.3272322    1.2203479   1.4341165
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                1.2789065    1.1538778   1.4039351
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                1.8045542    1.5797978   2.0293106
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.3291029    1.2049605   1.4532453
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                1.2286228    1.0660976   1.3911481
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                1.3692289    1.0288755   1.7095822
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                1.1717738    1.0318620   1.3116855
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                1.2411056    1.1562416   1.3259696
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               NA                1.2326774    1.1644515   1.3009034
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.2687108    1.2036564   1.3337653
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                1.3335040    1.2764987   1.3905093
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                1.3409723    1.2902406   1.3917040
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                1.3131325    1.2669457   1.3593192
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                1.5680336    1.5357491   1.6003180
6-9 months     PROBIT           BELARUS                        <48 cm               NA                1.6640417    1.5669668   1.7611166
6-9 months     PROBIT           BELARUS                        [48-50) cm           NA                1.6620572    1.6033153   1.7207991
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                1.3188470    1.2697954   1.3678987
6-9 months     PROVIDE          BANGLADESH                     <48 cm               NA                1.2398440    1.1995553   1.2801328
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                1.2978964    1.2562114   1.3395815
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                1.2224294    1.1375044   1.3073545
6-9 months     SAS-CompFeed     INDIA                          <48 cm               NA                1.2146863    1.1884881   1.2408846
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                1.2118496    1.1597889   1.2639103
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.3473177    1.3132609   1.3813744
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.3630028    1.3271530   1.3988525
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.3332760    1.3032332   1.3633188
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                1.2211629    0.4618023   1.9805235
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.9495674    0.7298711   1.1692637
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.9148768    0.6995500   1.1302036
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                0.9437437    0.9044810   0.9830064
9-12 months    COHORTS          GUATEMALA                      <48 cm               NA                0.9421420    0.8773058   1.0069782
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           NA                0.9738335    0.9203788   1.0272882
9-12 months    COHORTS          INDIA                          >=50 cm              NA                1.0645155    1.0379301   1.0911009
9-12 months    COHORTS          INDIA                          <48 cm               NA                0.9607372    0.9403746   0.9810998
9-12 months    COHORTS          INDIA                          [48-50) cm           NA                1.0018954    0.9815261   1.0222646
9-12 months    EE               PAKISTAN                       >=50 cm              NA                0.8921147    0.7694458   1.0147836
9-12 months    EE               PAKISTAN                       <48 cm               NA                0.9039091    0.8508268   0.9569913
9-12 months    EE               PAKISTAN                       [48-50) cm           NA                0.8949208    0.8058754   0.9839662
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                0.9932975    0.9270210   1.0595740
9-12 months    GMS-Nepal        NEPAL                          <48 cm               NA                0.9873111    0.9364636   1.0381585
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                1.0177513    0.9688939   1.0666088
9-12 months    IRC              INDIA                          >=50 cm              NA                1.1382513    1.0710830   1.2054196
9-12 months    IRC              INDIA                          <48 cm               NA                1.1272592    1.0446633   1.2098551
9-12 months    IRC              INDIA                          [48-50) cm           NA                1.1028003    1.0381643   1.1674363
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                1.0816780    1.0402107   1.1231454
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               NA                1.0648492    1.0393939   1.0903046
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                1.0770734    1.0412302   1.1129167
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                0.9464762    0.8644018   1.0285505
9-12 months    Keneba           GAMBIA                         <48 cm               NA                1.0020970    0.9180748   1.0861193
9-12 months    Keneba           GAMBIA                         [48-50) cm           NA                0.9755981    0.8973362   1.0538599
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                0.9004477    0.8038470   0.9970483
9-12 months    MAL-ED           BANGLADESH                     <48 cm               NA                1.0298018    0.9649733   1.0946303
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                0.9753056    0.9156687   1.0349425
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                1.3030813    1.0985654   1.5075972
9-12 months    MAL-ED           BRAZIL                         <48 cm               NA                1.4468866    1.1583333   1.7354399
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           NA                1.2589523    0.8286742   1.6892303
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                1.1257876    0.9422056   1.3093695
9-12 months    MAL-ED           INDIA                          <48 cm               NA                0.9962376    0.8401923   1.1522829
9-12 months    MAL-ED           INDIA                          [48-50) cm           NA                1.0316972    0.9253385   1.1380559
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                0.9683314    0.8479517   1.0887111
9-12 months    MAL-ED           NEPAL                          <48 cm               NA                1.0499564    0.9250570   1.1748558
9-12 months    MAL-ED           NEPAL                          [48-50) cm           NA                0.8794095    0.7672287   0.9915902
9-12 months    MAL-ED           PERU                           >=50 cm              NA                1.0367562    0.9008479   1.1726645
9-12 months    MAL-ED           PERU                           <48 cm               NA                1.1296491    1.0401103   1.2191879
9-12 months    MAL-ED           PERU                           [48-50) cm           NA                1.1240186    1.0312889   1.2167483
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.9927609    0.8259686   1.1595532
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.9830034    0.7801585   1.1858484
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                1.1057843    0.9340799   1.2774886
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8042278    0.6541134   0.9543421
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.7371797    0.4099183   1.0644410
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8039088    0.6620745   0.9457432
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                1.1032662    1.0339247   1.1726077
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               NA                1.0602696    1.0027621   1.1177771
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                1.1081642    1.0485986   1.1677298
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                1.1086516    1.0599292   1.1573739
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                1.1085641    1.0629805   1.1541476
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                1.1471649    1.1059331   1.1883968
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                1.3667198    1.3158286   1.4176110
9-12 months    PROBIT           BELARUS                        <48 cm               NA                1.4065045    1.3582964   1.4547126
9-12 months    PROBIT           BELARUS                        [48-50) cm           NA                1.4262741    1.3533938   1.4991544
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                1.0712108    1.0114733   1.1309484
9-12 months    PROVIDE          BANGLADESH                     <48 cm               NA                1.0547896    1.0137453   1.0958338
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                1.0327773    0.9894304   1.0761243
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                1.3443657    1.1698970   1.5188344
9-12 months    ResPak           PAKISTAN                       <48 cm               NA                1.4089121    0.9578370   1.8599872
9-12 months    ResPak           PAKISTAN                       [48-50) cm           NA                1.3110788    0.9026035   1.7195541
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                1.0485339    0.9638822   1.1331855
9-12 months    SAS-CompFeed     INDIA                          <48 cm               NA                1.0055918    0.9678686   1.0433150
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                0.9775304    0.9025180   1.0525428
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                1.0804189    1.0507622   1.1100756
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                1.1016081    1.0672674   1.1359488
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                1.0643483    1.0351973   1.0934994
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.9078324    0.5708907   1.2447742
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.8500246    0.6863531   1.0136960
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7531245    0.6055801   0.9006690
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7847464    0.7360471   0.8334457
12-15 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7810529    0.6975426   0.8645633
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.7224075    0.6634143   0.7814006
12-15 months   EE               PAKISTAN                       >=50 cm              NA                0.9601162    0.8151260   1.1051063
12-15 months   EE               PAKISTAN                       <48 cm               NA                1.0340061    0.9868900   1.0811222
12-15 months   EE               PAKISTAN                       [48-50) cm           NA                0.9679693    0.8714573   1.0644814
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.9296709    0.8598890   0.9994527
12-15 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.8612015    0.8180957   0.9043074
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.8893158    0.8456570   0.9329747
12-15 months   IRC              INDIA                          >=50 cm              NA                0.9393211    0.8657248   1.0129175
12-15 months   IRC              INDIA                          <48 cm               NA                0.9473645    0.8620538   1.0326752
12-15 months   IRC              INDIA                          [48-50) cm           NA                0.9599150    0.9011336   1.0186963
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                0.9316448    0.8973709   0.9659188
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               NA                0.9371608    0.9150123   0.9593093
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                0.9286395    0.8923362   0.9649428
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                0.9381785    0.8847689   0.9915881
12-15 months   Keneba           GAMBIA                         <48 cm               NA                0.9929793    0.9136129   1.0723457
12-15 months   Keneba           GAMBIA                         [48-50) cm           NA                0.9291931    0.8816235   0.9767628
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.9654362    0.8907769   1.0400955
12-15 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.8889304    0.8191117   0.9587491
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.8935525    0.8237074   0.9633975
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                1.0540333    0.9025995   1.2054672
12-15 months   MAL-ED           BRAZIL                         <48 cm               NA                1.0102608    0.7169020   1.3036196
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           NA                1.0357096    0.7120404   1.3593788
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                0.7478316    0.4322279   1.0634354
12-15 months   MAL-ED           INDIA                          <48 cm               NA                0.8509626    0.7061047   0.9958206
12-15 months   MAL-ED           INDIA                          [48-50) cm           NA                0.8942383    0.7712483   1.0172283
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                0.8745856    0.6878925   1.0612788
12-15 months   MAL-ED           NEPAL                          <48 cm               NA                0.8180386    0.7482967   0.8877806
12-15 months   MAL-ED           NEPAL                          [48-50) cm           NA                1.1189397    0.9464330   1.2914464
12-15 months   MAL-ED           PERU                           >=50 cm              NA                0.8645420    0.7602145   0.9688695
12-15 months   MAL-ED           PERU                           <48 cm               NA                0.9111032    0.8144772   1.0077293
12-15 months   MAL-ED           PERU                           [48-50) cm           NA                0.8966666    0.8259779   0.9673552
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.8316235    0.5964509   1.0667961
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.9434341    0.7825132   1.1043550
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.8977765    0.7573918   1.0381612
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8007353    0.6388834   0.9625871
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8245172    0.6555105   0.9935239
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.8726301    0.7139560   1.0313042
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7131161    0.6395354   0.7866968
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7411006    0.6456761   0.8365251
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7141738    0.6597535   0.7685941
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.9309759    0.8836504   0.9783014
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.9719340    0.9294847   1.0143833
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.9939585    0.9558780   1.0320389
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                1.1662263    0.8093223   1.5231303
12-15 months   PROBIT           BELARUS                        <48 cm               NA                1.9003909    1.5583690   2.2424127
12-15 months   PROBIT           BELARUS                        [48-50) cm           NA                1.3201575    1.1282973   1.5120177
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.9578716    0.9084041   1.0073390
12-15 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.9134617    0.8678977   0.9590256
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                1.0023878    0.9616043   1.0431714
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                0.8534626    0.7054301   1.0014951
12-15 months   SAS-CompFeed     INDIA                          <48 cm               NA                0.8602767    0.7926552   0.9278982
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                0.7710769    0.7269867   0.8151671
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.9113082    0.8652609   0.9573555
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.9098515    0.8606858   0.9590173
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.9392089    0.8954119   0.9830058
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.5499658    0.3292009   0.7707307
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7125663    0.5422084   0.8829243
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.6693279    0.5213580   0.8172978
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7366908    0.6867983   0.7865832
15-18 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7066626    0.6052979   0.8080272
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.7742578    0.7096557   0.8388599
15-18 months   EE               PAKISTAN                       >=50 cm              NA                0.7403176    0.6133072   0.8673281
15-18 months   EE               PAKISTAN                       <48 cm               NA                0.8368344    0.7935694   0.8800993
15-18 months   EE               PAKISTAN                       [48-50) cm           NA                0.8342423    0.7690807   0.8994040
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.7331396    0.6265404   0.8397388
15-18 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.7675178    0.7167244   0.8183111
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.7456636    0.7032974   0.7880297
15-18 months   IRC              INDIA                          >=50 cm              NA                0.8236936    0.7598789   0.8875083
15-18 months   IRC              INDIA                          <48 cm               NA                0.8922149    0.7968743   0.9875554
15-18 months   IRC              INDIA                          [48-50) cm           NA                0.8830451    0.8269113   0.9391790
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                0.8960518    0.8609357   0.9311679
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               NA                0.8375055    0.8137716   0.8612394
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                0.8462952    0.8097031   0.8828873
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                0.9171775    0.8597715   0.9745835
15-18 months   Keneba           GAMBIA                         <48 cm               NA                0.8277196    0.7363972   0.9190421
15-18 months   Keneba           GAMBIA                         [48-50) cm           NA                0.8749243    0.8219934   0.9278551
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.7957755    0.7289981   0.8625529
15-18 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.8198895    0.7527112   0.8870678
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.8369481    0.7750671   0.8988291
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                0.9915575    0.8352191   1.1478958
15-18 months   MAL-ED           BRAZIL                         <48 cm               NA                1.0705358    0.9045388   1.2365329
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.8543630    0.7335301   0.9751960
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                0.8942104    0.6629492   1.1254715
15-18 months   MAL-ED           INDIA                          <48 cm               NA                0.7863257    0.6831383   0.8895131
15-18 months   MAL-ED           INDIA                          [48-50) cm           NA                0.8062050    0.6934808   0.9189292
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                0.8581242    0.6136482   1.1026001
15-18 months   MAL-ED           NEPAL                          <48 cm               NA                0.9193378    0.7253225   1.1133530
15-18 months   MAL-ED           NEPAL                          [48-50) cm           NA                0.7150814    0.5314257   0.8987371
15-18 months   MAL-ED           PERU                           >=50 cm              NA                0.8208348    0.7374525   0.9042171
15-18 months   MAL-ED           PERU                           <48 cm               NA                0.8934163    0.8085808   0.9782517
15-18 months   MAL-ED           PERU                           [48-50) cm           NA                0.8889410    0.8055474   0.9723345
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.9398226    0.7838954   1.0957498
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.8615571    0.6840510   1.0390632
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.9056119    0.7606171   1.0506068
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.7633254    0.5827237   0.9439272
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.6831824    0.5330698   0.8332950
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.7677515    0.6525005   0.8830025
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7816329    0.7081668   0.8550990
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7851338    0.7145403   0.8557274
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7624457    0.6967863   0.8281051
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.9329367    0.8873191   0.9785544
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.9266616    0.8876455   0.9656777
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.8992702    0.8634475   0.9350929
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                1.0473332    0.6538635   1.4408030
15-18 months   PROBIT           BELARUS                        <48 cm               NA                0.3689257   -0.2212794   0.9591308
15-18 months   PROBIT           BELARUS                        [48-50) cm           NA                1.0641373   -2.1038399   4.2321146
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.8624623    0.8149802   0.9099444
15-18 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.8401203    0.7982225   0.8820181
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.8661299    0.8287892   0.9034706
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                0.9021710    0.8448006   0.9595413
15-18 months   SAS-CompFeed     INDIA                          <48 cm               NA                0.8874210    0.8424514   0.9323906
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                0.9476330    0.9039349   0.9913311
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.8272644    0.7705144   0.8840145
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.7894404    0.7416659   0.8372149
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7892372    0.7368079   0.8416666
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.3397414    0.2341182   0.4453647
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.6675338    0.4645906   0.8704770
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.7716462    0.5416679   1.0016245
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.7547914    0.7068476   0.8027351
18-21 months   COHORTS          GUATEMALA                      <48 cm               NA                0.7427487    0.6511909   0.8343064
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.7695990    0.7077971   0.8314009
18-21 months   EE               PAKISTAN                       >=50 cm              NA                0.7494584    0.6408550   0.8580618
18-21 months   EE               PAKISTAN                       <48 cm               NA                0.7370614    0.6901337   0.7839891
18-21 months   EE               PAKISTAN                       [48-50) cm           NA                0.7499840    0.6865693   0.8133986
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.9204423    0.7893338   1.0515508
18-21 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.8926384    0.8520843   0.9331925
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.9130220    0.8700123   0.9560316
18-21 months   IRC              INDIA                          >=50 cm              NA                0.7046408    0.6339429   0.7753388
18-21 months   IRC              INDIA                          <48 cm               NA                0.7743653    0.7093448   0.8393857
18-21 months   IRC              INDIA                          [48-50) cm           NA                0.8166004    0.7493776   0.8838232
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                0.8365086    0.7776547   0.8953625
18-21 months   Keneba           GAMBIA                         <48 cm               NA                0.8000166    0.6942523   0.9057809
18-21 months   Keneba           GAMBIA                         [48-50) cm           NA                0.8538529    0.7886543   0.9190514
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.8296023    0.7436368   0.9155679
18-21 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.7766125    0.7144449   0.8387801
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.8366640    0.7816288   0.8916991
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                0.8612611    0.7235862   0.9989360
18-21 months   MAL-ED           BRAZIL                         <48 cm               NA                0.8614128    0.7434664   0.9793591
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.9431874    0.7508077   1.1355671
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                0.9744292    0.7866548   1.1622037
18-21 months   MAL-ED           INDIA                          <48 cm               NA                0.8605984    0.7636390   0.9575579
18-21 months   MAL-ED           INDIA                          [48-50) cm           NA                0.8688946    0.7547946   0.9829947
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                0.9762766    0.7431103   1.2094428
18-21 months   MAL-ED           NEPAL                          <48 cm               NA                0.9153585    0.7778440   1.0528730
18-21 months   MAL-ED           NEPAL                          [48-50) cm           NA                0.7653704    0.5173762   1.0133647
18-21 months   MAL-ED           PERU                           >=50 cm              NA                0.8098774    0.7021657   0.9175892
18-21 months   MAL-ED           PERU                           <48 cm               NA                0.8077688    0.7297548   0.8857829
18-21 months   MAL-ED           PERU                           [48-50) cm           NA                0.8658603    0.7896009   0.9421197
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.8699505    0.6897877   1.0501132
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.7452846    0.6089619   0.8816074
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.7635962    0.6172242   0.9099682
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.8611825    0.6823377   1.0400274
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.6444798    0.4751311   0.8138286
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.6800464    0.5447278   0.8153649
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7687907    0.6902432   0.8473381
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.7165000    0.6563381   0.7766619
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7317219    0.6742037   0.7892401
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.7734848    0.7312024   0.8157671
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.8282312    0.7894548   0.8670076
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.7822384    0.7432571   0.8212197
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.8456460    0.7965796   0.8947124
18-21 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.8397373    0.8003734   0.8791013
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.8352427    0.7968784   0.8736069
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.6177849    0.5445637   0.6910060
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.6703663    0.6152248   0.7255078
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.7268243    0.6723995   0.7812490
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                0.7864041    0.5707119   1.0020962
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                0.7881058    0.6348183   0.9413933
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                0.5613298    0.3734534   0.7492062
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                0.6865851    0.6426994   0.7304708
21-24 months   COHORTS          GUATEMALA                      <48 cm               NA                0.6833729    0.6211031   0.7456428
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                0.6698285    0.6138983   0.7257587
21-24 months   EE               PAKISTAN                       >=50 cm              NA                0.7721849    0.6680957   0.8762740
21-24 months   EE               PAKISTAN                       <48 cm               NA                0.6525063    0.5911250   0.7138876
21-24 months   EE               PAKISTAN                       [48-50) cm           NA                0.6926066    0.5937935   0.7914197
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                0.7511959    0.6231417   0.8792501
21-24 months   GMS-Nepal        NEPAL                          <48 cm               NA                0.7982818    0.7407447   0.8558189
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                0.8240306    0.7415042   0.9065569
21-24 months   IRC              INDIA                          >=50 cm              NA                0.6993365    0.6350157   0.7636572
21-24 months   IRC              INDIA                          <48 cm               NA                0.7217716    0.6421946   0.8013486
21-24 months   IRC              INDIA                          [48-50) cm           NA                0.7286087    0.6520850   0.8051325
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                0.6978458    0.6443713   0.7513202
21-24 months   Keneba           GAMBIA                         <48 cm               NA                0.7143928    0.6519714   0.7768142
21-24 months   Keneba           GAMBIA                         [48-50) cm           NA                0.7557300    0.6771505   0.8343095
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                0.8109579    0.7331951   0.8887207
21-24 months   MAL-ED           BANGLADESH                     <48 cm               NA                0.7640504    0.7027400   0.8253609
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                0.7603440    0.7002106   0.8204775
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                0.8812586    0.7431183   1.0193989
21-24 months   MAL-ED           BRAZIL                         <48 cm               NA                0.7006751    0.5599978   0.8413524
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                0.8369072    0.6959256   0.9778888
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                0.7561604    0.5631256   0.9491952
21-24 months   MAL-ED           INDIA                          <48 cm               NA                0.8171008    0.6791277   0.9550740
21-24 months   MAL-ED           INDIA                          [48-50) cm           NA                0.7911986    0.6666821   0.9157151
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                0.7380914    0.5515837   0.9245990
21-24 months   MAL-ED           NEPAL                          <48 cm               NA                0.8082759    0.6895680   0.9269838
21-24 months   MAL-ED           NEPAL                          [48-50) cm           NA                0.6504490    0.5563123   0.7445858
21-24 months   MAL-ED           PERU                           >=50 cm              NA                0.8005999    0.6665765   0.9346234
21-24 months   MAL-ED           PERU                           <48 cm               NA                0.7147295    0.6434160   0.7860431
21-24 months   MAL-ED           PERU                           [48-50) cm           NA                0.7409098    0.6522661   0.8295535
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                0.7374485    0.6378292   0.8370678
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                0.7732619    0.6198299   0.9266938
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                0.9228704    0.7327963   1.1129446
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                0.7501567    0.6049552   0.8953582
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                0.8213670    0.6695572   0.9731767
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                0.6846749    0.5670693   0.8022806
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                0.7065981    0.6403315   0.7728647
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                0.6750291    0.6139214   0.7361369
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                0.7532692    0.6951437   0.8113948
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                0.8038867    0.7579721   0.8498012
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                0.7938069    0.7536230   0.8339909
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                0.8021269    0.7605790   0.8436747
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                0.7558394    0.7021023   0.8095765
21-24 months   PROVIDE          BANGLADESH                     <48 cm               NA                0.7325641    0.6906553   0.7744730
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                0.7951276    0.7559490   0.8343062
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                0.7609914    0.6647636   0.8572193
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                0.6857220    0.6286068   0.7428371
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                0.6742174    0.6147751   0.7336597


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
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.8572812    0.2458257    1.4687366
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.3361306   -0.2392372    0.9114984
0-3 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2963218    0.1731049    0.4195387
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1297257    0.0372086    0.2222428
0-3 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.2739430    0.2371508    0.3107351
0-3 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1152633    0.0787047    0.1518219
0-3 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.6280448    0.1537232    1.1023664
0-3 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.3361047   -0.1424627    0.8146721
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2685785    0.1310975    0.4060596
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1222102   -0.0202994    0.2647197
0-3 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <48 cm               >=50 cm            1.1366140    0.8665236    1.4067044
0-3 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.7316012    0.5057132    0.9574893
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.2761425    0.2339061    0.3183790
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.1225378    0.0793102    0.1657653
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.3209927    0.1988815    0.4431039
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.1589916    0.0280058    0.2899775
0-3 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.8141620    0.6747090    0.9536150
0-3 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.3202567    0.2316004    0.4089129
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.4085134    0.2198004    0.5972263
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.1085134   -0.0778363    0.2948630
0-3 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.4132726    0.0563593    0.7701859
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.1022600   -0.3257336    0.5302535
0-3 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.4546563    0.1361771    0.7731355
0-3 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0559683   -0.3363540    0.2244174
0-3 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <48 cm               >=50 cm            0.3348579   -0.1327657    0.8024816
0-3 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1262606   -0.4691197    0.7216408
0-3 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.2008134    0.0268478    0.3747791
0-3 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0621792   -0.1147199    0.2390783
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.2833875   -0.0705468    0.6373219
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1620875   -0.1382945    0.4624695
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.4448579    0.2038242    0.6858917
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1411599   -0.0746773    0.3569972
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.4463109    0.3085708    0.5840510
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.2533663    0.1184494    0.3882833
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.2890091    0.1933726    0.3846456
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.1647797    0.0719669    0.2575925
0-3 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.7586607    0.6294784    0.8878431
0-3 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.3870669    0.2855006    0.4886332
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0983592   -0.0000221    0.1967404
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0357535   -0.0612479    0.1327548
0-3 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            1.3175576    0.3857427    2.2493724
0-3 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.7923473   -0.3210676    1.9057621
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.7152574    0.6568713    0.7736436
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.4995523    0.3913700    0.6077345
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.9017330    0.8518252    0.9516408
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.4929675    0.4466830    0.5392521
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.5409218    0.1227311    0.9591125
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.4107312   -0.0334855    0.8549479
3-6 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1393252    0.0447933    0.2338572
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1076922    0.0312769    0.1841075
3-6 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.0898407    0.0561267    0.1235546
3-6 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0441242    0.0101598    0.0780887
3-6 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.0173702   -0.2035481    0.2382886
3-6 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0550519   -0.3126780    0.2025742
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.1823211    0.0763910    0.2882511
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0462103   -0.0661343    0.1585548
3-6 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <48 cm               >=50 cm            0.0479334   -0.1204636    0.2163304
3-6 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.0943618   -0.0634583    0.2521820
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.1211068    0.0688860    0.1733275
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.0597765    0.0050939    0.1144591
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0458678   -0.0258867    0.1176223
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0004272   -0.0742425    0.0733880
3-6 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.1331613    0.0188037    0.2475189
3-6 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0289003   -0.0739958    0.1317964
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0552151   -0.0963089    0.2067391
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0165436   -0.1368242    0.1699113
3-6 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0540659   -0.2635146    0.3716464
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0310570   -0.3698451    0.3077312
3-6 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.1519579   -0.2997009    0.6036167
3-6 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0484690   -0.4419648    0.3450267
3-6 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <48 cm               >=50 cm            0.2141619   -0.1917505    0.6200744
3-6 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0936290   -0.5347150    0.3474570
3-6 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.1861280    0.0003048    0.3719511
3-6 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.1854985    0.0007657    0.3702314
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1191311   -0.2268889    0.4651511
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1215936   -0.1860597    0.4292470
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0440240   -0.1911032    0.2791511
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0705266   -0.1475588    0.2886120
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0028545   -0.1355344    0.1298253
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0132775   -0.1105200    0.1370751
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0970152   -0.0013003    0.1953306
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0111330   -0.1027550    0.0804890
3-6 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.2394226    0.1728017    0.3060435
3-6 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0820738    0.0378309    0.1263168
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.1183427    0.0271585    0.2095269
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0920470    0.0071832    0.1769108
3-6 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1848479   -0.5298351    0.8995310
3-6 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.5797606   -0.1580006    1.3175217
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0226002   -0.0707743    0.1159747
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0534176   -0.0400663    0.1469015
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0507208   -0.0003026    0.1017442
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0039738   -0.0426736    0.0506212
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0129835   -0.4449770    0.4709441
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0338612   -0.4312997    0.4990221
6-9 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0856442    0.0007671    0.1705214
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0053548   -0.0782030    0.0674934
6-9 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0096425   -0.0404000    0.0211150
6-9 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0293163   -0.0604552    0.0018226
6-9 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.0100809   -0.1759021    0.1557404
6-9 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0816900   -0.0966920    0.2600721
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0558537   -0.0573009    0.1690083
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0175537   -0.0848859    0.1199933
6-9 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <48 cm               >=50 cm            0.1341672    0.0105607    0.2577737
6-9 months     IRC              INDIA                          [48-50) cm           >=50 cm           -0.0080953   -0.1231476    0.1069570
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0125793   -0.0424985    0.0676572
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0152996   -0.0763185    0.0457193
6-9 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.2282047   -0.3621424   -0.0942669
6-9 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.1010249   -0.2473789    0.0453290
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0250691   -0.0875345    0.1376726
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0525329   -0.0572819    0.1623477
6-9 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.1315185   -0.4250691    0.1620322
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0605155   -0.3913463    0.2703152
6-9 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.0587782   -0.3135430    0.4310994
6-9 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.1973120   -0.0844781    0.4791020
6-9 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.1679548   -0.5294991    0.1935895
6-9 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.1988772   -0.5271745    0.1294201
6-9 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.0182550   -0.1403075    0.1768174
6-9 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0290452   -0.1335485    0.1916390
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.5256478    0.2684560    0.7828396
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0501964   -0.1259952    0.2263881
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.1406061   -0.2365608    0.5177729
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0568491   -0.2713013    0.1576031
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0084282   -0.1173165    0.1004602
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0276053   -0.0793245    0.1345350
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0074683   -0.0688424    0.0837789
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0203715   -0.0937393    0.0529962
6-9 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.0960081   -0.0014940    0.1935102
6-9 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0940236    0.0342506    0.1537966
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0790030   -0.1424793   -0.0155266
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0209506   -0.0853222    0.0434210
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0077431   -0.1148680    0.0993818
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0105799   -0.0810568    0.0598971
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0156851   -0.0337625    0.0651327
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0140416   -0.0594556    0.0313724
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.2715955   -1.0620985    0.5189075
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.3062860   -1.0955858    0.4830137
9-12 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0016018   -0.0773995    0.0741959
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0300897   -0.0362350    0.0964144
9-12 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.1037783   -0.1372659   -0.0702907
9-12 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0626201   -0.0961118   -0.0291285
9-12 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       <48 cm               >=50 cm            0.0117944   -0.1218671    0.1454558
9-12 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0028061   -0.1487747    0.1543869
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0059864   -0.0895211    0.0775482
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0244539   -0.0578847    0.1067924
9-12 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <48 cm               >=50 cm           -0.0109920   -0.1174517    0.0954676
9-12 months    IRC              INDIA                          [48-50) cm           >=50 cm           -0.0354510   -0.1286678    0.0577659
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0168288   -0.0662465    0.0325890
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0046046   -0.0593834    0.0501742
9-12 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <48 cm               >=50 cm            0.0556209   -0.0618353    0.1730770
9-12 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0291219   -0.0842849    0.1425288
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.1293541    0.0130166    0.2456916
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0748579   -0.0386685    0.1883843
9-12 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.1438053   -0.2098750    0.4974856
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0441290   -0.5205384    0.4322804
9-12 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <48 cm               >=50 cm           -0.1295500   -0.3704907    0.1113908
9-12 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0940903   -0.3062566    0.1180759
9-12 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0816250   -0.0918430    0.2550929
9-12 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0889220   -0.2534692    0.0756252
9-12 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <48 cm               >=50 cm            0.0928929   -0.0698593    0.2556451
9-12 months    MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0872624   -0.0772669    0.2517916
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0097574   -0.2723707    0.2528559
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1130234   -0.1263551    0.3524019
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0670481   -0.4270958    0.2929995
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0003189   -0.2068408    0.2062030
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0429966   -0.1330818    0.0470887
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0048980   -0.0865148    0.0963108
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0000875   -0.0668088    0.0666338
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0385134   -0.0253140    0.1023408
9-12 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <48 cm               >=50 cm            0.0397847   -0.0214498    0.1010191
9-12 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0595543   -0.0021915    0.1213001
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0164213   -0.0889003    0.0560577
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0384335   -0.1122409    0.0353739
9-12 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0645464   -0.4190941    0.5481868
9-12 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0332869   -0.4774619    0.4108881
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0429420   -0.1580542    0.0721701
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0710035   -0.1991993    0.0571924
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0211892   -0.0241848    0.0665632
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0160706   -0.0576555    0.0255143
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0578079   -0.4323985    0.3167827
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.1547079   -0.5225382    0.2131224
12-15 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0036935   -0.1003661    0.0929792
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0623389   -0.1388361    0.0141583
12-15 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0738900   -0.0785635    0.2263434
12-15 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0078532   -0.1663212    0.1820275
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0684693   -0.1504914    0.0135527
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0403550   -0.1226691    0.0419590
12-15 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <48 cm               >=50 cm            0.0080434   -0.1046258    0.1207125
12-15 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0205938   -0.0735957    0.1147834
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0055159   -0.0344951    0.0455270
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0030053   -0.0532297    0.0472191
12-15 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0548008   -0.0408633    0.1504649
12-15 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0089853   -0.0805078    0.0625371
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0765058   -0.1787245    0.0257129
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0718838   -0.1741205    0.0303529
12-15 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0437725   -0.3739113    0.2863662
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0183237   -0.3756666    0.3390192
12-15 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.1031310   -0.2441291    0.4503911
12-15 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.1464067   -0.1923149    0.4851282
12-15 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0565470   -0.2558414    0.1427474
12-15 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.2443541   -0.0098366    0.4985448
12-15 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0465613   -0.0956387    0.1887612
12-15 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0321246   -0.0938957    0.1581448
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1118106   -0.1731485    0.3967697
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0661530   -0.2077339    0.3400399
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0237819   -0.2102251    0.2577889
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0718948   -0.1547624    0.2985520
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0279845   -0.0925143    0.1484832
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0010577   -0.0904611    0.0925764
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0409581   -0.0226158    0.1045320
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0629826    0.0022387    0.1237264
12-15 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <48 cm               >=50 cm            0.7341645    0.2703404    1.1979887
12-15 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.1539312   -0.2323146    0.5401769
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0444099   -0.1116639    0.0228441
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0445162   -0.0195956    0.1086281
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0068141   -0.1825890    0.1962171
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0823857   -0.2452609    0.0804896
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0014566   -0.0688185    0.0659053
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0279007   -0.0356487    0.0914501
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.1626006   -0.1162524    0.4414535
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1193621   -0.1464051    0.3851294
15-18 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0300282   -0.1430062    0.0829499
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0375671   -0.0440582    0.1191923
15-18 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0965167   -0.0376604    0.2306939
15-18 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0939247   -0.0488258    0.2366751
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0343781   -0.0837038    0.1524601
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0125239   -0.1021856    0.1272335
15-18 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <48 cm               >=50 cm            0.0685212   -0.0462051    0.1832476
15-18 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0593515   -0.0256386    0.1443416
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0585463   -0.0999386   -0.0171540
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0497566   -0.1004266    0.0009135
15-18 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0894579   -0.1973246    0.0184089
15-18 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0422532   -0.1203373    0.0358308
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0241140   -0.0706074    0.1188354
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0411726   -0.0498685    0.1322137
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
15-18 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0725815   -0.0463709    0.1915338
15-18 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0681062   -0.0498222    0.1860345
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0782656   -0.3145317    0.1580006
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0342107   -0.2471351    0.1787137
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0801430   -0.3149851    0.1546990
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0044261   -0.2098163    0.2186685
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0035010   -0.0983848    0.1053868
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0191872   -0.1177185    0.0793442
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0062751   -0.0663020    0.0537517
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0336666   -0.0916686    0.0243355
15-18 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.6784075   -1.3832017    0.0263866
15-18 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0168041   -3.1939904    3.2275986
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0223420   -0.0856664    0.0409824
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0036676   -0.0567383    0.0640735
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0147500   -0.0932682    0.0637682
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0454620   -0.0068931    0.0978171
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0378240   -0.1120061    0.0363580
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0380272   -0.1152891    0.0392347
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.3277924    0.0990082    0.5565765
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.4319048    0.1788311    0.6849785
18-21 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0120427   -0.1153937    0.0913083
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0148077   -0.0634105    0.0930258
18-21 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0123971   -0.1307056    0.1059115
18-21 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0005255   -0.1252366    0.1262877
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0278039   -0.1650412    0.1094334
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0074203   -0.1454032    0.1305625
18-21 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <48 cm               >=50 cm            0.0697244   -0.0263270    0.1657758
18-21 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.1119595    0.0144039    0.2095152
18-21 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0364919   -0.1575286    0.0845447
18-21 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0173443   -0.0704887    0.1051773
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0529898   -0.1590789    0.0530993
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0070617   -0.0950115    0.1091349
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
18-21 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0021086   -0.1351049    0.1308877
18-21 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0559828   -0.0759919    0.1879575
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.1246658   -0.3505917    0.1012601
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.1063543   -0.3384822    0.1257737
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.2167027   -0.4630043    0.0295988
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.1811362   -0.4054051    0.0431328
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0522907   -0.1512309    0.0466495
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0370687   -0.1344240    0.0602865
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0547464   -0.0026244    0.1121172
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0087536   -0.0487558    0.0662631
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0059087   -0.0688136    0.0569963
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0104033   -0.0726875    0.0518810
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0525814   -0.0390806    0.1442434
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.1090394    0.0178068    0.2002720
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0017018   -0.2629115    0.2663150
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.2250743   -0.5111174    0.0609689
21-24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0032121   -0.0793928    0.0729685
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0167566   -0.0878491    0.0543359
21-24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.1196785   -0.2405181    0.0011611
21-24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0795783   -0.2231003    0.0639438
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0470860   -0.0933006    0.1874725
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0728347   -0.0795086    0.2251780
21-24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <48 cm               >=50 cm            0.0224351   -0.0798862    0.1247565
21-24 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0292723   -0.0706929    0.1292375
21-24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0165471   -0.0656475    0.0987416
21-24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0578842   -0.0371644    0.1529329
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0469075   -0.1459328    0.0521179
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0506138   -0.1489148    0.0476871
21-24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.1805836   -0.3777455    0.0165784
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0443514   -0.2417306    0.1530278
21-24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.0609405   -0.1763337    0.2982146
21-24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0350382   -0.1946720    0.2647484
21-24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0701845   -0.1508961    0.2912652
21-24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0876423   -0.2965606    0.1212759
21-24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0858704   -0.2376857    0.0659450
21-24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0596901   -0.2203761    0.1009959
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0358134   -0.1471221    0.2187488
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1854220   -0.0291758    0.4000197
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0712102   -0.1388604    0.2812809
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0654818   -0.2523362    0.1213726
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0315690   -0.1217100    0.0585721
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0466711   -0.0414756    0.1348178
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0100797   -0.0710953    0.0509358
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0017598   -0.0636821    0.0601625
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0232752   -0.0914223    0.0448719
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0392883   -0.0272147    0.1057912
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0752695   -0.1871710    0.0366320
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0867740   -0.1998810    0.0263330


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.5032459    0.0343998    0.9720920
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0947378    0.0523449    0.1371308
0-3 months     COHORTS          INDIA                          >=50 cm              NA                 0.1565458    0.1303370    0.1827546
0-3 months     EE               PAKISTAN                       >=50 cm              NA                 0.5024899    0.0771951    0.9277846
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1787229    0.0717995    0.2856462
0-3 months     IRC              INDIA                          >=50 cm              NA                 0.5755279    0.4338737    0.7171821
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.2248736    0.1856628    0.2640843
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2512243    0.1403331    0.3621155
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                 0.2540586    0.2072283    0.3008889
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2315921    0.0858178    0.3773664
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.1397064   -0.0336046    0.3130173
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                 0.1856892   -0.0316781    0.4030564
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.1815600   -0.1369229    0.5000428
0-3 months     MAL-ED           PERU                           >=50 cm              NA                 0.1016218   -0.0227544    0.2259981
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1346106   -0.0453592    0.3145803
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1976281    0.0487408    0.3465153
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2719085    0.1761353    0.3676817
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1770268    0.1098586    0.2441949
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0399188    0.0261266    0.0537110
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0494536   -0.0176295    0.1165367
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.7169317    0.1194245    1.3144390
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.5387751    0.4810927    0.5964574
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4738963    0.4432019    0.5045908
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.4199222    0.0948407    0.7450037
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0593455    0.0255975    0.0930935
3-6 months     COHORTS          INDIA                          >=50 cm              NA                 0.0533366    0.0293195    0.0773538
3-6 months     EE               PAKISTAN                       >=50 cm              NA                -0.0008708   -0.1972599    0.1955183
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1087516    0.0258190    0.1916842
3-6 months     IRC              INDIA                          >=50 cm              NA                 0.0470179   -0.0436982    0.1377341
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.0994340    0.0505654    0.1483026
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0213559   -0.0251125    0.0678244
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                 0.0331163   -0.0119212    0.0781538
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0315983   -0.0849232    0.1481197
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.0053233   -0.1399330    0.1505797
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0489807   -0.2735678    0.3715291
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.0653992   -0.2106168    0.3414151
3-6 months     MAL-ED           PERU                           >=50 cm              NA                 0.1435504    0.0162258    0.2708749
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0761215   -0.1060143    0.2582573
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0429698   -0.0986383    0.1845779
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0040097   -0.0844634    0.0924829
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0323986   -0.0342767    0.0990739
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0092441    0.0048238    0.0136644
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0794240    0.0192968    0.1395511
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.2246701   -0.1295376    0.5788778
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0293021   -0.0372901    0.0958942
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0172124   -0.0124655    0.0468904
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0191831   -0.3513740    0.3897402
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0158787   -0.0155153    0.0472726
6-9 months     COHORTS          INDIA                          >=50 cm              NA                -0.0147735   -0.0364716    0.0069245
6-9 months     EE               PAKISTAN                       >=50 cm              NA                 0.0112994   -0.1323078    0.1549065
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0339510   -0.0498367    0.1177387
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.0347226   -0.0292447    0.0986898
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0018580   -0.0366451    0.0403610
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0705054   -0.1315497   -0.0094611
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0303982   -0.0510346    0.1118310
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0507260   -0.1971525    0.0957005
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0979924   -0.1300021    0.3259868
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.1246017   -0.3533558    0.1041524
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.0182907   -0.0939996    0.1305811
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1298644    0.0192598    0.2404690
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0211041   -0.1484910    0.1906993
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0073561   -0.0678963    0.0826084
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0052345   -0.0562726    0.0458036
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0085787    0.0037008    0.0134566
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0364285   -0.0800361    0.0071791
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0074858   -0.0833188    0.0683472
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0006967   -0.0295589    0.0281656
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.2493978   -0.9200792    0.4212836
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.0084334   -0.0197911    0.0366578
9-12 months    COHORTS          INDIA                          >=50 cm              NA                -0.0657286   -0.0893712   -0.0420859
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.0086209   -0.1094139    0.1266557
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0047166   -0.0590238    0.0684571
9-12 months    IRC              INDIA                          >=50 cm              NA                -0.0156362   -0.0694421    0.0381698
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0094420   -0.0445301    0.0256461
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                 0.0181958   -0.0305082    0.0668997
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0847118   -0.0015368    0.1709603
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.0240704   -0.1499571    0.1980979
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                -0.0935814   -0.2658272    0.0786645
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                 0.0105931   -0.0961449    0.1173311
9-12 months    MAL-ED           PERU                           >=50 cm              NA                 0.0705270   -0.0471321    0.1881860
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0427034   -0.0910490    0.1764557
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0204306   -0.1779689    0.1371076
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0150350   -0.0772765    0.0472064
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0148229   -0.0297307    0.0593766
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                 0.0052216   -0.0003947    0.0108379
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0212359   -0.0719111    0.0294394
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0073462   -0.2096860    0.2243784
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0460205   -0.1442762    0.0522353
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0003578   -0.0257392    0.0264548
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0855734   -0.3874633    0.2163165
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0196288   -0.0547134    0.0154557
12-15 months   EE               PAKISTAN                       >=50 cm              NA                 0.0526161   -0.0821913    0.1874235
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0493713   -0.1144148    0.0156723
12-15 months   IRC              INDIA                          >=50 cm              NA                 0.0094379   -0.0467723    0.0656482
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0019722   -0.0266928    0.0306373
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0063316   -0.0265989    0.0392621
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0600085   -0.1324144    0.0123975
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0162442   -0.1581587    0.1256702
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1013115   -0.1714939    0.3741168
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0418639   -0.1069370    0.1906648
12-15 months   MAL-ED           PERU                           >=50 cm              NA                 0.0309236   -0.0634353    0.1252826
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0548382   -0.1165677    0.2262441
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0364311   -0.1054137    0.1782759
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0112158   -0.0591019    0.0815335
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0401636   -0.0024746    0.0828017
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0207129   -0.0162737    0.0576996
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0018785   -0.0416953    0.0454522
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0232463   -0.1745940    0.1281013
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0101129   -0.0322308    0.0524566
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1228555   -0.0892405    0.3349515
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0052161   -0.0340127    0.0444448
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0846948   -0.0320904    0.2014801
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0218124   -0.0713964    0.1150211
15-18 months   IRC              INDIA                          >=50 cm              NA                 0.0396907   -0.0121712    0.0915527
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0408672   -0.0701711   -0.0115632
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0280580   -0.0635342    0.0074182
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0255916   -0.0399836    0.0911667
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0243800   -0.1197505    0.0709904
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0836411   -0.2899817    0.1226995
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0126134   -0.2098307    0.1846038
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.0546782   -0.0249860    0.1343425
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0325022   -0.1571144    0.0921100
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0236873   -0.1698564    0.1224818
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0059306   -0.0732774    0.0614161
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0152200   -0.0554985    0.0250586
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0133351   -0.2967219    0.2700517
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0063625   -0.0476830    0.0349579
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0068444   -0.0441067    0.0577954
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0288764   -0.0798164    0.0220635
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3086481    0.1516829    0.4656133
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0018786   -0.0355802    0.0393375
18-21 months   EE               PAKISTAN                       >=50 cm              NA                -0.0076769   -0.1101981    0.0948442
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0165467   -0.1271759    0.0940824
18-21 months   IRC              INDIA                          >=50 cm              NA                 0.0592340    0.0049872    0.1134808
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0005604   -0.0400774    0.0389567
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0204945   -0.0972877    0.0562987
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0240117   -0.0705746    0.1185980
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0931275   -0.2643996    0.0781446
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0825555   -0.2694625    0.1043516
18-21 months   MAL-ED           PERU                           >=50 cm              NA                 0.0191582   -0.0749388    0.1132551
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0720498   -0.2051851    0.0610855
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1414922   -0.2916846    0.0087002
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0344329   -0.1030357    0.0341699
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0242908   -0.0142810    0.0628625
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0063083   -0.0490396    0.0364230
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0614673   -0.0023460    0.1252806
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0832848   -0.2895924    0.1230229
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0060465   -0.0383948    0.0263018
21-24 months   EE               PAKISTAN                       >=50 cm              NA                -0.0991089   -0.2058668    0.0076490
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0470445   -0.0651946    0.1592836
21-24 months   IRC              INDIA                          >=50 cm              NA                 0.0168434   -0.0376002    0.0712870
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0210942   -0.0165246    0.0587131
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0385697   -0.1091943    0.0320549
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0570257   -0.1512654    0.0372140
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0416026   -0.1402592    0.2234644
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0060974   -0.1369727    0.1491676
21-24 months   MAL-ED           PERU                           >=50 cm              NA                -0.0581195   -0.1723639    0.0561250
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0834525   -0.0242910    0.1911960
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0020183   -0.1259697    0.1219330
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0057587   -0.0542379    0.0657553
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0045513   -0.0454027    0.0363000
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0072997   -0.0396922    0.0542916
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0654277   -0.1504570    0.0196015

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
![](/tmp/a7a6444f-bf71-4897-87ca-9e0aea069bfd/52374109-aad7-4d75-afbc-6b65e7697252/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a7a6444f-bf71-4897-87ca-9e0aea069bfd/52374109-aad7-4d75-afbc-6b65e7697252/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a7a6444f-bf71-4897-87ca-9e0aea069bfd/52374109-aad7-4d75-afbc-6b65e7697252/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.4703246   -0.7611651   -0.1794842
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1276435   -0.0347173    0.2900044
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1522876   -0.2953908   -0.0091844
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                -0.6157327   -0.6447909   -0.5866745
0-3 months     COHORTS          GUATEMALA                      <48 cm               NA                -0.3702688   -0.4242049   -0.3163327
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           NA                -0.5017526   -0.5368682   -0.4666371
0-3 months     COHORTS          INDIA                          >=50 cm              NA                -0.2044666   -0.2182477   -0.1906856
0-3 months     COHORTS          INDIA                          <48 cm               NA                 0.0406270    0.0298847    0.0513692
0-3 months     COHORTS          INDIA                          [48-50) cm           NA                -0.0936138   -0.1038346   -0.0833931
0-3 months     EE               PAKISTAN                       >=50 cm              NA                -0.5874687   -0.8363753   -0.3385621
0-3 months     EE               PAKISTAN                       <48 cm               NA                -0.1572288   -0.2203392   -0.0941183
0-3 months     EE               PAKISTAN                       [48-50) cm           NA                -0.4039766   -0.4617818   -0.3461714
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.1989015   -0.2538188   -0.1439841
0-3 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.0502702    0.0149048    0.0856355
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0822798   -0.1208119   -0.0437478
0-3 months     IRC              INDIA                          >=50 cm              NA                -0.5839653   -0.6687179   -0.4992126
0-3 months     IRC              INDIA                          <48 cm               NA                 0.0770612   -0.0263101    0.1804325
0-3 months     IRC              INDIA                          [48-50) cm           NA                -0.1770293   -0.2466020   -0.1074566
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.1447147   -0.1650076   -0.1244218
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               NA                 0.1215937    0.1160158    0.1271716
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.0228328   -0.0318249   -0.0138407
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0918831   -0.1485851   -0.0351812
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1165397    0.0990677    0.1340118
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.0003862   -0.0293460    0.0285735
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                -0.4491499   -0.4779185   -0.4203814
0-3 months     Keneba           GAMBIA                         <48 cm               NA                 0.0654091    0.0004227    0.1303955
0-3 months     Keneba           GAMBIA                         [48-50) cm           NA                -0.2343162   -0.2651228   -0.2035097
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.3006220   -0.3797444   -0.2214997
0-3 months     MAL-ED           BANGLADESH                     <48 cm               NA                -0.0007773   -0.0506158    0.0490613
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.2143666   -0.2617820   -0.1669511
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.0019858   -0.1014735    0.1054451
0-3 months     MAL-ED           BRAZIL                         <48 cm               NA                 0.2754359    0.1173156    0.4335563
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 0.0349752   -0.1542190    0.2241694
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                -0.3253719   -0.4158433   -0.2349006
0-3 months     MAL-ED           INDIA                          <48 cm               NA                -0.0581773   -0.1874750    0.0711204
0-3 months     MAL-ED           INDIA                          [48-50) cm           NA                -0.3476902   -0.4454241   -0.2499563
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.2721301   -0.4298421   -0.1144181
0-3 months     MAL-ED           NEPAL                          <48 cm               NA                 0.0052574   -0.1105562    0.1210709
0-3 months     MAL-ED           NEPAL                          [48-50) cm           NA                -0.1332710   -0.3403514    0.0738094
0-3 months     MAL-ED           PERU                           >=50 cm              NA                -0.3761037   -0.4489458   -0.3032615
0-3 months     MAL-ED           PERU                           <48 cm               NA                -0.1807279   -0.2288203   -0.1326355
0-3 months     MAL-ED           PERU                           [48-50) cm           NA                -0.3021923   -0.3544133   -0.2499712
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.4021062   -0.5151057   -0.2891067
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                -0.1558447   -0.2848777   -0.0268117
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.2676678   -0.3700524   -0.1652832
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.3159286   -0.3984719   -0.2333852
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0152846   -0.0750058    0.1055751
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1980973   -0.2638191   -0.1323756
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.4250254   -0.4759830   -0.3740678
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               NA                -0.1097046   -0.1515211   -0.0678881
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.2525434   -0.2912742   -0.2138126
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.3621112   -0.3957436   -0.3284788
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.1326448   -0.1604050   -0.1048845
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.2549975   -0.2798035   -0.2301915
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                -0.4559251   -0.5125111   -0.3993390
0-3 months     PROBIT           BELARUS                        <48 cm               NA                 0.0235836   -0.0190723    0.0662395
0-3 months     PROBIT           BELARUS                        [48-50) cm           NA                -0.1843616   -0.2457717   -0.1229516
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.2681082   -0.3046589   -0.2315574
0-3 months     PROVIDE          BANGLADESH                     <48 cm               NA                -0.1236654   -0.1508210   -0.0965098
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.1982462   -0.2248965   -0.1715959
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                -0.7919298   -1.1254546   -0.4584050
0-3 months     ResPak           PAKISTAN                       <48 cm               NA                -0.1113599   -0.4344243    0.2117045
0-3 months     ResPak           PAKISTAN                       [48-50) cm           NA                -0.3898188   -0.7991363    0.0194986
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.4840313   -0.5250707   -0.4429919
0-3 months     SAS-CompFeed     INDIA                          <48 cm               NA                -0.0037167   -0.0307144    0.0232810
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.1673147   -0.1957865   -0.1388428
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.4182991   -0.4358105   -0.4007878
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1106474    0.0937360    0.1275587
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.1337373   -0.1477708   -0.1197038
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.3099917   -0.4520350   -0.1679484
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0097344   -0.1428314    0.1233627
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0724472   -0.2214107    0.0765162
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                -0.1471616   -0.1691525   -0.1251708
3-6 months     COHORTS          GUATEMALA                      <48 cm               NA                -0.0423447   -0.0810801   -0.0036093
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0769250   -0.1052224   -0.0486276
3-6 months     COHORTS          INDIA                          >=50 cm              NA                -0.1115635   -0.1241468   -0.0989802
3-6 months     COHORTS          INDIA                          <48 cm               NA                -0.0188735   -0.0282435   -0.0095034
3-6 months     COHORTS          INDIA                          [48-50) cm           NA                -0.0644252   -0.0739211   -0.0549293
3-6 months     EE               PAKISTAN                       >=50 cm              NA                 0.0551084   -0.0435900    0.1538069
3-6 months     EE               PAKISTAN                       <48 cm               NA                 0.0893393    0.0502579    0.1284206
3-6 months     EE               PAKISTAN                       [48-50) cm           NA                 0.0127471   -0.0609445    0.0864386
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.2418025   -0.2841254   -0.1994795
3-6 months     GMS-Nepal        NEPAL                          <48 cm               NA                -0.1131283   -0.1389744   -0.0872823
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.1974729   -0.2287308   -0.1662149
3-6 months     IRC              INDIA                          >=50 cm              NA                -0.0764089   -0.1333551   -0.0194626
3-6 months     IRC              INDIA                          <48 cm               NA                -0.0259674   -0.0836279    0.0316931
3-6 months     IRC              INDIA                          [48-50) cm           NA                -0.0281927   -0.0755786    0.0191932
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0914261   -0.1115201   -0.0713322
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               NA                 0.0109531    0.0047158    0.0171903
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                -0.0377689   -0.0481419   -0.0273959
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0468774   -0.0720428   -0.0217121
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.0209009   -0.0006666    0.0424684
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.0242044   -0.0480238   -0.0003851
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0650984   -0.0950006   -0.0351961
3-6 months     Keneba           GAMBIA                         <48 cm               NA                 0.0218287   -0.0231185    0.0667760
3-6 months     Keneba           GAMBIA                         [48-50) cm           NA                -0.0322066   -0.0712241    0.0068109
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0523391   -0.1101699    0.0054917
3-6 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.0105478   -0.0277933    0.0488888
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0327374   -0.0718290    0.0063541
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0470838   -0.1514386    0.0572711
3-6 months     MAL-ED           BRAZIL                         <48 cm               NA                -0.0001111   -0.1175760    0.1173538
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           NA                -0.0447575   -0.1700422    0.0805271
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                -0.0649493   -0.2308455    0.1009469
3-6 months     MAL-ED           INDIA                          <48 cm               NA                 0.0196847   -0.1010767    0.1404461
3-6 months     MAL-ED           INDIA                          [48-50) cm           NA                -0.0813062   -0.1463460   -0.0162665
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0457218   -0.2262854    0.1348419
3-6 months     MAL-ED           NEPAL                          <48 cm               NA                 0.0946415    0.0090903    0.1801926
3-6 months     MAL-ED           NEPAL                          [48-50) cm           NA                -0.0602236   -0.1708302    0.0503830
3-6 months     MAL-ED           PERU                           >=50 cm              NA                -0.0963759   -0.1638464   -0.0289054
3-6 months     MAL-ED           PERU                           <48 cm               NA                 0.0334393   -0.0248192    0.0916978
3-6 months     MAL-ED           PERU                           [48-50) cm           NA                 0.0091428   -0.0474406    0.0657263
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0887947   -0.2124723    0.0348829
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.0186973   -0.1076914    0.1450860
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.0001071   -0.0876665    0.0878806
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1265011   -0.2058023   -0.0471999
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0542130   -0.1396557    0.0312296
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0586970   -0.1298015    0.0124075
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0778372   -0.1242890   -0.0313854
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0383350   -0.0779232    0.0012531
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0522849   -0.0858127   -0.0187571
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0152342   -0.0496649    0.0191965
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.0801600    0.0508208    0.1094991
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.0005271   -0.0237573    0.0248115
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0432340    0.0235457    0.0629224
3-6 months     PROBIT           BELARUS                        <48 cm               NA                 0.2020207    0.1731460    0.2308955
3-6 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.1078751    0.0823178    0.1334324
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0896767   -0.1213311   -0.0580224
3-6 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.0087583   -0.0194409    0.0369576
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.0215923   -0.0449657    0.0017810
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                -0.0363448   -0.2471585    0.1744690
3-6 months     ResPak           PAKISTAN                       <48 cm               NA                 0.0222826   -0.2451979    0.2897631
3-6 months     ResPak           PAKISTAN                       [48-50) cm           NA                 0.2147007   -0.0584337    0.4878351
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0593397   -0.0895325   -0.0291469
3-6 months     SAS-CompFeed     INDIA                          <48 cm               NA                -0.0044911   -0.0378156    0.0288333
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.0083317   -0.0446236    0.0279602
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0231940   -0.0395938   -0.0067941
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0330985    0.0155513    0.0506456
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0084847   -0.0232043    0.0062348
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0122123   -0.2179494    0.1935249
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0337357   -0.1376115    0.0701402
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0256233   -0.1357347    0.0844881
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                -0.1342456   -0.1530101   -0.1154811
6-9 months     COHORTS          GUATEMALA                      <48 cm               NA                -0.0747641   -0.1070052   -0.0425229
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1264769   -0.1531822   -0.0997715
6-9 months     COHORTS          INDIA                          >=50 cm              NA                -0.1070423   -0.1179273   -0.0961573
6-9 months     COHORTS          INDIA                          <48 cm               NA                -0.0833893   -0.0918846   -0.0748940
6-9 months     COHORTS          INDIA                          [48-50) cm           NA                -0.1059945   -0.1146981   -0.0972908
6-9 months     EE               PAKISTAN                       >=50 cm              NA                -0.1223534   -0.1932324   -0.0514744
6-9 months     EE               PAKISTAN                       <48 cm               NA                -0.0991683   -0.1323268   -0.0660098
6-9 months     EE               PAKISTAN                       [48-50) cm           NA                -0.0834464   -0.1295757   -0.0373171
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0707847   -0.1120275   -0.0295419
6-9 months     GMS-Nepal        NEPAL                          <48 cm               NA                -0.0263271   -0.0547604    0.0021062
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0566297   -0.0778940   -0.0353653
6-9 months     IRC              INDIA                          >=50 cm              NA                -0.0367499   -0.0715712   -0.0019285
6-9 months     IRC              INDIA                          <48 cm               NA                 0.0312682   -0.0145872    0.0771236
6-9 months     IRC              INDIA                          [48-50) cm           NA                -0.0306323   -0.0688596    0.0075949
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0342046   -0.0538915   -0.0145177
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               NA                -0.0103720   -0.0243540    0.0036100
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.0455037   -0.0619577   -0.0290497
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                 0.0191201   -0.0218125    0.0600528
6-9 months     Keneba           GAMBIA                         <48 cm               NA                -0.0648946   -0.1106755   -0.0191136
6-9 months     Keneba           GAMBIA                         [48-50) cm           NA                -0.0239494   -0.0703314    0.0224326
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.1053971   -0.1467199   -0.0640744
6-9 months     MAL-ED           BANGLADESH                     <48 cm               NA                -0.0644886   -0.0953816   -0.0335957
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0642688   -0.0939011   -0.0346365
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0263891   -0.1255252    0.0727471
6-9 months     MAL-ED           BRAZIL                         <48 cm               NA                -0.1161463   -0.2057990   -0.0264935
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           NA                -0.1057380   -0.2212573    0.0097814
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                -0.1388221   -0.2278379   -0.0498064
6-9 months     MAL-ED           INDIA                          <48 cm               NA                -0.0868318   -0.2213258    0.0476621
6-9 months     MAL-ED           INDIA                          [48-50) cm           NA                -0.0312451   -0.1182528    0.0557627
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0143206   -0.1466152    0.1179739
6-9 months     MAL-ED           NEPAL                          <48 cm               NA                -0.0721172   -0.1569221    0.0126877
6-9 months     MAL-ED           NEPAL                          [48-50) cm           NA                -0.0890289   -0.1482843   -0.0297735
6-9 months     MAL-ED           PERU                           >=50 cm              NA                -0.0511614   -0.1078086    0.0054858
6-9 months     MAL-ED           PERU                           <48 cm               NA                -0.0254265   -0.0694098    0.0185568
6-9 months     MAL-ED           PERU                           [48-50) cm           NA                -0.0350074   -0.0833153    0.0133005
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0610751   -0.1174864   -0.0046639
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2128703    0.1162868    0.3094538
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0276577   -0.0846331    0.0293176
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0991138   -0.1778789   -0.0203487
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0034317   -0.1374436    0.1443069
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1020271   -0.1664577   -0.0375965
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0807492   -0.1184175   -0.0430809
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0564269   -0.0871166   -0.0257372
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0533609   -0.0813332   -0.0253885
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0425377   -0.0674454   -0.0176299
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.0153277   -0.0369615    0.0063060
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0398451   -0.0599130   -0.0197773
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0478248    0.0327424    0.0629072
6-9 months     PROBIT           BELARUS                        <48 cm               NA                 0.1047061    0.0619911    0.1474210
6-9 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.1024950    0.0729268    0.1320632
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0554583   -0.0768585   -0.0340581
6-9 months     PROVIDE          BANGLADESH                     <48 cm               NA                -0.0680687   -0.0856037   -0.0505337
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.0575014   -0.0756202   -0.0393826
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0963822   -0.1387381   -0.0540264
6-9 months     SAS-CompFeed     INDIA                          <48 cm               NA                -0.0751611   -0.0873899   -0.0629322
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.0920419   -0.1177519   -0.0663319
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0360787   -0.0515170   -0.0206404
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0203498   -0.0360109   -0.0046886
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0366310   -0.0500031   -0.0232589
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0120602   -0.3594420    0.3353215
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.1145429   -0.2078478   -0.0212380
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1058656   -0.1996147   -0.0121165
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                -0.1041149   -0.1202691   -0.0879607
9-12 months    COHORTS          GUATEMALA                      <48 cm               NA                -0.0813754   -0.1098645   -0.0528863
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0736626   -0.0965487   -0.0507764
9-12 months    COHORTS          INDIA                          >=50 cm              NA                -0.0770503   -0.0877357   -0.0663649
9-12 months    COHORTS          INDIA                          <48 cm               NA                -0.0891561   -0.0976282   -0.0806841
9-12 months    COHORTS          INDIA                          [48-50) cm           NA                -0.0877244   -0.0963102   -0.0791386
9-12 months    EE               PAKISTAN                       >=50 cm              NA                -0.1249336   -0.1825293   -0.0673379
9-12 months    EE               PAKISTAN                       <48 cm               NA                -0.0980032   -0.1198765   -0.0761299
9-12 months    EE               PAKISTAN                       [48-50) cm           NA                -0.1174143   -0.1597931   -0.0750355
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0959886   -0.1242333   -0.0677440
9-12 months    GMS-Nepal        NEPAL                          <48 cm               NA                -0.0755790   -0.0973408   -0.0538172
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0779200   -0.0988911   -0.0569489
9-12 months    IRC              INDIA                          >=50 cm              NA                -0.0392071   -0.0690044   -0.0094098
9-12 months    IRC              INDIA                          <48 cm               NA                -0.0276228   -0.0624464    0.0072008
9-12 months    IRC              INDIA                          [48-50) cm           NA                -0.0384097   -0.0667352   -0.0100842
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0554099   -0.0757789   -0.0350408
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               NA                -0.0478303   -0.0581828   -0.0374777
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.0533070   -0.0695091   -0.0371050
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                -0.1257585   -0.1604681   -0.0910490
9-12 months    Keneba           GAMBIA                         <48 cm               NA                -0.0729241   -0.1101900   -0.0356582
9-12 months    Keneba           GAMBIA                         [48-50) cm           NA                -0.0946272   -0.1256157   -0.0636386
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.1312233   -0.1725158   -0.0899309
9-12 months    MAL-ED           BANGLADESH                     <48 cm               NA                -0.0611257   -0.0881630   -0.0340884
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0954523   -0.1205355   -0.0703692
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.0323990   -0.0470593    0.1118574
9-12 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.2341700    0.1137564    0.3545835
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 0.0213725   -0.1575859    0.2003309
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                -0.0454700   -0.1197669    0.0288269
9-12 months    MAL-ED           INDIA                          <48 cm               NA                -0.0747340   -0.1387158   -0.0107521
9-12 months    MAL-ED           INDIA                          [48-50) cm           NA                -0.0647863   -0.1093723   -0.0202003
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.1199535   -0.1728029   -0.0671041
9-12 months    MAL-ED           NEPAL                          <48 cm               NA                -0.0697601   -0.1218979   -0.0176223
9-12 months    MAL-ED           NEPAL                          [48-50) cm           NA                -0.1411722   -0.1852919   -0.0970524
9-12 months    MAL-ED           PERU                           >=50 cm              NA                -0.0807138   -0.1395667   -0.0218609
9-12 months    MAL-ED           PERU                           <48 cm               NA                -0.0224506   -0.0598254    0.0149242
9-12 months    MAL-ED           PERU                           [48-50) cm           NA                -0.0340704   -0.0735630    0.0054221
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0870339   -0.1629371   -0.0111307
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                -0.1079142   -0.2025453   -0.0132830
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0553866   -0.1343356    0.0235625
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.1587952   -0.2335528   -0.0840377
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.1455068   -0.2994191    0.0084055
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.1313419   -0.2027340   -0.0599498
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0500774   -0.0789490   -0.0212058
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0382232   -0.0619512   -0.0144952
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0394659   -0.0635353   -0.0153966
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0545834   -0.0755186   -0.0336482
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.0307815   -0.0497178   -0.0118452
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0256132   -0.0429865   -0.0082399
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                 0.0337777    0.0128896    0.0546658
9-12 months    PROBIT           BELARUS                        <48 cm               NA                 0.0683840    0.0482109    0.0885571
9-12 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.0663706    0.0315841    0.1011571
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0718485   -0.0959014   -0.0477957
9-12 months    PROVIDE          BANGLADESH                     <48 cm               NA                -0.0470204   -0.0635883   -0.0304525
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.0724121   -0.0897017   -0.0551225
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0562573    0.0037071    0.1088075
9-12 months    ResPak           PAKISTAN                       <48 cm               NA                 0.0962892   -0.0950597    0.2876381
9-12 months    ResPak           PAKISTAN                       [48-50) cm           NA                 0.0477122   -0.1245773    0.2200017
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0711098   -0.1081711   -0.0340485
9-12 months    SAS-CompFeed     INDIA                          <48 cm               NA                -0.0681943   -0.0844374   -0.0519512
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.1033326   -0.1344429   -0.0722224
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0635486   -0.0762792   -0.0508180
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0426098   -0.0568958   -0.0283238
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0666646   -0.0790490   -0.0542803
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0342263   -0.1844441    0.1159914
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0793501   -0.1441640   -0.0145363
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.1221027   -0.1783372   -0.0658682
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.1005844   -0.1196887   -0.0814802
12-15 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.0724766   -0.1050075   -0.0399457
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.1125121   -0.1384424   -0.0865818
12-15 months   EE               PAKISTAN                       >=50 cm              NA                -0.0393396   -0.1040241    0.0253448
12-15 months   EE               PAKISTAN                       <48 cm               NA                 0.0193357    0.0006696    0.0380019
12-15 months   EE               PAKISTAN                       [48-50) cm           NA                -0.0332030   -0.0717135    0.0053075
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0634830   -0.0906001   -0.0363660
12-15 months   GMS-Nepal        NEPAL                          <48 cm               NA                -0.0678905   -0.0840512   -0.0517299
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0678016   -0.0851224   -0.0504809
12-15 months   IRC              INDIA                          >=50 cm              NA                -0.0592936   -0.0906278   -0.0279594
12-15 months   IRC              INDIA                          <48 cm               NA                -0.0367466   -0.0704011   -0.0030920
12-15 months   IRC              INDIA                          [48-50) cm           NA                -0.0453183   -0.0680534   -0.0225831
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0551946   -0.0677548   -0.0426344
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -0.0410012   -0.0498312   -0.0321712
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.0535950   -0.0680502   -0.0391399
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0556794   -0.0763726   -0.0349862
12-15 months   Keneba           GAMBIA                         <48 cm               NA                -0.0198927   -0.0531224    0.0133371
12-15 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.0520050   -0.0711547   -0.0328554
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0521102   -0.0821464   -0.0220741
12-15 months   MAL-ED           BANGLADESH                     <48 cm               NA                -0.0615452   -0.0884624   -0.0346280
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0676957   -0.0951917   -0.0401996
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0574784   -0.1170739    0.0021172
12-15 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.0058721   -0.1097943    0.1215385
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           NA                -0.0631549   -0.1799065    0.0535966
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                -0.1331540   -0.2572189   -0.0090891
12-15 months   MAL-ED           INDIA                          <48 cm               NA                -0.0684495   -0.1242361   -0.0126629
12-15 months   MAL-ED           INDIA                          [48-50) cm           NA                -0.0562242   -0.1033751   -0.0090732
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0913121   -0.1673708   -0.0152534
12-15 months   MAL-ED           NEPAL                          <48 cm               NA                -0.0996959   -0.1234486   -0.0759433
12-15 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.0154929   -0.0547908    0.0857767
12-15 months   MAL-ED           PERU                           >=50 cm              NA                -0.0850380   -0.1275114   -0.0425647
12-15 months   MAL-ED           PERU                           <48 cm               NA                -0.0472968   -0.0845578   -0.0100358
12-15 months   MAL-ED           PERU                           [48-50) cm           NA                -0.0687372   -0.0955128   -0.0419615
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0934209   -0.1943310    0.0074892
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                -0.0472941   -0.1111568    0.0165686
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0739969   -0.1258742   -0.0221196
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0972767   -0.1645958   -0.0299577
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0748003   -0.1479738   -0.0016268
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0697621   -0.1329743   -0.0065499
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.1389194   -0.1690319   -0.1088068
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -0.1054135   -0.1414339   -0.0693931
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.1350052   -0.1570719   -0.1129384
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0697230   -0.0881126   -0.0513334
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.0275096   -0.0439670   -0.0110523
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0305883   -0.0451344   -0.0160422
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0004911   -0.1368683    0.1358861
12-15 months   PROBIT           BELARUS                        <48 cm               NA                 0.2257246    0.0872214    0.3642278
12-15 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.0690856   -0.0075590    0.1457301
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0537886   -0.0728627   -0.0347145
12-15 months   PROVIDE          BANGLADESH                     <48 cm               NA                -0.0457399   -0.0631637   -0.0283161
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.0255981   -0.0413636   -0.0098326
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0991536   -0.1504530   -0.0478543
12-15 months   SAS-CompFeed     INDIA                          <48 cm               NA                -0.0683961   -0.0948430   -0.0419492
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.1112406   -0.1321165   -0.0903646
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0755563   -0.0940679   -0.0570447
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0590302   -0.0786932   -0.0393672
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0571384   -0.0750002   -0.0392767
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1784067   -0.2759714   -0.0808419
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0851109   -0.1490731   -0.0211486
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0989839   -0.1546894   -0.0432784
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0640083   -0.0828980   -0.0451185
15-18 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.0471033   -0.0856680   -0.0085385
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0417869   -0.0660967   -0.0174771
15-18 months   EE               PAKISTAN                       >=50 cm              NA                -0.0743443   -0.1243771   -0.0243114
15-18 months   EE               PAKISTAN                       <48 cm               NA                -0.0181184   -0.0333836   -0.0028532
15-18 months   EE               PAKISTAN                       [48-50) cm           NA                -0.0319437   -0.0553684   -0.0085190
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0943608   -0.1304909   -0.0582307
15-18 months   GMS-Nepal        NEPAL                          <48 cm               NA                -0.0559131   -0.0746614   -0.0371648
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                -0.0791866   -0.0954695   -0.0629038
15-18 months   IRC              INDIA                          >=50 cm              NA                -0.0554236   -0.0789777   -0.0318695
15-18 months   IRC              INDIA                          <48 cm               NA                -0.0169008   -0.0519697    0.0181681
15-18 months   IRC              INDIA                          [48-50) cm           NA                -0.0295149   -0.0507979   -0.0082318
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0301884   -0.0429871   -0.0173898
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               NA                -0.0326069   -0.0416254   -0.0235883
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                -0.0427000   -0.0563961   -0.0290038
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0260953   -0.0468530   -0.0053377
15-18 months   Keneba           GAMBIA                         <48 cm               NA                -0.0364902   -0.0657668   -0.0072137
15-18 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.0284706   -0.0474995   -0.0094416
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0716025   -0.0989067   -0.0442983
15-18 months   MAL-ED           BANGLADESH                     <48 cm               NA                -0.0424929   -0.0668513   -0.0181344
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0502317   -0.0726532   -0.0278103
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0303088   -0.0859121    0.0252945
15-18 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.0140754   -0.0456916    0.0738425
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           NA                -0.0602148   -0.1110954   -0.0093342
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0325660   -0.1230412    0.0579092
15-18 months   MAL-ED           INDIA                          <48 cm               NA                -0.0434292   -0.0824832   -0.0043752
15-18 months   MAL-ED           INDIA                          [48-50) cm           NA                -0.0453430   -0.0852287   -0.0054572
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0516812   -0.1471918    0.0438294
15-18 months   MAL-ED           NEPAL                          <48 cm               NA                -0.0194057   -0.0840196    0.0452083
15-18 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.0948689   -0.1650048   -0.0247331
15-18 months   MAL-ED           PERU                           >=50 cm              NA                -0.0525575   -0.0844550   -0.0206601
15-18 months   MAL-ED           PERU                           <48 cm               NA                -0.0154014   -0.0464605    0.0156577
15-18 months   MAL-ED           PERU                           [48-50) cm           NA                -0.0278542   -0.0587801    0.0030717
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0008666   -0.0588128    0.0605460
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                -0.0268863   -0.0925565    0.0387838
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0169285   -0.0716900    0.0378329
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0613584   -0.1289764    0.0062595
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0694456   -0.1285450   -0.0103463
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0551667   -0.0981436   -0.0121898
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0667154   -0.0931648   -0.0402660
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0427994   -0.0684570   -0.0171417
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0637988   -0.0879391   -0.0396586
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0228783   -0.0394523   -0.0063042
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.0050895   -0.0192518    0.0090728
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0247990   -0.0379794   -0.0116187
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0070879   -0.1467067    0.1325309
15-18 months   PROBIT           BELARUS                        <48 cm               NA                -0.2532701   -0.4642422   -0.0422980
15-18 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.0017318   -1.0956331    1.0990966
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0479810   -0.0660993   -0.0298627
15-18 months   PROVIDE          BANGLADESH                     <48 cm               NA                -0.0299871   -0.0459512   -0.0140230
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.0370095   -0.0504887   -0.0235303
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0334026   -0.0605025   -0.0063028
15-18 months   SAS-CompFeed     INDIA                          <48 cm               NA                -0.0081085   -0.0244324    0.0082154
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                -0.0052893   -0.0222339    0.0116552
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0609869   -0.0818999   -0.0400740
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0611843   -0.0786655   -0.0437032
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0660392   -0.0856166   -0.0464617
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.1530480   -0.2181710   -0.0879249
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                -0.0597789   -0.1327028    0.0131450
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0223101   -0.1046562    0.0600360
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0268982   -0.0433899   -0.0104064
18-21 months   COHORTS          GUATEMALA                      <48 cm               NA                -0.0148618   -0.0474461    0.0177224
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0067359   -0.0295795    0.0161078
18-21 months   EE               PAKISTAN                       >=50 cm              NA                -0.0387552   -0.0803174    0.0028070
18-21 months   EE               PAKISTAN                       <48 cm               NA                -0.0228389   -0.0379989   -0.0076789
18-21 months   EE               PAKISTAN                       [48-50) cm           NA                -0.0298911   -0.0505221   -0.0092602
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0235521   -0.0244394    0.0715435
18-21 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.0135070   -0.0010115    0.0280254
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.0175436    0.0028714    0.0322159
18-21 months   IRC              INDIA                          >=50 cm              NA                -0.0621004   -0.0861028   -0.0380980
18-21 months   IRC              INDIA                          <48 cm               NA                -0.0307602   -0.0531718   -0.0083486
18-21 months   IRC              INDIA                          [48-50) cm           NA                -0.0224223   -0.0464336    0.0015890
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0199766   -0.0403644    0.0004111
18-21 months   Keneba           GAMBIA                         <48 cm               NA                -0.0181077   -0.0500776    0.0138622
18-21 months   Keneba           GAMBIA                         [48-50) cm           NA                -0.0060608   -0.0282967    0.0161750
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0256573   -0.0575476    0.0062331
18-21 months   MAL-ED           BANGLADESH                     <48 cm               NA                -0.0226337   -0.0441010   -0.0011665
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                -0.0118512   -0.0309691    0.0072667
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0430603   -0.0916221    0.0055015
18-21 months   MAL-ED           BRAZIL                         <48 cm               NA                -0.0300780   -0.0611738    0.0010177
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.0003813   -0.0614446    0.0622073
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0250926   -0.0303548    0.0805400
18-21 months   MAL-ED           INDIA                          <48 cm               NA                 0.0150384   -0.0180075    0.0480843
18-21 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.0092634   -0.0283645    0.0468912
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0197562   -0.0560855    0.0955979
18-21 months   MAL-ED           NEPAL                          <48 cm               NA                 0.0099738   -0.0312562    0.0512037
18-21 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.0388787   -0.1169673    0.0392100
18-21 months   MAL-ED           PERU                           >=50 cm              NA                -0.0235629   -0.0621995    0.0150737
18-21 months   MAL-ED           PERU                           <48 cm               NA                -0.0134886   -0.0404039    0.0134268
18-21 months   MAL-ED           PERU                           [48-50) cm           NA                -0.0035096   -0.0295846    0.0225653
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0068917   -0.0740865    0.0603031
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                -0.0469526   -0.0937016   -0.0002036
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                -0.0378985   -0.0900557    0.0142588
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0152186   -0.0510924    0.0815296
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                -0.0579741   -0.1172580    0.0013098
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0472982   -0.0950419    0.0004455
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0393777   -0.0661816   -0.0125737
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               NA                -0.0338566   -0.0540693   -0.0136439
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                -0.0366608   -0.0572828   -0.0160388
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0491185   -0.0641133   -0.0341236
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                -0.0081544   -0.0213169    0.0050082
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                -0.0350724   -0.0483311   -0.0218138
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0187955   -0.0362119   -0.0013790
18-21 months   PROVIDE          BANGLADESH                     <48 cm               NA                -0.0016805   -0.0150855    0.0117245
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                -0.0141367   -0.0271860   -0.0010874
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0992907   -0.1251087   -0.0734726
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                -0.0696035   -0.0898966   -0.0493103
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                -0.0537271   -0.0731391   -0.0343150
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0330810   -0.0467325    0.1128946
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.0411175   -0.0117427    0.0939777
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                -0.0395637   -0.1082434    0.0291159
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0056193   -0.0212567    0.0100182
21-24 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.0032529   -0.0176612    0.0241671
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                -0.0066063   -0.0260645    0.0128518
21-24 months   EE               PAKISTAN                       >=50 cm              NA                -0.0054154   -0.0473485    0.0365177
21-24 months   EE               PAKISTAN                       <48 cm               NA                -0.0068989   -0.0276938    0.0138961
21-24 months   EE               PAKISTAN                       [48-50) cm           NA                 0.0081495   -0.0226860    0.0389849
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0251206   -0.0172423    0.0674834
21-24 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.0492978    0.0290885    0.0695070
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.0568239    0.0295235    0.0841243
21-24 months   IRC              INDIA                          >=50 cm              NA                -0.0184351   -0.0402042    0.0033339
21-24 months   IRC              INDIA                          <48 cm               NA                 0.0005531   -0.0285832    0.0296893
21-24 months   IRC              INDIA                          [48-50) cm           NA                -0.0091663   -0.0346624    0.0163298
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0023804   -0.0160014    0.0207622
21-24 months   Keneba           GAMBIA                         <48 cm               NA                 0.0224846   -0.0000647    0.0450338
21-24 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.0312566    0.0054077    0.0571055
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0251692   -0.0014148    0.0517532
21-24 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.0314464    0.0104293    0.0524634
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.0151193   -0.0060132    0.0362518
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0444946   -0.0107493    0.0997384
21-24 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.0140874   -0.0368909    0.0650657
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.0547726   -0.0010282    0.1105735
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0113504   -0.0663568    0.0890575
21-24 months   MAL-ED           INDIA                          <48 cm               NA                 0.0364153   -0.0084114    0.0812419
21-24 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.0292718   -0.0218704    0.0804139
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0354196   -0.0969377    0.0260985
21-24 months   MAL-ED           NEPAL                          <48 cm               NA                 0.0149242   -0.0318549    0.0617034
21-24 months   MAL-ED           NEPAL                          [48-50) cm           NA                -0.0402892   -0.0851263    0.0045480
21-24 months   MAL-ED           PERU                           >=50 cm              NA                 0.0662862    0.0187796    0.1137929
21-24 months   MAL-ED           PERU                           <48 cm               NA                 0.0483338    0.0250901    0.0715775
21-24 months   MAL-ED           PERU                           [48-50) cm           NA                 0.0464570    0.0160292    0.0768848
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0127176   -0.0210685    0.0465037
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.0288207   -0.0234111    0.0810525
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.0589621   -0.0094495    0.1273737
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0039763   -0.0526731    0.0447205
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.0568104    0.0080671    0.1055538
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                -0.0097307   -0.0506199    0.0311586
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0297722    0.0074496    0.0520947
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.0380709    0.0176034    0.0585384
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.0475588    0.0278559    0.0672617
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0605800    0.0453524    0.0758076
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.0607750    0.0473950    0.0741549
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.0566342    0.0424188    0.0708496
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0384259    0.0194452    0.0574066
21-24 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.0448694    0.0302785    0.0594602
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.0529594    0.0398097    0.0661091
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0372706    0.0060435    0.0684977
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.0203535    0.0006029    0.0401041
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.0107050   -0.0084372    0.0298472


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0804539   -0.1873181    0.0264103
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0616410   -0.0685327   -0.0547493
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2540269   -0.3077185   -0.2003353
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0741170    0.0690724    0.0791616
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2854099   -0.3086816   -0.2621381
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1288107   -0.1645003   -0.0931211
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1057573    0.0215866    0.1899280
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.2124690   -0.2948399   -0.1300980
0-3 months     MAL-ED           NEPAL                          NA                   NA                -0.1128463   -0.2116291   -0.0140635
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2714043   -0.3044939   -0.2383148
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.2749398   -0.3421388   -0.2077408
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1725233   -0.2225329   -0.1225137
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2365683   -0.2634819   -0.2096547
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ResPak           PAKISTAN                       NA                   NA                -0.4236224   -0.6503899   -0.1968549
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402392   -0.1504678   -0.1300106
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0717545   -0.1612872    0.0177782
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.1056524   -0.1218342   -0.0894706
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0555413   -0.0614176   -0.0496651
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0667346    0.0339823    0.0994870
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0449501   -0.0761141   -0.0137861
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0054428   -0.0108732   -0.0000124
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0084552   -0.0224890    0.0055787
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0388978   -0.0598050   -0.0179906
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0152268   -0.0404775    0.0100239
3-6 months     MAL-ED           BRAZIL                         NA                   NA                -0.0119744   -0.0757352    0.0517864
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0337772   -0.1019162    0.0343619
3-6 months     MAL-ED           NEPAL                          NA                   NA                 0.0097583   -0.0683446    0.0878612
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0100159   -0.0252133    0.0452451
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0269887   -0.0891098    0.0351323
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0785678   -0.1223800   -0.0347556
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0529028   -0.0754199   -0.0303858
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ResPak           PAKISTAN                       NA                   NA                 0.0553545   -0.0937023    0.2044112
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0135420   -0.0341135    0.0070296
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009896   -0.0102485    0.0082694
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0342505   -0.1021710    0.0336700
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1196774   -0.1333805   -0.1059743
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0963562   -0.1015702   -0.0911423
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0972754   -0.1227055   -0.0718453
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0435425   -0.0610734   -0.0260116
6-9 months     IRC              INDIA                          NA                   NA                -0.0169816   -0.0391805    0.0052173
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0278677   -0.0372571   -0.0184782
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0070150   -0.0343815    0.0203516
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0692794   -0.0881554   -0.0504034
6-9 months     MAL-ED           BRAZIL                         NA                   NA                -0.0092429   -0.0679017    0.0494159
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0766397   -0.1470005   -0.0062788
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0588868   -0.1166939   -0.0010797
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0350859   -0.0632862   -0.0068856
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0036117   -0.0456412    0.0384177
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693360   -0.1247146   -0.0139573
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0625218   -0.0807337   -0.0443099
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0829998   -0.0911701   -0.0748294
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0317458   -0.0401487   -0.0233429
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0908657   -0.1637926   -0.0179388
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0900882   -0.1017213   -0.0784552
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0864969   -0.0916917   -0.0813021
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1052709   -0.1231844   -0.0873575
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0799887   -0.0936094   -0.0663679
9-12 months    IRC              INDIA                          NA                   NA                -0.0365561   -0.0541057   -0.0190066
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0519832   -0.0596831   -0.0442833
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1070377   -0.1286360   -0.0854395
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0892262   -0.1065065   -0.0719459
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0189538   -0.0515868    0.0894944
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0658824   -0.1017749   -0.0299899
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.1044306   -0.1366405   -0.0722206
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0385690   -0.0632221   -0.0139159
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0774964   -0.1211816   -0.0338112
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1682491   -0.2192291   -0.1172692
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0423937   -0.0570582   -0.0277292
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ResPak           PAKISTAN                       NA                   NA                 0.0648466   -0.0174111    0.1471043
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0800096   -0.0926342   -0.0673849
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0593111   -0.0668013   -0.0518210
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0913693   -0.1342016   -0.0485370
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0975213   -0.1108911   -0.0841514
12-15 months   EE               PAKISTAN                       NA                   NA                 0.0022047   -0.0141239    0.0185332
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0665123   -0.0773867   -0.0556379
12-15 months   IRC              INDIA                          NA                   NA                -0.0481389   -0.0649672   -0.0313106
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0481591   -0.0546791   -0.0416392
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0506219   -0.0641194   -0.0371243
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0591303   -0.0754662   -0.0427943
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0438435   -0.0956997    0.0080128
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0751883   -0.1137557   -0.0366209
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0661039   -0.1033273   -0.0288806
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0643960   -0.0845824   -0.0442097
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0740521   -0.1157250   -0.0323792
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0785467   -0.1158631   -0.0412303
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1257162   -0.1430906   -0.1083418
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROBIT           BELARUS                        NA                   NA                 0.0074509   -0.1179050    0.1328067
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0860747   -0.1006947   -0.0714548
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0619845   -0.0726429   -0.0513262
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0968548   -0.1360889   -0.0576208
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0568458   -0.0706558   -0.0430357
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0290642   -0.0418582   -0.0162702
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   IRC              INDIA                          NA                   NA                -0.0371212   -0.0523570   -0.0218854
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0343451   -0.0409104   -0.0277798
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0286539   -0.0423775   -0.0149304
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0464934   -0.0609701   -0.0320168
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0300661   -0.0648220    0.0046898
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0424940   -0.0699871   -0.0150009
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0496536   -0.0956074   -0.0036999
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0284835   -0.0467715   -0.0101956
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0215686   -0.0550502    0.0119130
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0685937   -0.0987634   -0.0384240
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0565325   -0.0714057   -0.0416592
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROBIT           BELARUS                        NA                   NA                -0.0116894   -0.1658506    0.1424718
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0101074   -0.0203356    0.0001209
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0627734   -0.0738240   -0.0517229
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0640776   -0.1095171   -0.0186380
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0175680   -0.0299848   -0.0051512
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0266330   -0.0382245   -0.0150416
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0388639   -0.0526645   -0.0250634
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0155450   -0.0296316   -0.0014584
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0167771   -0.0296227   -0.0039315
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0274959   -0.0586170    0.0036252
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0143640   -0.0083881    0.0371161
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0001688   -0.0372942    0.0369565
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0129787   -0.0296379    0.0036804
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0275794   -0.0597867    0.0046279
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0389901   -0.0707574   -0.0072229
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0363472   -0.0490347   -0.0236597
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0694981   -0.0813876   -0.0576087
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0090679   -0.0289298    0.0470656
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0031708   -0.0134686    0.0071271
21-24 months   EE               PAKISTAN                       NA                   NA                -0.0029021   -0.0191776    0.0133733
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0477538    0.0321932    0.0633143
21-24 months   IRC              INDIA                          NA                   NA                -0.0115982   -0.0256273    0.0024308
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0159718    0.0031459    0.0287977
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0260692    0.0129571    0.0391812
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0316802    0.0002791    0.0630814
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0298116   -0.0012564    0.0608797
21-24 months   MAL-ED           NEPAL                          NA                   NA                -0.0154313   -0.0470551    0.0161925
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0512791    0.0340658    0.0684925
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0381049    0.0074832    0.0687266
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0165584   -0.0106055    0.0437223
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0395499    0.0276352    0.0514645
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0186078    0.0061089    0.0311066


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.5979682    0.2665561    0.9293802
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.3180370   -0.0084892    0.6445632
0-3 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.2454639    0.1844368    0.3064909
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.1139800    0.0684408    0.1595193
0-3 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.2450936    0.2276657    0.2625214
0-3 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.1108528    0.0937553    0.1279503
0-3 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.4302399    0.1732521    0.6872278
0-3 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.1834921   -0.0723639    0.4393480
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.2491716    0.1838250    0.3145183
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.1166216    0.0494707    0.1837726
0-3 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <48 cm               >=50 cm            0.6610265    0.5281163    0.7939366
0-3 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.4069360    0.2977907    0.5160813
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.2663084    0.2456273    0.2869895
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.1218819    0.1004970    0.1432668
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.2084229    0.1490875    0.2677583
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0914969    0.0279412    0.1550526
0-3 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.5145590    0.4435094    0.5856087
0-3 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.2148337    0.1727711    0.2568963
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.2998448    0.2065822    0.3931073
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0862555   -0.0061253    0.1786362
0-3 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.2734501    0.0824598    0.4644405
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0329894   -0.1827579    0.2487367
0-3 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.2671947    0.1093880    0.4250014
0-3 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0223183   -0.1554985    0.1108620
0-3 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <48 cm               >=50 cm            0.2773875    0.0817198    0.4730552
0-3 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1388591   -0.1214395    0.3991577
0-3 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.1953758    0.1079978    0.2827537
0-3 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0739114   -0.0158480    0.1636708
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.2462615    0.0753934    0.4171296
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1344384   -0.0180401    0.2869170
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.3312132    0.2092413    0.4531851
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.1178312    0.0116187    0.2240438
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.3153208    0.2493457    0.3812959
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.1724820    0.1085164    0.2364475
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.2294665    0.1858469    0.2730860
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.1071137    0.0652922    0.1489352
0-3 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.4795087    0.4159637    0.5430537
0-3 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.2715635    0.2139179    0.3292090
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.1444428    0.0988869    0.1899986
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0698620    0.0245925    0.1151314
0-3 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.6805698    0.2162322    1.1449074
0-3 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.4021109   -0.1258849    0.9301067
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.4803146    0.4485632    0.5120660
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.3167166    0.2579494    0.3754839
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.5289465    0.5046163    0.5532767
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.2845619    0.2621570    0.3069667
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.3002573    0.1054880    0.4950266
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.2375445    0.0314295    0.4436594
3-6 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.1048169    0.0602842    0.1493496
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0702366    0.0344380    0.1060353
3-6 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.0926900    0.0770347    0.1083454
3-6 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0471383    0.0314015    0.0628751
3-6 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.0342308   -0.0717242    0.1401858
3-6 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0423614   -0.1655473    0.0808245
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.1286741    0.0790749    0.1782734
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0443296   -0.0083167    0.0969759
3-6 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <48 cm               >=50 cm            0.0504415   -0.0306508    0.1315337
3-6 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.0482162   -0.0259237    0.1223561
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.1023792    0.0815267    0.1232317
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.0536572    0.0314463    0.0758682
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0677783    0.0352165    0.1003401
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0226730   -0.0113422    0.0566882
3-6 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.0869271    0.0330453    0.1408089
3-6 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0328917   -0.0161927    0.0819762
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0628869   -0.0065143    0.1322881
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0196017   -0.0504354    0.0896388
3-6 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0469727   -0.1119203    0.2058656
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0023262   -0.1615665    0.1662189
3-6 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.0846340   -0.1205607    0.2898287
3-6 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0163569   -0.1945470    0.1618332
3-6 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <48 cm               >=50 cm            0.1403632   -0.0594423    0.3401687
3-6 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0145019   -0.2262495    0.1972457
3-6 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.1298152    0.0414595    0.2181709
3-6 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.1055187    0.0167188    0.1943187
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1074920   -0.0706816    0.2856656
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0889018   -0.0642812    0.2420847
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0722881   -0.0447299    0.1893060
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0678041   -0.0391154    0.1747236
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0395021   -0.0214030    0.1004073
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0255523   -0.0316905    0.0827951
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0953941    0.0504794    0.1403089
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0157613   -0.0262368    0.0577594
3-6 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.1587867    0.1286708    0.1889026
3-6 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0646411    0.0420271    0.0872551
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0984351    0.0560010    0.1408691
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0680844    0.0287082    0.1074606
3-6 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0586273   -0.2819431    0.3991978
3-6 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.2510455   -0.0939832    0.5960741
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0548486    0.0040493    0.1056478
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0510080    0.0069891    0.0950270
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0562924    0.0322883    0.0802966
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0147092   -0.0073295    0.0367479
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0215234   -0.2543334    0.2112866
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0134111   -0.2499071    0.2230849
6-9 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0594816    0.0221290    0.0968341
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0077688   -0.0248775    0.0404150
6-9 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <48 cm               >=50 cm            0.0236530    0.0098455    0.0374604
6-9 months     COHORTS          INDIA                          [48-50) cm           >=50 cm            0.0010478   -0.0128936    0.0149892
6-9 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.0231851   -0.0550871    0.1014573
6-9 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0389070   -0.0457348    0.1235488
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0444576   -0.0056735    0.0945887
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0141550   -0.0319312    0.0602412
6-9 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <48 cm               >=50 cm            0.0680181    0.0105693    0.1254668
6-9 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.0061175   -0.0453230    0.0575581
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0238326    0.0000122    0.0476530
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0112991   -0.0373980    0.0147998
6-9 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0840147   -0.1454967   -0.0225328
6-9 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0430696   -0.1050607    0.0189216
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0409085   -0.0110137    0.0928307
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0411283   -0.0097178    0.0919744
6-9 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0897572   -0.2316986    0.0521842
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0793489   -0.2363081    0.0776103
6-9 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.0519903   -0.1092934    0.2132739
6-9 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.1075771   -0.0168985    0.2320526
6-9 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0577966   -0.2149389    0.0993457
6-9 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0747082   -0.2196670    0.0702505
6-9 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.0257348   -0.0460674    0.0975371
6-9 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0161540   -0.0585057    0.0908138
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.2739454    0.1623151    0.3855758
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0334174   -0.0466777    0.1135125
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.1025455   -0.0604084    0.2654993
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0029133   -0.1062535    0.1004269
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0243223   -0.0241965    0.0728412
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0273883   -0.0194212    0.0741978
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0272100   -0.0056977    0.0601176
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0026925   -0.0292191    0.0346041
6-9 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.0568813    0.0137886    0.0999740
6-9 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0546702    0.0253736    0.0839668
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0126104   -0.0402976    0.0150768
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0020431   -0.0300243    0.0259380
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0212212   -0.0318268    0.0742691
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0043403   -0.0380555    0.0467361
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0157289   -0.0062278    0.0376857
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0005523   -0.0209796    0.0198749
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.1024827   -0.4593094    0.2543441
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0938054   -0.4518527    0.2642419
9-12 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0227395   -0.0102546    0.0557336
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0304523    0.0023785    0.0585261
9-12 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.0121058   -0.0257204    0.0015087
9-12 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0106741   -0.0243615    0.0030134
9-12 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       <48 cm               >=50 cm            0.0269304   -0.0342730    0.0881338
9-12 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0075193   -0.0641472    0.0791857
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0204096   -0.0158165    0.0566357
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0180686   -0.0169900    0.0531273
9-12 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <48 cm               >=50 cm            0.0115843   -0.0342133    0.0573819
9-12 months    IRC              INDIA                          [48-50) cm           >=50 cm            0.0007974   -0.0404766    0.0420713
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0075796   -0.0155240    0.0306832
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0021028   -0.0238798    0.0280854
9-12 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <48 cm               >=50 cm            0.0528344    0.0014824    0.1041864
9-12 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0311314   -0.0157192    0.0779819
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0700976    0.0207140    0.1194812
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0357710   -0.0126669    0.0842089
9-12 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.2017710    0.0504523    0.3530896
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0110265   -0.2079558    0.1859029
9-12 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0292640   -0.1273135    0.0687856
9-12 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0193162   -0.1059646    0.0673321
9-12 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0501934   -0.0240454    0.1244323
9-12 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0212186   -0.0900635    0.0476262
9-12 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <48 cm               >=50 cm            0.0582632   -0.0114547    0.1279811
9-12 months    MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0466434   -0.0242907    0.1175774
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0208803   -0.1420332    0.1002726
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0316473   -0.0792963    0.1425909
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0132884   -0.1591250    0.1857019
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0274533   -0.0842919    0.1391985
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0118542   -0.0253857    0.0490941
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0106115   -0.0267865    0.0480094
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0238019   -0.0044440    0.0520478
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0289702    0.0017348    0.0562057
9-12 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <48 cm               >=50 cm            0.0346063    0.0083460    0.0608666
9-12 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0325929    0.0028148    0.0623710
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0248282   -0.0041428    0.0537992
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0005635   -0.0299635    0.0288364
9-12 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       <48 cm               >=50 cm            0.0400319   -0.1584018    0.2384656
9-12 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm           -0.0085451   -0.1886706    0.1715804
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0029155   -0.0474421    0.0532731
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0322228   -0.0861310    0.0216853
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0209388    0.0018037    0.0400739
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0031160   -0.0208949    0.0146629
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0451238   -0.2070209    0.1167733
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0878764   -0.2499628    0.0742100
12-15 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0281079   -0.0095777    0.0657934
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0119276   -0.0444016    0.0205463
12-15 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0586754   -0.0083127    0.1256635
12-15 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0061366   -0.0688194    0.0810926
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0044075   -0.0359842    0.0271691
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0043186   -0.0365525    0.0279153
12-15 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <48 cm               >=50 cm            0.0225470   -0.0230082    0.0681023
12-15 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0139753   -0.0245780    0.0525286
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm            0.0141934   -0.0008562    0.0292430
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0015996   -0.0174953    0.0206944
12-15 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0357867   -0.0035350    0.0751084
12-15 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0036743   -0.0245127    0.0318614
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0094350   -0.0499067    0.0310367
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0155854   -0.0565820    0.0254112
12-15 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0633505   -0.0647034    0.1914043
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0056766   -0.1328609    0.1215078
12-15 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.0647045   -0.0713258    0.2007348
12-15 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0769298   -0.0557929    0.2096525
12-15 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0083838   -0.0880651    0.0712975
12-15 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.1068051    0.0032448    0.2103653
12-15 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0377412   -0.0184495    0.0939320
12-15 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0163009   -0.0337415    0.0663432
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0461268   -0.0737626    0.1660162
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0194241   -0.0944018    0.1332499
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0224765   -0.0782079    0.1231608
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0275146   -0.0652172    0.1202465
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0335059   -0.0134209    0.0804327
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0039142   -0.0340212    0.0418497
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0422134    0.0175546    0.0668722
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0391347    0.0157131    0.0625563
12-15 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <48 cm               >=50 cm            0.2262157    0.0496655    0.4027660
12-15 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0695766   -0.0619830    0.2011362
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0080487   -0.0176854    0.0337828
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0281905    0.0035726    0.0528084
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0307575   -0.0384670    0.0999821
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0120869   -0.0708834    0.0467096
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0165261   -0.0105437    0.0435959
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0184178   -0.0073747    0.0442104
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0932958   -0.0237359    0.2103275
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0794228   -0.0326496    0.1914951
15-18 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0169050   -0.0261778    0.0599878
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0222214   -0.0087207    0.0531635
15-18 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0562259    0.0038942    0.1085575
15-18 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0424006   -0.0128870    0.0976881
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0384477   -0.0017000    0.0785955
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0151742   -0.0241293    0.0544777
15-18 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <48 cm               >=50 cm            0.0385228   -0.0035261    0.0805717
15-18 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0259087   -0.0056368    0.0574541
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0024184   -0.0176817    0.0128449
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0125115   -0.0310612    0.0060381
15-18 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0103949   -0.0462708    0.0254810
15-18 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0023752   -0.0303090    0.0255585
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0291096   -0.0074298    0.0656491
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0213708   -0.0141320    0.0568735
15-18 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0443842   -0.0372481    0.1260165
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0299060   -0.1052756    0.0454635
15-18 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0108632   -0.1094075    0.0876810
15-18 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0127770   -0.1116538    0.0860999
15-18 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0322755   -0.0830381    0.1475892
15-18 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0431877   -0.1616838    0.0753083
15-18 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0371561   -0.0074800    0.0817923
15-18 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0247033   -0.0197626    0.0691693
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0277529   -0.1164341    0.0609283
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0177952   -0.0988622    0.0632718
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0080872   -0.0995717    0.0833973
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0061917   -0.0740779    0.0864613
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0239160   -0.0129354    0.0607675
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0029166   -0.0329085    0.0387416
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0177888   -0.0040047    0.0395823
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0019208   -0.0230932    0.0192517
15-18 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.2461822   -0.4983432    0.0059787
15-18 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0088196   -1.1034664    1.1211056
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0179939   -0.0062494    0.0422373
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0109715   -0.0115118    0.0334549
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0252941   -0.0094268    0.0600150
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0281133    0.0027790    0.0534476
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0001974   -0.0274401    0.0270453
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0050522   -0.0337547    0.0236503
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0932690   -0.0053962    0.1919342
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.1307378    0.0242920    0.2371837
18-21 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0120363   -0.0245100    0.0485826
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0201623   -0.0081098    0.0484343
18-21 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0159163   -0.0282524    0.0600851
18-21 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0088641   -0.0374753    0.0552035
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0100451   -0.0608173    0.0407271
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0060085   -0.0563136    0.0442967
18-21 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <48 cm               >=50 cm            0.0313402   -0.0013729    0.0640532
18-21 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0396781    0.0056605    0.0736957
18-21 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0018689   -0.0363404    0.0400783
18-21 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0139158   -0.0166611    0.0444927
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0030236   -0.0355560    0.0416031
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0138061   -0.0234114    0.0510236
18-21 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0129823   -0.0446822    0.0706468
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0434416   -0.0351758    0.1220591
18-21 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0100543   -0.0746023    0.0544938
18-21 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0158292   -0.0828387    0.0511803
18-21 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0097824   -0.0961067    0.0765418
18-21 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0586349   -0.1674917    0.0502219
18-21 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0100743   -0.0371332    0.0572818
18-21 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0200532   -0.0266738    0.0667803
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0400610   -0.1225438    0.0424218
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0310068   -0.1166347    0.0546211
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0731927   -0.1627847    0.0163993
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0625168   -0.1445875    0.0195539
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0055211   -0.0279655    0.0390076
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0027169   -0.0310802    0.0365140
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0409641    0.0209998    0.0609284
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0140460   -0.0059922    0.0340842
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0171150   -0.0049376    0.0391676
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0046588   -0.0172340    0.0265517
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0296872   -0.0032925    0.0626669
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0455636    0.0131335    0.0779937
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0080364   -0.0880857    0.1041586
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0726448   -0.1781482    0.0328587
21-24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0088722   -0.0172497    0.0349942
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0009871   -0.0260184    0.0240443
21-24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0014835   -0.0482896    0.0453226
21-24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0135649   -0.0384852    0.0656149
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0241772   -0.0227819    0.0711363
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0317033   -0.0187328    0.0821395
21-24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <48 cm               >=50 cm            0.0189882   -0.0175331    0.0555095
21-24 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0092688   -0.0238742    0.0424119
21-24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0201042   -0.0090407    0.0492490
21-24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0288762   -0.0029958    0.0607483
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0062772   -0.0270476    0.0396019
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0100499   -0.0440986    0.0239989
21-24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0304072   -0.1073053    0.0464909
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0102781   -0.0683048    0.0888610
21-24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.0250649   -0.0646449    0.1147746
21-24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0179214   -0.0751050    0.1109479
21-24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0503439   -0.0269398    0.1276275
21-24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0048695   -0.0809934    0.0712543
21-24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0179524   -0.0708812    0.0349763
21-24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0198293   -0.0764068    0.0367482
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0161030   -0.0460175    0.0782236
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0462444   -0.0308434    0.1233323
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0607867   -0.0073833    0.1289568
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0057544   -0.0695503    0.0580415
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0082987   -0.0220259    0.0386233
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0177866   -0.0119838    0.0475571
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0001950   -0.0200662    0.0204561
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0039458   -0.0247252    0.0168335
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0064435   -0.0175345    0.0304215
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0145335   -0.0085549    0.0376219
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0169171   -0.0540717    0.0202375
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0265655   -0.0632776    0.0101466


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.3898707    0.1177078   0.6620336
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0785406    0.0574447   0.0996364
0-3 months     COHORTS          INDIA                          >=50 cm              NA                 0.1428257    0.1302923   0.1553591
0-3 months     EE               PAKISTAN                       >=50 cm              NA                 0.3334418    0.1009884   0.5658951
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1671334    0.1161333   0.2181336
0-3 months     IRC              INDIA                          >=50 cm              NA                 0.3281382    0.2566227   0.3996536
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.2188317    0.1992727   0.2383907
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1591975    0.1047086   0.2136864
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                 0.1637401    0.1401547   0.1873254
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1718113    0.0979453   0.2456773
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.1037715    0.0140398   0.1935033
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                 0.1129030    0.0040364   0.2217695
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.1592838    0.0182465   0.3003211
0-3 months     MAL-ED           PERU                           >=50 cm              NA                 0.1046993    0.0401855   0.1692131
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1271665    0.0356616   0.2186714
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1434053    0.0678584   0.2189522
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1884571    0.1421640   0.2347501
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1308505    0.0999363   0.1617647
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0276486    0.0193841   0.0359132
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0800680    0.0485261   0.1116098
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.3683074    0.0747335   0.6618813
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.3566747    0.3260694   0.3872800
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2780599    0.2628080   0.2933119
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2382372    0.0872893   0.3891851
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0415092    0.0253171   0.0577013
3-6 months     COHORTS          INDIA                          >=50 cm              NA                 0.0560222    0.0447949   0.0672495
3-6 months     EE               PAKISTAN                       >=50 cm              NA                 0.0116262   -0.0833048   0.1065572
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0804047    0.0413502   0.1194593
3-6 months     IRC              INDIA                          >=50 cm              NA                 0.0314588   -0.0121676   0.0750851
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.0859833    0.0665781   0.1053885
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0384223    0.0164929   0.0603516
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                 0.0262006    0.0054254   0.0469757
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0371123   -0.0159056   0.0901302
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.0351093   -0.0384052   0.1086238
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0311721   -0.1151985   0.1775428
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.0554801   -0.0810474   0.1920076
3-6 months     MAL-ED           PERU                           >=50 cm              NA                 0.1063918    0.0448209   0.1679626
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0618060   -0.0305362   0.1541481
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0479333   -0.0225800   0.1184466
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0249343   -0.0158370   0.0657056
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0420082    0.0113956   0.0726208
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0066452    0.0044479   0.0088424
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0627142    0.0348221   0.0906064
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.0916992   -0.0756768   0.2590753
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0457977    0.0095823   0.0820132
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0222044    0.0081253   0.0362835
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0220382   -0.2146793   0.1706028
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0145682    0.0003090   0.0288274
6-9 months     COHORTS          INDIA                          >=50 cm              NA                 0.0106860    0.0009340   0.0204381
6-9 months     EE               PAKISTAN                       >=50 cm              NA                 0.0250780   -0.0435211   0.0936771
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0272422   -0.0103513   0.0648357
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.0197682   -0.0090666   0.0486031
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0063369   -0.0103174   0.0229912
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0261351   -0.0527953   0.0005250
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0361177   -0.0023107   0.0745462
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.0171462   -0.0490364   0.0833287
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0621825   -0.0367227   0.1610876
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0445662   -0.1449312   0.0557989
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.0160755   -0.0356751   0.0678261
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0574634    0.0073069   0.1076199
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0297778   -0.0495870   0.1091427
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0182274   -0.0150756   0.0515304
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0111739   -0.0110290   0.0333768
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0049326    0.0027998   0.0070655
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0059681   -0.0250117   0.0130755
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0133825   -0.0269723   0.0537372
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0043329   -0.0087790   0.0174448
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0788055   -0.3869355   0.2293246
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.0140266    0.0022893   0.0257640
9-12 months    COHORTS          INDIA                          >=50 cm              NA                -0.0094466   -0.0189786   0.0000854
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.0196627   -0.0357440   0.0750693
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0160000   -0.0114089   0.0434089
9-12 months    IRC              INDIA                          >=50 cm              NA                 0.0026510   -0.0214390   0.0267409
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0034267   -0.0142276   0.0210810
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                 0.0187208   -0.0017753   0.0392169
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0419972    0.0048825   0.0791118
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                -0.0134452   -0.0856961   0.0588058
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                -0.0204124   -0.0902428   0.0494181
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                 0.0155230   -0.0304306   0.0614766
9-12 months    MAL-ED           PERU                           >=50 cm              NA                 0.0421448   -0.0089449   0.0932345
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0095375   -0.0515483   0.0706233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0094539   -0.0870857   0.0681778
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0076837   -0.0180607   0.0334281
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0202839    0.0012647   0.0393031
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                 0.0029675    0.0005558   0.0053791
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0088015   -0.0114871   0.0290902
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0085893   -0.0775724   0.0947510
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0088998   -0.0513727   0.0335732
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0042375   -0.0069378   0.0154128
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0571430   -0.1934325   0.0791465
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0030632   -0.0106758   0.0168022
12-15 months   EE               PAKISTAN                       >=50 cm              NA                 0.0415443   -0.0187105   0.1017991
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0030293   -0.0282406   0.0221821
12-15 months   IRC              INDIA                          >=50 cm              NA                 0.0111547   -0.0123307   0.0346401
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0070354   -0.0035246   0.0175955
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0050575   -0.0076597   0.0177747
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0070200   -0.0360861   0.0220460
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0136349   -0.0387454   0.0660152
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0579657   -0.0492365   0.1651679
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0252082   -0.0348796   0.0852960
12-15 months   MAL-ED           PERU                           >=50 cm              NA                 0.0206420   -0.0173360   0.0586200
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0193688   -0.0552809   0.0940186
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0187300   -0.0406554   0.0781154
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0132032   -0.0152783   0.0416847
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0313917    0.0148772   0.0479062
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0079420   -0.0053721   0.0212560
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0128779   -0.0038480   0.0296038
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0130789   -0.0411825   0.0673404
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0135717   -0.0035007   0.0306442
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0815518   -0.0109896   0.1740932
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0071625   -0.0079417   0.0222667
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0452801   -0.0009140   0.0914741
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0254032   -0.0060336   0.0568400
15-18 months   IRC              INDIA                          >=50 cm              NA                 0.0183024   -0.0007874   0.0373922
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0041567   -0.0148688   0.0065554
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0025586   -0.0152075   0.0100903
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0251090   -0.0010075   0.0512256
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0002427   -0.0345132   0.0349986
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0099280   -0.0900712   0.0702152
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0020276   -0.0729412   0.0769964
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.0240740   -0.0063041   0.0544521
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0224352   -0.0699529   0.0250826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0072352   -0.0629133   0.0484429
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0101829   -0.0141472   0.0345130
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0059709   -0.0085996   0.0205414
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0046015   -0.1031337   0.0939306
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0103373   -0.0053688   0.0260434
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0232953   -0.0021553   0.0487458
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0017865   -0.0206335   0.0170605
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0889704    0.0147196   0.1632212
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0093301   -0.0037779   0.0224382
18-21 months   EE               PAKISTAN                       >=50 cm              NA                 0.0121222   -0.0271723   0.0514167
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0079594   -0.0490945   0.0331756
18-21 months   IRC              INDIA                          >=50 cm              NA                 0.0232365    0.0046560   0.0418169
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0044317   -0.0092385   0.0181018
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0088802   -0.0195869   0.0373472
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0155644   -0.0164675   0.0475963
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0107286   -0.0621689   0.0407117
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0199250   -0.0798465   0.0399964
18-21 months   MAL-ED           PERU                           >=50 cm              NA                 0.0105841   -0.0230690   0.0442373
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0206877   -0.0708571   0.0294816
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0542088   -0.1099513   0.0015338
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0030304   -0.0203741   0.0264350
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0211497    0.0075305   0.0347690
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0078556   -0.0072569   0.0229680
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0297925    0.0071663   0.0524187
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0240131   -0.1007906   0.0527645
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0024485   -0.0090728   0.0139699
21-24 months   EE               PAKISTAN                       >=50 cm              NA                 0.0025133   -0.0389818   0.0440083
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0226332   -0.0144481   0.0597145
21-24 months   IRC              INDIA                          >=50 cm              NA                 0.0068369   -0.0118018   0.0254757
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0135914    0.0006382   0.0265447
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0009000   -0.0231162   0.0249161
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0128143   -0.0498908   0.0242621
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0184613   -0.0532720   0.0901945
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0199883   -0.0295660   0.0695426
21-24 months   MAL-ED           PERU                           >=50 cm              NA                -0.0150071   -0.0557644   0.0257501
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0253873   -0.0110699   0.0618445
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0205347   -0.0216675   0.0627369
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.0097777   -0.0105005   0.0300559
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0018179   -0.0154303   0.0117945
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0078083   -0.0086422   0.0242589
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0186628   -0.0464418   0.0091162

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
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm           14      97
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm            48      97
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm        35      97
0-3 months     CMIN             BANGLADESH                     >=50 cm            0      11
0-3 months     CMIN             BANGLADESH                     <48 cm             5      11
0-3 months     CMIN             BANGLADESH                     [48-50) cm         6      11
0-3 months     COHORTS          GUATEMALA                      >=50 cm          349     681
0-3 months     COHORTS          GUATEMALA                      <48 cm           126     681
0-3 months     COHORTS          GUATEMALA                      [48-50) cm       206     681
0-3 months     COHORTS          INDIA                          >=50 cm         1404    6532
0-3 months     COHORTS          INDIA                          <48 cm          2722    6532
0-3 months     COHORTS          INDIA                          [48-50) cm      2406    6532
0-3 months     CONTENT          PERU                           >=50 cm            1       2
0-3 months     CONTENT          PERU                           <48 cm             1       2
0-3 months     CONTENT          PERU                           [48-50) cm         0       2
0-3 months     EE               PAKISTAN                       >=50 cm           19     202
0-3 months     EE               PAKISTAN                       <48 cm           137     202
0-3 months     EE               PAKISTAN                       [48-50) cm        46     202
0-3 months     GMS-Nepal        NEPAL                          >=50 cm           88     509
0-3 months     GMS-Nepal        NEPAL                          <48 cm           270     509
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm       151     509
0-3 months     IRC              INDIA                          >=50 cm          136     376
0-3 months     IRC              INDIA                          <48 cm           106     376
0-3 months     IRC              INDIA                          [48-50) cm       134     376
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm         1099   19114
0-3 months     JiVitA-3         BANGLADESH                     <48 cm         13606   19114
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm      4409   19114
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm          147    1783
0-3 months     JiVitA-4         BANGLADESH                     <48 cm          1161    1783
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm       475    1783
0-3 months     Keneba           GAMBIA                         >=50 cm          612    1249
0-3 months     Keneba           GAMBIA                         <48 cm           235    1249
0-3 months     Keneba           GAMBIA                         [48-50) cm       402    1249
0-3 months     MAL-ED           BANGLADESH                     >=50 cm           37     217
0-3 months     MAL-ED           BANGLADESH                     <48 cm           103     217
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm        77     217
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
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm          125     549
0-3 months     NIH-Birth        BANGLADESH                     <48 cm           216     549
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm       208     549
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm          158     725
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm           280     725
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm       287     725
0-3 months     PROBIT           BELARUS                        >=50 cm        13907   15327
0-3 months     PROBIT           BELARUS                        <48 cm           168   15327
0-3 months     PROBIT           BELARUS                        [48-50) cm      1252   15327
0-3 months     PROVIDE          BANGLADESH                     >=50 cm          154     640
0-3 months     PROVIDE          BANGLADESH                     <48 cm           228     640
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm       258     640
0-3 months     ResPak           PAKISTAN                       >=50 cm           11      32
0-3 months     ResPak           PAKISTAN                       <48 cm            12      32
0-3 months     ResPak           PAKISTAN                       [48-50) cm         9      32
0-3 months     SAS-CompFeed     INDIA                          >=50 cm          191    1262
0-3 months     SAS-CompFeed     INDIA                          <48 cm           666    1262
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm       405    1262
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm         2387    8079
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm          2547    8079
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm      3145    8079
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm           13      91
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm            47      91
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91
3-6 months     CMIN             BANGLADESH                     >=50 cm            0       9
3-6 months     CMIN             BANGLADESH                     <48 cm             3       9
3-6 months     CMIN             BANGLADESH                     [48-50) cm         6       9
3-6 months     COHORTS          GUATEMALA                      >=50 cm          314     625
3-6 months     COHORTS          GUATEMALA                      <48 cm           121     625
3-6 months     COHORTS          GUATEMALA                      [48-50) cm       190     625
3-6 months     COHORTS          INDIA                          >=50 cm         1311    6045
3-6 months     COHORTS          INDIA                          <48 cm          2484    6045
3-6 months     COHORTS          INDIA                          [48-50) cm      2250    6045
3-6 months     CONTENT          PERU                           >=50 cm            1       2
3-6 months     CONTENT          PERU                           <48 cm             1       2
3-6 months     CONTENT          PERU                           [48-50) cm         0       2
3-6 months     EE               PAKISTAN                       >=50 cm           17     171
3-6 months     EE               PAKISTAN                       <48 cm           114     171
3-6 months     EE               PAKISTAN                       [48-50) cm        40     171
3-6 months     GMS-Nepal        NEPAL                          >=50 cm           81     469
3-6 months     GMS-Nepal        NEPAL                          <48 cm           243     469
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm       145     469
3-6 months     IRC              INDIA                          >=50 cm          138     380
3-6 months     IRC              INDIA                          <48 cm           107     380
3-6 months     IRC              INDIA                          [48-50) cm       135     380
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm          621   10703
3-6 months     JiVitA-3         BANGLADESH                     <48 cm          7542   10703
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm      2540   10703
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm          475    1725
3-6 months     JiVitA-4         BANGLADESH                     <48 cm           808    1725
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm       442    1725
3-6 months     Keneba           GAMBIA                         >=50 cm          478     960
3-6 months     Keneba           GAMBIA                         <48 cm           171     960
3-6 months     Keneba           GAMBIA                         [48-50) cm       311     960
3-6 months     MAL-ED           BANGLADESH                     >=50 cm           35     205
3-6 months     MAL-ED           BANGLADESH                     <48 cm            96     205
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm        74     205
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
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm          117     504
3-6 months     NIH-Birth        BANGLADESH                     <48 cm           193     504
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm       194     504
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm          155     702
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm           269     702
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm       278     702
3-6 months     PROBIT           BELARUS                        >=50 cm        12097   13317
3-6 months     PROBIT           BELARUS                        <48 cm           146   13317
3-6 months     PROBIT           BELARUS                        [48-50) cm      1074   13317
3-6 months     PROVIDE          BANGLADESH                     >=50 cm          143     601
3-6 months     PROVIDE          BANGLADESH                     <48 cm           212     601
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm       246     601
3-6 months     ResPak           PAKISTAN                       >=50 cm           10      23
3-6 months     ResPak           PAKISTAN                       <48 cm             6      23
3-6 months     ResPak           PAKISTAN                       [48-50) cm         7      23
3-6 months     SAS-CompFeed     INDIA                          >=50 cm          166    1106
3-6 months     SAS-CompFeed     INDIA                          <48 cm           576    1106
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm       364    1106
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm         1773    6067
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm          1885    6067
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm      2409    6067
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm           12      87
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm            42      87
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm        33      87
6-9 months     CMIN             BANGLADESH                     >=50 cm            0       8
6-9 months     CMIN             BANGLADESH                     <48 cm             4       8
6-9 months     CMIN             BANGLADESH                     [48-50) cm         4       8
6-9 months     COHORTS          GUATEMALA                      >=50 cm          300     600
6-9 months     COHORTS          GUATEMALA                      <48 cm           124     600
6-9 months     COHORTS          GUATEMALA                      [48-50) cm       176     600
6-9 months     COHORTS          INDIA                          >=50 cm         1162    5289
6-9 months     COHORTS          INDIA                          <48 cm          2165    5289
6-9 months     COHORTS          INDIA                          [48-50) cm      1962    5289
6-9 months     CONTENT          PERU                           >=50 cm            1       2
6-9 months     CONTENT          PERU                           <48 cm             1       2
6-9 months     CONTENT          PERU                           [48-50) cm         0       2
6-9 months     EE               PAKISTAN                       >=50 cm           20     191
6-9 months     EE               PAKISTAN                       <48 cm           128     191
6-9 months     EE               PAKISTAN                       [48-50) cm        43     191
6-9 months     GMS-Nepal        NEPAL                          >=50 cm           83     476
6-9 months     GMS-Nepal        NEPAL                          <48 cm           242     476
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm       151     476
6-9 months     IRC              INDIA                          >=50 cm          142     391
6-9 months     IRC              INDIA                          <48 cm           111     391
6-9 months     IRC              INDIA                          [48-50) cm       138     391
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm          697    2692
6-9 months     JiVitA-4         BANGLADESH                     <48 cm          1272    2692
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm       723    2692
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
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm          160     693
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm           260     693
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm       273     693
6-9 months     PROBIT           BELARUS                        >=50 cm        11302   12436
6-9 months     PROBIT           BELARUS                        <48 cm           130   12436
6-9 months     PROBIT           BELARUS                        [48-50) cm      1004   12436
6-9 months     PROVIDE          BANGLADESH                     >=50 cm          136     576
6-9 months     PROVIDE          BANGLADESH                     <48 cm           204     576
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm       236     576
6-9 months     ResPak           PAKISTAN                       >=50 cm            8      20
6-9 months     ResPak           PAKISTAN                       <48 cm             4      20
6-9 months     ResPak           PAKISTAN                       [48-50) cm         8      20
6-9 months     SAS-CompFeed     INDIA                          >=50 cm          171    1127
6-9 months     SAS-CompFeed     INDIA                          <48 cm           592    1127
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm       364    1127
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm         1554    5507
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm          1766    5507
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm      2187    5507
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm           12      90
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm            41      90
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm        37      90
9-12 months    CMIN             BANGLADESH                     >=50 cm            0       7
9-12 months    CMIN             BANGLADESH                     <48 cm             3       7
9-12 months    CMIN             BANGLADESH                     [48-50) cm         4       7
9-12 months    COHORTS          GUATEMALA                      >=50 cm          319     634
9-12 months    COHORTS          GUATEMALA                      <48 cm           130     634
9-12 months    COHORTS          GUATEMALA                      [48-50) cm       185     634
9-12 months    COHORTS          INDIA                          >=50 cm          997    4553
9-12 months    COHORTS          INDIA                          <48 cm          1856    4553
9-12 months    COHORTS          INDIA                          [48-50) cm      1700    4553
9-12 months    CONTENT          PERU                           >=50 cm            1       2
9-12 months    CONTENT          PERU                           <48 cm             1       2
9-12 months    CONTENT          PERU                           [48-50) cm         0       2
9-12 months    EE               PAKISTAN                       >=50 cm           21     213
9-12 months    EE               PAKISTAN                       <48 cm           144     213
9-12 months    EE               PAKISTAN                       [48-50) cm        48     213
9-12 months    GMS-Nepal        NEPAL                          >=50 cm           72     453
9-12 months    GMS-Nepal        NEPAL                          <48 cm           235     453
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm       146     453
9-12 months    IRC              INDIA                          >=50 cm          139     384
9-12 months    IRC              INDIA                          <48 cm           110     384
9-12 months    IRC              INDIA                          [48-50) cm       135     384
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm          766    2977
9-12 months    JiVitA-4         BANGLADESH                     <48 cm          1452    2977
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm       759    2977
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
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           31     108
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            33     108
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     108
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm          107     465
9-12 months    NIH-Birth        BANGLADESH                     <48 cm           182     465
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm       176     465
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm          155     683
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm           263     683
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm       265     683
9-12 months    PROBIT           BELARUS                        >=50 cm        11531   12687
9-12 months    PROBIT           BELARUS                        <48 cm           127   12687
9-12 months    PROBIT           BELARUS                        [48-50) cm      1029   12687
9-12 months    PROVIDE          BANGLADESH                     >=50 cm          138     569
9-12 months    PROVIDE          BANGLADESH                     <48 cm           203     569
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm       228     569
9-12 months    ResPak           PAKISTAN                       >=50 cm            8      21
9-12 months    ResPak           PAKISTAN                       <48 cm             6      21
9-12 months    ResPak           PAKISTAN                       [48-50) cm         7      21
9-12 months    SAS-CompFeed     INDIA                          >=50 cm          161    1130
9-12 months    SAS-CompFeed     INDIA                          <48 cm           598    1130
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm       371    1130
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm         1329    4993
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm          1702    4993
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm      1962    4993
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      93
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm            44      93
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        35      93
12-15 months   CMIN             BANGLADESH                     >=50 cm            0       7
12-15 months   CMIN             BANGLADESH                     <48 cm             2       7
12-15 months   CMIN             BANGLADESH                     [48-50) cm         5       7
12-15 months   COHORTS          GUATEMALA                      >=50 cm          274     559
12-15 months   COHORTS          GUATEMALA                      <48 cm           115     559
12-15 months   COHORTS          GUATEMALA                      [48-50) cm       170     559
12-15 months   CONTENT          PERU                           >=50 cm            1       2
12-15 months   CONTENT          PERU                           <48 cm             1       2
12-15 months   CONTENT          PERU                           [48-50) cm         0       2
12-15 months   EE               PAKISTAN                       >=50 cm           21     195
12-15 months   EE               PAKISTAN                       <48 cm           135     195
12-15 months   EE               PAKISTAN                       [48-50) cm        39     195
12-15 months   GMS-Nepal        NEPAL                          >=50 cm           69     451
12-15 months   GMS-Nepal        NEPAL                          <48 cm           242     451
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm       140     451
12-15 months   IRC              INDIA                          >=50 cm          138     375
12-15 months   IRC              INDIA                          <48 cm           107     375
12-15 months   IRC              INDIA                          [48-50) cm       130     375
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm          790    2994
12-15 months   JiVitA-4         BANGLADESH                     <48 cm          1463    2994
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm       741    2994
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
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           32     110
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     110
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        44     110
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm          105     445
12-15 months   NIH-Birth        BANGLADESH                     <48 cm           172     445
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm       168     445
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm          153     666
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm           253     666
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm       260     666
12-15 months   PROBIT           BELARUS                        >=50 cm          904    1001
12-15 months   PROBIT           BELARUS                        <48 cm            11    1001
12-15 months   PROBIT           BELARUS                        [48-50) cm        86    1001
12-15 months   PROVIDE          BANGLADESH                     >=50 cm          136     537
12-15 months   PROVIDE          BANGLADESH                     <48 cm           189     537
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm       212     537
12-15 months   ResPak           PAKISTAN                       >=50 cm            5      14
12-15 months   ResPak           PAKISTAN                       <48 cm             4      14
12-15 months   ResPak           PAKISTAN                       [48-50) cm         5      14
12-15 months   SAS-CompFeed     INDIA                          >=50 cm          169    1153
12-15 months   SAS-CompFeed     INDIA                          <48 cm           607    1153
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm       377    1153
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm          389    1836
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm           767    1836
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       680    1836
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      91
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm            46      91
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        31      91
15-18 months   CMIN             BANGLADESH                     >=50 cm            0       6
15-18 months   CMIN             BANGLADESH                     <48 cm             3       6
15-18 months   CMIN             BANGLADESH                     [48-50) cm         3       6
15-18 months   COHORTS          GUATEMALA                      >=50 cm          245     512
15-18 months   COHORTS          GUATEMALA                      <48 cm           108     512
15-18 months   COHORTS          GUATEMALA                      [48-50) cm       159     512
15-18 months   CONTENT          PERU                           >=50 cm            1       2
15-18 months   CONTENT          PERU                           <48 cm             1       2
15-18 months   CONTENT          PERU                           [48-50) cm         0       2
15-18 months   EE               PAKISTAN                       >=50 cm           21     179
15-18 months   EE               PAKISTAN                       <48 cm           119     179
15-18 months   EE               PAKISTAN                       [48-50) cm        39     179
15-18 months   GMS-Nepal        NEPAL                          >=50 cm           81     477
15-18 months   GMS-Nepal        NEPAL                          <48 cm           250     477
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm       146     477
15-18 months   IRC              INDIA                          >=50 cm          137     366
15-18 months   IRC              INDIA                          <48 cm           102     366
15-18 months   IRC              INDIA                          [48-50) cm       127     366
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm          785    2962
15-18 months   JiVitA-4         BANGLADESH                     <48 cm          1432    2962
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm       745    2962
15-18 months   Keneba           GAMBIA                         >=50 cm          464     888
15-18 months   Keneba           GAMBIA                         <48 cm           149     888
15-18 months   Keneba           GAMBIA                         [48-50) cm       275     888
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
15-18 months   MAL-ED           PERU                           >=50 cm           37     166
15-18 months   MAL-ED           PERU                           <48 cm            68     166
15-18 months   MAL-ED           PERU                           [48-50) cm        61     166
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm           30      85
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm            20      85
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm        35      85
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     109
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     109
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        45     109
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm          101     432
15-18 months   NIH-Birth        BANGLADESH                     <48 cm           167     432
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm       164     432
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm          143     605
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm           231     605
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm       231     605
15-18 months   PROBIT           BELARUS                        >=50 cm          249     279
15-18 months   PROBIT           BELARUS                        <48 cm             6     279
15-18 months   PROBIT           BELARUS                        [48-50) cm        24     279
15-18 months   PROVIDE          BANGLADESH                     >=50 cm          134     533
15-18 months   PROVIDE          BANGLADESH                     <48 cm           186     533
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm       213     533
15-18 months   SAS-CompFeed     INDIA                          >=50 cm          173    1160
15-18 months   SAS-CompFeed     INDIA                          <48 cm           613    1160
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm       374    1160
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm          222    1186
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm           553    1186
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       411    1186
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      82
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm            39      82
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        29      82
18-21 months   CMIN             BANGLADESH                     >=50 cm            0       7
18-21 months   CMIN             BANGLADESH                     <48 cm             4       7
18-21 months   CMIN             BANGLADESH                     [48-50) cm         3       7
18-21 months   COHORTS          GUATEMALA                      >=50 cm          234     498
18-21 months   COHORTS          GUATEMALA                      <48 cm           112     498
18-21 months   COHORTS          GUATEMALA                      [48-50) cm       152     498
18-21 months   CONTENT          PERU                           >=50 cm            1       2
18-21 months   CONTENT          PERU                           <48 cm             1       2
18-21 months   CONTENT          PERU                           [48-50) cm         0       2
18-21 months   EE               PAKISTAN                       >=50 cm           18     166
18-21 months   EE               PAKISTAN                       <48 cm           105     166
18-21 months   EE               PAKISTAN                       [48-50) cm        43     166
18-21 months   GMS-Nepal        NEPAL                          >=50 cm           80     447
18-21 months   GMS-Nepal        NEPAL                          <48 cm           229     447
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm       138     447
18-21 months   IRC              INDIA                          >=50 cm          132     362
18-21 months   IRC              INDIA                          <48 cm           102     362
18-21 months   IRC              INDIA                          [48-50) cm       128     362
18-21 months   Keneba           GAMBIA                         >=50 cm          447     870
18-21 months   Keneba           GAMBIA                         <48 cm           146     870
18-21 months   Keneba           GAMBIA                         [48-50) cm       277     870
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           29     105
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            34     105
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        42     105
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm           93     407
18-21 months   NIH-Birth        BANGLADESH                     <48 cm           156     407
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm       158     407
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm          129     547
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm           210     547
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm       208     547
18-21 months   PROBIT           BELARUS                        >=50 cm          189     214
18-21 months   PROBIT           BELARUS                        <48 cm             4     214
18-21 months   PROBIT           BELARUS                        [48-50) cm        21     214
18-21 months   PROVIDE          BANGLADESH                     >=50 cm          130     542
18-21 months   PROVIDE          BANGLADESH                     <48 cm           192     542
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm       220     542
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm          104     648
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm           334     648
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm       210     648
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm           14      83
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm            38      83
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm        31      83
21-24 months   CMIN             BANGLADESH                     >=50 cm            0       1
21-24 months   CMIN             BANGLADESH                     <48 cm             0       1
21-24 months   CMIN             BANGLADESH                     [48-50) cm         1       1
21-24 months   COHORTS          GUATEMALA                      >=50 cm          244     527
21-24 months   COHORTS          GUATEMALA                      <48 cm           115     527
21-24 months   COHORTS          GUATEMALA                      [48-50) cm       168     527
21-24 months   EE               PAKISTAN                       >=50 cm            6      70
21-24 months   EE               PAKISTAN                       <48 cm            46      70
21-24 months   EE               PAKISTAN                       [48-50) cm        18      70
21-24 months   GMS-Nepal        NEPAL                          >=50 cm           62     342
21-24 months   GMS-Nepal        NEPAL                          <48 cm           168     342
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm       112     342
21-24 months   IRC              INDIA                          >=50 cm          133     371
21-24 months   IRC              INDIA                          <48 cm           105     371
21-24 months   IRC              INDIA                          [48-50) cm       133     371
21-24 months   Keneba           GAMBIA                         >=50 cm          403     789
21-24 months   Keneba           GAMBIA                         <48 cm           138     789
21-24 months   Keneba           GAMBIA                         [48-50) cm       248     789
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm           30     103
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm            33     103
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm        40     103
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm           94     396
21-24 months   NIH-Birth        BANGLADESH                     <48 cm           151     396
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm       151     396
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm          122     493
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm           191     493
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm       180     493
21-24 months   PROBIT           BELARUS                        >=50 cm          185     210
21-24 months   PROBIT           BELARUS                        <48 cm             4     210
21-24 months   PROBIT           BELARUS                        [48-50) cm        21     210
21-24 months   PROVIDE          BANGLADESH                     >=50 cm          113     485
21-24 months   PROVIDE          BANGLADESH                     <48 cm           176     485
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm       196     485
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm           29     296
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm           179     296
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm        88     296


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
![](/tmp/ecd91793-edb0-41d8-a57a-7ad929b661d2/334f6999-fc94-4ab3-a398-e872bbfe37f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ecd91793-edb0-41d8-a57a-7ad929b661d2/334f6999-fc94-4ab3-a398-e872bbfe37f2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ecd91793-edb0-41d8-a57a-7ad929b661d2/334f6999-fc94-4ab3-a398-e872bbfe37f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.8398135    0.7011537   0.9784733
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.7584762    0.7059222   0.8110302
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.7934746    0.7285639   0.8583852
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.8458577    0.8203662   0.8713493
0-3 months     COHORTS          GUATEMALA                      <48 cm               NA                 0.6736642    0.6333055   0.7140228
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           NA                 0.8052920    0.7753765   0.8352075
0-3 months     COHORTS          INDIA                          >=50 cm              NA                 0.8581048    0.8483449   0.8678646
0-3 months     COHORTS          INDIA                          <48 cm               NA                 0.7668320    0.7597918   0.7738722
0-3 months     COHORTS          INDIA                          [48-50) cm           NA                 0.8265478    0.8189236   0.8341719
0-3 months     EE               PAKISTAN                       >=50 cm              NA                 0.8002723    0.7116928   0.8888518
0-3 months     EE               PAKISTAN                       <48 cm               NA                 0.6594073    0.6278869   0.6909277
0-3 months     EE               PAKISTAN                       [48-50) cm           NA                 0.7030853    0.6421734   0.7639973
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.8923017    0.8510114   0.9335921
0-3 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.8077806    0.7843055   0.8312557
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.8233501    0.7941782   0.8525221
0-3 months     IRC              INDIA                          >=50 cm              NA                 0.7900061    0.7576205   0.8223917
0-3 months     IRC              INDIA                          <48 cm               NA                 0.7389014    0.7049348   0.7728681
0-3 months     IRC              INDIA                          [48-50) cm           NA                 0.7668200    0.7314625   0.8021776
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.9453155    0.9321887   0.9584423
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               NA                 0.8526435    0.8491411   0.8561459
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                 0.9026331    0.8966720   0.9085943
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.9486049    0.9136365   0.9835733
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.8730435    0.8592917   0.8867952
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.9107951    0.8919046   0.9296857
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                 0.9578571    0.9408911   0.9748230
0-3 months     Keneba           GAMBIA                         <48 cm               NA                 0.9038731    0.8741257   0.9336205
0-3 months     Keneba           GAMBIA                         [48-50) cm           NA                 0.9146970    0.8921890   0.9372050
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.9397453    0.8713428   1.0081478
0-3 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.8451375    0.8120534   0.8782215
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.8873782    0.8429521   0.9318043
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                 1.0935603    1.0039790   1.1831416
0-3 months     MAL-ED           BRAZIL                         <48 cm               NA                 1.0381635    0.9408100   1.1355171
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 1.0359469    0.9097154   1.1621784
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                 0.8054809    0.6493834   0.9615785
0-3 months     MAL-ED           INDIA                          <48 cm               NA                 0.7399684    0.6541198   0.8258171
0-3 months     MAL-ED           INDIA                          [48-50) cm           NA                 0.6847233    0.5899695   0.7794772
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.9187260    0.8018897   1.0355622
0-3 months     MAL-ED           NEPAL                          <48 cm               NA                 0.8701309    0.7807218   0.9595399
0-3 months     MAL-ED           NEPAL                          [48-50) cm           NA                 0.9222228    0.7940129   1.0504328
0-3 months     MAL-ED           PERU                           >=50 cm              NA                 0.9775928    0.8989303   1.0562552
0-3 months     MAL-ED           PERU                           <48 cm               NA                 0.9576998    0.9204307   0.9949689
0-3 months     MAL-ED           PERU                           [48-50) cm           NA                 0.9712990    0.9299298   1.0126681
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.9493926    0.8836717   1.0151135
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.9363972    0.8482914   1.0245029
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.8848250    0.8257602   0.9438898
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.9455132    0.8788811   1.0121453
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.8156231    0.7470457   0.8842006
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.8703945    0.8089644   0.9318246
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.8775448    0.8414417   0.9136479
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               NA                 0.7978009    0.7699083   0.8256935
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.7965049    0.7709568   0.8220530
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.9296643    0.8967324   0.9625962
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.8544916    0.8321138   0.8768693
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.8889680    0.8662074   0.9117286
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.8351531    0.8244128   0.8458934
0-3 months     PROBIT           BELARUS                        <48 cm               NA                 0.8301523    0.8166348   0.8436698
0-3 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.8417991    0.8294136   0.8541846
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.9692309    0.9371638   1.0012980
0-3 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.8494649    0.8282720   0.8706578
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.9074211    0.8840621   0.9307800
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.6564380    0.5036985   0.8091776
0-3 months     ResPak           PAKISTAN                       <48 cm               NA                 0.7581997    0.6360861   0.8803134
0-3 months     ResPak           PAKISTAN                       [48-50) cm           NA                 0.8159595    0.7012623   0.9306567
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.7429437    0.7137474   0.7721399
0-3 months     SAS-CompFeed     INDIA                          <48 cm               NA                 0.7885930    0.7599739   0.8172120
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.8186104    0.7904289   0.8467920
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.9627930    0.9528657   0.9727203
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.9305323    0.9214375   0.9396272
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.9547803    0.9467474   0.9628132
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.5460918    0.4007796   0.6914040
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.5126898    0.4586748   0.5667048
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.4781175    0.4244627   0.5317724
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.4621922    0.4451393   0.4792451
3-6 months     COHORTS          GUATEMALA                      <48 cm               NA                 0.4752999    0.4469808   0.5036191
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           NA                 0.4602508    0.4370321   0.4834695
3-6 months     COHORTS          INDIA                          >=50 cm              NA                 0.5055991    0.4968367   0.5143614
3-6 months     COHORTS          INDIA                          <48 cm               NA                 0.4677762    0.4615818   0.4739705
3-6 months     COHORTS          INDIA                          [48-50) cm           NA                 0.4827092    0.4759241   0.4894943
3-6 months     EE               PAKISTAN                       >=50 cm              NA                 0.5181344    0.4435103   0.5927586
3-6 months     EE               PAKISTAN                       <48 cm               NA                 0.4475795    0.4194284   0.4757306
3-6 months     EE               PAKISTAN                       [48-50) cm           NA                 0.4910891    0.4347832   0.5473949
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.5340371    0.4964061   0.5716680
3-6 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.4892800    0.4716613   0.5068987
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.4912266    0.4655882   0.5168649
3-6 months     IRC              INDIA                          >=50 cm              NA                 0.4876242    0.4546499   0.5205985
3-6 months     IRC              INDIA                          <48 cm               NA                 0.4422560    0.4100043   0.4745076
3-6 months     IRC              INDIA                          [48-50) cm           NA                 0.4562311    0.4292135   0.4832487
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.4416967    0.4301292   0.4532642
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               NA                 0.4380431    0.4342865   0.4417997
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                 0.4386330    0.4323546   0.4449114
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.4572744    0.4422517   0.4722971
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.4362861    0.4213918   0.4511805
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.4261519    0.4126943   0.4396094
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                 0.4422660    0.4267725   0.4577596
3-6 months     Keneba           GAMBIA                         <48 cm               NA                 0.4619883    0.4361386   0.4878379
3-6 months     Keneba           GAMBIA                         [48-50) cm           NA                 0.4353189    0.4159635   0.4546744
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.5264954    0.4797138   0.5732770
3-6 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.4635765    0.4389113   0.4882417
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.4753796    0.4462657   0.5044935
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.5497295    0.4709707   0.6284883
3-6 months     MAL-ED           BRAZIL                         <48 cm               NA                 0.5261754    0.4185769   0.6337738
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 0.5815421    0.4769982   0.6860860
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.3626973    0.3018257   0.4235689
3-6 months     MAL-ED           INDIA                          <48 cm               NA                 0.5000915    0.4477963   0.5523868
3-6 months     MAL-ED           INDIA                          [48-50) cm           NA                 0.4330380    0.3557896   0.5102865
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.4699984    0.4224246   0.5175722
3-6 months     MAL-ED           NEPAL                          <48 cm               NA                 0.4402671    0.3724702   0.5080639
3-6 months     MAL-ED           NEPAL                          [48-50) cm           NA                 0.4138178    0.3053341   0.5223015
3-6 months     MAL-ED           PERU                           >=50 cm              NA                 0.5266692    0.4810368   0.5723016
3-6 months     MAL-ED           PERU                           <48 cm               NA                 0.4791993    0.4510521   0.5073465
3-6 months     MAL-ED           PERU                           [48-50) cm           NA                 0.4910573    0.4540422   0.5280725
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.4671101    0.4048829   0.5293374
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.4924075    0.4191945   0.5656205
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.4078093    0.3517184   0.4639002
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.5119172    0.4366180   0.5872163
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.4348327    0.3865512   0.4831142
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4532691    0.4003709   0.5061673
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4559968    0.4225085   0.4894851
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               NA                 0.4327186    0.4023237   0.4631135
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.4748266    0.4493836   0.5002696
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.5056709    0.4823272   0.5290147
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.5000871    0.4803968   0.5197774
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.4918408    0.4761156   0.5075661
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                 0.6659662    0.6573565   0.6745759
3-6 months     PROBIT           BELARUS                        <48 cm               NA                 0.6766906    0.6598248   0.6935564
3-6 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.6599201    0.6501519   0.6696883
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.5165055    0.4936330   0.5393780
3-6 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.4662762    0.4464147   0.4861378
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.4927434    0.4696464   0.5158404
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.4367188    0.3807315   0.4927060
3-6 months     ResPak           PAKISTAN                       <48 cm               NA                 0.6080679    0.5130065   0.7031293
3-6 months     ResPak           PAKISTAN                       [48-50) cm           NA                 0.4908196    0.3827659   0.5988733
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.4836127    0.4645765   0.5026489
3-6 months     SAS-CompFeed     INDIA                          <48 cm               NA                 0.4388080    0.4170990   0.4605170
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.4580692    0.4366044   0.4795341
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4823056    0.4741425   0.4904686
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.4770585    0.4689273   0.4851897
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.4762836    0.4689085   0.4836587
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2894128    0.1980060   0.3808196
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.2571352    0.2255490   0.2887215
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.2662368    0.2233702   0.3091034
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.2135275    0.1979980   0.2290569
6-9 months     COHORTS          GUATEMALA                      <48 cm               NA                 0.2263031    0.2038900   0.2487162
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2156090    0.1957104   0.2355076
6-9 months     COHORTS          INDIA                          >=50 cm              NA                 0.3053553    0.2961763   0.3145343
6-9 months     COHORTS          INDIA                          <48 cm               NA                 0.2664336    0.2598400   0.2730271
6-9 months     COHORTS          INDIA                          [48-50) cm           NA                 0.2830691    0.2761508   0.2899874
6-9 months     EE               PAKISTAN                       >=50 cm              NA                 0.2326246    0.1826073   0.2826419
6-9 months     EE               PAKISTAN                       <48 cm               NA                 0.2461918    0.2222610   0.2701227
6-9 months     EE               PAKISTAN                       [48-50) cm           NA                 0.2520807    0.2155431   0.2886183
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1814867    0.1541074   0.2088659
6-9 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.1951186    0.1764377   0.2137996
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1799273    0.1620776   0.1977770
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.2517890    0.2280401   0.2755379
6-9 months     IRC              INDIA                          <48 cm               NA                 0.2844427    0.2551749   0.3137105
6-9 months     IRC              INDIA                          [48-50) cm           NA                 0.2665352    0.2447507   0.2883196
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2377144    0.2276336   0.2477951
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.2376811    0.2301298   0.2452324
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.2431976    0.2331340   0.2532611
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                 0.2181420    0.1975799   0.2387041
6-9 months     Keneba           GAMBIA                         <48 cm               NA                 0.1852441    0.1407941   0.2296941
6-9 months     Keneba           GAMBIA                         [48-50) cm           NA                 0.1948298    0.1714774   0.2181823
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2227481    0.1928170   0.2526792
6-9 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.2458906    0.2254542   0.2663270
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.2443439    0.2186542   0.2700336
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.3772636    0.3252428   0.4292844
6-9 months     MAL-ED           BRAZIL                         <48 cm               NA                 0.3134046    0.2268339   0.3999753
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3422608    0.2597461   0.4247755
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                 0.3115097    0.2440428   0.3789766
6-9 months     MAL-ED           INDIA                          <48 cm               NA                 0.1886486    0.1408661   0.2364311
6-9 months     MAL-ED           INDIA                          [48-50) cm           NA                 0.1917611    0.1306184   0.2529037
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.2631954    0.2362385   0.2901524
6-9 months     MAL-ED           NEPAL                          <48 cm               NA                 0.2590818    0.2074918   0.3106718
6-9 months     MAL-ED           NEPAL                          [48-50) cm           NA                 0.2045428    0.1181485   0.2909371
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.2466594    0.2226210   0.2706977
6-9 months     MAL-ED           PERU                           <48 cm               NA                 0.2595872    0.2354178   0.2837565
6-9 months     MAL-ED           PERU                           [48-50) cm           NA                 0.2709649    0.2389235   0.3030063
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2114599    0.1548893   0.2680304
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.3067062    0.2497361   0.3636763
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2941744    0.2460483   0.3423005
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1978995    0.1578025   0.2379964
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2699088    0.2023277   0.3374899
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.2408388    0.1902061   0.2914716
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2470066    0.2135148   0.2804984
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               NA                 0.2387482    0.2180712   0.2594252
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.2351963    0.2136536   0.2567391
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2688324    0.2436683   0.2939965
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.2644486    0.2492649   0.2796323
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.2696498    0.2525778   0.2867219
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.4737383    0.4646123   0.4828644
6-9 months     PROBIT           BELARUS                        <48 cm               NA                 0.4593029    0.4363676   0.4822382
6-9 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.4754810    0.4608698   0.4900922
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.2691398    0.2455209   0.2927586
6-9 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.2392839    0.2239631   0.2546047
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.2461962    0.2238508   0.2685417
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2005011    0.1748041   0.2261981
6-9 months     SAS-CompFeed     INDIA                          <48 cm               NA                 0.2127507    0.1953691   0.2301323
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.2082521    0.1855647   0.2309396
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2654068    0.2571971   0.2736165
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2524026    0.2444545   0.2603508
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.2578758    0.2504562   0.2652955
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2299317    0.1132830   0.3465804
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.2280734    0.1756159   0.2805310
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.2169371    0.1730028   0.2608714
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.1587760    0.1446792   0.1728728
9-12 months    COHORTS          GUATEMALA                      <48 cm               NA                 0.1723351    0.1505261   0.1941440
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1527449    0.1355389   0.1699510
9-12 months    COHORTS          INDIA                          >=50 cm              NA                 0.2266969    0.2167747   0.2366191
9-12 months    COHORTS          INDIA                          <48 cm               NA                 0.2199190    0.2129318   0.2269063
9-12 months    COHORTS          INDIA                          [48-50) cm           NA                 0.2173451    0.2103961   0.2242941
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.1671199    0.1113688   0.2228710
9-12 months    EE               PAKISTAN                       <48 cm               NA                 0.2642633    0.2373716   0.2911551
9-12 months    EE               PAKISTAN                       [48-50) cm           NA                 0.2603342    0.2197277   0.3009408
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1438175    0.1176118   0.1700231
9-12 months    GMS-Nepal        NEPAL                          <48 cm               NA                 0.1447282    0.1265016   0.1629548
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1428765    0.1198295   0.1659236
9-12 months    IRC              INDIA                          >=50 cm              NA                 0.1945680    0.1693190   0.2198171
9-12 months    IRC              INDIA                          <48 cm               NA                 0.1977245    0.1714265   0.2240224
9-12 months    IRC              INDIA                          [48-50) cm           NA                 0.2497159    0.2258927   0.2735392
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1612255    0.1513181   0.1711328
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1448846    0.1391286   0.1506405
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.1511722    0.1429416   0.1594029
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                 0.1691603    0.1502687   0.1880518
9-12 months    Keneba           GAMBIA                         <48 cm               NA                 0.1629156    0.1314230   0.1944082
9-12 months    Keneba           GAMBIA                         [48-50) cm           NA                 0.1639028    0.1404267   0.1873789
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1774636    0.1411972   0.2137300
9-12 months    MAL-ED           BANGLADESH                     <48 cm               NA                 0.1617954    0.1411955   0.1823952
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1778167    0.1554209   0.2002126
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.2416673    0.1773355   0.3059991
9-12 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.2197142    0.1215012   0.3179272
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3001695    0.1856681   0.4146709
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                 0.1477142    0.0875108   0.2079176
9-12 months    MAL-ED           INDIA                          <48 cm               NA                 0.1653194    0.1178047   0.2128340
9-12 months    MAL-ED           INDIA                          [48-50) cm           NA                 0.1668996    0.1322059   0.2015933
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                 0.2183025    0.1683446   0.2682603
9-12 months    MAL-ED           NEPAL                          <48 cm               NA                 0.1632485    0.1030045   0.2234925
9-12 months    MAL-ED           NEPAL                          [48-50) cm           NA                 0.1918312    0.0815618   0.3021005
9-12 months    MAL-ED           PERU                           >=50 cm              NA                 0.1977687    0.1657549   0.2297826
9-12 months    MAL-ED           PERU                           <48 cm               NA                 0.1741940    0.1472613   0.2011268
9-12 months    MAL-ED           PERU                           [48-50) cm           NA                 0.1865832    0.1569673   0.2161990
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1976751    0.1449019   0.2504483
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1860735    0.1218973   0.2502497
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2058024    0.1368668   0.2747380
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1818399    0.1165646   0.2471152
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1644871    0.1232650   0.2057091
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1394958    0.1014880   0.1775036
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1624007    0.1354603   0.1893411
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1644529    0.1458850   0.1830208
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1533857    0.1290178   0.1777536
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2150867    0.1899407   0.2402326
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1933277    0.1777810   0.2088744
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1922432    0.1761097   0.2083767
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                 0.3671379    0.3520171   0.3822587
9-12 months    PROBIT           BELARUS                        <48 cm               NA                 0.3925579    0.3720532   0.4130627
9-12 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.3583987    0.3433181   0.3734794
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1761744    0.1541504   0.1981984
9-12 months    PROVIDE          BANGLADESH                     <48 cm               NA                 0.1712984    0.1563924   0.1862045
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1839027    0.1702063   0.1975991
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0329406   -0.0588777   0.1247588
9-12 months    ResPak           PAKISTAN                       <48 cm               NA                -0.0068060   -0.0635186   0.0499065
9-12 months    ResPak           PAKISTAN                       [48-50) cm           NA                 0.1232946    0.0496863   0.1969028
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2230204    0.1977911   0.2482497
9-12 months    SAS-CompFeed     INDIA                          <48 cm               NA                 0.1893399    0.1768554   0.2018244
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.1905317    0.1816924   0.1993710
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1742602    0.1658389   0.1826815
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1876613    0.1799364   0.1953863
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1773219    0.1697306   0.1849133
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1211999    0.0555289   0.1868709
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1776382    0.1435159   0.2117606
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1456711    0.0994596   0.1918827
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1552800    0.1394963   0.1710637
12-15 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1564147    0.1347020   0.1781274
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1480149    0.1261316   0.1698981
12-15 months   EE               PAKISTAN                       >=50 cm              NA                 0.1465188    0.0809334   0.2121041
12-15 months   EE               PAKISTAN                       <48 cm               NA                 0.1163981    0.0895903   0.1432060
12-15 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1732826    0.1428597   0.2037055
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2054392    0.1693067   0.2415716
12-15 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.1678276    0.1501847   0.1854704
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1629480    0.1399154   0.1859806
12-15 months   IRC              INDIA                          >=50 cm              NA                 0.1871487    0.1670407   0.2072567
12-15 months   IRC              INDIA                          <48 cm               NA                 0.1873077    0.1629431   0.2116722
12-15 months   IRC              INDIA                          [48-50) cm           NA                 0.1727309    0.1487737   0.1966881
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1361918    0.1277571   0.1446265
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1259714    0.1198369   0.1321059
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.1400752    0.1314386   0.1487118
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1737274    0.1573259   0.1901289
12-15 months   Keneba           GAMBIA                         <48 cm               NA                 0.2001121    0.1714814   0.2287428
12-15 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1918730    0.1725845   0.2111615
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1208407    0.0800362   0.1616452
12-15 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1412975    0.1194897   0.1631053
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1257605    0.0975984   0.1539225
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.1936926    0.1333914   0.2539937
12-15 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.2905967    0.1725943   0.4085990
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1847662    0.0754446   0.2940879
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1413507    0.0850079   0.1976935
12-15 months   MAL-ED           INDIA                          <48 cm               NA                 0.1798044    0.1106156   0.2489931
12-15 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1899570    0.1330759   0.2468382
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.1114406    0.0589002   0.1639810
12-15 months   MAL-ED           NEPAL                          <48 cm               NA                 0.2001215    0.1680184   0.2322246
12-15 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1685299    0.1227418   0.2143181
12-15 months   MAL-ED           PERU                           >=50 cm              NA                 0.1754691    0.1365474   0.2143907
12-15 months   MAL-ED           PERU                           <48 cm               NA                 0.1355228    0.1053923   0.1656533
12-15 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1295558    0.1010142   0.1580974
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2372149    0.1664769   0.3079528
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2434413    0.1574105   0.3294721
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2161501    0.1583616   0.2739385
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1704181    0.0928906   0.2479456
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1539041    0.0853543   0.2224538
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1512943    0.1016307   0.2009580
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1412048    0.1139313   0.1684782
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1200186    0.1014269   0.1386102
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1364692    0.1159447   0.1569937
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1655413    0.1410793   0.1900033
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1508050    0.1350730   0.1665370
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1760871    0.1592722   0.1929021
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                 0.2223998    0.1427061   0.3020936
12-15 months   PROBIT           BELARUS                        <48 cm               NA                 0.2882754    0.0842712   0.4922795
12-15 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.2154080    0.1630474   0.2677687
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1825776    0.1598145   0.2053406
12-15 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1752835    0.1564500   0.1941169
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1826333    0.1630533   0.2022133
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2037384    0.1788869   0.2285899
12-15 months   SAS-CompFeed     INDIA                          <48 cm               NA                 0.1786048    0.1668679   0.1903417
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.1858628    0.1735888   0.1981367
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1460448    0.1291839   0.1629056
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1497590    0.1375584   0.1619596
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1517271    0.1380101   0.1654442
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1782814    0.1057547   0.2508080
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1431784    0.1087439   0.1776128
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1435501    0.0962397   0.1908605
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1283937    0.1080602   0.1487272
15-18 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1345436    0.1069709   0.1621164
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1526972    0.1300893   0.1753051
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0758812    0.0308487   0.1209137
15-18 months   EE               PAKISTAN                       <48 cm               NA                 0.0962642    0.0733276   0.1192008
15-18 months   EE               PAKISTAN                       [48-50) cm           NA                 0.0999082    0.0711111   0.1287054
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2565367    0.2143427   0.2987308
15-18 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.2204518    0.2009781   0.2399255
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.2472231    0.2189011   0.2755450
15-18 months   IRC              INDIA                          >=50 cm              NA                 0.1687586    0.1446911   0.1928262
15-18 months   IRC              INDIA                          <48 cm               NA                 0.1673769    0.1448385   0.1899152
15-18 months   IRC              INDIA                          [48-50) cm           NA                 0.1463991    0.1234120   0.1693862
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1629847    0.1531892   0.1727803
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1600066    0.1526847   0.1673285
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.1573491    0.1482118   0.1664865
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1630683    0.1452844   0.1808522
15-18 months   Keneba           GAMBIA                         <48 cm               NA                 0.1394058    0.1100875   0.1687241
15-18 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1682005    0.1483590   0.1880419
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1916331    0.1456186   0.2376476
15-18 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1376441    0.1139400   0.1613482
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1262507    0.1035089   0.1489926
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.2233328    0.1749416   0.2717239
15-18 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.2330586    0.1602577   0.3058594
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1996302    0.1199881   0.2792724
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1991621    0.1170220   0.2813023
15-18 months   MAL-ED           INDIA                          <48 cm               NA                 0.1646811    0.1094169   0.2199453
15-18 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1570658    0.1130696   0.2010620
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.1933411    0.1504254   0.2362568
15-18 months   MAL-ED           NEPAL                          <48 cm               NA                 0.1199343    0.0567925   0.1830760
15-18 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1029037    0.0365763   0.1692312
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.1243180    0.0865733   0.1620627
15-18 months   MAL-ED           PERU                           <48 cm               NA                 0.1394668    0.1070050   0.1719286
15-18 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1623148    0.1246433   0.1999863
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1373594    0.0679866   0.2067323
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2416963    0.1493350   0.3340576
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2404866    0.1744130   0.3065603
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1562035    0.0804361   0.2319710
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1452048    0.0706089   0.2198006
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1790410    0.1323027   0.2257793
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1588057    0.1297019   0.1879096
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1409872    0.1190364   0.1629381
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1629061    0.1355575   0.1902547
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1769618    0.1516372   0.2022864
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1551033    0.1394508   0.1707559
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1575323    0.1411858   0.1738787
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                 0.2228987    0.1606025   0.2851950
15-18 months   PROBIT           BELARUS                        <48 cm               NA                 0.2167420    0.1780662   0.2554178
15-18 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.2416412   -0.0574408   0.5407232
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1539754    0.1321886   0.1757622
15-18 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1472598    0.1291301   0.1653895
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1657854    0.1451493   0.1864215
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.1920231    0.1604862   0.2235601
15-18 months   SAS-CompFeed     INDIA                          <48 cm               NA                 0.1774281    0.1626585   0.1921976
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.1702436    0.1434725   0.1970147
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1211452    0.0975834   0.1447069
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1348632    0.1194485   0.1502779
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1379847    0.1190697   0.1568998
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1264951    0.0814447   0.1715455
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1378914    0.1000355   0.1757473
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1433383    0.0886298   0.1980467
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1762952    0.1572671   0.1953232
18-21 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1695251    0.1427333   0.1963169
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1494470    0.1259851   0.1729088
18-21 months   EE               PAKISTAN                       >=50 cm              NA                 0.1323139    0.0445275   0.2201002
18-21 months   EE               PAKISTAN                       <48 cm               NA                 0.1321427    0.1077757   0.1565097
18-21 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1220263    0.0874016   0.1566510
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1406184    0.0989800   0.1822567
18-21 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.1465267    0.1253022   0.1677511
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1365681    0.1100096   0.1631265
18-21 months   IRC              INDIA                          >=50 cm              NA                 0.1705702    0.1445221   0.1966182
18-21 months   IRC              INDIA                          <48 cm               NA                 0.1600832    0.1338831   0.1862834
18-21 months   IRC              INDIA                          [48-50) cm           NA                 0.1505984    0.1314052   0.1697917
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1701184    0.1530306   0.1872062
18-21 months   Keneba           GAMBIA                         <48 cm               NA                 0.1354556    0.1039491   0.1669621
18-21 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1403935    0.1175419   0.1632451
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1629776    0.1168021   0.2091530
18-21 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1423803    0.1187373   0.1660234
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1394442    0.1114640   0.1674243
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.1434547    0.0807874   0.2061220
18-21 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.0533904   -0.0264272   0.1332080
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1170323    0.0495863   0.1844784
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1861670    0.1344450   0.2378891
18-21 months   MAL-ED           INDIA                          <48 cm               NA                 0.1578712    0.1217195   0.1940228
18-21 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1380163    0.1041522   0.1718805
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.2242407    0.1604344   0.2880470
18-21 months   MAL-ED           NEPAL                          <48 cm               NA                 0.1562026    0.0904716   0.2219337
18-21 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1297753    0.0709170   0.1886335
18-21 months   MAL-ED           PERU                           >=50 cm              NA                 0.1780807    0.1362265   0.2199350
18-21 months   MAL-ED           PERU                           <48 cm               NA                 0.1418222    0.1092421   0.1744023
18-21 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1530148    0.1199651   0.1860645
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2306350    0.1644152   0.2968549
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1386890    0.0291889   0.2481891
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1644763    0.1094756   0.2194771
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1620383    0.1026958   0.2213807
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1481572    0.0769799   0.2193345
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1437977    0.0910218   0.1965736
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1850460    0.1504225   0.2196695
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1737808    0.1483849   0.1991768
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1663918    0.1388325   0.1939511
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1495749    0.1266695   0.1724802
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1456054    0.1280267   0.1631840
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1354002    0.1187443   0.1520561
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1494831    0.1233990   0.1755672
18-21 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1285765    0.1119738   0.1451791
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1258596    0.1073275   0.1443917
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1176025    0.0725270   0.1626780
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1237297    0.1031572   0.1443023
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1163453    0.0808721   0.1518186
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1393038    0.0839078   0.1946999
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1418650    0.0991493   0.1845807
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1537947    0.1061731   0.2014162
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1911022    0.1720455   0.2101588
21-24 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1890817    0.1616312   0.2165323
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1795443    0.1608786   0.1982099
21-24 months   EE               PAKISTAN                       >=50 cm              NA                 0.2790531    0.1372129   0.4208933
21-24 months   EE               PAKISTAN                       <48 cm               NA                 0.1845354    0.1561805   0.2128903
21-24 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1973179    0.1409431   0.2536926
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1437017    0.0886711   0.1987323
21-24 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.1944372    0.1576337   0.2312407
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1695767    0.1298823   0.2092712
21-24 months   IRC              INDIA                          >=50 cm              NA                 0.1820351    0.1590738   0.2049963
21-24 months   IRC              INDIA                          <48 cm               NA                 0.1581090    0.1294899   0.1867280
21-24 months   IRC              INDIA                          [48-50) cm           NA                 0.1842110    0.1611147   0.2073072
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1774876    0.1594863   0.1954889
21-24 months   Keneba           GAMBIA                         <48 cm               NA                 0.1520120    0.1209912   0.1830328
21-24 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1680023    0.1461166   0.1898880
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1299103    0.1026151   0.1572056
21-24 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1493572    0.1248737   0.1738408
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1680616    0.1387326   0.1973907
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.1913735    0.1156891   0.2670579
21-24 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.1205671    0.0135686   0.2275656
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1465357    0.1012240   0.1918474
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                 0.2048823    0.1404900   0.2692745
21-24 months   MAL-ED           INDIA                          <48 cm               NA                 0.1305340    0.0845990   0.1764690
21-24 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1474209    0.0987780   0.1960638
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.1455470    0.0731733   0.2179207
21-24 months   MAL-ED           NEPAL                          <48 cm               NA                 0.0923634    0.0277573   0.1569695
21-24 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1112621    0.0197860   0.2027382
21-24 months   MAL-ED           PERU                           >=50 cm              NA                 0.2160814    0.1736386   0.2585241
21-24 months   MAL-ED           PERU                           <48 cm               NA                 0.1796430    0.1437866   0.2154994
21-24 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1614844    0.1248454   0.1981234
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2450005    0.1818401   0.3081609
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1859762    0.1168910   0.2550613
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1973467    0.1499614   0.2447319
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1698582    0.0966177   0.2430986
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1725596    0.1103958   0.2347234
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1546427    0.0892752   0.2200101
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1485076    0.1184866   0.1785286
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1603542    0.1346853   0.1860231
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1181161    0.0925854   0.1436469
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1706813    0.1456470   0.1957156
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1746399    0.1561011   0.1931787
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1784463    0.1559132   0.2009793
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1283124    0.1021288   0.1544959
21-24 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1416674    0.1245838   0.1587511
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1501169    0.1318327   0.1684011
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1043006    0.0119064   0.1966947
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1111083    0.0760151   0.1462015
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1062107    0.0508240   0.1615974


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7828439   0.7421312   0.8235566
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.8017272   0.7835305   0.8199238
0-3 months     COHORTS          INDIA                          NA                   NA                0.8084461   0.8037876   0.8131045
0-3 months     EE               PAKISTAN                       NA                   NA                0.6826035   0.6551714   0.7100355
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7673358   0.7475386   0.7871331
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8695029   0.8663363   0.8726695
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8893304   0.8787405   0.8999203
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9338086   0.9213719   0.9462452
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8762574   0.8507170   0.9017978
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0635029   1.0036742   1.1233316
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7327166   0.6717963   0.7936369
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.8980348   0.8349901   0.9610794
0-3 months     MAL-ED           PERU                           NA                   NA                0.9674736   0.9395417   0.9954054
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9202538   0.8802407   0.9602669
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8735647   0.8345604   0.9125691
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                0.8154665   0.7984471   0.8324859
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8356412   0.8250517   0.8462307
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ResPak           PAKISTAN                       NA                   NA                0.7394641   0.6594131   0.8195151
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7913172   0.7705749   0.8120596
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9495033   0.9443373   0.9546692
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.5056841   0.4661191   0.5452492
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4641396   0.4517514   0.4765279
3-6 months     COHORTS          INDIA                          NA                   NA                0.4815372   0.4774631   0.4856112
3-6 months     EE               PAKISTAN                       NA                   NA                0.4647714   0.4403739   0.4891689
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     IRC              INDIA                          NA                   NA                0.4636967   0.4457630   0.4816304
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4383951   0.4352171   0.4415731
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4394688   0.4306484   0.4482892
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4435285   0.4325574   0.4544996
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4785794   0.4607723   0.4963865
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5523683   0.4978138   0.6069229
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4487511   0.4072123   0.4902900
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.4422942   0.3980205   0.4865680
3-6 months     MAL-ED           PERU                           NA                   NA                0.4944379   0.4736657   0.5152100
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4481157   0.4110902   0.4851413
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4636480   0.4294906   0.4978053
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                0.4543307   0.4371718   0.4714896
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6655962   0.6576122   0.6735801
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ResPak           PAKISTAN                       NA                   NA                0.4978840   0.4419493   0.5538187
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4518719   0.4385255   0.4652183
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4782842   0.4737396   0.4828288
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2650396   0.2393319   0.2907474
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2167783   0.2060093   0.2275474
6-9 months     COHORTS          INDIA                          NA                   NA                0.2811558   0.2769018   0.2854098
6-9 months     EE               PAKISTAN                       NA                   NA                0.2460970   0.2273129   0.2648810
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1879225   0.1758605   0.1999845
6-9 months     IRC              INDIA                          NA                   NA                0.2662635   0.2519732   0.2805538
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2391713   0.2339233   0.2444193
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2051431   0.1902167   0.2200695
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2409787   0.2266745   0.2552830
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3511492   0.3104891   0.3918092
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2137602   0.1772036   0.2503168
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2456640   0.2112777   0.2800502
6-9 months     MAL-ED           PERU                           NA                   NA                0.2609747   0.2445915   0.2773579
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2640962   0.2311230   0.2970694
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2380629   0.2059710   0.2701548
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                0.2392374   0.2254253   0.2530495
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4737281   0.4649839   0.4824723
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2094391   0.1944139   0.2244644
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2582458   0.2537111   0.2627805
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2237429   0.1899698   0.2575161
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1597964   0.1500086   0.1695842
9-12 months    COHORTS          INDIA                          NA                   NA                0.2204422   0.2160177   0.2248666
9-12 months    EE               PAKISTAN                       NA                   NA                0.2538004   0.2323665   0.2752343
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439867   0.1312614   0.1567119
9-12 months    IRC              INDIA                          NA                   NA                0.2148602   0.2001275   0.2295929
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1506923   0.1462761   0.1551084
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1664769   0.1531192   0.1798347
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1706284   0.1564930   0.1847637
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2519296   0.2011327   0.3027265
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1628310   0.1355866   0.1900755
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1878835   0.1448587   0.2309083
9-12 months    MAL-ED           PERU                           NA                   NA                0.1838829   0.1667536   0.2010122
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1982506   0.1613970   0.2351043
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1592864   0.1317047   0.1868680
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                0.1597918   0.1465056   0.1730780
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3666836   0.3521958   0.3811713
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ResPak           PAKISTAN                       NA                   NA                0.0517024   0.0004205   0.1029843
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1945299   0.1872577   0.2018022
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800315   0.1754619   0.1846010
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1571115   0.1310480   0.1831750
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1533040   0.1421603   0.1644477
12-15 months   EE               PAKISTAN                       NA                   NA                0.1310188   0.1099980   0.1520395
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1720672   0.1589120   0.1852223
12-15 months   IRC              INDIA                          NA                   NA                0.1821959   0.1690600   0.1953317
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1321588   0.1277237   0.1365939
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1839375   0.1724348   0.1954401
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1316579   0.1154593   0.1478565
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2159651   0.1632452   0.2686849
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1768822   0.1375116   0.2162528
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1643296   0.1357980   0.1928613
12-15 months   MAL-ED           PERU                           NA                   NA                0.1419123   0.1233883   0.1604364
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2298325   0.1898363   0.2698286
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1576643   0.1208590   0.1944695
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1312281   0.1188263   0.1436299
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROBIT           BELARUS                        NA                   NA                0.2225230   0.1483776   0.2966684
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1846619   0.1770524   0.1922714
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1497010   0.1416661   0.1577359
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1487055   0.1223612   0.1750497
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1372383   0.1238727   0.1506040
15-18 months   EE               PAKISTAN                       NA                   NA                0.0946669   0.0773219   0.1120118
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   IRC              INDIA                          NA                   NA                0.1606149   0.1469999   0.1742300
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1601275   0.1550180   0.1652370
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1606872   0.1484920   0.1728825
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1439895   0.1275529   0.1604261
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2183191   0.1812358   0.2554024
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1670569   0.1336385   0.2004754
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1379358   0.1002018   0.1756698
15-18 months   MAL-ED           PERU                           NA                   NA                0.1444862   0.1234076   0.1655648
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2043734   0.1605098   0.2482371
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1622010   0.1253727   0.1990294
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1534742   0.1384078   0.1685405
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROBIT           BELARUS                        NA                   NA                0.2243786   0.1636115   0.2851457
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1772884   0.1640389   0.1905378
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1333772   0.1226909   0.1440634
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1378720   0.1103180   0.1654261
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1665779   0.1535942   0.1795616
18-21 months   EE               PAKISTAN                       NA                   NA                0.1295407   0.1093153   0.1497662
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   IRC              INDIA                          NA                   NA                0.1605534   0.1467138   0.1743931
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1548373   0.1422247   0.1674498
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1454042   0.1281807   0.1626277
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1159511   0.0741285   0.1577737
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1545879   0.1313920   0.1777838
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1700224   0.1296699   0.2103748
18-21 months   MAL-ED           PERU                           NA                   NA                0.1538869   0.1334392   0.1743346
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1823803   0.1399030   0.2248575
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1502472   0.1149263   0.1855681
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1734865   0.1569855   0.1899874
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1203533   0.1031194   0.1375871
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1458887   0.1178190   0.1739583
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1869768   0.1747567   0.1991969
21-24 months   EE               PAKISTAN                       NA                   NA                0.1959238   0.1686676   0.2231801
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1770981   0.1526133   0.2015829
21-24 months   IRC              INDIA                          NA                   NA                0.1760436   0.1617872   0.1902999
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1700504   0.1573333   0.1827674
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521519   0.1360124   0.1682913
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1609804   0.1143724   0.2075884
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1484672   0.1174482   0.1794861
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1138157   0.0699141   0.1577173
21-24 months   MAL-ED           PERU                           NA                   NA                0.1809660   0.1586021   0.2033299
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2117977   0.1774950   0.2461004
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1648147   0.1261021   0.2035274
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1414362   0.1257895   0.1570829
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1089853   0.0806385   0.1373321


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0813373   -0.2296224    0.0669478
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0463389   -0.1994400    0.1067621
0-3 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1721936   -0.2199287   -0.1244584
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0405657   -0.0798691   -0.0012623
0-3 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0912728   -0.1033068   -0.0792387
0-3 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0315570   -0.0439417   -0.0191723
0-3 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.1408650   -0.2348855   -0.0468445
0-3 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0971869   -0.2046885    0.0103146
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0845211   -0.1320183   -0.0370240
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0689516   -0.1195075   -0.0183957
0-3 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <48 cm               >=50 cm           -0.0511047   -0.0980361   -0.0041732
0-3 months     IRC              INDIA                          [48-50) cm           >=50 cm           -0.0231861   -0.0711338    0.0247616
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.0926720   -0.1062255   -0.0791185
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0426823   -0.0570029   -0.0283618
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0755614   -0.1132514   -0.0378715
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0378098   -0.0770639    0.0014444
0-3 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0539840   -0.0882295   -0.0197385
0-3 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0431600   -0.0713461   -0.0149740
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0946078   -0.1705911   -0.0186246
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0523671   -0.1339304    0.0291962
0-3 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0553968   -0.1876939    0.0769003
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0576134   -0.2124010    0.0971742
0-3 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0655125   -0.2436597    0.1126347
0-3 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.1207576   -0.3033630    0.0618478
0-3 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0485951   -0.1957164    0.0985262
0-3 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.0034969   -0.1699635    0.1769572
0-3 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <48 cm               >=50 cm           -0.0198930   -0.1069376    0.0671517
0-3 months     MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0062938   -0.0951712    0.0825836
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0129955   -0.1229129    0.0969220
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0645676   -0.1529298    0.0237946
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.1298901   -0.2255076   -0.0342726
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0751187   -0.1657470    0.0155096
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0797439   -0.1253666   -0.0341212
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0810399   -0.1252682   -0.0368116
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0751727   -0.1149883   -0.0353572
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0406963   -0.0807282   -0.0006644
0-3 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0050008   -0.0189712    0.0089696
0-3 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0066460   -0.0031038    0.0163958
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.1197660   -0.1582034   -0.0813286
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0618098   -0.1014827   -0.0221369
0-3 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1017617   -0.0937917    0.2973151
0-3 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.1595214   -0.0314886    0.3505315
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0456493    0.0177839    0.0735147
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0756668    0.0444744    0.1068591
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0322607   -0.0457243   -0.0187971
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0080127   -0.0207829    0.0047575
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0334020   -0.1884287    0.1216246
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0679743   -0.2228758    0.0869272
3-6 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0131077   -0.0199494    0.0461649
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0019414   -0.0307495    0.0268668
3-6 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0378229   -0.0485536   -0.0270922
3-6 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0228899   -0.0339721   -0.0118076
3-6 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.0705549   -0.1503123    0.0092025
3-6 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0270454   -0.1205286    0.0664378
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0447571   -0.0863083   -0.0032058
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0428105   -0.0883452    0.0027242
3-6 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <48 cm               >=50 cm           -0.0453683   -0.0914928    0.0007563
3-6 months     IRC              INDIA                          [48-50) cm           >=50 cm           -0.0313931   -0.0740224    0.0112361
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.0036536   -0.0158200    0.0085129
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0030637   -0.0159047    0.0097774
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0209883   -0.0421537    0.0001771
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0311226   -0.0509967   -0.0112484
3-6 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.0197222   -0.0104151    0.0498595
3-6 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0069471   -0.0317399    0.0178457
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0629189   -0.1158045   -0.0100333
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0511158   -0.1062169    0.0039854
3-6 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0235541   -0.1568972    0.1097889
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0318126   -0.0990781    0.1627033
3-6 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.1373942    0.0571437    0.2176447
3-6 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0703407   -0.0280091    0.1686905
3-6 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0297314   -0.1125546    0.0530919
3-6 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0561806   -0.1746373    0.0622760
3-6 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <48 cm               >=50 cm           -0.0474699   -0.1010850    0.0061452
3-6 months     MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0356119   -0.0943693    0.0231456
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0252974   -0.0707879    0.1213826
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0593008   -0.1430768    0.0244752
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0770845   -0.1665332    0.0123642
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0586481   -0.1506709    0.0333746
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0232782   -0.0685033    0.0219469
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0188298   -0.0232274    0.0608871
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0055838   -0.0361229    0.0249553
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0138301   -0.0419764    0.0143162
3-6 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.0107244   -0.0083324    0.0297812
3-6 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0060461   -0.0179200    0.0058278
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0502293   -0.0805218   -0.0199368
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0237621   -0.0562678    0.0087437
3-6 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1713491    0.0610258    0.2816725
3-6 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0541008   -0.0675963    0.1757978
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0448047   -0.0763091   -0.0133002
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0255434   -0.0525935    0.0015066
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0052471   -0.0167689    0.0062747
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0060220   -0.0170232    0.0049793
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0322775   -0.1289879    0.0644328
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0231760   -0.1241351    0.0777832
6-9 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0127756   -0.0144918    0.0400430
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0020815   -0.0231596    0.0273227
6-9 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0389217   -0.0502234   -0.0276200
6-9 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0222862   -0.0337804   -0.0107920
6-9 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.0135673   -0.0418802    0.0690147
6-9 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0194561   -0.0424852    0.0813974
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0136320   -0.0195132    0.0467771
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0015594   -0.0342432    0.0311245
6-9 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <48 cm               >=50 cm            0.0326537   -0.0050373    0.0703448
6-9 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.0147462   -0.0174807    0.0469731
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0000333   -0.0124022    0.0123356
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0054832   -0.0087310    0.0196974
6-9 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0328979   -0.0818734    0.0160776
6-9 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0233121   -0.0544271    0.0078028
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0231425   -0.0131000    0.0593850
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0215958   -0.0178483    0.0610398
6-9 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0638590   -0.1648573    0.0371393
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0350028   -0.1325468    0.0625412
6-9 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <48 cm               >=50 cm           -0.1228611   -0.2055349   -0.0401873
6-9 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.1197486   -0.2107992   -0.0286980
6-9 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0041136   -0.0623219    0.0540947
6-9 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0586527   -0.1491549    0.0318496
6-9 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.0129278   -0.0211603    0.0470159
6-9 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0243055   -0.0157506    0.0643616
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0952463    0.0149604    0.1755321
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0827145    0.0084424    0.1569866
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0720093   -0.0065717    0.1505903
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0429394   -0.0216473    0.1075261
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0082584   -0.0476187    0.0311020
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0118102   -0.0516322    0.0280118
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0043838   -0.0337739    0.0250062
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0008174   -0.0295912    0.0312261
6-9 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0144354   -0.0406280    0.0117571
6-9 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0017427   -0.0120064    0.0154918
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0298559   -0.0580086   -0.0017032
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0229435   -0.0554576    0.0095706
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0122496   -0.0161953    0.0406945
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0077510   -0.0247078    0.0402098
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0130042   -0.0244310   -0.0015773
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0075310   -0.0185967    0.0035348
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0018582   -0.1297594    0.1260430
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0129946   -0.1376426    0.1116535
9-12 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0135591   -0.0124092    0.0395273
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0060311   -0.0282744    0.0162123
9-12 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.0067779   -0.0189134    0.0053577
9-12 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0093518   -0.0214653    0.0027618
9-12 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       <48 cm               >=50 cm            0.0971434    0.0352455    0.1590413
9-12 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0932143    0.0242427    0.1621859
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0009107   -0.0310102    0.0328316
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0009409   -0.0358394    0.0339575
9-12 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <48 cm               >=50 cm            0.0031564   -0.0333004    0.0396132
9-12 months    IRC              INDIA                          [48-50) cm           >=50 cm            0.0551479    0.0204339    0.0898619
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0163409   -0.0277332   -0.0049486
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0100532   -0.0228166    0.0027102
9-12 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0062446   -0.0429689    0.0304796
9-12 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0052575   -0.0353908    0.0248758
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0156682   -0.0573768    0.0260404
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0003532   -0.0422711    0.0429774
9-12 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0219531   -0.1393599    0.0954538
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0585022   -0.0728338    0.1898383
9-12 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <48 cm               >=50 cm            0.0176051   -0.0590897    0.0943000
9-12 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0191854   -0.0502992    0.0886700
9-12 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0550540   -0.1333172    0.0232092
9-12 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0264713   -0.1475296    0.0945870
9-12 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <48 cm               >=50 cm           -0.0235747   -0.0654108    0.0182614
9-12 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0111856   -0.0547973    0.0324261
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0116016   -0.0946894    0.0714863
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0081273   -0.0786893    0.0949439
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0173529   -0.0945547    0.0598490
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0423441   -0.1178786    0.0331904
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0020522   -0.0306672    0.0347715
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0090150   -0.0453411    0.0273110
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0217590   -0.0513228    0.0078048
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0228435   -0.0527200    0.0070331
9-12 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <48 cm               >=50 cm            0.0254200    0.0035722    0.0472679
9-12 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0087392   -0.0249779    0.0074995
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0048760   -0.0314701    0.0217181
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0077283   -0.0182071    0.0336637
9-12 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.0397466   -0.1476675    0.0681743
9-12 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0903540   -0.0273268    0.2080348
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0336805   -0.0627739   -0.0045872
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0324887   -0.0614217   -0.0035557
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0134011    0.0019734    0.0248288
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0030617   -0.0082761    0.0143995
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0564383   -0.0175685    0.1304452
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0244712   -0.0558294    0.1047718
12-15 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0011347   -0.0257087    0.0279780
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0072652   -0.0342466    0.0197163
12-15 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0301206   -0.1009733    0.0407320
12-15 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0267638   -0.0455341    0.0990618
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0376116   -0.0778213    0.0025982
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0424912   -0.0853404    0.0003581
12-15 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <48 cm               >=50 cm            0.0001590   -0.0314315    0.0317496
12-15 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0144178   -0.0456952    0.0168597
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0102204   -0.0206912    0.0002504
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0038834   -0.0080447    0.0158116
12-15 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0263848   -0.0066111    0.0593806
12-15 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0181457   -0.0071734    0.0434647
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0204568   -0.0258097    0.0667233
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0049198   -0.0446596    0.0544991
12-15 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0969041   -0.0356130    0.2294212
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0089263   -0.1337760    0.1159234
12-15 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.0384537   -0.0507741    0.1276815
12-15 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0486064   -0.0314560    0.1286687
12-15 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0886809    0.0271089    0.1502528
12-15 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.0570893   -0.0126032    0.1267818
12-15 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0399463   -0.0891677    0.0092751
12-15 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0459133   -0.0941784    0.0023518
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0062264   -0.1051520    0.1176049
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0210648   -0.1124068    0.0702772
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0165141   -0.1200012    0.0869731
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0191238   -0.1111944    0.0729468
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0211862   -0.0541937    0.0118212
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0047356   -0.0388691    0.0293979
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0147363   -0.0438204    0.0143478
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0105458   -0.0191380    0.0402297
12-15 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <48 cm               >=50 cm            0.0658755   -0.1362464    0.2679975
12-15 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0069918   -0.0947579    0.0807743
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0072941   -0.0368382    0.0222500
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0000557   -0.0299698    0.0300813
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0251337   -0.0543756    0.0041082
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0178757   -0.0466338    0.0108825
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0037142   -0.0170979    0.0245263
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0056824   -0.0160534    0.0274182
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0351030   -0.1153890    0.0451830
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0347313   -0.1213245    0.0518620
15-18 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0061499   -0.0281094    0.0404093
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0243035   -0.0061032    0.0547102
15-18 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0203830   -0.0301543    0.0709202
15-18 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0240270   -0.0294258    0.0774798
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0360849   -0.0825560    0.0103861
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0093137   -0.0601317    0.0415044
15-18 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0013818   -0.0343548    0.0315913
15-18 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0223595   -0.0556410    0.0109219
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0029782   -0.0148623    0.0089059
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0056356   -0.0191531    0.0078819
15-18 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0236625   -0.0579529    0.0106279
15-18 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0051322   -0.0215127    0.0317771
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0539890   -0.1057502   -0.0022278
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0653823   -0.1167100   -0.0140547
15-18 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.0097258   -0.0776908    0.0971425
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0237025   -0.1168936    0.0694885
15-18 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0344810   -0.1334817    0.0645197
15-18 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0420963   -0.1352772    0.0510845
15-18 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0734068   -0.1497523    0.0029387
15-18 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0904373   -0.1694379   -0.0114367
15-18 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0151488   -0.0346350    0.0649327
15-18 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0379968   -0.0153305    0.0913242
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.1043369   -0.0111759    0.2198497
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1031272    0.0073237    0.1989307
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0109988   -0.1173249    0.0953274
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0228375   -0.0661860    0.1118610
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0178185   -0.0542722    0.0186352
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0041003   -0.0358368    0.0440375
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0218585   -0.0516299    0.0079130
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0194295   -0.0495716    0.0107125
15-18 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0061567   -0.0773451    0.0650317
15-18 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0187425   -0.2891537    0.3266386
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0067156   -0.0350591    0.0216279
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0118100   -0.0181986    0.0418185
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0145951   -0.0462345    0.0170444
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0217796   -0.0627591    0.0192000
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0137180   -0.0144381    0.0418742
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0168396   -0.0133753    0.0470544
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0113963   -0.0474476    0.0702402
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0168431   -0.0540268    0.0877131
18-21 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0067701   -0.0396314    0.0260912
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0268482   -0.0570562    0.0033598
18-21 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0001712   -0.0912765    0.0909342
18-21 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0102876   -0.1046555    0.0840804
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0059083   -0.0408274    0.0526440
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0040503   -0.0534376    0.0453370
18-21 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0104869   -0.0474321    0.0264582
18-21 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0199717   -0.0523272    0.0123838
18-21 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0346627   -0.0705048    0.0011793
18-21 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0297249   -0.0582589   -0.0011909
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0205972   -0.0724737    0.0312792
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0235334   -0.0775247    0.0304579
18-21 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0900643   -0.1915435    0.0114150
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0264224   -0.1184885    0.0656437
18-21 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0282958   -0.0913998    0.0348081
18-21 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0481507   -0.1099726    0.0136712
18-21 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0680381   -0.1596449    0.0235688
18-21 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0944654   -0.1812729   -0.0076580
18-21 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0362585   -0.0892985    0.0167815
18-21 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0250659   -0.0783957    0.0282638
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0919460   -0.2199122    0.0360201
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0661587   -0.1522409    0.0199235
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0138810   -0.1065511    0.0787890
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0182406   -0.0976561    0.0611749
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0112652   -0.0542040    0.0316736
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0186542   -0.0629069    0.0255985
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0039695   -0.0328428    0.0249037
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0141747   -0.0424956    0.0141462
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0209066   -0.0518264    0.0100131
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0236235   -0.0556207    0.0083737
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0061272   -0.0434210    0.0556755
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0012572   -0.0586170    0.0561027
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0025612   -0.0673913    0.0725137
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0144908   -0.0585608    0.0875424
21-24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0020205   -0.0354373    0.0313964
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0115579   -0.0382330    0.0151172
21-24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0945177   -0.2391643    0.0501289
21-24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0817352   -0.2343680    0.0708975
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0507355   -0.0154676    0.1169387
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0258751   -0.0419778    0.0937279
21-24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0239261   -0.0606177    0.0127655
21-24 months   IRC              INDIA                          [48-50) cm           >=50 cm            0.0021759   -0.0303918    0.0347437
21-24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0254756   -0.0613412    0.0103900
21-24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0094853   -0.0378231    0.0188525
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0194469   -0.0172202    0.0561139
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0381513   -0.0019140    0.0782165
21-24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0708065   -0.2018668    0.0602539
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0448378   -0.1330494    0.0433737
21-24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0743483   -0.1534456    0.0047491
21-24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0574614   -0.1381614    0.0232386
21-24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0531836   -0.1501986    0.0438314
21-24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0342849   -0.1509290    0.0823592
21-24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0364384   -0.0919998    0.0191231
21-24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0545970   -0.1106666    0.0014726
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0590243   -0.1526299    0.0345812
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0476539   -0.1266133    0.0313056
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0027014   -0.0933637    0.0987665
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0152155   -0.1133841    0.0829530
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0118466   -0.0276522    0.0513454
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0303914   -0.0698006    0.0090177
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0039586   -0.0271927    0.0351099
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0077650   -0.0259167    0.0414466
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0133551   -0.0179088    0.0446189
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0218046   -0.0101311    0.0537403
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0068077   -0.0920265    0.1056420
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0019101   -0.1058135    0.1096337


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0569696   -0.1808007    0.0668615
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                -0.0441306   -0.0618759   -0.0263852
0-3 months     COHORTS          INDIA                          >=50 cm              NA                -0.0496587   -0.0583769   -0.0409405
0-3 months     EE               PAKISTAN                       >=50 cm              NA                -0.1176688   -0.2020655   -0.0332721
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0652896   -0.1027514   -0.0278278
0-3 months     IRC              INDIA                          >=50 cm              NA                -0.0226703   -0.0487861    0.0034455
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0758126   -0.0885152   -0.0631099
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0592745   -0.0929787   -0.0255704
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0240485   -0.0367146   -0.0113824
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0634879   -0.1246078   -0.0023680
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0300574   -0.0940668    0.0339520
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                -0.0727643   -0.2098602    0.0643315
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0206912   -0.1183438    0.0769614
0-3 months     MAL-ED           PERU                           >=50 cm              NA                -0.0101192   -0.0748209    0.0545825
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0291388   -0.0827243    0.0244467
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0719485   -0.1317261   -0.0121709
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0620783   -0.0936939   -0.0304627
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0451424   -0.0738380   -0.0164467
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0004881   -0.0003879    0.0013640
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0675837   -0.0949911   -0.0401764
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.0830260   -0.0340149    0.2000670
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0483736    0.0298091    0.0669381
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0132898   -0.0214753   -0.0051042
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0404077   -0.1694348    0.0886194
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0019475   -0.0103843    0.0142793
3-6 months     COHORTS          INDIA                          >=50 cm              NA                -0.0240619   -0.0318127   -0.0163112
3-6 months     EE               PAKISTAN                       >=50 cm              NA                -0.0533630   -0.1244739    0.0177479
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0364254   -0.0698563   -0.0029944
3-6 months     IRC              INDIA                          >=50 cm              NA                -0.0239276   -0.0488112    0.0009561
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0033016   -0.0145461    0.0079429
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0178056   -0.0310770   -0.0045342
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                 0.0012624   -0.0097542    0.0122791
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0479160   -0.0898482   -0.0059838
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.0026388   -0.0547337    0.0600113
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0860538    0.0229282    0.1491794
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0277042   -0.0809081    0.0254997
3-6 months     MAL-ED           PERU                           >=50 cm              NA                -0.0322313   -0.0718090    0.0073464
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0189944   -0.0677903    0.0298015
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0482692   -0.1093080    0.0127696
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0016661   -0.0315862    0.0282540
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0076165   -0.0282740    0.0130409
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                -0.0003700   -0.0015091    0.0007690
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0274444   -0.0485308   -0.0063580
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.0611652    0.0016880    0.1206425
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0317408   -0.0539303   -0.0095512
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0040214   -0.0109742    0.0029314
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0243731   -0.1062951    0.0575488
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0032509   -0.0075182    0.0140199
6-9 months     COHORTS          INDIA                          >=50 cm              NA                -0.0241995   -0.0322821   -0.0161168
6-9 months     EE               PAKISTAN                       >=50 cm              NA                 0.0134724   -0.0348044    0.0617492
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0064359   -0.0187374    0.0316091
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.0144745   -0.0044611    0.0334102
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.0014569   -0.0071267    0.0100405
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0129989   -0.0276262    0.0016284
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0182306   -0.0094093    0.0458705
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0261144   -0.0686164    0.0163875
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                -0.0977495   -0.1618733   -0.0336257
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0175315   -0.0557663    0.0207034
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.0143153   -0.0101687    0.0387993
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0526364    0.0107192    0.0945535
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0401634   -0.0016032    0.0819300
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0077692   -0.0361894    0.0206511
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0013227   -0.0225900    0.0199446
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                -0.0000102   -0.0012421    0.0012217
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0199744   -0.0409427    0.0009938
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0089380   -0.0151298    0.0330058
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0071610   -0.0142267   -0.0000952
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0061887   -0.1116356    0.0992581
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.0010204   -0.0087031    0.0107439
9-12 months    COHORTS          INDIA                          >=50 cm              NA                -0.0062547   -0.0149097    0.0024003
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.0866805    0.0323232    0.1410378
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0001692   -0.0249379    0.0252763
9-12 months    IRC              INDIA                          >=50 cm              NA                 0.0202921    0.0004671    0.0401172
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0105332   -0.0186615   -0.0024049
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                -0.0026833   -0.0155133    0.0101466
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0068352   -0.0386191    0.0249487
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.0102623   -0.0420779    0.0626025
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                 0.0151168   -0.0405442    0.0707779
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.0304190   -0.0834383    0.0226004
9-12 months    MAL-ED           PERU                           >=50 cm              NA                -0.0138859   -0.0433860    0.0156143
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0005755   -0.0448428    0.0459939
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0225536   -0.0733035    0.0281964
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0026089   -0.0264478    0.0212300
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0172418   -0.0385350    0.0040515
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0004543   -0.0018651    0.0009564
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0013572   -0.0169980    0.0197124
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0187618   -0.0493346    0.0868582
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0284905   -0.0526861   -0.0042949
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0057712   -0.0015804    0.0131228
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0359116   -0.0248630    0.0966862
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0019760   -0.0133375    0.0093855
12-15 months   EE               PAKISTAN                       >=50 cm              NA                -0.0155000   -0.0772806    0.0462806
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0333720   -0.0662221   -0.0005219
12-15 months   IRC              INDIA                          >=50 cm              NA                -0.0049528   -0.0216649    0.0117593
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0040330   -0.0113027    0.0032367
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0102101   -0.0009721    0.0213922
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0108172   -0.0250001    0.0466346
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.0222725   -0.0326045    0.0771495
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0355315   -0.0245807    0.0956438
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0528890    0.0095787    0.0961993
12-15 months   MAL-ED           PERU                           >=50 cm              NA                -0.0335568   -0.0681998    0.0010863
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0073824   -0.0641930    0.0494282
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0127539   -0.0749480    0.0494403
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0099766   -0.0333566    0.0134033
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0014810   -0.0223270    0.0193650
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0001232   -0.0083991    0.0086455
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0025452   -0.0223621    0.0172718
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0190765   -0.0432040    0.0050510
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0036562   -0.0114561    0.0187685
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0295759   -0.0954215    0.0362697
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0088446   -0.0051699    0.0228591
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0187856   -0.0242603    0.0618315
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0217632   -0.0592898    0.0157635
15-18 months   IRC              INDIA                          >=50 cm              NA                -0.0081437   -0.0263364    0.0100489
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0028573   -0.0110972    0.0053827
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0023810   -0.0139775    0.0092154
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0476436   -0.0872401   -0.0080470
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0050137   -0.0420970    0.0320697
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0321052   -0.1081828    0.0439723
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0554053   -0.1015813   -0.0092292
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.0201682   -0.0149584    0.0552949
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0670140    0.0092257    0.1248023
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0059975   -0.0567481    0.0687431
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0053315   -0.0313693    0.0207062
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0157645   -0.0369579    0.0054288
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0014799   -0.0272751    0.0302348
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0023760   -0.0169762    0.0217283
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0147348   -0.0422234    0.0127539
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0122320   -0.0092510    0.0337150
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0113769   -0.0344025    0.0571563
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0097172   -0.0235153    0.0040809
18-21 months   EE               PAKISTAN                       >=50 cm              NA                -0.0027731   -0.0830491    0.0775029
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0017764   -0.0350248    0.0385776
18-21 months   IRC              INDIA                          >=50 cm              NA                -0.0100167   -0.0293872    0.0093538
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0152811   -0.0275702   -0.0029920
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0175734   -0.0573294    0.0221826
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0275036   -0.0704561    0.0154489
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0315791   -0.0804677    0.0173095
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0542183   -0.1107355    0.0022988
18-21 months   MAL-ED           PERU                           >=50 cm              NA                -0.0241938   -0.0614942    0.0131065
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0482548   -0.1030293    0.0065197
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0117910   -0.0649311    0.0413490
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0115595   -0.0419440    0.0188250
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0069139   -0.0267199    0.0128920
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0169949   -0.0390170    0.0050272
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0027507   -0.0381958    0.0436973
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0065848   -0.0465320    0.0597017
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0041254   -0.0173996    0.0091488
21-24 months   EE               PAKISTAN                       >=50 cm              NA                -0.0831292   -0.2150862    0.0488277
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0333964   -0.0169014    0.0836942
21-24 months   IRC              INDIA                          >=50 cm              NA                -0.0059915   -0.0247653    0.0127823
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0074372   -0.0198768    0.0050023
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0222415   -0.0041740    0.0486571
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0303931   -0.0812993    0.0205130
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0564151   -0.1183242    0.0054940
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0317313   -0.0945163    0.0310537
21-24 months   MAL-ED           PERU                           >=50 cm              NA                -0.0351154   -0.0742243    0.0039936
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0332028   -0.0811324    0.0147268
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0050434   -0.0661832    0.0560964
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0070714   -0.0338708    0.0197280
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0043687   -0.0174087    0.0261462
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0136581   -0.0086335    0.0359498
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0046847   -0.0828795    0.0922489

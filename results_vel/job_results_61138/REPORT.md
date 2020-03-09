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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon

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
![](/tmp/d2bc4006-c22e-46d2-b243-60cd78c41ed6/0b5da9c1-85cb-4f08-b6aa-ad547616531c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d2bc4006-c22e-46d2-b243-60cd78c41ed6/0b5da9c1-85cb-4f08-b6aa-ad547616531c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d2bc4006-c22e-46d2-b243-60cd78c41ed6/0b5da9c1-85cb-4f08-b6aa-ad547616531c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.8450539    0.6867114   1.0033965
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.7599307    0.7057927   0.8140686
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.7958418    0.7273234   0.8643602
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.8494308    0.8241330   0.8747286
0-3 months     COHORTS          GUATEMALA                      <48 cm               NA                 0.6728615    0.6304799   0.7152430
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           NA                 0.8025504    0.7712036   0.8338972
0-3 months     COHORTS          INDIA                          >=50 cm              NA                 0.8508751    0.8410012   0.8607489
0-3 months     COHORTS          INDIA                          <48 cm               NA                 0.7719531    0.7648393   0.7790669
0-3 months     COHORTS          INDIA                          [48-50) cm           NA                 0.8257302    0.8180146   0.8334457
0-3 months     EE               PAKISTAN                       >=50 cm              NA                 0.7791600    0.6924137   0.8659063
0-3 months     EE               PAKISTAN                       <48 cm               NA                 0.6568397    0.6250627   0.6886167
0-3 months     EE               PAKISTAN                       [48-50) cm           NA                 0.6885481    0.6258721   0.7512242
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.8829935    0.8409847   0.9250023
0-3 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.8111663    0.7881225   0.8342101
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.8178719    0.7888738   0.8468700
0-3 months     IRC              INDIA                          >=50 cm              NA                 0.7899141    0.7577457   0.8220824
0-3 months     IRC              INDIA                          <48 cm               NA                 0.7415469    0.7073849   0.7757090
0-3 months     IRC              INDIA                          [48-50) cm           NA                 0.7665338    0.7312913   0.8017764
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.9092326    0.8970865   0.9213787
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               NA                 0.8598455    0.8563236   0.8633674
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                 0.8913511    0.8855095   0.8971927
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.9338060    0.9004860   0.9671259
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.8804543    0.8670405   0.8938680
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.9081934    0.8890812   0.9273057
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                 0.9555747    0.9385486   0.9726009
0-3 months     Keneba           GAMBIA                         <48 cm               NA                 0.9056421    0.8749927   0.9362914
0-3 months     Keneba           GAMBIA                         [48-50) cm           NA                 0.9166605    0.8938162   0.9395048
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.9392571    0.8688627   1.0096515
0-3 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.8452466    0.8120736   0.8784196
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.8843654    0.8390501   0.9296807
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                 1.0982805    1.0055395   1.1910215
0-3 months     MAL-ED           BRAZIL                         <48 cm               NA                 1.0558680    0.9519731   1.1597629
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 1.0509907    0.9188234   1.1831580
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                 0.8054809    0.6493834   0.9615785
0-3 months     MAL-ED           INDIA                          <48 cm               NA                 0.7399684    0.6541198   0.8258171
0-3 months     MAL-ED           INDIA                          [48-50) cm           NA                 0.6847233    0.5899695   0.7794772
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.9187260    0.8018897   1.0355622
0-3 months     MAL-ED           NEPAL                          <48 cm               NA                 0.8701309    0.7807218   0.9595399
0-3 months     MAL-ED           NEPAL                          [48-50) cm           NA                 0.9222228    0.7940129   1.0504328
0-3 months     MAL-ED           PERU                           >=50 cm              NA                 0.9746409    0.8950096   1.0542722
0-3 months     MAL-ED           PERU                           <48 cm               NA                 0.9603933    0.9240372   0.9967493
0-3 months     MAL-ED           PERU                           [48-50) cm           NA                 0.9722503    0.9286359   1.0158648
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.9467310    0.8796153   1.0138467
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.9159830    0.8187089   1.0132570
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.8811386    0.8192646   0.9430127
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.9440643    0.8753310   1.0127976
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.8190876    0.7486899   0.8894854
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.8717821    0.8083808   0.9351835
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.8664220    0.8314976   0.9013464
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               NA                 0.8010851    0.7734940   0.8286763
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.7935591    0.7685459   0.8185723
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.9264420    0.8943118   0.9585722
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.8601146    0.8380943   0.8821348
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.8867749    0.8640652   0.9094845
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.8342704    0.8235604   0.8449803
0-3 months     PROBIT           BELARUS                        <48 cm               NA                 0.8369084    0.8241013   0.8497155
0-3 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.8503663    0.8367680   0.8639645
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.9692050    0.9372604   1.0011495
0-3 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.8506212    0.8291267   0.8721158
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.9068639    0.8833179   0.9304100
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.6564380    0.5036985   0.8091776
0-3 months     ResPak           PAKISTAN                       <48 cm               NA                 0.7581997    0.6360861   0.8803134
0-3 months     ResPak           PAKISTAN                       [48-50) cm           NA                 0.8159595    0.7012623   0.9306567
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.7344334    0.7069739   0.7618930
0-3 months     SAS-CompFeed     INDIA                          <48 cm               NA                 0.7911454    0.7626293   0.8196616
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.8177900    0.7897183   0.8458617
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.9582835    0.9485211   0.9680458
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.9330109    0.9240014   0.9420203
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.9552678    0.9472707   0.9632649
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.5236836    0.3638219   0.6835453
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.5039701    0.4473722   0.5605680
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.4674874    0.4111414   0.5238334
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.4625311    0.4452008   0.4798614
3-6 months     COHORTS          GUATEMALA                      <48 cm               NA                 0.4739642    0.4452263   0.5027021
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           NA                 0.4609587    0.4369830   0.4849344
3-6 months     COHORTS          INDIA                          >=50 cm              NA                 0.4966568    0.4881400   0.5051736
3-6 months     COHORTS          INDIA                          <48 cm               NA                 0.4743328    0.4680968   0.4805688
3-6 months     COHORTS          INDIA                          [48-50) cm           NA                 0.4813567    0.4745995   0.4881140
3-6 months     EE               PAKISTAN                       >=50 cm              NA                 0.5224759    0.4469322   0.5980196
3-6 months     EE               PAKISTAN                       <48 cm               NA                 0.4484659    0.4203767   0.4765551
3-6 months     EE               PAKISTAN                       [48-50) cm           NA                 0.4967751    0.4378568   0.5556934
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.5308458    0.4921863   0.5695053
3-6 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.4925037    0.4746536   0.5103537
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.4915168    0.4664077   0.5166260
3-6 months     IRC              INDIA                          >=50 cm              NA                 0.4849977    0.4496260   0.5203694
3-6 months     IRC              INDIA                          <48 cm               NA                 0.4428047    0.4077491   0.4778604
3-6 months     IRC              INDIA                          [48-50) cm           NA                 0.4635081    0.4368363   0.4901799
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.4336646    0.4220810   0.4452481
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               NA                 0.4383609    0.4345875   0.4421343
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           NA                 0.4381905    0.4316806   0.4447003
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.4514754    0.4353542   0.4675966
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.4407151    0.4261932   0.4552370
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.4250089    0.4107265   0.4392913
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                 0.4442337    0.4288122   0.4596551
3-6 months     Keneba           GAMBIA                         <48 cm               NA                 0.4569650    0.4299404   0.4839895
3-6 months     Keneba           GAMBIA                         [48-50) cm           NA                 0.4410831    0.4216546   0.4605117
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.5285257    0.4802362   0.5768153
3-6 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.4644105    0.4394843   0.4893368
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.4771981    0.4473690   0.5070271
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.5501163    0.4692450   0.6309875
3-6 months     MAL-ED           BRAZIL                         <48 cm               NA                 0.5210063    0.4063137   0.6356990
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 0.5757968    0.4593439   0.6922497
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.3626973    0.3018257   0.4235689
3-6 months     MAL-ED           INDIA                          <48 cm               NA                 0.5000915    0.4477963   0.5523868
3-6 months     MAL-ED           INDIA                          [48-50) cm           NA                 0.4330380    0.3557896   0.5102865
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.4699984    0.4224246   0.5175722
3-6 months     MAL-ED           NEPAL                          <48 cm               NA                 0.4402671    0.3724702   0.5080639
3-6 months     MAL-ED           NEPAL                          [48-50) cm           NA                 0.4138178    0.3053341   0.5223015
3-6 months     MAL-ED           PERU                           >=50 cm              NA                 0.5277171    0.4828211   0.5726132
3-6 months     MAL-ED           PERU                           <48 cm               NA                 0.4780367    0.4491818   0.5068916
3-6 months     MAL-ED           PERU                           [48-50) cm           NA                 0.4910810    0.4536038   0.5285582
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.4753142    0.4103163   0.5403120
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.4950878    0.4074680   0.5827076
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.4193362    0.3591523   0.4795202
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.5032330    0.4176275   0.5888384
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.4358950    0.3849726   0.4868174
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.4419014    0.3882918   0.4955109
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.4555178    0.4218608   0.4891747
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               NA                 0.4321206    0.4016489   0.4625924
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.4742078    0.4487408   0.4996748
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.4972409    0.4739134   0.5205684
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.5066387    0.4867134   0.5265639
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.4912256    0.4748912   0.5075600
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                 0.6656594    0.6570606   0.6742583
3-6 months     PROBIT           BELARUS                        <48 cm               NA                 0.6808425    0.6636635   0.6980215
3-6 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.6644772    0.6535188   0.6754356
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.5137367    0.4899706   0.5375028
3-6 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.4663486    0.4461494   0.4865478
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.4936134    0.4702166   0.5170102
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.4367188    0.3807315   0.4927060
3-6 months     ResPak           PAKISTAN                       <48 cm               NA                 0.6080679    0.5130065   0.7031293
3-6 months     ResPak           PAKISTAN                       [48-50) cm           NA                 0.4908196    0.3827659   0.5988733
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.4820325    0.4636521   0.5004128
3-6 months     SAS-CompFeed     INDIA                          <48 cm               NA                 0.4397507    0.4183812   0.4611201
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.4585634    0.4366450   0.4804818
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.4813210    0.4730534   0.4895886
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.4794117    0.4713092   0.4875142
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.4764158    0.4689786   0.4838529
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2632455    0.1659482   0.3605429
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.2536301    0.2214242   0.2858361
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.2634975    0.2198441   0.3071510
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.2136096    0.1978383   0.2293809
6-9 months     COHORTS          GUATEMALA                      <48 cm               NA                 0.2277664    0.2040566   0.2514762
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           NA                 0.2151755    0.1946818   0.2356693
6-9 months     COHORTS          INDIA                          >=50 cm              NA                 0.2991676    0.2903290   0.3080062
6-9 months     COHORTS          INDIA                          <48 cm               NA                 0.2682718    0.2616004   0.2749433
6-9 months     COHORTS          INDIA                          [48-50) cm           NA                 0.2828458    0.2758600   0.2898316
6-9 months     EE               PAKISTAN                       >=50 cm              NA                 0.2230551    0.1691532   0.2769570
6-9 months     EE               PAKISTAN                       <48 cm               NA                 0.2452543    0.2211106   0.2693980
6-9 months     EE               PAKISTAN                       [48-50) cm           NA                 0.2448737    0.2055231   0.2842243
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1797732    0.1507570   0.2087895
6-9 months     GMS-Nepal        NEPAL                          <48 cm               NA                 0.1939139    0.1753856   0.2124422
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1788982    0.1602262   0.1975701
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.2516885    0.2278167   0.2755604
6-9 months     IRC              INDIA                          <48 cm               NA                 0.2840343    0.2543449   0.3137237
6-9 months     IRC              INDIA                          [48-50) cm           NA                 0.2659462    0.2437778   0.2881146
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.2405994    0.2303405   0.2508582
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               NA                 0.2373615    0.2293300   0.2453930
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.2451761    0.2345117   0.2558404
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                 0.2178903    0.1967284   0.2390523
6-9 months     Keneba           GAMBIA                         <48 cm               NA                 0.1882723    0.1393709   0.2371738
6-9 months     Keneba           GAMBIA                         [48-50) cm           NA                 0.1936424    0.1692696   0.2180153
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.2272020    0.1962778   0.2581263
6-9 months     MAL-ED           BANGLADESH                     <48 cm               NA                 0.2460743    0.2255195   0.2666291
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.2452705    0.2191654   0.2713756
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.3868985    0.3337293   0.4400676
6-9 months     MAL-ED           BRAZIL                         <48 cm               NA                 0.3432038    0.2431500   0.4432577
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           NA                 0.3716067    0.2848621   0.4583514
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                 0.3115097    0.2440428   0.3789766
6-9 months     MAL-ED           INDIA                          <48 cm               NA                 0.1886486    0.1408661   0.2364311
6-9 months     MAL-ED           INDIA                          [48-50) cm           NA                 0.1917611    0.1306184   0.2529037
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                 0.2631954    0.2362385   0.2901524
6-9 months     MAL-ED           NEPAL                          <48 cm               NA                 0.2590818    0.2074918   0.3106718
6-9 months     MAL-ED           NEPAL                          [48-50) cm           NA                 0.2045428    0.1181485   0.2909371
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.2397895    0.2134113   0.2661677
6-9 months     MAL-ED           PERU                           <48 cm               NA                 0.2568051    0.2323706   0.2812396
6-9 months     MAL-ED           PERU                           [48-50) cm           NA                 0.2745856    0.2420682   0.3071030
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2175399    0.1585543   0.2765254
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.3151666    0.2538427   0.3764906
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2993140    0.2503597   0.3482684
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1873793    0.1442651   0.2304936
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.2502174    0.1747404   0.3256943
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.2379498    0.1852197   0.2906798
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.2425696    0.2087398   0.2763994
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               NA                 0.2398644    0.2193010   0.2604277
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.2359404    0.2136967   0.2581841
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2618075    0.2377784   0.2858367
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.2719044    0.2565537   0.2872551
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.2712159    0.2540964   0.2883355
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.4737181    0.4645715   0.4828647
6-9 months     PROBIT           BELARUS                        <48 cm               NA                 0.4544483    0.4315720   0.4773247
6-9 months     PROBIT           BELARUS                        [48-50) cm           NA                 0.4752487    0.4579976   0.4924997
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                 0.2616011    0.2386594   0.2845428
6-9 months     PROVIDE          BANGLADESH                     <48 cm               NA                 0.2439909    0.2285177   0.2594642
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.2500405    0.2288250   0.2712559
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2038331    0.1819787   0.2256876
6-9 months     SAS-CompFeed     INDIA                          <48 cm               NA                 0.2121957    0.1945245   0.2298670
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.2067207    0.1788743   0.2345671
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.2657201    0.2573175   0.2741228
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.2527472    0.2448165   0.2606779
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.2579699    0.2503829   0.2655569
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.2269124    0.1024057   0.3514191
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.2282125    0.1747069   0.2817181
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.2161633    0.1712607   0.2610660
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.1587721    0.1446696   0.1728745
9-12 months    COHORTS          GUATEMALA                      <48 cm               NA                 0.1723106    0.1499057   0.1947155
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1533464    0.1359344   0.1707584
9-12 months    COHORTS          INDIA                          >=50 cm              NA                 0.2219951    0.2121611   0.2318291
9-12 months    COHORTS          INDIA                          <48 cm               NA                 0.2212600    0.2141690   0.2283511
9-12 months    COHORTS          INDIA                          [48-50) cm           NA                 0.2162835    0.2092499   0.2233171
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.1656438    0.1013275   0.2299600
9-12 months    EE               PAKISTAN                       <48 cm               NA                 0.2645807    0.2376950   0.2914664
9-12 months    EE               PAKISTAN                       [48-50) cm           NA                 0.2586846    0.2155591   0.3018101
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1391629    0.1111828   0.1671429
9-12 months    GMS-Nepal        NEPAL                          <48 cm               NA                 0.1464958    0.1282028   0.1647887
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1415285    0.1184790   0.1645780
9-12 months    IRC              INDIA                          >=50 cm              NA                 0.1953177    0.1702876   0.2203479
9-12 months    IRC              INDIA                          <48 cm               NA                 0.1966914    0.1689358   0.2244471
9-12 months    IRC              INDIA                          [48-50) cm           NA                 0.2512852    0.2270464   0.2755241
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1559190    0.1460422   0.1657958
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1475961    0.1419596   0.1532325
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.1530951    0.1443012   0.1618891
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                 0.1695362    0.1504875   0.1885849
9-12 months    Keneba           GAMBIA                         <48 cm               NA                 0.1584559    0.1273414   0.1895703
9-12 months    Keneba           GAMBIA                         [48-50) cm           NA                 0.1644479    0.1408908   0.1880051
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1815058    0.1446512   0.2183604
9-12 months    MAL-ED           BANGLADESH                     <48 cm               NA                 0.1628118    0.1415305   0.1840930
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1793510    0.1568373   0.2018647
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.2391977    0.1738786   0.3045169
9-12 months    MAL-ED           BRAZIL                         <48 cm               NA                 0.1714707    0.0669101   0.2760314
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           NA                 0.2748033    0.1525690   0.3970375
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                 0.1477142    0.0875108   0.2079176
9-12 months    MAL-ED           INDIA                          <48 cm               NA                 0.1653194    0.1178047   0.2128340
9-12 months    MAL-ED           INDIA                          [48-50) cm           NA                 0.1668996    0.1322059   0.2015933
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                 0.2183025    0.1683446   0.2682603
9-12 months    MAL-ED           NEPAL                          <48 cm               NA                 0.1632485    0.1030045   0.2234925
9-12 months    MAL-ED           NEPAL                          [48-50) cm           NA                 0.1918312    0.0815618   0.3021005
9-12 months    MAL-ED           PERU                           >=50 cm              NA                 0.2011923    0.1632469   0.2391377
9-12 months    MAL-ED           PERU                           <48 cm               NA                 0.1663109    0.1369619   0.1956599
9-12 months    MAL-ED           PERU                           [48-50) cm           NA                 0.1914210    0.1609826   0.2218595
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2144183    0.1675969   0.2612396
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1839612    0.1250983   0.2428241
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1995609    0.1267593   0.2723624
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1772743    0.1042390   0.2503096
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1782428    0.1320533   0.2244322
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1306472    0.0869370   0.1743573
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1661412    0.1392867   0.1929957
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1672168    0.1481829   0.1862508
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1539606    0.1298452   0.1780760
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.2132733    0.1879847   0.2385619
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1957413    0.1800968   0.2113857
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1938829    0.1776288   0.2101369
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                 0.3671680    0.3520000   0.3823360
9-12 months    PROBIT           BELARUS                        <48 cm               NA                 0.3919115    0.3722636   0.4115594
9-12 months    PROBIT           BELARUS                        [48-50) cm           NA                 0.3579819    0.3407065   0.3752574
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1757234    0.1535666   0.1978802
9-12 months    PROVIDE          BANGLADESH                     <48 cm               NA                 0.1709001    0.1560294   0.1857708
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1826552    0.1691140   0.1961964
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0329406   -0.0588777   0.1247588
9-12 months    ResPak           PAKISTAN                       <48 cm               NA                -0.0068060   -0.0635186   0.0499065
9-12 months    ResPak           PAKISTAN                       [48-50) cm           NA                 0.1232946    0.0496863   0.1969028
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2235101    0.1981619   0.2488583
9-12 months    SAS-CompFeed     INDIA                          <48 cm               NA                 0.1893076    0.1769825   0.2016327
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.1901304    0.1811885   0.1990723
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1751157    0.1666894   0.1835421
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1864442    0.1787813   0.1941071
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1777388    0.1700838   0.1853939
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0937552    0.0249641   0.1625464
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1720257    0.1386938   0.2053576
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1420537    0.0976522   0.1864551
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1553756    0.1395411   0.1712101
12-15 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1591004    0.1361563   0.1820445
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1483107    0.1252929   0.1713285
12-15 months   EE               PAKISTAN                       >=50 cm              NA                 0.1695802    0.1067942   0.2323661
12-15 months   EE               PAKISTAN                       <48 cm               NA                 0.1176295    0.0907919   0.1444672
12-15 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1840994    0.1527492   0.2154497
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2003477    0.1629782   0.2377172
12-15 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.1689844    0.1514342   0.1865347
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1638029    0.1397534   0.1878524
12-15 months   IRC              INDIA                          >=50 cm              NA                 0.1834678    0.1624062   0.2045295
12-15 months   IRC              INDIA                          <48 cm               NA                 0.1866379    0.1601440   0.2131317
12-15 months   IRC              INDIA                          [48-50) cm           NA                 0.1782387    0.1526400   0.2038374
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1377454    0.1286901   0.1468007
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1260167    0.1192826   0.1327509
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.1370460    0.1280817   0.1460102
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1731750    0.1568655   0.1894844
12-15 months   Keneba           GAMBIA                         <48 cm               NA                 0.2011580    0.1694998   0.2328162
12-15 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1889378    0.1691536   0.2087221
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1179605    0.0764366   0.1594843
12-15 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1412412    0.1194399   0.1630425
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1247828    0.0965702   0.1529953
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.2177077    0.1549451   0.2804703
12-15 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.3625353    0.2463877   0.4786829
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.2519596    0.1507485   0.3531706
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1413507    0.0850079   0.1976935
12-15 months   MAL-ED           INDIA                          <48 cm               NA                 0.1798044    0.1106156   0.2489931
12-15 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1899570    0.1330759   0.2468382
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.1114406    0.0589002   0.1639810
12-15 months   MAL-ED           NEPAL                          <48 cm               NA                 0.2001215    0.1680184   0.2322246
12-15 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1685299    0.1227418   0.2143181
12-15 months   MAL-ED           PERU                           >=50 cm              NA                 0.1713869    0.1338617   0.2089121
12-15 months   MAL-ED           PERU                           <48 cm               NA                 0.1353138    0.1036252   0.1670024
12-15 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1286678    0.0992759   0.1580598
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2268743    0.1598411   0.2939075
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.2490103    0.1453686   0.3526520
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2152187    0.1501640   0.2802733
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1619582    0.0834208   0.2404957
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1412759    0.0713736   0.2111782
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1480332    0.0971335   0.1989328
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1395980    0.1121396   0.1670564
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1203035    0.1018694   0.1387377
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1338739    0.1133389   0.1544089
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1644170    0.1391683   0.1896657
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1506583    0.1345401   0.1667765
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1763747    0.1592733   0.1934762
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                 0.2225721    0.1434635   0.3016806
12-15 months   PROBIT           BELARUS                        <48 cm               NA                 0.3048935    0.0973524   0.5124347
12-15 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.2006980    0.1453866   0.2560093
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1826798    0.1600860   0.2052735
12-15 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1764096    0.1579847   0.1948344
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1812326    0.1621079   0.2003572
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.2064340    0.1782814   0.2345866
12-15 months   SAS-CompFeed     INDIA                          <48 cm               NA                 0.1818562    0.1692376   0.1944748
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.1835841    0.1708509   0.1963173
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1437779    0.1266560   0.1608998
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1501430    0.1380874   0.1621986
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1519310    0.1379027   0.1659594
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1954034    0.1144030   0.2764039
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1497742    0.1152618   0.1842866
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1498405    0.1031745   0.1965065
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1284322    0.1079993   0.1488652
15-18 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1359188    0.1081187   0.1637189
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1527667    0.1291320   0.1764014
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0730440    0.0250192   0.1210688
15-18 months   EE               PAKISTAN                       <48 cm               NA                 0.0945948    0.0714821   0.1177075
15-18 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1031201    0.0745616   0.1316786
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.2627827    0.2209701   0.3045954
15-18 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.2206269    0.2013514   0.2399024
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.2489705    0.2187241   0.2792169
15-18 months   IRC              INDIA                          >=50 cm              NA                 0.1674977    0.1429104   0.1920851
15-18 months   IRC              INDIA                          <48 cm               NA                 0.1659938    0.1432130   0.1887746
15-18 months   IRC              INDIA                          [48-50) cm           NA                 0.1465903    0.1233740   0.1698067
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                 0.1653298    0.1545777   0.1760820
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               NA                 0.1609117    0.1534593   0.1683640
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           NA                 0.1558769    0.1465946   0.1651592
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1625779    0.1447546   0.1804011
15-18 months   Keneba           GAMBIA                         <48 cm               NA                 0.1404131    0.1126106   0.1682156
15-18 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1705531    0.1512439   0.1898623
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1805999    0.1324224   0.2287774
15-18 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1351657    0.1115786   0.1587529
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1272087    0.1046426   0.1497748
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.2233328    0.1749416   0.2717239
15-18 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.2330586    0.1602577   0.3058594
15-18 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1996302    0.1199881   0.2792724
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1991621    0.1170220   0.2813023
15-18 months   MAL-ED           INDIA                          <48 cm               NA                 0.1646811    0.1094169   0.2199453
15-18 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1570658    0.1130696   0.2010620
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.1933411    0.1504254   0.2362568
15-18 months   MAL-ED           NEPAL                          <48 cm               NA                 0.1199343    0.0567925   0.1830760
15-18 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1029037    0.0365763   0.1692312
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.1217165    0.0821858   0.1612473
15-18 months   MAL-ED           PERU                           <48 cm               NA                 0.1427120    0.1104576   0.1749663
15-18 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1600986    0.1216863   0.1985109
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.1194564    0.0508318   0.1880810
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1792843    0.0783016   0.2802669
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.2243880    0.1573770   0.2913990
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1511364    0.0709358   0.2313371
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1300247    0.0506342   0.2094152
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1764919    0.1264968   0.2264869
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1550207    0.1253126   0.1847288
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1405854    0.1182004   0.1629704
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1651951    0.1379235   0.1924666
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1727453    0.1469057   0.1985849
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1576053    0.1417718   0.1734388
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1577991    0.1415471   0.1740512
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                 0.2228987    0.1606025   0.2851950
15-18 months   PROBIT           BELARUS                        <48 cm               NA                 0.2167420    0.1780662   0.2554178
15-18 months   PROBIT           BELARUS                        [48-50) cm           NA                 0.2416412   -0.0574408   0.5407232
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1538835    0.1328417   0.1749253
15-18 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1463030    0.1283967   0.1642094
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1667717    0.1459469   0.1875964
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                 0.1875413    0.1548427   0.2202398
15-18 months   SAS-CompFeed     INDIA                          <48 cm               NA                 0.1769010    0.1624727   0.1913293
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           NA                 0.1679975    0.1411875   0.1948076
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1275663    0.1045717   0.1505610
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1360551    0.1205605   0.1515497
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1341042    0.1149692   0.1532393
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1191258    0.0720463   0.1662053
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1368535    0.0983730   0.1753340
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1376768    0.0800186   0.1953350
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1777542    0.1585108   0.1969976
18-21 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1667298    0.1394067   0.1940530
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1488336    0.1246361   0.1730310
18-21 months   EE               PAKISTAN                       >=50 cm              NA                 0.1224896    0.0279207   0.2170585
18-21 months   EE               PAKISTAN                       <48 cm               NA                 0.1309498    0.1063525   0.1555471
18-21 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1183735    0.0832398   0.1535072
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1440441    0.1024238   0.1856644
18-21 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.1444561    0.1238817   0.1650306
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1374215    0.1107603   0.1640827
18-21 months   IRC              INDIA                          >=50 cm              NA                 0.1728545    0.1464909   0.1992182
18-21 months   IRC              INDIA                          <48 cm               NA                 0.1588925    0.1324809   0.1853042
18-21 months   IRC              INDIA                          [48-50) cm           NA                 0.1500093    0.1306688   0.1693499
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1680937    0.1506804   0.1855069
18-21 months   Keneba           GAMBIA                         <48 cm               NA                 0.1352225    0.1038234   0.1666216
18-21 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1416546    0.1189086   0.1644005
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1606606    0.1165373   0.2047838
18-21 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1411170    0.1177415   0.1644925
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1394690    0.1118373   0.1671008
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.1434547    0.0807874   0.2061220
18-21 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.0533904   -0.0264272   0.1332080
18-21 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1170323    0.0495863   0.1844784
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                 0.1861670    0.1344450   0.2378891
18-21 months   MAL-ED           INDIA                          <48 cm               NA                 0.1578712    0.1217195   0.1940228
18-21 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1380163    0.1041522   0.1718805
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.2242407    0.1604344   0.2880470
18-21 months   MAL-ED           NEPAL                          <48 cm               NA                 0.1562026    0.0904716   0.2219337
18-21 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1297753    0.0709170   0.1886335
18-21 months   MAL-ED           PERU                           >=50 cm              NA                 0.1813498    0.1357796   0.2269199
18-21 months   MAL-ED           PERU                           <48 cm               NA                 0.1413865    0.1082139   0.1745590
18-21 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1529085    0.1198637   0.1859532
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2284502    0.1576682   0.2992322
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1314611    0.0076309   0.2552913
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1553155    0.1008701   0.2097610
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1570544    0.0950882   0.2190206
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1431789    0.0693359   0.2170219
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1384777    0.0842114   0.1927440
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1910239    0.1553378   0.2267101
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1725495    0.1472130   0.1978861
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1656825    0.1387851   0.1925800
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1517136    0.1282887   0.1751384
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1469820    0.1292233   0.1647408
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1342322    0.1173398   0.1511246
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1464383    0.1201871   0.1726895
18-21 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1274409    0.1107591   0.1441227
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1247462    0.1061736   0.1433189
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.1147035    0.0676219   0.1617852
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1210268    0.0999722   0.1420815
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.1222928    0.0862045   0.1583810
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.1350413    0.0674718   0.2026108
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               NA                 0.1402326    0.0962005   0.1842646
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           NA                 0.1541486    0.1050613   0.2032358
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.1897732    0.1703304   0.2092160
21-24 months   COHORTS          GUATEMALA                      <48 cm               NA                 0.1905772    0.1628443   0.2183101
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           NA                 0.1792978    0.1601577   0.1984379
21-24 months   EE               PAKISTAN                       >=50 cm              NA                 0.2790531    0.1372129   0.4208933
21-24 months   EE               PAKISTAN                       <48 cm               NA                 0.1845354    0.1561805   0.2128903
21-24 months   EE               PAKISTAN                       [48-50) cm           NA                 0.1973179    0.1409431   0.2536926
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.1416017    0.0827752   0.2004281
21-24 months   GMS-Nepal        NEPAL                          <48 cm               NA                 0.1975736    0.1604969   0.2346503
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           NA                 0.1815924    0.1413855   0.2217992
21-24 months   IRC              INDIA                          >=50 cm              NA                 0.1902976    0.1667742   0.2138209
21-24 months   IRC              INDIA                          <48 cm               NA                 0.1549855    0.1244834   0.1854876
21-24 months   IRC              INDIA                          [48-50) cm           NA                 0.1813628    0.1585146   0.2042109
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                 0.1746433    0.1566586   0.1926281
21-24 months   Keneba           GAMBIA                         <48 cm               NA                 0.1547253    0.1230545   0.1863962
21-24 months   Keneba           GAMBIA                         [48-50) cm           NA                 0.1672509    0.1448945   0.1896074
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.1285851    0.1012229   0.1559472
21-24 months   MAL-ED           BANGLADESH                     <48 cm               NA                 0.1494548    0.1247822   0.1741273
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           NA                 0.1609101    0.1319833   0.1898369
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                 0.1940674    0.1132423   0.2748924
21-24 months   MAL-ED           BRAZIL                         <48 cm               NA                 0.1219669    0.0114571   0.2324767
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           NA                 0.1472626    0.0987665   0.1957586
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                 0.2048823    0.1404900   0.2692745
21-24 months   MAL-ED           INDIA                          <48 cm               NA                 0.1305340    0.0845990   0.1764690
21-24 months   MAL-ED           INDIA                          [48-50) cm           NA                 0.1474209    0.0987780   0.1960638
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.1455470    0.0731733   0.2179207
21-24 months   MAL-ED           NEPAL                          <48 cm               NA                 0.0923634    0.0277573   0.1569695
21-24 months   MAL-ED           NEPAL                          [48-50) cm           NA                 0.1112621    0.0197860   0.2027382
21-24 months   MAL-ED           PERU                           >=50 cm              NA                 0.2164317    0.1728174   0.2600460
21-24 months   MAL-ED           PERU                           <48 cm               NA                 0.1836774    0.1480040   0.2193509
21-24 months   MAL-ED           PERU                           [48-50) cm           NA                 0.1665423    0.1287173   0.2043672
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.2413098    0.1780548   0.3045648
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               NA                 0.1841743    0.1131610   0.2551877
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           NA                 0.1971383    0.1491717   0.2451048
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.1989411    0.1191672   0.2787149
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               NA                 0.1809560    0.1095284   0.2523835
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           NA                 0.1398784    0.0695981   0.2101587
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                 0.1516787    0.1212009   0.1821564
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               NA                 0.1609361    0.1353613   0.1865109
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           NA                 0.1192365    0.0935517   0.1449213
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.1674764    0.1426614   0.1922913
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               NA                 0.1770724    0.1584618   0.1956829
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           NA                 0.1781936    0.1557325   0.2006547
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.1282831    0.1027619   0.1538044
21-24 months   PROVIDE          BANGLADESH                     <48 cm               NA                 0.1406321    0.1239923   0.1572719
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           NA                 0.1481394    0.1302303   0.1660485
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0667874   -0.0227028   0.1562775
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               NA                 0.1097112    0.0744629   0.1449595
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           NA                 0.0921539    0.0344578   0.1498499


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
0-3 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0851233   -0.2529815    0.0827349
0-3 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0492121   -0.2218297    0.1234054
0-3 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.1765694   -0.2256247   -0.1275141
0-3 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0468804   -0.0870799   -0.0066809
0-3 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0789220   -0.0911064   -0.0667376
0-3 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0251449   -0.0376837   -0.0126061
0-3 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.1223203   -0.2147563   -0.0298843
0-3 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0906118   -0.1978352    0.0166115
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0718272   -0.1195415   -0.0241129
0-3 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0651216   -0.1159520   -0.0142912
0-3 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          <48 cm               >=50 cm           -0.0483672   -0.0953344   -0.0014000
0-3 months     IRC              INDIA                          [48-50) cm           >=50 cm           -0.0233802   -0.0711741    0.0244136
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm           -0.0493871   -0.0620052   -0.0367690
0-3 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm           -0.0178815   -0.0311772   -0.0045858
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0533517   -0.0892760   -0.0174273
0-3 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0256125   -0.0633777    0.0121526
0-3 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0499326   -0.0850136   -0.0148517
0-3 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0389142   -0.0674154   -0.0104130
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0940105   -0.1719619   -0.0160591
0-3 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0548917   -0.1389284    0.0291450
0-3 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0424125   -0.1829354    0.0981105
0-3 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0472898   -0.2097080    0.1151284
0-3 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0655125   -0.2436597    0.1126347
0-3 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.1207576   -0.3033630    0.0618478
0-3 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0485951   -0.1957164    0.0985262
0-3 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.0034969   -0.1699635    0.1769572
0-3 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           <48 cm               >=50 cm           -0.0142476   -0.1018804    0.0733851
0-3 months     MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0023906   -0.0929219    0.0881408
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0307480   -0.1492790    0.0877830
0-3 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0655924   -0.1571883    0.0260036
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.1249767   -0.2235340   -0.0264193
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0722822   -0.1658918    0.0213274
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0653369   -0.1093848   -0.0212889
0-3 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0728629   -0.1152821   -0.0304437
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0663274   -0.1049714   -0.0276835
0-3 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0396671   -0.0786929   -0.0006413
0-3 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.0026381   -0.0101086    0.0153847
0-3 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0160959    0.0055535    0.0266383
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.1185837   -0.1571116   -0.0800558
0-3 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0623410   -0.1020754   -0.0226067
0-3 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1017617   -0.0937917    0.2973151
0-3 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.1595214   -0.0314886    0.3505315
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0567120    0.0296921    0.0837319
0-3 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0833566    0.0512533    0.1154599
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0252726   -0.0384226   -0.0121226
0-3 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0030157   -0.0155026    0.0094713
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0197135   -0.1891394    0.1497124
3-6 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0561962   -0.2265285    0.1141361
3-6 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0114331   -0.0221461    0.0450123
3-6 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0015724   -0.0311847    0.0280399
3-6 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0223240   -0.0328081   -0.0118400
3-6 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0153001   -0.0260968   -0.0045033
3-6 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       <48 cm               >=50 cm           -0.0740100   -0.1547321    0.0067122
3-6 months     EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0257008   -0.1213106    0.0699089
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0383422   -0.0811532    0.0044689
3-6 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0393290   -0.0850653    0.0064073
3-6 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          <48 cm               >=50 cm           -0.0421929   -0.0920784    0.0076925
3-6 months     IRC              INDIA                          [48-50) cm           >=50 cm           -0.0214896   -0.0660463    0.0230671
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     <48 cm               >=50 cm            0.0046963   -0.0074898    0.0168824
3-6 months     JiVitA-3         BANGLADESH                     [48-50) cm           >=50 cm            0.0045259   -0.0084075    0.0174594
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0107603   -0.0324226    0.0109020
3-6 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0264665   -0.0478061   -0.0051269
3-6 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         <48 cm               >=50 cm            0.0127313   -0.0182069    0.0436696
3-6 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0031505   -0.0277374    0.0214363
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0641152   -0.1185447   -0.0096856
3-6 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0513276   -0.1081908    0.0055355
3-6 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0291099   -0.1699571    0.1117373
3-6 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0256806   -0.1157669    0.1671281
3-6 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          <48 cm               >=50 cm            0.1373942    0.0571437    0.2176447
3-6 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0703407   -0.0280091    0.1686905
3-6 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0297314   -0.1125546    0.0530919
3-6 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0561806   -0.1746373    0.0622760
3-6 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           <48 cm               >=50 cm           -0.0496804   -0.1030894    0.0037286
3-6 months     MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0366361   -0.0951939    0.0219217
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0197737   -0.0899086    0.1294560
3-6 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0559779   -0.1440340    0.0320782
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0673379   -0.1669016    0.0322257
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0613316   -0.1626420    0.0399788
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0233971   -0.0688251    0.0220309
3-6 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0186900   -0.0235270    0.0609071
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0093978   -0.0215212    0.0403168
3-6 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0060153   -0.0346315    0.0226009
3-6 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        <48 cm               >=50 cm            0.0151831   -0.0041873    0.0345534
3-6 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0011822   -0.0137907    0.0114263
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0473881   -0.0788609   -0.0159153
3-6 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0201233   -0.0538193    0.0135728
3-6 months     ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       <48 cm               >=50 cm            0.1713491    0.0610258    0.2816725
3-6 months     ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0541008   -0.0675963    0.1757978
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0422818   -0.0747902   -0.0097733
3-6 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0234691   -0.0489197    0.0019816
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0019093   -0.0134735    0.0096549
3-6 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0049052   -0.0160097    0.0061992
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0096154   -0.1122167    0.0929859
6-9 months     CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0002520   -0.1062626    0.1067666
6-9 months     COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0141568   -0.0143647    0.0426784
6-9 months     COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0015660   -0.0242639    0.0273958
6-9 months     COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          <48 cm               >=50 cm           -0.0308958   -0.0419102   -0.0198814
6-9 months     COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0163218   -0.0275220   -0.0051216
6-9 months     EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       <48 cm               >=50 cm            0.0221991   -0.0368570    0.0812553
6-9 months     EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0218185   -0.0448704    0.0885074
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0141406   -0.0203630    0.0486442
6-9 months     GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0008751   -0.0354937    0.0337435
6-9 months     IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          <48 cm               >=50 cm            0.0323457   -0.0057608    0.0704523
6-9 months     IRC              INDIA                          [48-50) cm           >=50 cm            0.0142576   -0.0183240    0.0468393
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0032379   -0.0161503    0.0096745
6-9 months     JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm            0.0045767   -0.0102282    0.0193816
6-9 months     Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0296180   -0.0829230    0.0236870
6-9 months     Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0242479   -0.0565518    0.0080560
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0188723   -0.0182540    0.0559985
6-9 months     MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0180685   -0.0225438    0.0586807
6-9 months     MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0436946   -0.1576372    0.0702479
6-9 months     MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0152917   -0.1178988    0.0873154
6-9 months     MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          <48 cm               >=50 cm           -0.1228611   -0.2055349   -0.0401873
6-9 months     MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.1197486   -0.2107992   -0.0286980
6-9 months     MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0041136   -0.0623219    0.0540947
6-9 months     MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0586527   -0.1491549    0.0318496
6-9 months     MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           <48 cm               >=50 cm            0.0170155   -0.0190769    0.0531079
6-9 months     MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0347961   -0.0075518    0.0771439
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0976268    0.0125655    0.1826880
6-9 months     MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.0817742    0.0046438    0.1589046
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0628380   -0.0249061    0.1505821
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0505704   -0.0182737    0.1194145
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0027052   -0.0422353    0.0368249
6-9 months     NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0066292   -0.0472423    0.0339839
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0100969   -0.0183256    0.0385193
6-9 months     NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0094084   -0.0199174    0.0387342
6-9 months     PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0192698   -0.0453024    0.0067629
6-9 months     PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0015306   -0.0148058    0.0178669
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0176102   -0.0449594    0.0097390
6-9 months     PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0115607   -0.0425057    0.0193844
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          <48 cm               >=50 cm            0.0083626   -0.0213049    0.0380301
6-9 months     SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm            0.0028876   -0.0309770    0.0367521
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm           -0.0129729   -0.0245212   -0.0014247
6-9 months     ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm           -0.0077502   -0.0190730    0.0035726
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0013001   -0.1348148    0.1374150
9-12 months    CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0107491   -0.1432577    0.1217596
9-12 months    COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0135385   -0.0129384    0.0400154
9-12 months    COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0054257   -0.0278423    0.0169910
9-12 months    COHORTS          INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          <48 cm               >=50 cm           -0.0007350   -0.0128431    0.0113731
9-12 months    COHORTS          INDIA                          [48-50) cm           >=50 cm           -0.0057116   -0.0177621    0.0063389
9-12 months    EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       <48 cm               >=50 cm            0.0989370    0.0293436    0.1685303
9-12 months    EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0930408    0.0155156    0.1705660
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0073329   -0.0261259    0.0407917
9-12 months    GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0023656   -0.0336432    0.0383744
9-12 months    IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          <48 cm               >=50 cm            0.0013737   -0.0360217    0.0387691
9-12 months    IRC              INDIA                          [48-50) cm           >=50 cm            0.0559675    0.0210801    0.0908549
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0083229   -0.0194666    0.0028207
9-12 months    JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0028239   -0.0158546    0.0102068
9-12 months    Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0110803   -0.0473785    0.0252179
9-12 months    Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0050883   -0.0351106    0.0249341
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0186940   -0.0614368    0.0240487
9-12 months    MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0021548   -0.0453367    0.0410271
9-12 months    MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0677270   -0.1930356    0.0575816
9-12 months    MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0356055   -0.1038086    0.1750196
9-12 months    MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          <48 cm               >=50 cm            0.0176051   -0.0590897    0.0943000
9-12 months    MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0191854   -0.0502992    0.0886700
9-12 months    MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0550540   -0.1333172    0.0232092
9-12 months    MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0264713   -0.1475296    0.0945870
9-12 months    MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           <48 cm               >=50 cm           -0.0348814   -0.0830266    0.0132638
9-12 months    MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0097713   -0.0593406    0.0397981
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0304571   -0.1071043    0.0461901
9-12 months    MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0148574   -0.1023681    0.0726533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm            0.0009685   -0.0872862    0.0892231
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0466271   -0.1339407    0.0406864
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0010756   -0.0318680    0.0340192
9-12 months    NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0121806   -0.0479477    0.0235865
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0175321   -0.0470680    0.0120039
9-12 months    NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0193904   -0.0494091    0.0106282
9-12 months    PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        <48 cm               >=50 cm            0.0247435    0.0040344    0.0454527
9-12 months    PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0091861   -0.0274030    0.0090309
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0048233   -0.0314924    0.0218459
9-12 months    PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0069318   -0.0189632    0.0328268
9-12 months    ResPak           PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       <48 cm               >=50 cm           -0.0397466   -0.1476675    0.0681743
9-12 months    ResPak           PAKISTAN                       [48-50) cm           >=50 cm            0.0903540   -0.0273268    0.2080348
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0342025   -0.0628971   -0.0055079
9-12 months    SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0333797   -0.0626117   -0.0041477
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0113285   -0.0000562    0.0227132
9-12 months    ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0026231   -0.0087594    0.0140056
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0782705    0.0029526    0.1535884
12-15 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0482985   -0.0328413    0.1294382
12-15 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0037248   -0.0242128    0.0316624
12-15 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0070649   -0.0350507    0.0209209
12-15 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0519506   -0.1200291    0.0161278
12-15 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0145193   -0.0553835    0.0844220
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0313632   -0.0726827    0.0099562
12-15 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0365448   -0.0810777    0.0079882
12-15 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          <48 cm               >=50 cm            0.0031700   -0.0310639    0.0374040
12-15 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0052291   -0.0389362    0.0284779
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0117286   -0.0229181   -0.0005391
12-15 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0006994   -0.0134787    0.0120800
12-15 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         <48 cm               >=50 cm            0.0279830   -0.0076232    0.0635892
12-15 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0157629   -0.0098742    0.0413999
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0232807   -0.0236954    0.0702569
12-15 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0068223   -0.0433868    0.0570314
12-15 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm            0.1448276    0.0091856    0.2804696
12-15 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm            0.0342519   -0.0898494    0.1583532
12-15 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          <48 cm               >=50 cm            0.0384537   -0.0507741    0.1276815
12-15 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm            0.0486064   -0.0314560    0.1286687
12-15 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          <48 cm               >=50 cm            0.0886809    0.0271089    0.1502528
12-15 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm            0.0570893   -0.0126032    0.1267818
12-15 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0360731   -0.0853569    0.0132107
12-15 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0427190   -0.0904697    0.0050316
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0221360   -0.1012550    0.1455270
12-15 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0116556   -0.1071710    0.0838597
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0206824   -0.1265288    0.0851640
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0139251   -0.1081915    0.0803414
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0192944   -0.0522480    0.0136592
12-15 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0057240   -0.0399123    0.0284642
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0137587   -0.0438940    0.0163767
12-15 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0119578   -0.0185490    0.0424645
12-15 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        <48 cm               >=50 cm            0.0823215   -0.1210892    0.2857321
12-15 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm           -0.0218741   -0.1035228    0.0597746
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0062702   -0.0352794    0.0227389
12-15 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0014472   -0.0307824    0.0278879
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0245778   -0.0606384    0.0114827
12-15 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0228499   -0.0528580    0.0071581
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0063651   -0.0146114    0.0273417
12-15 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0081531   -0.0140848    0.0303911
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm           -0.0456292   -0.1342557    0.0429973
15-18 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm           -0.0455630   -0.1387711    0.0476451
15-18 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0074866   -0.0269981    0.0419712
15-18 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm            0.0243345   -0.0069432    0.0556121
15-18 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0215508   -0.0314061    0.0745077
15-18 months   EE               PAKISTAN                       [48-50) cm           >=50 cm            0.0300760   -0.0255925    0.0857446
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm           -0.0421559   -0.0881036    0.0037919
15-18 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0138123   -0.0652870    0.0376624
15-18 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0015039   -0.0350104    0.0320026
15-18 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0209074   -0.0547838    0.0129690
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     <48 cm               >=50 cm           -0.0044182   -0.0171193    0.0082829
15-18 months   JiVitA-4         BANGLADESH                     [48-50) cm           >=50 cm           -0.0094530   -0.0236975    0.0047916
15-18 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0221647   -0.0551944    0.0108649
15-18 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm            0.0079752   -0.0183014    0.0342518
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0454341   -0.0988711    0.0080029
15-18 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0533911   -0.1064857   -0.0002966
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
15-18 months   MAL-ED           PERU                           <48 cm               >=50 cm            0.0209955   -0.0300992    0.0720901
15-18 months   MAL-ED           PERU                           [48-50) cm           >=50 cm            0.0383821   -0.0168001    0.0935642
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm            0.0598279   -0.0630688    0.1827246
15-18 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm            0.1049317    0.0103063    0.1995570
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0211117   -0.1346756    0.0924521
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm            0.0253554   -0.0702906    0.1210014
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0144353   -0.0517995    0.0229290
15-18 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm            0.0101744   -0.0300294    0.0503781
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0151400   -0.0454018    0.0151218
15-18 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0149461   -0.0454122    0.0155199
15-18 months   PROBIT           BELARUS                        >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        <48 cm               >=50 cm           -0.0061567   -0.0773451    0.0650317
15-18 months   PROBIT           BELARUS                        [48-50) cm           >=50 cm            0.0187425   -0.2891537    0.3266386
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0075805   -0.0351729    0.0200120
15-18 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0128882   -0.0167122    0.0424885
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          <48 cm               >=50 cm           -0.0106403   -0.0426446    0.0213640
15-18 months   SAS-CompFeed     INDIA                          [48-50) cm           >=50 cm           -0.0195437   -0.0605469    0.0214594
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0084888   -0.0192740    0.0362515
15-18 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0065379   -0.0234460    0.0365218
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0177277   -0.0433217    0.0787771
18-21 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0185510   -0.0560426    0.0931447
18-21 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm           -0.0110244   -0.0445166    0.0224678
18-21 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0289206   -0.0598810    0.0020397
18-21 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       <48 cm               >=50 cm            0.0084602   -0.0894361    0.1063565
18-21 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0041161   -0.1048093    0.0965771
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0004121   -0.0458090    0.0466332
18-21 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm           -0.0066226   -0.0558273    0.0425821
18-21 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0139620   -0.0516009    0.0236770
18-21 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0228452   -0.0554212    0.0097309
18-21 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0328711   -0.0687924    0.0030502
18-21 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0264391   -0.0551095    0.0022313
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm           -0.0195436   -0.0688447    0.0297576
18-21 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm           -0.0211915   -0.0727453    0.0303622
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
18-21 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0399633   -0.0963569    0.0164303
18-21 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0284413   -0.0846228    0.0277402
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0969891   -0.2419421    0.0479639
18-21 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0731347   -0.1628442    0.0165748
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0138755   -0.1106587    0.0829076
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0185768   -0.1014967    0.0643432
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm           -0.0184744   -0.0622761    0.0253273
18-21 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0253414   -0.0699655    0.0192827
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm           -0.0047315   -0.0342268    0.0247637
18-21 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm           -0.0174813   -0.0464977    0.0115350
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm           -0.0189974   -0.0500876    0.0120928
18-21 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm           -0.0216920   -0.0539167    0.0105326
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0063233   -0.0452124    0.0578590
18-21 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0075892   -0.0519430    0.0671214
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          <48 cm               >=50 cm            0.0051913   -0.0755951    0.0859776
21-24 months   CMC-V-BCS-2002   INDIA                          [48-50) cm           >=50 cm            0.0191073   -0.0644891    0.1027037
21-24 months   COHORTS          GUATEMALA                      >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      <48 cm               >=50 cm            0.0008040   -0.0330540    0.0346620
21-24 months   COHORTS          GUATEMALA                      [48-50) cm           >=50 cm           -0.0104754   -0.0378042    0.0168534
21-24 months   EE               PAKISTAN                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       <48 cm               >=50 cm           -0.0945177   -0.2391643    0.0501289
21-24 months   EE               PAKISTAN                       [48-50) cm           >=50 cm           -0.0817352   -0.2343680    0.0708975
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          <48 cm               >=50 cm            0.0559720   -0.0135383    0.1254822
21-24 months   GMS-Nepal        NEPAL                          [48-50) cm           >=50 cm            0.0399907   -0.0316064    0.1115878
21-24 months   IRC              INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          <48 cm               >=50 cm           -0.0353121   -0.0739706    0.0033464
21-24 months   IRC              INDIA                          [48-50) cm           >=50 cm           -0.0089348   -0.0416754    0.0238058
21-24 months   Keneba           GAMBIA                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         <48 cm               >=50 cm           -0.0199180   -0.0563764    0.0165403
21-24 months   Keneba           GAMBIA                         [48-50) cm           >=50 cm           -0.0073924   -0.0360975    0.0213127
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     <48 cm               >=50 cm            0.0208697   -0.0158651    0.0576045
21-24 months   MAL-ED           BANGLADESH                     [48-50) cm           >=50 cm            0.0323251   -0.0070617    0.0717118
21-24 months   MAL-ED           BRAZIL                         >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         <48 cm               >=50 cm           -0.0721004   -0.2099221    0.0657212
21-24 months   MAL-ED           BRAZIL                         [48-50) cm           >=50 cm           -0.0468048   -0.1416249    0.0480153
21-24 months   MAL-ED           INDIA                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          <48 cm               >=50 cm           -0.0743483   -0.1534456    0.0047491
21-24 months   MAL-ED           INDIA                          [48-50) cm           >=50 cm           -0.0574614   -0.1381614    0.0232386
21-24 months   MAL-ED           NEPAL                          >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          <48 cm               >=50 cm           -0.0531836   -0.1501986    0.0438314
21-24 months   MAL-ED           NEPAL                          [48-50) cm           >=50 cm           -0.0342849   -0.1509290    0.0823592
21-24 months   MAL-ED           PERU                           >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           <48 cm               >=50 cm           -0.0327543   -0.0896086    0.0241000
21-24 months   MAL-ED           PERU                           [48-50) cm           >=50 cm           -0.0498894   -0.1075047    0.0077259
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   <48 cm               >=50 cm           -0.0571355   -0.1522328    0.0379618
21-24 months   MAL-ED           SOUTH AFRICA                   [48-50) cm           >=50 cm           -0.0441715   -0.1234835    0.0351404
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <48 cm               >=50 cm           -0.0179851   -0.1286415    0.0926713
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [48-50) cm           >=50 cm           -0.0590627   -0.1696507    0.0515254
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     <48 cm               >=50 cm            0.0092574   -0.0305636    0.0490784
21-24 months   NIH-Birth        BANGLADESH                     [48-50) cm           >=50 cm           -0.0324422   -0.0723773    0.0074929
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     <48 cm               >=50 cm            0.0095960   -0.0213634    0.0405554
21-24 months   NIH-Crypto       BANGLADESH                     [48-50) cm           >=50 cm            0.0107172   -0.0226191    0.0440536
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     <48 cm               >=50 cm            0.0123490   -0.0177249    0.0424228
21-24 months   PROVIDE          BANGLADESH                     [48-50) cm           >=50 cm            0.0198562   -0.0109340    0.0506465
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              >=50 cm            0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       <48 cm               >=50 cm            0.0429238   -0.0535505    0.1393981
21-24 months   ZVITAMBO         ZIMBABWE                       [48-50) cm           >=50 cm            0.0253665   -0.0810252    0.1317582


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0622100   -0.2052125    0.0807924
0-3 months     COHORTS          GUATEMALA                      >=50 cm              NA                -0.0477037   -0.0654081   -0.0299992
0-3 months     COHORTS          INDIA                          >=50 cm              NA                -0.0424290   -0.0513115   -0.0335465
0-3 months     EE               PAKISTAN                       >=50 cm              NA                -0.0965565   -0.1793254   -0.0137877
0-3 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0559813   -0.0940497   -0.0179130
0-3 months     IRC              INDIA                          >=50 cm              NA                -0.0225783   -0.0485916    0.0034351
0-3 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                -0.0397297   -0.0515347   -0.0279247
0-3 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0444756   -0.0765770   -0.0123742
0-3 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0217661   -0.0344898   -0.0090425
0-3 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0629997   -0.1260484    0.0000490
0-3 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0347776   -0.1018104    0.0322552
0-3 months     MAL-ED           INDIA                          >=50 cm              NA                -0.0727643   -0.2098602    0.0643315
0-3 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0206912   -0.1183438    0.0769614
0-3 months     MAL-ED           PERU                           >=50 cm              NA                -0.0071673   -0.0731541    0.0588195
0-3 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0264772   -0.0813829    0.0284285
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0704995   -0.1320754   -0.0089237
0-3 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0509555   -0.0813391   -0.0205719
0-3 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0419200   -0.0698526   -0.0139874
0-3 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0013708    0.0005338    0.0022078
0-3 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0675578   -0.0949420   -0.0401736
0-3 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.0830260   -0.0340149    0.2000670
0-3 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0568838    0.0384753    0.0752924
0-3 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0087802   -0.0167896   -0.0007707
3-6 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0179995   -0.1610043    0.1250054
3-6 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0016086   -0.0109535    0.0141706
3-6 months     COHORTS          INDIA                          >=50 cm              NA                -0.0151197   -0.0226422   -0.0075971
3-6 months     EE               PAKISTAN                       >=50 cm              NA                -0.0577045   -0.1297438    0.0143348
3-6 months     GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0332341   -0.0676580    0.0011897
3-6 months     IRC              INDIA                          >=50 cm              NA                -0.0213010   -0.0483531    0.0057511
3-6 months     JiVitA-3         BANGLADESH                     >=50 cm              NA                 0.0047305   -0.0065912    0.0160522
3-6 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0120066   -0.0262939    0.0022807
3-6 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0007052   -0.0116008    0.0101905
3-6 months     MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0499463   -0.0933294   -0.0065633
3-6 months     MAL-ED           BRAZIL                         >=50 cm              NA                 0.0022521   -0.0568668    0.0613709
3-6 months     MAL-ED           INDIA                          >=50 cm              NA                 0.0860538    0.0229282    0.1491794
3-6 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0277042   -0.0809081    0.0254997
3-6 months     MAL-ED           PERU                           >=50 cm              NA                -0.0332792   -0.0723596    0.0058011
3-6 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0271984   -0.0786638    0.0242669
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0395850   -0.1099853    0.0308154
3-6 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0011871   -0.0312639    0.0288898
3-6 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0008135   -0.0199589    0.0215859
3-6 months     PROBIT           BELARUS                        >=50 cm              NA                -0.0000633   -0.0011925    0.0010660
3-6 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0246756   -0.0467164   -0.0026347
3-6 months     ResPak           PAKISTAN                       >=50 cm              NA                 0.0611652    0.0016880    0.1206425
3-6 months     SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0301606   -0.0527639   -0.0075573
3-6 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0030368   -0.0100936    0.0040199
6-9 months     CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0017941   -0.0862584    0.0898467
6-9 months     COHORTS          GUATEMALA                      >=50 cm              NA                 0.0031688   -0.0078284    0.0141659
6-9 months     COHORTS          INDIA                          >=50 cm              NA                -0.0180118   -0.0258047   -0.0102190
6-9 months     EE               PAKISTAN                       >=50 cm              NA                 0.0230418   -0.0289197    0.0750033
6-9 months     GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0081493   -0.0185332    0.0348318
6-9 months     IRC              INDIA                          >=50 cm              NA                 0.0145750   -0.0044668    0.0336167
6-9 months     JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0014281   -0.0103653    0.0075091
6-9 months     Keneba           GAMBIA                         >=50 cm              NA                -0.0127472   -0.0279139    0.0024194
6-9 months     MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0137767   -0.0147967    0.0423501
6-9 months     MAL-ED           BRAZIL                         >=50 cm              NA                -0.0357493   -0.0800015    0.0085029
6-9 months     MAL-ED           INDIA                          >=50 cm              NA                -0.0977495   -0.1618733   -0.0336257
6-9 months     MAL-ED           NEPAL                          >=50 cm              NA                -0.0175315   -0.0557663    0.0207034
6-9 months     MAL-ED           PERU                           >=50 cm              NA                 0.0211851   -0.0053068    0.0476770
6-9 months     MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0465564    0.0025258    0.0905869
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0506836    0.0060158    0.0953513
6-9 months     NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0033322   -0.0321564    0.0254921
6-9 months     NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0057022   -0.0146433    0.0260477
6-9 months     PROBIT           BELARUS                        >=50 cm              NA                 0.0000100   -0.0012487    0.0012688
6-9 months     PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0124358   -0.0328116    0.0079400
6-9 months     SAS-CompFeed     INDIA                          >=50 cm              NA                 0.0056060   -0.0188079    0.0300199
6-9 months     ZVITAMBO         ZIMBABWE                       >=50 cm              NA                -0.0074743   -0.0147340   -0.0002146
9-12 months    CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0031695   -0.1162599    0.1099209
9-12 months    COHORTS          GUATEMALA                      >=50 cm              NA                 0.0010243   -0.0087443    0.0107930
9-12 months    COHORTS          INDIA                          >=50 cm              NA                -0.0015529   -0.0101516    0.0070458
9-12 months    EE               PAKISTAN                       >=50 cm              NA                 0.0881566    0.0256542    0.1506591
9-12 months    GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0048238   -0.0217982    0.0314458
9-12 months    IRC              INDIA                          >=50 cm              NA                 0.0195424   -0.0001631    0.0392480
9-12 months    JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0052267   -0.0133639    0.0029105
9-12 months    Keneba           GAMBIA                         >=50 cm              NA                -0.0030592   -0.0158987    0.0097802
9-12 months    MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0108774   -0.0433189    0.0215640
9-12 months    MAL-ED           BRAZIL                         >=50 cm              NA                 0.0127318   -0.0415371    0.0670008
9-12 months    MAL-ED           INDIA                          >=50 cm              NA                 0.0151168   -0.0405442    0.0707779
9-12 months    MAL-ED           NEPAL                          >=50 cm              NA                -0.0304190   -0.0834383    0.0226004
9-12 months    MAL-ED           PERU                           >=50 cm              NA                -0.0173094   -0.0525688    0.0179499
9-12 months    MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0161676   -0.0582471    0.0259119
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0179879   -0.0770002    0.0410244
9-12 months    NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0063494   -0.0300809    0.0173821
9-12 months    NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0154284   -0.0368511    0.0059942
9-12 months    PROBIT           BELARUS                        >=50 cm              NA                -0.0004844   -0.0019223    0.0009534
9-12 months    PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0018082   -0.0167335    0.0203498
9-12 months    ResPak           PAKISTAN                       >=50 cm              NA                 0.0187618   -0.0493346    0.0868582
9-12 months    SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0289802   -0.0530528   -0.0049076
9-12 months    ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0049157   -0.0024694    0.0123009
12-15 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0633563   -0.0001038    0.1268164
12-15 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0020716   -0.0135837    0.0094405
12-15 months   EE               PAKISTAN                       >=50 cm              NA                -0.0385614   -0.0976301    0.0205073
12-15 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0282805   -0.0623527    0.0057917
12-15 months   IRC              INDIA                          >=50 cm              NA                -0.0012719   -0.0190396    0.0164957
12-15 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0055866   -0.0134971    0.0023240
12-15 months   Keneba           GAMBIA                         >=50 cm              NA                 0.0107625   -0.0004903    0.0220153
12-15 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0136974   -0.0228390    0.0502339
12-15 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0017427   -0.0635206    0.0600353
12-15 months   MAL-ED           INDIA                          >=50 cm              NA                 0.0355315   -0.0245807    0.0956438
12-15 months   MAL-ED           NEPAL                          >=50 cm              NA                 0.0528890    0.0095787    0.0961993
12-15 months   MAL-ED           PERU                           >=50 cm              NA                -0.0294746   -0.0630993    0.0041502
12-15 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0029582   -0.0515020    0.0574183
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0042940   -0.0677975    0.0592095
12-15 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0083698   -0.0318480    0.0151083
12-15 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0003567   -0.0220033    0.0212899
12-15 months   PROBIT           BELARUS                        >=50 cm              NA                -0.0000490   -0.0083272    0.0082291
12-15 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0026474   -0.0221834    0.0168886
12-15 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0217721   -0.0500539    0.0065097
12-15 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0059231   -0.0095077    0.0213540
15-18 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                -0.0466980   -0.1204671    0.0270711
15-18 months   COHORTS          GUATEMALA                      >=50 cm              NA                 0.0088061   -0.0053988    0.0230109
15-18 months   EE               PAKISTAN                       >=50 cm              NA                 0.0216228   -0.0241208    0.0673664
15-18 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0280092   -0.0652008    0.0091825
15-18 months   IRC              INDIA                          >=50 cm              NA                -0.0068828   -0.0255482    0.0117825
15-18 months   JiVitA-4         BANGLADESH                     >=50 cm              NA                -0.0052024   -0.0143743    0.0039695
15-18 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0018906   -0.0136024    0.0098211
15-18 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0366103   -0.0780833    0.0048626
15-18 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0050137   -0.0420970    0.0320697
15-18 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0321052   -0.1081828    0.0439723
15-18 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0554053   -0.1015813   -0.0092292
15-18 months   MAL-ED           PERU                           >=50 cm              NA                 0.0227697   -0.0139513    0.0594907
15-18 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                 0.0849171    0.0271212    0.1427129
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                 0.0110646   -0.0565364    0.0786656
15-18 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0015465   -0.0280701    0.0249770
15-18 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0115480   -0.0332420    0.0101460
15-18 months   PROBIT           BELARUS                        >=50 cm              NA                 0.0014799   -0.0272751    0.0302348
15-18 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0024679   -0.0163083    0.0212441
15-18 months   SAS-CompFeed     INDIA                          >=50 cm              NA                -0.0102529   -0.0374639    0.0169581
15-18 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0058108   -0.0152971    0.0269188
18-21 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0187463   -0.0288450    0.0663375
18-21 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0111763   -0.0252125    0.0028599
18-21 months   EE               PAKISTAN                       >=50 cm              NA                 0.0070511   -0.0800552    0.0941574
18-21 months   GMS-Nepal        NEPAL                          >=50 cm              NA                -0.0016493   -0.0384398    0.0351412
18-21 months   IRC              INDIA                          >=50 cm              NA                -0.0123011   -0.0319569    0.0073547
18-21 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0132564   -0.0258646   -0.0006482
18-21 months   MAL-ED           BANGLADESH                     >=50 cm              NA                -0.0152564   -0.0529237    0.0224110
18-21 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0275036   -0.0704561    0.0154489
18-21 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0315791   -0.0804677    0.0173095
18-21 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0542183   -0.1107355    0.0022988
18-21 months   MAL-ED           PERU                           >=50 cm              NA                -0.0274629   -0.0681441    0.0132184
18-21 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0460700   -0.1051605    0.0130206
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0068072   -0.0623065    0.0486921
18-21 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0175375   -0.0487954    0.0137205
18-21 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                -0.0090526   -0.0293796    0.0112743
18-21 months   PROVIDE          BANGLADESH                     >=50 cm              NA                -0.0139501   -0.0361519    0.0082517
18-21 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0056497   -0.0372694    0.0485689
21-24 months   CMC-V-BCS-2002   INDIA                          >=50 cm              NA                 0.0108474   -0.0533700    0.0750648
21-24 months   COHORTS          GUATEMALA                      >=50 cm              NA                -0.0027964   -0.0164245    0.0108318
21-24 months   EE               PAKISTAN                       >=50 cm              NA                -0.0831292   -0.2150862    0.0488277
21-24 months   GMS-Nepal        NEPAL                          >=50 cm              NA                 0.0354965   -0.0185895    0.0895824
21-24 months   IRC              INDIA                          >=50 cm              NA                -0.0142540   -0.0336475    0.0051395
21-24 months   Keneba           GAMBIA                         >=50 cm              NA                -0.0045930   -0.0170895    0.0079036
21-24 months   MAL-ED           BANGLADESH                     >=50 cm              NA                 0.0235668   -0.0026998    0.0498334
21-24 months   MAL-ED           BRAZIL                         >=50 cm              NA                -0.0330870   -0.0886914    0.0225175
21-24 months   MAL-ED           INDIA                          >=50 cm              NA                -0.0564151   -0.1183242    0.0054940
21-24 months   MAL-ED           NEPAL                          >=50 cm              NA                -0.0317313   -0.0945163    0.0310537
21-24 months   MAL-ED           PERU                           >=50 cm              NA                -0.0354657   -0.0757555    0.0048240
21-24 months   MAL-ED           SOUTH AFRICA                   >=50 cm              NA                -0.0295121   -0.0774071    0.0183829
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=50 cm              NA                -0.0341263   -0.1031199    0.0348672
21-24 months   NIH-Birth        BANGLADESH                     >=50 cm              NA                -0.0102425   -0.0374881    0.0170031
21-24 months   NIH-Crypto       BANGLADESH                     >=50 cm              NA                 0.0075737   -0.0139706    0.0291179
21-24 months   PROVIDE          BANGLADESH                     >=50 cm              NA                 0.0136873   -0.0078078    0.0351824
21-24 months   ZVITAMBO         ZIMBABWE                       >=50 cm              NA                 0.0421979   -0.0429731    0.1273690

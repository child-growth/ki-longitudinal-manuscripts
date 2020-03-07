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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mage       stunted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)          0       65      92
Birth       CMC-V-BCS-2002   INDIA                          [20-30)          1       14      92
Birth       CMC-V-BCS-2002   INDIA                          <20              0        7      92
Birth       CMC-V-BCS-2002   INDIA                          <20              1        2      92
Birth       CMC-V-BCS-2002   INDIA                          >=30             0        3      92
Birth       CMC-V-BCS-2002   INDIA                          >=30             1        1      92
Birth       COHORTS          GUATEMALA                      [20-30)          0      386     852
Birth       COHORTS          GUATEMALA                      [20-30)          1       19     852
Birth       COHORTS          GUATEMALA                      <20              0      112     852
Birth       COHORTS          GUATEMALA                      <20              1        9     852
Birth       COHORTS          GUATEMALA                      >=30             0      304     852
Birth       COHORTS          GUATEMALA                      >=30             1       22     852
Birth       COHORTS          INDIA                          [20-30)          0     2795    4715
Birth       COHORTS          INDIA                          [20-30)          1      385    4715
Birth       COHORTS          INDIA                          <20              0      309    4715
Birth       COHORTS          INDIA                          <20              1       59    4715
Birth       COHORTS          INDIA                          >=30             0     1053    4715
Birth       COHORTS          INDIA                          >=30             1      114    4715
Birth       COHORTS          PHILIPPINES                    [20-30)          0     1725    3050
Birth       COHORTS          PHILIPPINES                    [20-30)          1       96    3050
Birth       COHORTS          PHILIPPINES                    <20              0      342    3050
Birth       COHORTS          PHILIPPINES                    <20              1       36    3050
Birth       COHORTS          PHILIPPINES                    >=30             0      796    3050
Birth       COHORTS          PHILIPPINES                    >=30             1       55    3050
Birth       EE               PAKISTAN                       [20-30)          0       61     239
Birth       EE               PAKISTAN                       [20-30)          1       33     239
Birth       EE               PAKISTAN                       <20              0        0     239
Birth       EE               PAKISTAN                       <20              1        1     239
Birth       EE               PAKISTAN                       >=30             0       79     239
Birth       EE               PAKISTAN                       >=30             1       65     239
Birth       GMS-Nepal        NEPAL                          [20-30)          0      385     696
Birth       GMS-Nepal        NEPAL                          [20-30)          1       61     696
Birth       GMS-Nepal        NEPAL                          <20              0      104     696
Birth       GMS-Nepal        NEPAL                          <20              1       45     696
Birth       GMS-Nepal        NEPAL                          >=30             0       85     696
Birth       GMS-Nepal        NEPAL                          >=30             1       16     696
Birth       IRC              INDIA                          [20-30)          0      288     388
Birth       IRC              INDIA                          [20-30)          1       37     388
Birth       IRC              INDIA                          <20              0       28     388
Birth       IRC              INDIA                          <20              1        7     388
Birth       IRC              INDIA                          >=30             0       27     388
Birth       IRC              INDIA                          >=30             1        1     388
Birth       JiVitA-3         BANGLADESH                     [20-30)          0     7657   22444
Birth       JiVitA-3         BANGLADESH                     [20-30)          1     3196   22444
Birth       JiVitA-3         BANGLADESH                     <20              0     5927   22444
Birth       JiVitA-3         BANGLADESH                     <20              1     3545   22444
Birth       JiVitA-3         BANGLADESH                     >=30             0     1477   22444
Birth       JiVitA-3         BANGLADESH                     >=30             1      642   22444
Birth       Keneba           GAMBIA                         [20-30)          0      673    1543
Birth       Keneba           GAMBIA                         [20-30)          1       32    1543
Birth       Keneba           GAMBIA                         <20              0      217    1543
Birth       Keneba           GAMBIA                         <20              1       21    1543
Birth       Keneba           GAMBIA                         >=30             0      570    1543
Birth       Keneba           GAMBIA                         >=30             1       30    1543
Birth       MAL-ED           BANGLADESH                     [20-30)          0      133     231
Birth       MAL-ED           BANGLADESH                     [20-30)          1       27     231
Birth       MAL-ED           BANGLADESH                     <20              0       22     231
Birth       MAL-ED           BANGLADESH                     <20              1        8     231
Birth       MAL-ED           BANGLADESH                     >=30             0       32     231
Birth       MAL-ED           BANGLADESH                     >=30             1        9     231
Birth       MAL-ED           BRAZIL                         [20-30)          0       34      65
Birth       MAL-ED           BRAZIL                         [20-30)          1        7      65
Birth       MAL-ED           BRAZIL                         <20              0        8      65
Birth       MAL-ED           BRAZIL                         <20              1        0      65
Birth       MAL-ED           BRAZIL                         >=30             0       14      65
Birth       MAL-ED           BRAZIL                         >=30             1        2      65
Birth       MAL-ED           INDIA                          [20-30)          0       30      47
Birth       MAL-ED           INDIA                          [20-30)          1        7      47
Birth       MAL-ED           INDIA                          <20              0        5      47
Birth       MAL-ED           INDIA                          <20              1        3      47
Birth       MAL-ED           INDIA                          >=30             0        2      47
Birth       MAL-ED           INDIA                          >=30             1        0      47
Birth       MAL-ED           NEPAL                          [20-30)          0       21      27
Birth       MAL-ED           NEPAL                          [20-30)          1        1      27
Birth       MAL-ED           NEPAL                          <20              0        0      27
Birth       MAL-ED           NEPAL                          <20              1        0      27
Birth       MAL-ED           NEPAL                          >=30             0        4      27
Birth       MAL-ED           NEPAL                          >=30             1        1      27
Birth       MAL-ED           PERU                           [20-30)          0      108     233
Birth       MAL-ED           PERU                           [20-30)          1        6     233
Birth       MAL-ED           PERU                           <20              0       53     233
Birth       MAL-ED           PERU                           <20              1       13     233
Birth       MAL-ED           PERU                           >=30             0       46     233
Birth       MAL-ED           PERU                           >=30             1        7     233
Birth       MAL-ED           SOUTH AFRICA                   [20-30)          0       62     123
Birth       MAL-ED           SOUTH AFRICA                   [20-30)          1        5     123
Birth       MAL-ED           SOUTH AFRICA                   <20              0       20     123
Birth       MAL-ED           SOUTH AFRICA                   <20              1        3     123
Birth       MAL-ED           SOUTH AFRICA                   >=30             0       31     123
Birth       MAL-ED           SOUTH AFRICA                   >=30             1        2     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       57     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       15     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       38     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        8     125
Birth       NIH-Birth        BANGLADESH                     [20-30)          0      336     606
Birth       NIH-Birth        BANGLADESH                     [20-30)          1       74     606
Birth       NIH-Birth        BANGLADESH                     <20              0       62     606
Birth       NIH-Birth        BANGLADESH                     <20              1        8     606
Birth       NIH-Birth        BANGLADESH                     >=30             0      111     606
Birth       NIH-Birth        BANGLADESH                     >=30             1       15     606
Birth       NIH-Crypto       BANGLADESH                     [20-30)          0      422     732
Birth       NIH-Crypto       BANGLADESH                     [20-30)          1       61     732
Birth       NIH-Crypto       BANGLADESH                     <20              0      105     732
Birth       NIH-Crypto       BANGLADESH                     <20              1       25     732
Birth       NIH-Crypto       BANGLADESH                     >=30             0      104     732
Birth       NIH-Crypto       BANGLADESH                     >=30             1       15     732
Birth       PROBIT           BELARUS                        [20-30)          0     9920   13893
Birth       PROBIT           BELARUS                        [20-30)          1       23   13893
Birth       PROBIT           BELARUS                        <20              0     1403   13893
Birth       PROBIT           BELARUS                        <20              1        5   13893
Birth       PROBIT           BELARUS                        >=30             0     2536   13893
Birth       PROBIT           BELARUS                        >=30             1        6   13893
Birth       PROVIDE          BANGLADESH                     [20-30)          0      341     539
Birth       PROVIDE          BANGLADESH                     [20-30)          1       30     539
Birth       PROVIDE          BANGLADESH                     <20              0       61     539
Birth       PROVIDE          BANGLADESH                     <20              1        6     539
Birth       PROVIDE          BANGLADESH                     >=30             0       89     539
Birth       PROVIDE          BANGLADESH                     >=30             1       12     539
Birth       SAS-CompFeed     INDIA                          [20-30)          0      694    1252
Birth       SAS-CompFeed     INDIA                          [20-30)          1      259    1252
Birth       SAS-CompFeed     INDIA                          <20              0      108    1252
Birth       SAS-CompFeed     INDIA                          <20              1       53    1252
Birth       SAS-CompFeed     INDIA                          >=30             0      101    1252
Birth       SAS-CompFeed     INDIA                          >=30             1       37    1252
Birth       ZVITAMBO         ZIMBABWE                       [20-30)          0     8345   13835
Birth       ZVITAMBO         ZIMBABWE                       [20-30)          1      954   13835
Birth       ZVITAMBO         ZIMBABWE                       <20              0     1952   13835
Birth       ZVITAMBO         ZIMBABWE                       <20              1      253   13835
Birth       ZVITAMBO         ZIMBABWE                       >=30             0     2110   13835
Birth       ZVITAMBO         ZIMBABWE                       >=30             1      221   13835
6 months    CMC-V-BCS-2002   INDIA                          [20-30)          0      205     369
6 months    CMC-V-BCS-2002   INDIA                          [20-30)          1       88     369
6 months    CMC-V-BCS-2002   INDIA                          <20              0       23     369
6 months    CMC-V-BCS-2002   INDIA                          <20              1       10     369
6 months    CMC-V-BCS-2002   INDIA                          >=30             0       30     369
6 months    CMC-V-BCS-2002   INDIA                          >=30             1       13     369
6 months    COHORTS          GUATEMALA                      [20-30)          0      286     961
6 months    COHORTS          GUATEMALA                      [20-30)          1      184     961
6 months    COHORTS          GUATEMALA                      <20              0       70     961
6 months    COHORTS          GUATEMALA                      <20              1       48     961
6 months    COHORTS          GUATEMALA                      >=30             0      211     961
6 months    COHORTS          GUATEMALA                      >=30             1      162     961
6 months    COHORTS          INDIA                          [20-30)          0     2712    4904
6 months    COHORTS          INDIA                          [20-30)          1      619    4904
6 months    COHORTS          INDIA                          <20              0      288    4904
6 months    COHORTS          INDIA                          <20              1       83    4904
6 months    COHORTS          INDIA                          >=30             0      943    4904
6 months    COHORTS          INDIA                          >=30             1      259    4904
6 months    COHORTS          PHILIPPINES                    [20-30)          0     1288    2708
6 months    COHORTS          PHILIPPINES                    [20-30)          1      313    2708
6 months    COHORTS          PHILIPPINES                    <20              0      249    2708
6 months    COHORTS          PHILIPPINES                    <20              1       82    2708
6 months    COHORTS          PHILIPPINES                    >=30             0      599    2708
6 months    COHORTS          PHILIPPINES                    >=30             1      177    2708
6 months    EE               PAKISTAN                       [20-30)          0       83     371
6 months    EE               PAKISTAN                       [20-30)          1       76     371
6 months    EE               PAKISTAN                       <20              0        0     371
6 months    EE               PAKISTAN                       <20              1        1     371
6 months    EE               PAKISTAN                       >=30             0      107     371
6 months    EE               PAKISTAN                       >=30             1      104     371
6 months    GMS-Nepal        NEPAL                          [20-30)          0      296     564
6 months    GMS-Nepal        NEPAL                          [20-30)          1       75     564
6 months    GMS-Nepal        NEPAL                          <20              0       80     564
6 months    GMS-Nepal        NEPAL                          <20              1       28     564
6 months    GMS-Nepal        NEPAL                          >=30             0       66     564
6 months    GMS-Nepal        NEPAL                          >=30             1       19     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)          0      124     276
6 months    Guatemala BSC    GUATEMALA                      [20-30)          1       47     276
6 months    Guatemala BSC    GUATEMALA                      <20              0       25     276
6 months    Guatemala BSC    GUATEMALA                      <20              1       21     276
6 months    Guatemala BSC    GUATEMALA                      >=30             0       41     276
6 months    Guatemala BSC    GUATEMALA                      >=30             1       18     276
6 months    IRC              INDIA                          [20-30)          0      255     407
6 months    IRC              INDIA                          [20-30)          1       87     407
6 months    IRC              INDIA                          <20              0       29     407
6 months    IRC              INDIA                          <20              1        7     407
6 months    IRC              INDIA                          >=30             0       23     407
6 months    IRC              INDIA                          >=30             1        6     407
6 months    JiVitA-3         BANGLADESH                     [20-30)          0     5929   16805
6 months    JiVitA-3         BANGLADESH                     [20-30)          1     1750   16805
6 months    JiVitA-3         BANGLADESH                     <20              0     5729   16805
6 months    JiVitA-3         BANGLADESH                     <20              1     2176   16805
6 months    JiVitA-3         BANGLADESH                     >=30             0      922   16805
6 months    JiVitA-3         BANGLADESH                     >=30             1      299   16805
6 months    Keneba           GAMBIA                         [20-30)          0      869    2080
6 months    Keneba           GAMBIA                         [20-30)          1      118    2080
6 months    Keneba           GAMBIA                         <20              0      254    2080
6 months    Keneba           GAMBIA                         <20              1       34    2080
6 months    Keneba           GAMBIA                         >=30             0      664    2080
6 months    Keneba           GAMBIA                         >=30             1      141    2080
6 months    LCNI-5           MALAWI                         [20-30)          0      228     669
6 months    LCNI-5           MALAWI                         [20-30)          1      136     669
6 months    LCNI-5           MALAWI                         <20              0       74     669
6 months    LCNI-5           MALAWI                         <20              1       33     669
6 months    LCNI-5           MALAWI                         >=30             0      117     669
6 months    LCNI-5           MALAWI                         >=30             1       81     669
6 months    MAL-ED           BANGLADESH                     [20-30)          0      136     241
6 months    MAL-ED           BANGLADESH                     [20-30)          1       29     241
6 months    MAL-ED           BANGLADESH                     <20              0       29     241
6 months    MAL-ED           BANGLADESH                     <20              1        6     241
6 months    MAL-ED           BANGLADESH                     >=30             0       32     241
6 months    MAL-ED           BANGLADESH                     >=30             1        9     241
6 months    MAL-ED           BRAZIL                         [20-30)          0      120     209
6 months    MAL-ED           BRAZIL                         [20-30)          1        5     209
6 months    MAL-ED           BRAZIL                         <20              0       37     209
6 months    MAL-ED           BRAZIL                         <20              1        0     209
6 months    MAL-ED           BRAZIL                         >=30             0       46     209
6 months    MAL-ED           BRAZIL                         >=30             1        1     209
6 months    MAL-ED           INDIA                          [20-30)          0      146     234
6 months    MAL-ED           INDIA                          [20-30)          1       33     234
6 months    MAL-ED           INDIA                          <20              0       26     234
6 months    MAL-ED           INDIA                          <20              1        8     234
6 months    MAL-ED           INDIA                          >=30             0       19     234
6 months    MAL-ED           INDIA                          >=30             1        2     234
6 months    MAL-ED           NEPAL                          [20-30)          0      176     236
6 months    MAL-ED           NEPAL                          [20-30)          1        9     236
6 months    MAL-ED           NEPAL                          <20              0        4     236
6 months    MAL-ED           NEPAL                          <20              1        1     236
6 months    MAL-ED           NEPAL                          >=30             0       44     236
6 months    MAL-ED           NEPAL                          >=30             1        2     236
6 months    MAL-ED           PERU                           [20-30)          0      106     273
6 months    MAL-ED           PERU                           [20-30)          1       30     273
6 months    MAL-ED           PERU                           <20              0       60     273
6 months    MAL-ED           PERU                           <20              1       16     273
6 months    MAL-ED           PERU                           >=30             0       47     273
6 months    MAL-ED           PERU                           >=30             1       14     273
6 months    MAL-ED           SOUTH AFRICA                   [20-30)          0       94     254
6 months    MAL-ED           SOUTH AFRICA                   [20-30)          1       24     254
6 months    MAL-ED           SOUTH AFRICA                   <20              0       32     254
6 months    MAL-ED           SOUTH AFRICA                   <20              1       10     254
6 months    MAL-ED           SOUTH AFRICA                   >=30             0       78     254
6 months    MAL-ED           SOUTH AFRICA                   >=30             1       16     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       95     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       33     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0       11     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       82     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1       22     247
6 months    NIH-Birth        BANGLADESH                     [20-30)          0      260     535
6 months    NIH-Birth        BANGLADESH                     [20-30)          1       97     535
6 months    NIH-Birth        BANGLADESH                     <20              0       51     535
6 months    NIH-Birth        BANGLADESH                     <20              1       10     535
6 months    NIH-Birth        BANGLADESH                     >=30             0       81     535
6 months    NIH-Birth        BANGLADESH                     >=30             1       36     535
6 months    NIH-Crypto       BANGLADESH                     [20-30)          0      369     715
6 months    NIH-Crypto       BANGLADESH                     [20-30)          1       93     715
6 months    NIH-Crypto       BANGLADESH                     <20              0      100     715
6 months    NIH-Crypto       BANGLADESH                     <20              1       31     715
6 months    NIH-Crypto       BANGLADESH                     >=30             0       96     715
6 months    NIH-Crypto       BANGLADESH                     >=30             1       26     715
6 months    PROBIT           BELARUS                        [20-30)          0    10901   15760
6 months    PROBIT           BELARUS                        [20-30)          1      415   15760
6 months    PROBIT           BELARUS                        <20              0     1526   15760
6 months    PROBIT           BELARUS                        <20              1       93   15760
6 months    PROBIT           BELARUS                        >=30             0     2713   15760
6 months    PROBIT           BELARUS                        >=30             1      112   15760
6 months    PROVIDE          BANGLADESH                     [20-30)          0      362     604
6 months    PROVIDE          BANGLADESH                     [20-30)          1       62     604
6 months    PROVIDE          BANGLADESH                     <20              0       51     604
6 months    PROVIDE          BANGLADESH                     <20              1       15     604
6 months    PROVIDE          BANGLADESH                     >=30             0       95     604
6 months    PROVIDE          BANGLADESH                     >=30             1       19     604
6 months    SAS-CompFeed     INDIA                          [20-30)          0      731    1336
6 months    SAS-CompFeed     INDIA                          [20-30)          1      286    1336
6 months    SAS-CompFeed     INDIA                          <20              0      127    1336
6 months    SAS-CompFeed     INDIA                          <20              1       44    1336
6 months    SAS-CompFeed     INDIA                          >=30             0       98    1336
6 months    SAS-CompFeed     INDIA                          >=30             1       50    1336
6 months    SAS-FoodSuppl    INDIA                          [20-30)          0      149     380
6 months    SAS-FoodSuppl    INDIA                          [20-30)          1      112     380
6 months    SAS-FoodSuppl    INDIA                          <20              0       20     380
6 months    SAS-FoodSuppl    INDIA                          <20              1       16     380
6 months    SAS-FoodSuppl    INDIA                          >=30             0       48     380
6 months    SAS-FoodSuppl    INDIA                          >=30             1       35     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1183    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1      135    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      132    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       14    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      503    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       45    2012
6 months    ZVITAMBO         ZIMBABWE                       [20-30)          0     4837    8653
6 months    ZVITAMBO         ZIMBABWE                       [20-30)          1      901    8653
6 months    ZVITAMBO         ZIMBABWE                       <20              0     1073    8653
6 months    ZVITAMBO         ZIMBABWE                       <20              1      242    8653
6 months    ZVITAMBO         ZIMBABWE                       >=30             0     1335    8653
6 months    ZVITAMBO         ZIMBABWE                       >=30             1      265    8653
24 months   CMC-V-BCS-2002   INDIA                          [20-30)          0       81     371
24 months   CMC-V-BCS-2002   INDIA                          [20-30)          1      214     371
24 months   CMC-V-BCS-2002   INDIA                          <20              0       13     371
24 months   CMC-V-BCS-2002   INDIA                          <20              1       21     371
24 months   CMC-V-BCS-2002   INDIA                          >=30             0       11     371
24 months   CMC-V-BCS-2002   INDIA                          >=30             1       31     371
24 months   COHORTS          GUATEMALA                      [20-30)          0       89    1064
24 months   COHORTS          GUATEMALA                      [20-30)          1      438    1064
24 months   COHORTS          GUATEMALA                      <20              0       27    1064
24 months   COHORTS          GUATEMALA                      <20              1      125    1064
24 months   COHORTS          GUATEMALA                      >=30             0       84    1064
24 months   COHORTS          GUATEMALA                      >=30             1      301    1064
24 months   COHORTS          INDIA                          [20-30)          0     1136    3692
24 months   COHORTS          INDIA                          [20-30)          1     1327    3692
24 months   COHORTS          INDIA                          <20              0       74    3692
24 months   COHORTS          INDIA                          <20              1      173    3692
24 months   COHORTS          INDIA                          >=30             0      387    3692
24 months   COHORTS          INDIA                          >=30             1      595    3692
24 months   COHORTS          PHILIPPINES                    [20-30)          0      567    2445
24 months   COHORTS          PHILIPPINES                    [20-30)          1      893    2445
24 months   COHORTS          PHILIPPINES                    <20              0       98    2445
24 months   COHORTS          PHILIPPINES                    <20              1      194    2445
24 months   COHORTS          PHILIPPINES                    >=30             0      257    2445
24 months   COHORTS          PHILIPPINES                    >=30             1      436    2445
24 months   EE               PAKISTAN                       [20-30)          0       25     167
24 months   EE               PAKISTAN                       [20-30)          1       40     167
24 months   EE               PAKISTAN                       <20              0        0     167
24 months   EE               PAKISTAN                       <20              1        1     167
24 months   EE               PAKISTAN                       >=30             0       24     167
24 months   EE               PAKISTAN                       >=30             1       77     167
24 months   GMS-Nepal        NEPAL                          [20-30)          0      177     488
24 months   GMS-Nepal        NEPAL                          [20-30)          1      141     488
24 months   GMS-Nepal        NEPAL                          <20              0       50     488
24 months   GMS-Nepal        NEPAL                          <20              1       44     488
24 months   GMS-Nepal        NEPAL                          >=30             0       42     488
24 months   GMS-Nepal        NEPAL                          >=30             1       34     488
24 months   IRC              INDIA                          [20-30)          0      199     409
24 months   IRC              INDIA                          [20-30)          1      144     409
24 months   IRC              INDIA                          <20              0       20     409
24 months   IRC              INDIA                          <20              1       17     409
24 months   IRC              INDIA                          >=30             0       18     409
24 months   IRC              INDIA                          >=30             1       11     409
24 months   JiVitA-3         BANGLADESH                     [20-30)          0     2165    8627
24 months   JiVitA-3         BANGLADESH                     [20-30)          1     1893    8627
24 months   JiVitA-3         BANGLADESH                     <20              0     1872    8627
24 months   JiVitA-3         BANGLADESH                     <20              1     1983    8627
24 months   JiVitA-3         BANGLADESH                     >=30             0      352    8627
24 months   JiVitA-3         BANGLADESH                     >=30             1      362    8627
24 months   Keneba           GAMBIA                         [20-30)          0      534    1714
24 months   Keneba           GAMBIA                         [20-30)          1      256    1714
24 months   Keneba           GAMBIA                         <20              0      145    1714
24 months   Keneba           GAMBIA                         <20              1       72    1714
24 months   Keneba           GAMBIA                         >=30             0      457    1714
24 months   Keneba           GAMBIA                         >=30             1      250    1714
24 months   LCNI-5           MALAWI                         [20-30)          0      134     475
24 months   LCNI-5           MALAWI                         [20-30)          1      116     475
24 months   LCNI-5           MALAWI                         <20              0       48     475
24 months   LCNI-5           MALAWI                         <20              1       32     475
24 months   LCNI-5           MALAWI                         >=30             0       78     475
24 months   LCNI-5           MALAWI                         >=30             1       67     475
24 months   MAL-ED           BANGLADESH                     [20-30)          0       82     212
24 months   MAL-ED           BANGLADESH                     [20-30)          1       64     212
24 months   MAL-ED           BANGLADESH                     <20              0       12     212
24 months   MAL-ED           BANGLADESH                     <20              1       17     212
24 months   MAL-ED           BANGLADESH                     >=30             0       17     212
24 months   MAL-ED           BANGLADESH                     >=30             1       20     212
24 months   MAL-ED           BRAZIL                         [20-30)          0       98     169
24 months   MAL-ED           BRAZIL                         [20-30)          1        4     169
24 months   MAL-ED           BRAZIL                         <20              0       25     169
24 months   MAL-ED           BRAZIL                         <20              1        2     169
24 months   MAL-ED           BRAZIL                         >=30             0       39     169
24 months   MAL-ED           BRAZIL                         >=30             1        1     169
24 months   MAL-ED           INDIA                          [20-30)          0       92     225
24 months   MAL-ED           INDIA                          [20-30)          1       80     225
24 months   MAL-ED           INDIA                          <20              0       21     225
24 months   MAL-ED           INDIA                          <20              1       12     225
24 months   MAL-ED           INDIA                          >=30             0       16     225
24 months   MAL-ED           INDIA                          >=30             1        4     225
24 months   MAL-ED           NEPAL                          [20-30)          0      142     228
24 months   MAL-ED           NEPAL                          [20-30)          1       37     228
24 months   MAL-ED           NEPAL                          <20              0        3     228
24 months   MAL-ED           NEPAL                          <20              1        1     228
24 months   MAL-ED           NEPAL                          >=30             0       33     228
24 months   MAL-ED           NEPAL                          >=30             1       12     228
24 months   MAL-ED           PERU                           [20-30)          0       64     201
24 months   MAL-ED           PERU                           [20-30)          1       34     201
24 months   MAL-ED           PERU                           <20              0       33     201
24 months   MAL-ED           PERU                           <20              1       22     201
24 months   MAL-ED           PERU                           >=30             0       30     201
24 months   MAL-ED           PERU                           >=30             1       18     201
24 months   MAL-ED           SOUTH AFRICA                   [20-30)          0       68     238
24 months   MAL-ED           SOUTH AFRICA                   [20-30)          1       38     238
24 months   MAL-ED           SOUTH AFRICA                   <20              0       25     238
24 months   MAL-ED           SOUTH AFRICA                   <20              1       14     238
24 months   MAL-ED           SOUTH AFRICA                   >=30             0       61     238
24 months   MAL-ED           SOUTH AFRICA                   >=30             1       32     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       85     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0        2     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        7     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       29     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1       63     214
24 months   NIH-Birth        BANGLADESH                     [20-30)          0      123     427
24 months   NIH-Birth        BANGLADESH                     [20-30)          1      166     427
24 months   NIH-Birth        BANGLADESH                     <20              0       21     427
24 months   NIH-Birth        BANGLADESH                     <20              1       23     427
24 months   NIH-Birth        BANGLADESH                     >=30             0       40     427
24 months   NIH-Birth        BANGLADESH                     >=30             1       54     427
24 months   NIH-Crypto       BANGLADESH                     [20-30)          0      244     514
24 months   NIH-Crypto       BANGLADESH                     [20-30)          1       90     514
24 months   NIH-Crypto       BANGLADESH                     <20              0       80     514
24 months   NIH-Crypto       BANGLADESH                     <20              1       21     514
24 months   NIH-Crypto       BANGLADESH                     >=30             0       58     514
24 months   NIH-Crypto       BANGLADESH                     >=30             1       21     514
24 months   PROBIT           BELARUS                        [20-30)          0     2704    4035
24 months   PROBIT           BELARUS                        [20-30)          1      189    4035
24 months   PROBIT           BELARUS                        <20              0      331    4035
24 months   PROBIT           BELARUS                        <20              1       38    4035
24 months   PROBIT           BELARUS                        >=30             0      725    4035
24 months   PROBIT           BELARUS                        >=30             1       48    4035
24 months   PROVIDE          BANGLADESH                     [20-30)          0      277     578
24 months   PROVIDE          BANGLADESH                     [20-30)          1      132     578
24 months   PROVIDE          BANGLADESH                     <20              0       44     578
24 months   PROVIDE          BANGLADESH                     <20              1       20     578
24 months   PROVIDE          BANGLADESH                     >=30             0       67     578
24 months   PROVIDE          BANGLADESH                     >=30             1       38     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)          0      720    1638
24 months   ZVITAMBO         ZIMBABWE                       [20-30)          1      381    1638
24 months   ZVITAMBO         ZIMBABWE                       <20              0      134    1638
24 months   ZVITAMBO         ZIMBABWE                       <20              1       85    1638
24 months   ZVITAMBO         ZIMBABWE                       >=30             0      215    1638
24 months   ZVITAMBO         ZIMBABWE                       >=30             1      103    1638


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/f8a6ab5b-db7b-4d33-b921-593d1271ee51/6c34bf81-f311-425a-b586-9c398770474f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f8a6ab5b-db7b-4d33-b921-593d1271ee51/6c34bf81-f311-425a-b586-9c398770474f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f8a6ab5b-db7b-4d33-b921-593d1271ee51/6c34bf81-f311-425a-b586-9c398770474f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f8a6ab5b-db7b-4d33-b921-593d1271ee51/6c34bf81-f311-425a-b586-9c398770474f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                0.0469136    0.0263077   0.0675195
Birth       COHORTS          GUATEMALA                      <20                  NA                0.0743802    0.0276007   0.1211596
Birth       COHORTS          GUATEMALA                      >=30                 NA                0.0674847    0.0402373   0.0947320
Birth       COHORTS          INDIA                          [20-30)              NA                0.1210692    0.1097302   0.1324082
Birth       COHORTS          INDIA                          <20                  NA                0.1603261    0.1228350   0.1978171
Birth       COHORTS          INDIA                          >=30                 NA                0.0976864    0.0806509   0.1147219
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                0.0527183    0.0424527   0.0629839
Birth       COHORTS          PHILIPPINES                    <20                  NA                0.0952381    0.0656412   0.1248350
Birth       COHORTS          PHILIPPINES                    >=30                 NA                0.0646298    0.0481078   0.0811519
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                0.1367713    0.1048594   0.1686832
Birth       GMS-Nepal        NEPAL                          <20                  NA                0.3020134    0.2282393   0.3757875
Birth       GMS-Nepal        NEPAL                          >=30                 NA                0.1584158    0.0871555   0.2296762
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                0.2944808    0.2846477   0.3043139
Birth       JiVitA-3         BANGLADESH                     <20                  NA                0.3742610    0.3637985   0.3847235
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                0.3029731    0.2811743   0.3247719
Birth       Keneba           GAMBIA                         [20-30)              NA                0.0453901    0.0300196   0.0607606
Birth       Keneba           GAMBIA                         <20                  NA                0.0882353    0.0521888   0.1242818
Birth       Keneba           GAMBIA                         >=30                 NA                0.0500000    0.0325554   0.0674446
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                0.1687500    0.1105909   0.2269091
Birth       MAL-ED           BANGLADESH                     <20                  NA                0.2666667    0.1080808   0.4252526
Birth       MAL-ED           BANGLADESH                     >=30                 NA                0.2195122    0.0925394   0.3464850
Birth       MAL-ED           PERU                           [20-30)              NA                0.0526316    0.0115533   0.0937099
Birth       MAL-ED           PERU                           <20                  NA                0.1969697    0.1008138   0.2931256
Birth       MAL-ED           PERU                           >=30                 NA                0.1320755    0.0407281   0.2234229
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                0.1804878    0.1432301   0.2177455
Birth       NIH-Birth        BANGLADESH                     <20                  NA                0.1142857    0.0396923   0.1888791
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                0.1190476    0.0624552   0.1756400
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                0.1262940    0.0966494   0.1559386
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                0.1923077    0.1245132   0.2601022
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                0.1260504    0.0663762   0.1857246
Birth       PROBIT           BELARUS                        [20-30)              NA                0.0023132    0.0006339   0.0039925
Birth       PROBIT           BELARUS                        <20                  NA                0.0035511    0.0009338   0.0061684
Birth       PROBIT           BELARUS                        >=30                 NA                0.0023603   -0.0020464   0.0067671
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                0.0808625    0.0530956   0.1086295
Birth       PROVIDE          BANGLADESH                     <20                  NA                0.0895522    0.0211170   0.1579875
Birth       PROVIDE          BANGLADESH                     >=30                 NA                0.1188119    0.0556500   0.1819737
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                0.2717733    0.2386239   0.3049228
Birth       SAS-CompFeed     INDIA                          <20                  NA                0.3291925    0.2478693   0.4105158
Birth       SAS-CompFeed     INDIA                          >=30                 NA                0.2681159    0.1857197   0.3505122
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1025917    0.0964244   0.1087590
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                0.1147392    0.1014362   0.1280423
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0948091    0.0829162   0.1067020
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.3003413    0.2477814   0.3529012
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303    0.1460192   0.4600414
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256    0.1648685   0.4397826
6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.3914894    0.3473405   0.4356382
6 months    COHORTS          GUATEMALA                      <20                  NA                0.4067797    0.3181007   0.4954587
6 months    COHORTS          GUATEMALA                      >=30                 NA                0.4343164    0.3839884   0.4846444
6 months    COHORTS          INDIA                          [20-30)              NA                0.1858301    0.1726195   0.1990406
6 months    COHORTS          INDIA                          <20                  NA                0.2237197    0.1813098   0.2661295
6 months    COHORTS          INDIA                          >=30                 NA                0.2154742    0.1922286   0.2387198
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.1955028    0.1760729   0.2149327
6 months    COHORTS          PHILIPPINES                    <20                  NA                0.2477341    0.2012192   0.2942491
6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.2280928    0.1985647   0.2576209
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.2021563    0.1612539   0.2430588
6 months    GMS-Nepal        NEPAL                          <20                  NA                0.2592593    0.1765371   0.3419814
6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.2235294    0.1348845   0.3121743
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2748538    0.2078188   0.3418888
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                0.4565217    0.3123171   0.6007264
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                0.3050847    0.1873820   0.4227875
6 months    IRC              INDIA                          [20-30)              NA                0.2543860    0.2081720   0.3005999
6 months    IRC              INDIA                          <20                  NA                0.1944444    0.0650020   0.3238868
6 months    IRC              INDIA                          >=30                 NA                0.2068966    0.0592835   0.3545096
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.2278943    0.2172319   0.2385566
6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.2752688    0.2640403   0.2864973
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.2448812    0.2199133   0.2698492
6 months    Keneba           GAMBIA                         [20-30)              NA                0.1195542    0.0993087   0.1397997
6 months    Keneba           GAMBIA                         <20                  NA                0.1180556    0.0807803   0.1553308
6 months    Keneba           GAMBIA                         >=30                 NA                0.1751553    0.1488918   0.2014188
6 months    LCNI-5           MALAWI                         [20-30)              NA                0.3736264    0.3238919   0.4233609
6 months    LCNI-5           MALAWI                         <20                  NA                0.3084112    0.2208382   0.3959842
6 months    LCNI-5           MALAWI                         >=30                 NA                0.4090909    0.3405562   0.4776256
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.1757576    0.1175615   0.2339536
6 months    MAL-ED           BANGLADESH                     <20                  NA                0.1714286    0.0463095   0.2965477
6 months    MAL-ED           BANGLADESH                     >=30                 NA                0.2195122    0.0925509   0.3464735
6 months    MAL-ED           PERU                           [20-30)              NA                0.2205882    0.1507730   0.2904035
6 months    MAL-ED           PERU                           <20                  NA                0.2105263    0.1187015   0.3023512
6 months    MAL-ED           PERU                           >=30                 NA                0.2295082    0.1237867   0.3352297
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.2033898    0.1306200   0.2761596
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.2380952    0.1090311   0.3671594
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.1702128    0.0940890   0.2463365
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.2717087    0.2255212   0.3178962
6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.1639344    0.0709426   0.2569262
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.3076923    0.2239839   0.3914008
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2012987    0.1647103   0.2378871
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.2366412    0.1638086   0.3094738
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.2131148    0.1403980   0.2858315
6 months    PROBIT           BELARUS                        [20-30)              NA                0.0366737    0.0273402   0.0460073
6 months    PROBIT           BELARUS                        <20                  NA                0.0574429    0.0371350   0.0777508
6 months    PROBIT           BELARUS                        >=30                 NA                0.0396460    0.0274428   0.0518492
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                0.1462264    0.1125668   0.1798860
6 months    PROVIDE          BANGLADESH                     <20                  NA                0.2272727    0.1260862   0.3284593
6 months    PROVIDE          BANGLADESH                     >=30                 NA                0.1666667    0.0981984   0.2351349
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.2812193    0.2576970   0.3047416
6 months    SAS-CompFeed     INDIA                          <20                  NA                0.2573099    0.2128107   0.3018092
6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.3378378    0.2581285   0.4175472
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4291188    0.3689929   0.4892447
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.4444444    0.2819115   0.6069774
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.4216867    0.3153073   0.5280662
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1024279    0.0860544   0.1188014
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0958904    0.0481179   0.1436629
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0821168    0.0591249   0.1051087
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1570234    0.1476092   0.1664375
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.1840304    0.1630849   0.2049760
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1656250    0.1474088   0.1838412
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7254237    0.6744260   0.7764214
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471    0.4540795   0.7812146
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952    0.6049464   0.8712441
24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.8311195    0.7991182   0.8631209
24 months   COHORTS          GUATEMALA                      <20                  NA                0.8223684    0.7615796   0.8831573
24 months   COHORTS          GUATEMALA                      >=30                 NA                0.7818182    0.7405435   0.8230929
24 months   COHORTS          INDIA                          [20-30)              NA                0.5387739    0.5190843   0.5584634
24 months   COHORTS          INDIA                          <20                  NA                0.7004049    0.6432701   0.7575396
24 months   COHORTS          INDIA                          >=30                 NA                0.6059063    0.5753393   0.6364734
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.6116438    0.5866389   0.6366487
24 months   COHORTS          PHILIPPINES                    <20                  NA                0.6643836    0.6102114   0.7185558
24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.6291486    0.5931781   0.6651192
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.4433962    0.3887388   0.4980536
24 months   GMS-Nepal        NEPAL                          <20                  NA                0.4680851    0.3671103   0.5690599
24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.4473684    0.3354666   0.5592703
24 months   IRC              INDIA                          [20-30)              NA                0.4198251    0.3675317   0.4721184
24 months   IRC              INDIA                          <20                  NA                0.4594595    0.2986852   0.6202337
24 months   IRC              INDIA                          >=30                 NA                0.3793103    0.2024969   0.5561238
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.4664860    0.4483999   0.4845720
24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.5143969    0.4957214   0.5330724
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.5070028    0.4660721   0.5479335
24 months   Keneba           GAMBIA                         [20-30)              NA                0.3240506    0.2914050   0.3566962
24 months   Keneba           GAMBIA                         <20                  NA                0.3317972    0.2691307   0.3944637
24 months   Keneba           GAMBIA                         >=30                 NA                0.3536068    0.3183556   0.3888580
24 months   LCNI-5           MALAWI                         [20-30)              NA                0.4640000    0.4021162   0.5258838
24 months   LCNI-5           MALAWI                         <20                  NA                0.4000000    0.2925352   0.5074648
24 months   LCNI-5           MALAWI                         >=30                 NA                0.4620690    0.3808349   0.5433031
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.4383562    0.3576805   0.5190318
24 months   MAL-ED           BANGLADESH                     <20                  NA                0.5862069    0.4065297   0.7658841
24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.5405405    0.3795829   0.7014982
24 months   MAL-ED           PERU                           [20-30)              NA                0.3469388    0.2524628   0.4414148
24 months   MAL-ED           PERU                           <20                  NA                0.4000000    0.2702058   0.5297942
24 months   MAL-ED           PERU                           >=30                 NA                0.3750000    0.2377014   0.5122986
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.3584906    0.2670056   0.4499756
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.3589744    0.2081055   0.5098432
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.3440860    0.2473300   0.4408420
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.5743945    0.5173233   0.6314657
24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.5227273    0.3749690   0.6704855
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.5744681    0.4744008   0.6745354
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2694611    0.2218325   0.3170896
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.2079208    0.1286992   0.2871424
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.2658228    0.1683117   0.3633339
24 months   PROBIT           BELARUS                        [20-30)              NA                0.0653301    0.0424754   0.0881848
24 months   PROBIT           BELARUS                        <20                  NA                0.1029810   -0.0073442   0.2133062
24 months   PROBIT           BELARUS                        >=30                 NA                0.0620957    0.0336195   0.0905719
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.3227384    0.2773896   0.3680872
24 months   PROVIDE          BANGLADESH                     <20                  NA                0.3125000    0.1988432   0.4261568
24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.3619048    0.2699087   0.4539008
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.3460490    0.3179411   0.3741570
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.3881279    0.3235659   0.4526898
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3238994    0.2724503   0.3753485


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       COHORTS          INDIA                          NA                   NA                0.1183457   0.1091247   0.1275667
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3289521   0.3215868   0.3363173
Birth       Keneba           GAMBIA                         NA                   NA                0.0537913   0.0425309   0.0650518
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1904762   0.1397281   0.2412242
Birth       MAL-ED           PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1600660   0.1308485   0.1892835
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROBIT           BELARUS                        NA                   NA                0.0024473   0.0007336   0.0041610
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1032165   0.0981467   0.1082863
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    COHORTS          INDIA                          NA                   NA                0.1959625   0.1848518   0.2070732
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3115942   0.2568550   0.3663334
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2514133   0.2432880   0.2595385
6 months    Keneba           GAMBIA                         NA                   NA                0.1408654   0.1259115   0.1558193
6 months    LCNI-5           MALAWI                         NA                   NA                0.3736921   0.3370052   0.4103790
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    MAL-ED           PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2672897   0.2297549   0.3048246
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964215   0.0835208   0.1093221
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1627181   0.1549406   0.1704957
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8120301   0.7885439   0.8355162
24 months   COHORTS          INDIA                          NA                   NA                0.5674431   0.5514601   0.5834261
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4912484   0.4781170   0.5043798
24 months   Keneba           GAMBIA                         NA                   NA                0.3372229   0.3148351   0.3596107
24 months   LCNI-5           MALAWI                         NA                   NA                0.4526316   0.4078220   0.4974412
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED           PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5690867   0.5220618   0.6161115
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3473748   0.3243098   0.3704399


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           1.5854719   0.7362135   3.4143916
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)           1.4384889   0.7921406   2.6122258
Birth       COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           1.3242518   1.0293699   1.7036081
Birth       COHORTS          INDIA                          >=30                 [20-30)           0.8068641   0.6619614   0.9834858
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           1.8065476   1.2519257   2.6068754
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)           1.2259474   0.8890135   1.6905784
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           2.2081637   1.5751650   3.0955405
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1582535   0.6977958   1.9225555
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2709182   1.2199784   1.3239849
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0288383   0.9518382   1.1120673
Birth       Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           1.9439338   1.1434917   3.3046840
Birth       Keneba           GAMBIA                         >=30                 [20-30)           1.1015625   0.6774116   1.7912890
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           1.5802469   0.7947195   3.1422159
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           1.3008130   0.6634287   2.5505598
Birth       MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           3.7424242   1.4905555   9.3963221
Birth       MAL-ED           PERU                           >=30                 [20-30)           2.5094340   0.8844567   7.1199176
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6332046   0.3193333   1.2555786
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.6595882   0.3928211   1.1075183
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.5226986   0.9969618   2.3256770
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9980714   0.5884036   1.6929646
Birth       PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           1.5351716   0.5837072   4.0375581
Birth       PROBIT           BELARUS                        >=30                 [20-30)           1.0203879   0.1810456   5.7509893
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           1.1074627   0.4791575   2.5596459
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)           1.4693069   0.7802980   2.7667159
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)           1.2112760   0.9078177   1.6161722
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)           0.9865424   0.7582438   1.2835792
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1184068   0.9814791   1.2744375
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9241402   0.8041313   1.0620593
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.0089532   0.5839274   1.7433442
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0066068   0.6184143   1.6384762
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.0390567   0.8129138   1.3281100
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.1093950   0.9437630   1.3040957
6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           1.2038938   0.9832449   1.4740583
6 months    COHORTS          INDIA                          >=30                 [20-30)           1.1595228   1.0189888   1.3194385
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.2671641   1.0246377   1.5670952
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1666982   0.9910121   1.3735299
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.2824691   0.8789496   1.8712415
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           1.1057255   0.7084325   1.7258226
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.6609621   1.1144047   2.4755773
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.1099892   0.7032242   1.7520388
6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          <20                  [20-30)           0.7643678   0.3833706   1.5240037
6 months    IRC              INDIA                          >=30                 [20-30)           0.8133175   0.3895112   1.6982449
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2078796   1.1411421   1.2785201
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0745389   0.9631442   1.1988172
6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           0.9874647   0.6901114   1.4129407
6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.4650700   1.1684966   1.8369160
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)           0.8254535   0.6032498   1.1295047
6 months    LCNI-5           MALAWI                         >=30                 [20-30)           1.0949198   0.8840042   1.3561579
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           0.9753695   0.4376232   2.1738920
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           1.2489487   0.6413684   2.4321012
6 months    MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)           0.9543860   0.5567795   1.6359306
6 months    MAL-ED           PERU                           >=30                 [20-30)           1.0404372   0.5949651   1.8194504
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.1706349   0.6114310   2.2412767
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.8368794   0.4719853   1.4838749
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6033463   0.3337253   1.0907975
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1324346   0.8216636   1.5607460
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.1755725   0.8222710   1.6806756
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.0586991   0.7192392   1.5583742
6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)           1.5663216   1.2304837   1.9938203
6 months    PROBIT           BELARUS                        >=30                 [20-30)           1.0810466   0.8585902   1.3611404
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           1.5542522   0.9415647   2.5656229
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1397849   0.7117241   1.8252997
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.9149798   0.7607740   1.1004423
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.2013325   0.9149944   1.5772770
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.0357143   0.7001007   1.5322139
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           0.9826807   0.7363560   1.3114056
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9361745   0.5547878   1.5797441
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8017032   0.5807548   1.1067115
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1719939   1.0305220   1.3328874
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0547794   0.9305939   1.1955371
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8514294   0.6473717   1.1198079
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0174677   0.8383727   1.2348214
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           0.9894707   0.9103452   1.0754736
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9406808   0.8811793   1.0042001
24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           1.2999979   1.1888384   1.4215510
24 months   COHORTS          INDIA                          >=30                 [20-30)           1.1246023   1.0566833   1.1968868
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0862262   0.9915333   1.1899624
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0286193   0.9588042   1.1035178
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0556813   0.8234363   1.3534296
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0089586   0.7634252   1.3334606
24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          <20                  [20-30)           1.0944069   0.7548650   1.5866764
24 months   IRC              INDIA                          >=30                 [20-30)           0.9034962   0.5576727   1.4637713
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.1027061   1.0480086   1.1602582
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0868555   0.9956033   1.1864713
24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           1.0239055   0.8266005   1.2683062
24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.0912085   0.9470120   1.2573609
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.8620690   0.6386716   1.1636073
24 months   LCNI-5           MALAWI                         >=30                 [20-30)           0.9958383   0.7986440   1.2417222
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.3372845   0.9353112   1.9120158
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.2331081   0.8689080   1.7499616
24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           1.1529412   0.7548066   1.7610780
24 months   MAL-ED           PERU                           >=30                 [20-30)           1.0808824   0.6848760   1.7058661
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           1.0013495   0.6124182   1.6372813
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9598189   0.6565591   1.4031521
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.9100493   0.6744359   1.2279739
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0001282   0.8183967   1.2222146
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.7716172   0.5069783   1.1743955
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9864979   0.6565311   1.4823031
24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)           1.5763181   0.6464273   3.8438642
24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.9504918   0.6127291   1.4744439
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           0.9682765   0.6556432   1.4299843
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.1213564   0.8386925   1.4992863
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1215978   0.9320586   1.3496809
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9359927   0.7830542   1.1188016


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0117719   -0.0046688    0.0282125
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0027235   -0.0090614    0.0036145
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.0085932    0.0013782    0.0158082
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                 0.0385161    0.0158831    0.0611490
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0344713    0.0277871    0.0411554
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.0084012   -0.0037298    0.0205323
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                 0.0217262   -0.0139411    0.0573935
Birth       MAL-ED           PERU                           [20-30)              NA                 0.0589564    0.0179966    0.0999162
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0204218   -0.0394864   -0.0013572
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0116841   -0.0068661    0.0302344
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0001341   -0.0006282    0.0008964
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                 0.0081913   -0.0088047    0.0251872
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0069806   -0.0062865    0.0202478
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0006248   -0.0029260    0.0041756
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0004717   -0.0234227    0.0243661
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0185002   -0.0132890    0.0502894
6 months    COHORTS          INDIA                          [20-30)              NA                 0.0101324    0.0023295    0.0179353
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0157232    0.0027785    0.0286678
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0141557   -0.0109176    0.0392290
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0367404   -0.0070980    0.0805788
6 months    IRC              INDIA                          [20-30)              NA                -0.0086857   -0.0260063    0.0086349
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0235190    0.0161081    0.0309300
6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0213112    0.0056745    0.0369479
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0000657   -0.0335168    0.0336482
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0068150   -0.0269196    0.0405497
6 months    MAL-ED           PERU                           [20-30)              NA                -0.0008080   -0.0502006    0.0485845
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0065394   -0.0592253    0.0461465
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0044190   -0.0307839    0.0219460
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0084915   -0.0138827    0.0308657
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0026664    0.0003246    0.0050082
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0127140   -0.0071334    0.0325614
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0032119   -0.0086234    0.0150472
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0001714   -0.0338145    0.0334717
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0060064   -0.0151323    0.0031194
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0056948    0.0000755    0.0113141
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0084426   -0.0323497    0.0154645
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0190895   -0.0427796    0.0046007
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0286693    0.0174496    0.0398890
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0112600   -0.0044796    0.0269997
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0053743   -0.0269564    0.0377050
24 months   IRC              INDIA                          [20-30)              NA                 0.0007128   -0.0203193    0.0217449
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0247625    0.0121215    0.0374034
24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0131722   -0.0110049    0.0373494
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0113684   -0.0538695    0.0311327
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0380589   -0.0076062    0.0837241
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0212204   -0.0472631    0.0897040
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0055494   -0.0734902    0.0623914
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0053078   -0.0378581    0.0272425
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0126517   -0.0400293    0.0147258
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0028235   -0.0043175    0.0099646
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0059813   -0.0188215    0.0307841
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0013258   -0.0147976    0.0174492


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.2005926   -0.1282348    0.4335823
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0230129   -0.0779712    0.0291434
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.1401563    0.0156931    0.2488814
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                 0.2197309    0.0831896    0.3359371
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                 0.1047912    0.0841553    0.1249620
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.1561822   -0.0995395    0.3524302
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                 0.1140625   -0.0926693    0.2816809
Birth       MAL-ED           PERU                           [20-30)              NA                 0.5283401    0.0707564    0.7605977
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1275836   -0.2517561   -0.0157288
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0846811   -0.0594190    0.2091811
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0547917   -0.3031102    0.3143951
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                 0.0919811   -0.1187609    0.2630255
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0250423   -0.0236488    0.0714174
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0060533   -0.0289497    0.0398656
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0015681   -0.0811098    0.0779232
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0451237   -0.0356747    0.1196185
6 months    COHORTS          INDIA                          [20-30)              NA                 0.0517058    0.0111000    0.0906443
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0744377    0.0112091    0.1336232
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0654412   -0.0577158    0.1742582
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1179111   -0.0342598    0.2476930
6 months    IRC              INDIA                          [20-30)              NA                -0.0353509   -0.1082112    0.0327192
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0935472    0.0636135    0.1225240
6 months    Keneba           GAMBIA                         [20-30)              NA                 0.1512876    0.0336555    0.2546004
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0001758   -0.0938534    0.0861222
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0373278   -0.1661830    0.2053239
6 months    MAL-ED           PERU                           [20-30)              NA                -0.0036765   -0.2555603    0.1976758
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0332203   -0.3386458    0.2025192
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0165325   -0.1201071    0.0774648
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0404762   -0.0722415    0.1413446
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0677773    0.0108308    0.1214453
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0799921   -0.0531057    0.1962683
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                 0.0112922   -0.0313819    0.0522007
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0003996   -0.0819879    0.0750364
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0622937   -0.1609727    0.0279979
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0349978   -0.0001352    0.0688966
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0117752   -0.0457112    0.0210595
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0235083   -0.0531660    0.0053141
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0505236    0.0304661    0.0701661
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0180767   -0.0075336    0.0430360
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0119755   -0.0627652    0.0814600
24 months   IRC              INDIA                          [20-30)              NA                 0.0016950   -0.0495915    0.0504755
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0504072    0.0243082    0.0758081
24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0390609   -0.0353750    0.1081455
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0251163   -0.1234739    0.0646303
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0798861   -0.0216336    0.1713177
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0576393   -0.1480413    0.2264706
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0157233   -0.2276749    0.1596360
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0093269   -0.0681852    0.0462882
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0492651   -0.1614003    0.0520432
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0414292   -0.0603184    0.1334130
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                 0.0181959   -0.0602307    0.0908211
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0038166   -0.0436967    0.0491670

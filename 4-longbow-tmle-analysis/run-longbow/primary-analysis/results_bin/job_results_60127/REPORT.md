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

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

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




# Results Detail

## Results Plots
![](/tmp/e84563a2-5292-4852-8908-5ae8311b71fe/19d76358-58e8-4d8f-8725-734a847fb27c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e84563a2-5292-4852-8908-5ae8311b71fe/19d76358-58e8-4d8f-8725-734a847fb27c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e84563a2-5292-4852-8908-5ae8311b71fe/19d76358-58e8-4d8f-8725-734a847fb27c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e84563a2-5292-4852-8908-5ae8311b71fe/19d76358-58e8-4d8f-8725-734a847fb27c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                0.0469136    0.0263077   0.0675195
Birth       COHORTS          GUATEMALA                      <20                  NA                0.0743802    0.0276007   0.1211596
Birth       COHORTS          GUATEMALA                      >=30                 NA                0.0674847    0.0402373   0.0947320
Birth       COHORTS          INDIA                          [20-30)              NA                0.1246844    0.1129569   0.1364119
Birth       COHORTS          INDIA                          <20                  NA                0.1554662    0.1181971   0.1927353
Birth       COHORTS          INDIA                          >=30                 NA                0.0926985    0.0757845   0.1096125
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                0.0541473    0.0437304   0.0645642
Birth       COHORTS          PHILIPPINES                    <20                  NA                0.0844672    0.0567137   0.1122208
Birth       COHORTS          PHILIPPINES                    >=30                 NA                0.0603340    0.0447233   0.0759447
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                0.1385394    0.1060579   0.1710208
Birth       GMS-Nepal        NEPAL                          <20                  NA                0.3062215    0.2285086   0.3839345
Birth       GMS-Nepal        NEPAL                          >=30                 NA                0.1386541    0.0724090   0.2048992
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                0.2978736    0.2875060   0.3082413
Birth       JiVitA-3         BANGLADESH                     <20                  NA                0.3710936    0.3594994   0.3826878
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                0.3115900    0.2860508   0.3371292
Birth       Keneba           GAMBIA                         [20-30)              NA                0.0444286    0.0292876   0.0595695
Birth       Keneba           GAMBIA                         <20                  NA                0.0779573    0.0415126   0.1144021
Birth       Keneba           GAMBIA                         >=30                 NA                0.0504623    0.0319062   0.0690184
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                0.1687500    0.1105909   0.2269091
Birth       MAL-ED           BANGLADESH                     <20                  NA                0.2666667    0.1080808   0.4252526
Birth       MAL-ED           BANGLADESH                     >=30                 NA                0.2195122    0.0925394   0.3464850
Birth       MAL-ED           PERU                           [20-30)              NA                0.0526316    0.0115533   0.0937099
Birth       MAL-ED           PERU                           <20                  NA                0.1969697    0.1008138   0.2931256
Birth       MAL-ED           PERU                           >=30                 NA                0.1320755    0.0407281   0.2234229
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                0.1804878    0.1432301   0.2177455
Birth       NIH-Birth        BANGLADESH                     <20                  NA                0.1142857    0.0396923   0.1888791
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                0.1190476    0.0624552   0.1756400
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                0.1253586    0.0956776   0.1550395
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                0.1858295    0.1176092   0.2540497
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                0.1162302    0.0554873   0.1769732
Birth       PROBIT           BELARUS                        [20-30)              NA                0.0023132    0.0006339   0.0039925
Birth       PROBIT           BELARUS                        <20                  NA                0.0035511    0.0009338   0.0061684
Birth       PROBIT           BELARUS                        >=30                 NA                0.0023603   -0.0020464   0.0067671
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                0.0808625    0.0530956   0.1086295
Birth       PROVIDE          BANGLADESH                     <20                  NA                0.0895522    0.0211170   0.1579875
Birth       PROVIDE          BANGLADESH                     >=30                 NA                0.1188119    0.0556500   0.1819737
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                0.2727234    0.2384541   0.3069928
Birth       SAS-CompFeed     INDIA                          <20                  NA                0.3265844    0.2432556   0.4099133
Birth       SAS-CompFeed     INDIA                          >=30                 NA                0.2724386    0.1755950   0.3692823
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1031479    0.0966851   0.1096107
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                0.1128216    0.0982551   0.1273881
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0964175    0.0824345   0.1104005
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.3029568    0.2500086   0.3559050
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                0.2636064    0.1053737   0.4218391
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3089618    0.1741291   0.4437945
6 months    COHORTS          GUATEMALA                      [20-30)              NA                0.3936134    0.3490533   0.4381736
6 months    COHORTS          GUATEMALA                      <20                  NA                0.4095090    0.3120681   0.5069499
6 months    COHORTS          GUATEMALA                      >=30                 NA                0.4211817    0.3704098   0.4719535
6 months    COHORTS          INDIA                          [20-30)              NA                0.1938331    0.1802263   0.2074398
6 months    COHORTS          INDIA                          <20                  NA                0.2153703    0.1729338   0.2578068
6 months    COHORTS          INDIA                          >=30                 NA                0.1866820    0.1649846   0.2083794
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                0.1986289    0.1790558   0.2182019
6 months    COHORTS          PHILIPPINES                    <20                  NA                0.2303507    0.1841643   0.2765372
6 months    COHORTS          PHILIPPINES                    >=30                 NA                0.2161569    0.1881512   0.2441625
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                0.2059622    0.1642260   0.2476984
6 months    GMS-Nepal        NEPAL                          <20                  NA                0.2660059    0.1792437   0.3527680
6 months    GMS-Nepal        NEPAL                          >=30                 NA                0.1630559    0.0957781   0.2303338
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                0.2758791    0.2086504   0.3431078
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                0.4444817    0.2942805   0.5946830
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                0.3063248    0.1876623   0.4249873
6 months    IRC              INDIA                          [20-30)              NA                0.2543860    0.2081720   0.3005999
6 months    IRC              INDIA                          <20                  NA                0.1944444    0.0650020   0.3238868
6 months    IRC              INDIA                          >=30                 NA                0.2068966    0.0592835   0.3545096
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                0.2349582    0.2237198   0.2461965
6 months    JiVitA-3         BANGLADESH                     <20                  NA                0.2676041    0.2561127   0.2790955
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                0.2539481    0.2282272   0.2796689
6 months    Keneba           GAMBIA                         [20-30)              NA                0.1208839    0.0999963   0.1417715
6 months    Keneba           GAMBIA                         <20                  NA                0.1226104    0.0811198   0.1641010
6 months    Keneba           GAMBIA                         >=30                 NA                0.1690971    0.1434111   0.1947831
6 months    LCNI-5           MALAWI                         [20-30)              NA                0.3684527    0.3191592   0.4177462
6 months    LCNI-5           MALAWI                         <20                  NA                0.2771026    0.1914274   0.3627778
6 months    LCNI-5           MALAWI                         >=30                 NA                0.4077640    0.3395186   0.4760093
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                0.1757576    0.1175615   0.2339536
6 months    MAL-ED           BANGLADESH                     <20                  NA                0.1714286    0.0463095   0.2965477
6 months    MAL-ED           BANGLADESH                     >=30                 NA                0.2195122    0.0925509   0.3464735
6 months    MAL-ED           PERU                           [20-30)              NA                0.2151167    0.1452958   0.2849377
6 months    MAL-ED           PERU                           <20                  NA                0.2057297    0.1142476   0.2972119
6 months    MAL-ED           PERU                           >=30                 NA                0.2204557    0.1133616   0.3275498
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.1988416    0.1206259   0.2770574
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                0.1901743    0.0742651   0.3060834
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                0.1923106    0.1033749   0.2812464
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                0.2723800    0.2265529   0.3182071
6 months    NIH-Birth        BANGLADESH                     <20                  NA                0.1681725    0.0754511   0.2608939
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                0.3034768    0.2221542   0.3847994
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2052976    0.1682238   0.2423714
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                0.2229654    0.1452907   0.3006400
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                0.2275887    0.1534105   0.3017670
6 months    PROBIT           BELARUS                        [20-30)              NA                0.0371857    0.0276102   0.0467612
6 months    PROBIT           BELARUS                        <20                  NA                0.0534305    0.0332553   0.0736058
6 months    PROBIT           BELARUS                        >=30                 NA                0.0459454    0.0294461   0.0624448
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                0.1454330    0.1118099   0.1790562
6 months    PROVIDE          BANGLADESH                     <20                  NA                0.1916046    0.0874470   0.2957622
6 months    PROVIDE          BANGLADESH                     >=30                 NA                0.1528865    0.0842970   0.2214760
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                0.2855455    0.2610558   0.3100352
6 months    SAS-CompFeed     INDIA                          <20                  NA                0.2614871    0.2140656   0.3089087
6 months    SAS-CompFeed     INDIA                          >=30                 NA                0.2993734    0.2046260   0.3941207
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                0.4285299    0.3690720   0.4879877
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                0.4680140    0.2958242   0.6402037
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                0.4297661    0.3230770   0.5364552
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.1021882    0.0857833   0.1185931
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0940426    0.0474537   0.1406314
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0853793    0.0619851   0.1087735
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.1577077    0.1479824   0.1674330
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                0.1693903    0.1474255   0.1913551
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1771232    0.1553429   0.1989034
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.7282336    0.6773507   0.7791165
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                0.6167211    0.4278365   0.8056058
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6687207    0.5357436   0.8016978
24 months   COHORTS          GUATEMALA                      [20-30)              NA                0.8264535    0.7938895   0.8590174
24 months   COHORTS          GUATEMALA                      <20                  NA                0.8347035    0.7757163   0.8936906
24 months   COHORTS          GUATEMALA                      >=30                 NA                0.7796540    0.7387205   0.8205876
24 months   COHORTS          INDIA                          [20-30)              NA                0.5637788    0.5444829   0.5830748
24 months   COHORTS          INDIA                          <20                  NA                0.6879659    0.6334304   0.7425014
24 months   COHORTS          INDIA                          >=30                 NA                0.5528773    0.5215225   0.5842322
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                0.6222405    0.5976850   0.6467961
24 months   COHORTS          PHILIPPINES                    <20                  NA                0.6434136    0.5900480   0.6967792
24 months   COHORTS          PHILIPPINES                    >=30                 NA                0.6220597    0.5880491   0.6560704
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                0.4470936    0.3918995   0.5022877
24 months   GMS-Nepal        NEPAL                          <20                  NA                0.4705364    0.3606696   0.5804033
24 months   GMS-Nepal        NEPAL                          >=30                 NA                0.3979190    0.2946021   0.5012359
24 months   IRC              INDIA                          [20-30)              NA                0.4198922    0.3674697   0.4723148
24 months   IRC              INDIA                          <20                  NA                0.4538938    0.2861421   0.6216454
24 months   IRC              INDIA                          >=30                 NA                0.3828025    0.1911647   0.5744402
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                0.4741886    0.4549651   0.4934122
24 months   JiVitA-3         BANGLADESH                     <20                  NA                0.5136370    0.4942854   0.5329887
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                0.4757802    0.4351581   0.5164023
24 months   Keneba           GAMBIA                         [20-30)              NA                0.3264273    0.2934210   0.3594337
24 months   Keneba           GAMBIA                         <20                  NA                0.3627747    0.2982867   0.4272627
24 months   Keneba           GAMBIA                         >=30                 NA                0.3434765    0.3089062   0.3780469
24 months   LCNI-5           MALAWI                         [20-30)              NA                0.4622221    0.4007873   0.5236569
24 months   LCNI-5           MALAWI                         <20                  NA                0.3746652    0.2641685   0.4851618
24 months   LCNI-5           MALAWI                         >=30                 NA                0.4678712    0.3876760   0.5480664
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                0.4444596    0.3652738   0.5236453
24 months   MAL-ED           BANGLADESH                     <20                  NA                0.6418382    0.4600922   0.8235843
24 months   MAL-ED           BANGLADESH                     >=30                 NA                0.5621947    0.4017590   0.7226303
24 months   MAL-ED           PERU                           [20-30)              NA                0.3318820    0.2398910   0.4238731
24 months   MAL-ED           PERU                           <20                  NA                0.4135061    0.2818539   0.5451583
24 months   MAL-ED           PERU                           >=30                 NA                0.3917714    0.2555927   0.5279501
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                0.3395451    0.2468754   0.4322148
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                0.2826386    0.1259742   0.4393030
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                0.3316259    0.2353964   0.4278553
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                0.5791318    0.5228736   0.6353901
24 months   NIH-Birth        BANGLADESH                     <20                  NA                0.5030022    0.3524963   0.6535081
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                0.5939574    0.5004173   0.6874974
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                0.2661126    0.2187257   0.3134995
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                0.1933453    0.1143427   0.2723479
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                0.2297435    0.1330345   0.3264524
24 months   PROBIT           BELARUS                        [20-30)              NA                0.0659126    0.0410826   0.0907426
24 months   PROBIT           BELARUS                        <20                  NA                0.0758826    0.0125521   0.1392130
24 months   PROBIT           BELARUS                        >=30                 NA                0.0654589    0.0286295   0.1022884
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                0.3341294    0.2889411   0.3793177
24 months   PROVIDE          BANGLADESH                     <20                  NA                0.2877556    0.1742291   0.4012821
24 months   PROVIDE          BANGLADESH                     >=30                 NA                0.3404801    0.2507190   0.4302412
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.3514650    0.3230026   0.3799274
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                0.4006334    0.3293921   0.4718748
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3377831    0.2850431   0.3905232


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
Birth       COHORTS          INDIA                          <20                  [20-30)           1.2468779   0.9639364   1.6128704
Birth       COHORTS          INDIA                          >=30                 [20-30)           0.7434655   0.6056504   0.9126402
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           1.5599532   1.0667789   2.2811231
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)           1.1142568   0.8079438   1.5367012
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           2.2103575   1.5646399   3.1225590
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)           1.0008283   0.5879211   1.7037274
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           1.2458087   1.1917593   1.3023094
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0460475   0.9573971   1.1429066
Birth       Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           1.7546669   0.9839690   3.1290172
Birth       Keneba           GAMBIA                         >=30                 [20-30)           1.1358075   0.6881325   1.8747241
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
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.4823834   0.9575342   2.2949159
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.9271823   0.5221573   1.6463755
Birth       PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           1.5351716   0.5837072   4.0375581
Birth       PROBIT           BELARUS                        >=30                 [20-30)           1.0203879   0.1810456   5.7509893
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           1.1074627   0.4791575   2.5596459
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)           1.4693069   0.7802980   2.7667159
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)           1.1974931   0.8798718   1.6297713
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)           0.9989557   0.7346219   1.3584028
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0937851   0.9476465   1.2624601
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9347502   0.7981798   1.0946881
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8701123   0.4652418   1.6273160
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0198213   0.6368198   1.6331707
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)           1.0403837   0.8011730   1.3510168
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           1.0700389   0.9098535   1.2584258
6 months    COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           1.1111122   0.9018132   1.3689869
6 months    COHORTS          INDIA                          >=30                 [20-30)           0.9631068   0.8417172   1.1020028
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           1.1597042   0.9287572   1.4480791
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0882450   0.9263931   1.2783744
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           1.2915277   0.8798178   1.8958967
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           0.7916790   0.5003294   1.2526860
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           1.6111466   1.0621907   2.4438111
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           1.1103588   0.7037733   1.7518378
6 months    IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          <20                  [20-30)           0.7643678   0.3833706   1.5240037
6 months    IRC              INDIA                          >=30                 [20-30)           0.8133175   0.3895112   1.6982449
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           1.1389437   1.0745083   1.2072431
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0808226   0.9698826   1.2044524
6 months    Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           1.0142824   0.6937967   1.4828100
6 months    Keneba           GAMBIA                         >=30                 [20-30)           1.3988390   1.1129226   1.7582090
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)           0.7520710   0.5375067   1.0522860
6 months    LCNI-5           MALAWI                         >=30                 [20-30)           1.1066928   0.8947286   1.3688720
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           0.9753695   0.4376232   2.1738920
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           1.2489487   0.6413684   2.4321012
6 months    MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)           0.9563633   0.5523400   1.6559198
6 months    MAL-ED           PERU                           >=30                 [20-30)           1.0248189   0.5707341   1.8401803
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.9564106   0.4626944   1.9769447
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9671548   0.5264258   1.7768664
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)           0.6174187   0.3481087   1.0950768
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.1141671   0.8154653   1.5222822
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           1.0860591   0.7337294   1.6075742
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           1.1085795   0.7650837   1.6062929
6 months    PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)           1.4368573   1.0647935   1.9389289
6 months    PROBIT           BELARUS                        >=30                 [20-30)           1.2355670   0.9391403   1.6255566
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           1.3174762   0.7304491   2.3762690
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0512501   0.6351696   1.7398925
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           0.9157458   0.7477389   1.1215016
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           1.0484260   0.7309616   1.5037686
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)           1.0921385   0.7379595   1.6163036
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           1.0028848   0.7567260   1.3291177
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9202881   0.5469283   1.5485214
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8355108   0.6085322   1.1471509
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.0740773   0.9307920   1.2394197
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.1231102   0.9792130   1.2881535
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           0.8468727   0.6186297   1.1593258
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           0.9182778   0.7448300   1.1321161
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           1.0099824   0.9319312   1.0945705
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)           0.9433732   0.8839979   1.0067365
24 months   COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           1.2202762   1.1201087   1.3294014
24 months   COHORTS          INDIA                          >=30                 [20-30)           0.9806635   0.9192861   1.0461388
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           1.0340271   0.9445735   1.1319522
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           0.9997094   0.9362883   1.0674265
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           1.0524339   0.8084558   1.3700404
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8900128   0.6680008   1.1858111
24 months   IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          <20                  [20-30)           1.0809768   0.7317508   1.5968700
24 months   IRC              INDIA                          >=30                 [20-30)           0.9116683   0.5441677   1.5273583
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           1.0831914   1.0279560   1.1413948
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           1.0033563   0.9150049   1.1002388
24 months   Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           1.1113489   0.9068594   1.3619492
24 months   Keneba           GAMBIA                         >=30                 [20-30)           1.0522297   0.9136310   1.2118540
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)           0.8105739   0.5869344   1.1194267
24 months   LCNI-5           MALAWI                         >=30                 [20-30)           1.0122215   0.8169084   1.2542316
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           1.4440868   1.0389611   2.0071847
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           1.2648950   0.9081099   1.7618565
24 months   MAL-ED           PERU                           [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           1.2459431   0.8206827   1.8915644
24 months   MAL-ED           PERU                           >=30                 [20-30)           1.1804540   0.7622183   1.8281793
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)           0.8324037   0.4483750   1.5453491
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           0.9766770   0.6553712   1.4555081
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)           0.8685453   0.6350128   1.1879616
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           1.0255996   0.8571292   1.2271833
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           0.7265544   0.4665384   1.1314852
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           0.8633317   0.5472936   1.3618680
24 months   PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)           1.1512599   0.6434935   2.0596933
24 months   PROBIT           BELARUS                        >=30                 [20-30)           0.9931170   0.5761287   1.7119115
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           0.8612100   0.5688656   1.3037924
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           1.0190067   0.7611561   1.3642072
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           1.1398957   0.9381164   1.3850756
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9610719   0.8075403   1.1437933


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0117719   -0.0046688    0.0282125
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0063387   -0.0130626    0.0003853
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.0071642   -0.0001061    0.0144345
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                 0.0367480    0.0137925    0.0597035
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0310784    0.0238636    0.0382933
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.0093627   -0.0026471    0.0213726
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                 0.0217262   -0.0139411    0.0573935
Birth       MAL-ED           PERU                           [20-30)              NA                 0.0589564    0.0179966    0.0999162
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0204218   -0.0394864   -0.0013572
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0126196   -0.0060263    0.0312654
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0001341   -0.0006282    0.0008964
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                 0.0081913   -0.0088047    0.0251872
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0060306   -0.0072839    0.0193450
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0000686   -0.0039134    0.0040505
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0021438   -0.0265464    0.0222589
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0163762   -0.0158319    0.0485842
6 months    COHORTS          INDIA                          [20-30)              NA                 0.0021294   -0.0059242    0.0101830
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0125971   -0.0001776    0.0253719
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0103499   -0.0153407    0.0360404
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0357151   -0.0080227    0.0794528
6 months    IRC              INDIA                          [20-30)              NA                -0.0086857   -0.0260063    0.0086349
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0164551    0.0085315    0.0243787
6 months    Keneba           GAMBIA                         [20-30)              NA                 0.0199815    0.0039091    0.0360539
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0052394   -0.0279856    0.0384644
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0068150   -0.0269196    0.0405497
6 months    MAL-ED           PERU                           [20-30)              NA                 0.0046635   -0.0448596    0.0541866
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0019913   -0.0619049    0.0579224
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0050903   -0.0303836    0.0202030
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0044926   -0.0181352    0.0271204
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0021544   -0.0001894    0.0044982
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0135074   -0.0062395    0.0332543
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0011144   -0.0157907    0.0135620
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0004175   -0.0324911    0.0333261
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0057667   -0.0148972    0.0033638
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0050104   -0.0010314    0.0110522
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0112524   -0.0347192    0.0122143
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0144234   -0.0382467    0.0093999
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0036643   -0.0071355    0.0144640
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0006633   -0.0141460    0.0154726
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0016769   -0.0311777    0.0345316
24 months   IRC              INDIA                          [20-30)              NA                 0.0006457   -0.0205097    0.0218010
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0170598    0.0034083    0.0307112
24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0107955   -0.0133730    0.0349641
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0095906   -0.0514911    0.0323100
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0319555   -0.0119896    0.0759007
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0362772   -0.0297436    0.1022980
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0133961   -0.0560948    0.0828870
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0100452   -0.0408182    0.0207279
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0093033   -0.0362917    0.0176852
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0022410   -0.0039022    0.0083843
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0054097   -0.0294381    0.0186186
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0040901   -0.0205746    0.0123943


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.2005926   -0.1282348    0.4335823
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0535606   -0.1118394    0.0016635
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.1168490   -0.0087988    0.2268472
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                 0.2096443    0.0704184    0.3280180
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0944770    0.0721481    0.1162686
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.1740569   -0.0788044    0.3676499
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                 0.1140625   -0.0926693    0.2816809
Birth       MAL-ED           PERU                           [20-30)              NA                 0.5283401    0.0707564    0.7605977
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.1275836   -0.2517561   -0.0157288
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0914606   -0.0535283    0.2164959
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0547917   -0.3031102    0.3143951
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                 0.0919811   -0.1187609    0.2630255
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0216340   -0.0274596    0.0683817
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0006644   -0.0386686    0.0385079
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0071266   -0.0916071    0.0708159
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0399429   -0.0419500    0.1153993
6 months    COHORTS          INDIA                          [20-30)              NA                 0.0108663   -0.0310907    0.0511160
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                 0.0596382   -0.0027995    0.1181884
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                 0.0478469   -0.0785493    0.1594305
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.1146205   -0.0372583    0.2442607
6 months    IRC              INDIA                          [20-30)              NA                -0.0353509   -0.1082112    0.0327192
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0654505    0.0333658    0.0964702
6 months    Keneba           GAMBIA                         [20-30)              NA                 0.1418482    0.0203169    0.2483033
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0140206   -0.0790208    0.0990392
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                 0.0373278   -0.1661830    0.2053239
6 months    MAL-ED           PERU                           [20-30)              NA                 0.0212189   -0.2322227    0.2225331
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0101156   -0.3652456    0.2526375
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0190440   -0.1181675    0.0712923
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0214146   -0.0925869    0.1235212
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0547634   -0.0041937    0.1102591
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                 0.0849838   -0.0474863    0.2007011
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0039180   -0.0568329    0.0463475
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                 0.0009733   -0.0787677    0.0748201
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0598072   -0.1585109    0.0304870
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0307919   -0.0070500    0.0672118
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.0156942   -0.0490061    0.0165599
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.0177621   -0.0475594    0.0111876
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0064575   -0.0127593    0.0253097
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                 0.0010649   -0.0229958    0.0245597
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0037367   -0.0722338    0.0743245
24 months   IRC              INDIA                          [20-30)              NA                 0.0015353   -0.0500599    0.0505954
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                 0.0347274    0.0064896    0.0621626
24 months   Keneba           GAMBIA                         [20-30)              NA                 0.0320131   -0.0424188    0.1011303
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0211884   -0.1181045    0.0673270
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                 0.0670750   -0.0300615    0.1550513
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0985367   -0.1000584    0.2612792
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0379556   -0.1807181    0.2161301
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0176514   -0.0732054    0.0350269
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0362263   -0.1467269    0.0636262
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0328822   -0.0580486    0.1159981
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0164569   -0.0922782    0.0541012
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0117744   -0.0603591    0.0345841

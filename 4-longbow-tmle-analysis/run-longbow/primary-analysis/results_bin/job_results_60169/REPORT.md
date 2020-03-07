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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        mage       sstunted   n_cell       n
----------  ---------------  -----------------------------  --------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)           0       77      92
Birth       CMC-V-BCS-2002   INDIA                          [20-30)           1        2      92
Birth       CMC-V-BCS-2002   INDIA                          <20               0        7      92
Birth       CMC-V-BCS-2002   INDIA                          <20               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          >=30              0        4      92
Birth       CMC-V-BCS-2002   INDIA                          >=30              1        0      92
Birth       COHORTS          GUATEMALA                      [20-30)           0      400     852
Birth       COHORTS          GUATEMALA                      [20-30)           1        5     852
Birth       COHORTS          GUATEMALA                      <20               0      120     852
Birth       COHORTS          GUATEMALA                      <20               1        1     852
Birth       COHORTS          GUATEMALA                      >=30              0      321     852
Birth       COHORTS          GUATEMALA                      >=30              1        5     852
Birth       COHORTS          INDIA                          [20-30)           0     3087    4715
Birth       COHORTS          INDIA                          [20-30)           1       93    4715
Birth       COHORTS          INDIA                          <20               0      352    4715
Birth       COHORTS          INDIA                          <20               1       16    4715
Birth       COHORTS          INDIA                          >=30              0     1138    4715
Birth       COHORTS          INDIA                          >=30              1       29    4715
Birth       COHORTS          PHILIPPINES                    [20-30)           0     1802    3050
Birth       COHORTS          PHILIPPINES                    [20-30)           1       19    3050
Birth       COHORTS          PHILIPPINES                    <20               0      368    3050
Birth       COHORTS          PHILIPPINES                    <20               1       10    3050
Birth       COHORTS          PHILIPPINES                    >=30              0      834    3050
Birth       COHORTS          PHILIPPINES                    >=30              1       17    3050
Birth       EE               PAKISTAN                       [20-30)           0       76     239
Birth       EE               PAKISTAN                       [20-30)           1       18     239
Birth       EE               PAKISTAN                       <20               0        1     239
Birth       EE               PAKISTAN                       <20               1        0     239
Birth       EE               PAKISTAN                       >=30              0      115     239
Birth       EE               PAKISTAN                       >=30              1       29     239
Birth       GMS-Nepal        NEPAL                          [20-30)           0      432     696
Birth       GMS-Nepal        NEPAL                          [20-30)           1       14     696
Birth       GMS-Nepal        NEPAL                          <20               0      136     696
Birth       GMS-Nepal        NEPAL                          <20               1       13     696
Birth       GMS-Nepal        NEPAL                          >=30              0       97     696
Birth       GMS-Nepal        NEPAL                          >=30              1        4     696
Birth       IRC              INDIA                          [20-30)           0      313     388
Birth       IRC              INDIA                          [20-30)           1       12     388
Birth       IRC              INDIA                          <20               0       31     388
Birth       IRC              INDIA                          <20               1        4     388
Birth       IRC              INDIA                          >=30              0       28     388
Birth       IRC              INDIA                          >=30              1        0     388
Birth       JiVitA-3         BANGLADESH                     [20-30)           0     9880   22444
Birth       JiVitA-3         BANGLADESH                     [20-30)           1      973   22444
Birth       JiVitA-3         BANGLADESH                     <20               0     8221   22444
Birth       JiVitA-3         BANGLADESH                     <20               1     1251   22444
Birth       JiVitA-3         BANGLADESH                     >=30              0     1896   22444
Birth       JiVitA-3         BANGLADESH                     >=30              1      223   22444
Birth       Keneba           GAMBIA                         [20-30)           0      694    1543
Birth       Keneba           GAMBIA                         [20-30)           1       11    1543
Birth       Keneba           GAMBIA                         <20               0      231    1543
Birth       Keneba           GAMBIA                         <20               1        7    1543
Birth       Keneba           GAMBIA                         >=30              0      589    1543
Birth       Keneba           GAMBIA                         >=30              1       11    1543
Birth       MAL-ED           BANGLADESH                     [20-30)           0      154     231
Birth       MAL-ED           BANGLADESH                     [20-30)           1        6     231
Birth       MAL-ED           BANGLADESH                     <20               0       29     231
Birth       MAL-ED           BANGLADESH                     <20               1        1     231
Birth       MAL-ED           BANGLADESH                     >=30              0       39     231
Birth       MAL-ED           BANGLADESH                     >=30              1        2     231
Birth       MAL-ED           BRAZIL                         [20-30)           0       39      65
Birth       MAL-ED           BRAZIL                         [20-30)           1        2      65
Birth       MAL-ED           BRAZIL                         <20               0        8      65
Birth       MAL-ED           BRAZIL                         <20               1        0      65
Birth       MAL-ED           BRAZIL                         >=30              0       15      65
Birth       MAL-ED           BRAZIL                         >=30              1        1      65
Birth       MAL-ED           INDIA                          [20-30)           0       36      47
Birth       MAL-ED           INDIA                          [20-30)           1        1      47
Birth       MAL-ED           INDIA                          <20               0        7      47
Birth       MAL-ED           INDIA                          <20               1        1      47
Birth       MAL-ED           INDIA                          >=30              0        2      47
Birth       MAL-ED           INDIA                          >=30              1        0      47
Birth       MAL-ED           NEPAL                          [20-30)           0       21      27
Birth       MAL-ED           NEPAL                          [20-30)           1        1      27
Birth       MAL-ED           NEPAL                          <20               0        0      27
Birth       MAL-ED           NEPAL                          <20               1        0      27
Birth       MAL-ED           NEPAL                          >=30              0        5      27
Birth       MAL-ED           NEPAL                          >=30              1        0      27
Birth       MAL-ED           PERU                           [20-30)           0      114     233
Birth       MAL-ED           PERU                           [20-30)           1        0     233
Birth       MAL-ED           PERU                           <20               0       63     233
Birth       MAL-ED           PERU                           <20               1        3     233
Birth       MAL-ED           PERU                           >=30              0       52     233
Birth       MAL-ED           PERU                           >=30              1        1     233
Birth       MAL-ED           SOUTH AFRICA                   [20-30)           0       66     123
Birth       MAL-ED           SOUTH AFRICA                   [20-30)           1        1     123
Birth       MAL-ED           SOUTH AFRICA                   <20               0       22     123
Birth       MAL-ED           SOUTH AFRICA                   <20               1        1     123
Birth       MAL-ED           SOUTH AFRICA                   >=30              0       33     123
Birth       MAL-ED           SOUTH AFRICA                   >=30              1        0     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           0       66     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           1        6     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               0        7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              0       42     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              1        4     125
Birth       NIH-Birth        BANGLADESH                     [20-30)           0      398     606
Birth       NIH-Birth        BANGLADESH                     [20-30)           1       12     606
Birth       NIH-Birth        BANGLADESH                     <20               0       67     606
Birth       NIH-Birth        BANGLADESH                     <20               1        3     606
Birth       NIH-Birth        BANGLADESH                     >=30              0      122     606
Birth       NIH-Birth        BANGLADESH                     >=30              1        4     606
Birth       NIH-Crypto       BANGLADESH                     [20-30)           0      478     732
Birth       NIH-Crypto       BANGLADESH                     [20-30)           1        5     732
Birth       NIH-Crypto       BANGLADESH                     <20               0      127     732
Birth       NIH-Crypto       BANGLADESH                     <20               1        3     732
Birth       NIH-Crypto       BANGLADESH                     >=30              0      117     732
Birth       NIH-Crypto       BANGLADESH                     >=30              1        2     732
Birth       PROBIT           BELARUS                        [20-30)           0     9941   13893
Birth       PROBIT           BELARUS                        [20-30)           1        2   13893
Birth       PROBIT           BELARUS                        <20               0     1407   13893
Birth       PROBIT           BELARUS                        <20               1        1   13893
Birth       PROBIT           BELARUS                        >=30              0     2540   13893
Birth       PROBIT           BELARUS                        >=30              1        2   13893
Birth       PROVIDE          BANGLADESH                     [20-30)           0      370     539
Birth       PROVIDE          BANGLADESH                     [20-30)           1        1     539
Birth       PROVIDE          BANGLADESH                     <20               0       67     539
Birth       PROVIDE          BANGLADESH                     <20               1        0     539
Birth       PROVIDE          BANGLADESH                     >=30              0       98     539
Birth       PROVIDE          BANGLADESH                     >=30              1        3     539
Birth       SAS-CompFeed     INDIA                          [20-30)           0      882    1252
Birth       SAS-CompFeed     INDIA                          [20-30)           1       71    1252
Birth       SAS-CompFeed     INDIA                          <20               0      150    1252
Birth       SAS-CompFeed     INDIA                          <20               1       11    1252
Birth       SAS-CompFeed     INDIA                          >=30              0      129    1252
Birth       SAS-CompFeed     INDIA                          >=30              1        9    1252
Birth       ZVITAMBO         ZIMBABWE                       [20-30)           0     9021   13835
Birth       ZVITAMBO         ZIMBABWE                       [20-30)           1      278   13835
Birth       ZVITAMBO         ZIMBABWE                       <20               0     2122   13835
Birth       ZVITAMBO         ZIMBABWE                       <20               1       83   13835
Birth       ZVITAMBO         ZIMBABWE                       >=30              0     2252   13835
Birth       ZVITAMBO         ZIMBABWE                       >=30              1       79   13835
6 months    CMC-V-BCS-2002   INDIA                          [20-30)           0      261     369
6 months    CMC-V-BCS-2002   INDIA                          [20-30)           1       32     369
6 months    CMC-V-BCS-2002   INDIA                          <20               0       30     369
6 months    CMC-V-BCS-2002   INDIA                          <20               1        3     369
6 months    CMC-V-BCS-2002   INDIA                          >=30              0       36     369
6 months    CMC-V-BCS-2002   INDIA                          >=30              1        7     369
6 months    COHORTS          GUATEMALA                      [20-30)           0      412     961
6 months    COHORTS          GUATEMALA                      [20-30)           1       58     961
6 months    COHORTS          GUATEMALA                      <20               0      109     961
6 months    COHORTS          GUATEMALA                      <20               1        9     961
6 months    COHORTS          GUATEMALA                      >=30              0      316     961
6 months    COHORTS          GUATEMALA                      >=30              1       57     961
6 months    COHORTS          INDIA                          [20-30)           0     3174    4904
6 months    COHORTS          INDIA                          [20-30)           1      157    4904
6 months    COHORTS          INDIA                          <20               0      352    4904
6 months    COHORTS          INDIA                          <20               1       19    4904
6 months    COHORTS          INDIA                          >=30              0     1139    4904
6 months    COHORTS          INDIA                          >=30              1       63    4904
6 months    COHORTS          PHILIPPINES                    [20-30)           0     1545    2708
6 months    COHORTS          PHILIPPINES                    [20-30)           1       56    2708
6 months    COHORTS          PHILIPPINES                    <20               0      310    2708
6 months    COHORTS          PHILIPPINES                    <20               1       21    2708
6 months    COHORTS          PHILIPPINES                    >=30              0      721    2708
6 months    COHORTS          PHILIPPINES                    >=30              1       55    2708
6 months    EE               PAKISTAN                       [20-30)           0      125     371
6 months    EE               PAKISTAN                       [20-30)           1       34     371
6 months    EE               PAKISTAN                       <20               0        1     371
6 months    EE               PAKISTAN                       <20               1        0     371
6 months    EE               PAKISTAN                       >=30              0      165     371
6 months    EE               PAKISTAN                       >=30              1       46     371
6 months    GMS-Nepal        NEPAL                          [20-30)           0      365     564
6 months    GMS-Nepal        NEPAL                          [20-30)           1        6     564
6 months    GMS-Nepal        NEPAL                          <20               0      100     564
6 months    GMS-Nepal        NEPAL                          <20               1        8     564
6 months    GMS-Nepal        NEPAL                          >=30              0       78     564
6 months    GMS-Nepal        NEPAL                          >=30              1        7     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)           0      157     276
6 months    Guatemala BSC    GUATEMALA                      [20-30)           1       14     276
6 months    Guatemala BSC    GUATEMALA                      <20               0       42     276
6 months    Guatemala BSC    GUATEMALA                      <20               1        4     276
6 months    Guatemala BSC    GUATEMALA                      >=30              0       52     276
6 months    Guatemala BSC    GUATEMALA                      >=30              1        7     276
6 months    IRC              INDIA                          [20-30)           0      317     407
6 months    IRC              INDIA                          [20-30)           1       25     407
6 months    IRC              INDIA                          <20               0       34     407
6 months    IRC              INDIA                          <20               1        2     407
6 months    IRC              INDIA                          >=30              0       27     407
6 months    IRC              INDIA                          >=30              1        2     407
6 months    JiVitA-3         BANGLADESH                     [20-30)           0     7286   16805
6 months    JiVitA-3         BANGLADESH                     [20-30)           1      393   16805
6 months    JiVitA-3         BANGLADESH                     <20               0     7348   16805
6 months    JiVitA-3         BANGLADESH                     <20               1      557   16805
6 months    JiVitA-3         BANGLADESH                     >=30              0     1151   16805
6 months    JiVitA-3         BANGLADESH                     >=30              1       70   16805
6 months    Keneba           GAMBIA                         [20-30)           0      960    2080
6 months    Keneba           GAMBIA                         [20-30)           1       27    2080
6 months    Keneba           GAMBIA                         <20               0      284    2080
6 months    Keneba           GAMBIA                         <20               1        4    2080
6 months    Keneba           GAMBIA                         >=30              0      766    2080
6 months    Keneba           GAMBIA                         >=30              1       39    2080
6 months    LCNI-5           MALAWI                         [20-30)           0      333     669
6 months    LCNI-5           MALAWI                         [20-30)           1       31     669
6 months    LCNI-5           MALAWI                         <20               0      103     669
6 months    LCNI-5           MALAWI                         <20               1        4     669
6 months    LCNI-5           MALAWI                         >=30              0      180     669
6 months    LCNI-5           MALAWI                         >=30              1       18     669
6 months    MAL-ED           BANGLADESH                     [20-30)           0      160     241
6 months    MAL-ED           BANGLADESH                     [20-30)           1        5     241
6 months    MAL-ED           BANGLADESH                     <20               0       32     241
6 months    MAL-ED           BANGLADESH                     <20               1        3     241
6 months    MAL-ED           BANGLADESH                     >=30              0       41     241
6 months    MAL-ED           BANGLADESH                     >=30              1        0     241
6 months    MAL-ED           BRAZIL                         [20-30)           0      125     209
6 months    MAL-ED           BRAZIL                         [20-30)           1        0     209
6 months    MAL-ED           BRAZIL                         <20               0       37     209
6 months    MAL-ED           BRAZIL                         <20               1        0     209
6 months    MAL-ED           BRAZIL                         >=30              0       47     209
6 months    MAL-ED           BRAZIL                         >=30              1        0     209
6 months    MAL-ED           INDIA                          [20-30)           0      170     234
6 months    MAL-ED           INDIA                          [20-30)           1        9     234
6 months    MAL-ED           INDIA                          <20               0       34     234
6 months    MAL-ED           INDIA                          <20               1        0     234
6 months    MAL-ED           INDIA                          >=30              0       21     234
6 months    MAL-ED           INDIA                          >=30              1        0     234
6 months    MAL-ED           NEPAL                          [20-30)           0      185     236
6 months    MAL-ED           NEPAL                          [20-30)           1        0     236
6 months    MAL-ED           NEPAL                          <20               0        4     236
6 months    MAL-ED           NEPAL                          <20               1        1     236
6 months    MAL-ED           NEPAL                          >=30              0       46     236
6 months    MAL-ED           NEPAL                          >=30              1        0     236
6 months    MAL-ED           PERU                           [20-30)           0      133     273
6 months    MAL-ED           PERU                           [20-30)           1        3     273
6 months    MAL-ED           PERU                           <20               0       72     273
6 months    MAL-ED           PERU                           <20               1        4     273
6 months    MAL-ED           PERU                           >=30              0       58     273
6 months    MAL-ED           PERU                           >=30              1        3     273
6 months    MAL-ED           SOUTH AFRICA                   [20-30)           0      116     254
6 months    MAL-ED           SOUTH AFRICA                   [20-30)           1        2     254
6 months    MAL-ED           SOUTH AFRICA                   <20               0       40     254
6 months    MAL-ED           SOUTH AFRICA                   <20               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   >=30              0       92     254
6 months    MAL-ED           SOUTH AFRICA                   >=30              1        2     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           0      118     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           1       10     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               0       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              0      100     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              1        4     247
6 months    NIH-Birth        BANGLADESH                     [20-30)           0      334     535
6 months    NIH-Birth        BANGLADESH                     [20-30)           1       23     535
6 months    NIH-Birth        BANGLADESH                     <20               0       59     535
6 months    NIH-Birth        BANGLADESH                     <20               1        2     535
6 months    NIH-Birth        BANGLADESH                     >=30              0      107     535
6 months    NIH-Birth        BANGLADESH                     >=30              1       10     535
6 months    NIH-Crypto       BANGLADESH                     [20-30)           0      452     715
6 months    NIH-Crypto       BANGLADESH                     [20-30)           1       10     715
6 months    NIH-Crypto       BANGLADESH                     <20               0      124     715
6 months    NIH-Crypto       BANGLADESH                     <20               1        7     715
6 months    NIH-Crypto       BANGLADESH                     >=30              0      116     715
6 months    NIH-Crypto       BANGLADESH                     >=30              1        6     715
6 months    PROBIT           BELARUS                        [20-30)           0    11199   15760
6 months    PROBIT           BELARUS                        [20-30)           1      117   15760
6 months    PROBIT           BELARUS                        <20               0     1589   15760
6 months    PROBIT           BELARUS                        <20               1       30   15760
6 months    PROBIT           BELARUS                        >=30              0     2795   15760
6 months    PROBIT           BELARUS                        >=30              1       30   15760
6 months    PROVIDE          BANGLADESH                     [20-30)           0      414     604
6 months    PROVIDE          BANGLADESH                     [20-30)           1       10     604
6 months    PROVIDE          BANGLADESH                     <20               0       65     604
6 months    PROVIDE          BANGLADESH                     <20               1        1     604
6 months    PROVIDE          BANGLADESH                     >=30              0      111     604
6 months    PROVIDE          BANGLADESH                     >=30              1        3     604
6 months    SAS-CompFeed     INDIA                          [20-30)           0      924    1336
6 months    SAS-CompFeed     INDIA                          [20-30)           1       93    1336
6 months    SAS-CompFeed     INDIA                          <20               0      156    1336
6 months    SAS-CompFeed     INDIA                          <20               1       15    1336
6 months    SAS-CompFeed     INDIA                          >=30              0      128    1336
6 months    SAS-CompFeed     INDIA                          >=30              1       20    1336
6 months    SAS-FoodSuppl    INDIA                          [20-30)           0      228     380
6 months    SAS-FoodSuppl    INDIA                          [20-30)           1       33     380
6 months    SAS-FoodSuppl    INDIA                          <20               0       31     380
6 months    SAS-FoodSuppl    INDIA                          <20               1        5     380
6 months    SAS-FoodSuppl    INDIA                          >=30              0       67     380
6 months    SAS-FoodSuppl    INDIA                          >=30              1       16     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0     1307    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1       11    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0      145    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        1    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0      542    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        6    2012
6 months    ZVITAMBO         ZIMBABWE                       [20-30)           0     5516    8653
6 months    ZVITAMBO         ZIMBABWE                       [20-30)           1      222    8653
6 months    ZVITAMBO         ZIMBABWE                       <20               0     1251    8653
6 months    ZVITAMBO         ZIMBABWE                       <20               1       64    8653
6 months    ZVITAMBO         ZIMBABWE                       >=30              0     1536    8653
6 months    ZVITAMBO         ZIMBABWE                       >=30              1       64    8653
24 months   CMC-V-BCS-2002   INDIA                          [20-30)           0      193     371
24 months   CMC-V-BCS-2002   INDIA                          [20-30)           1      102     371
24 months   CMC-V-BCS-2002   INDIA                          <20               0       25     371
24 months   CMC-V-BCS-2002   INDIA                          <20               1        9     371
24 months   CMC-V-BCS-2002   INDIA                          >=30              0       28     371
24 months   CMC-V-BCS-2002   INDIA                          >=30              1       14     371
24 months   COHORTS          GUATEMALA                      [20-30)           0      269    1064
24 months   COHORTS          GUATEMALA                      [20-30)           1      258    1064
24 months   COHORTS          GUATEMALA                      <20               0       70    1064
24 months   COHORTS          GUATEMALA                      <20               1       82    1064
24 months   COHORTS          GUATEMALA                      >=30              0      204    1064
24 months   COHORTS          GUATEMALA                      >=30              1      181    1064
24 months   COHORTS          INDIA                          [20-30)           0     1882    3692
24 months   COHORTS          INDIA                          [20-30)           1      581    3692
24 months   COHORTS          INDIA                          <20               0      163    3692
24 months   COHORTS          INDIA                          <20               1       84    3692
24 months   COHORTS          INDIA                          >=30              0      697    3692
24 months   COHORTS          INDIA                          >=30              1      285    3692
24 months   COHORTS          PHILIPPINES                    [20-30)           0     1060    2445
24 months   COHORTS          PHILIPPINES                    [20-30)           1      400    2445
24 months   COHORTS          PHILIPPINES                    <20               0      205    2445
24 months   COHORTS          PHILIPPINES                    <20               1       87    2445
24 months   COHORTS          PHILIPPINES                    >=30              0      473    2445
24 months   COHORTS          PHILIPPINES                    >=30              1      220    2445
24 months   EE               PAKISTAN                       [20-30)           0       42     167
24 months   EE               PAKISTAN                       [20-30)           1       23     167
24 months   EE               PAKISTAN                       <20               0        1     167
24 months   EE               PAKISTAN                       <20               1        0     167
24 months   EE               PAKISTAN                       >=30              0       65     167
24 months   EE               PAKISTAN                       >=30              1       36     167
24 months   GMS-Nepal        NEPAL                          [20-30)           0      286     488
24 months   GMS-Nepal        NEPAL                          [20-30)           1       32     488
24 months   GMS-Nepal        NEPAL                          <20               0       81     488
24 months   GMS-Nepal        NEPAL                          <20               1       13     488
24 months   GMS-Nepal        NEPAL                          >=30              0       68     488
24 months   GMS-Nepal        NEPAL                          >=30              1        8     488
24 months   IRC              INDIA                          [20-30)           0      309     409
24 months   IRC              INDIA                          [20-30)           1       34     409
24 months   IRC              INDIA                          <20               0       33     409
24 months   IRC              INDIA                          <20               1        4     409
24 months   IRC              INDIA                          >=30              0       26     409
24 months   IRC              INDIA                          >=30              1        3     409
24 months   JiVitA-3         BANGLADESH                     [20-30)           0     3452    8627
24 months   JiVitA-3         BANGLADESH                     [20-30)           1      606    8627
24 months   JiVitA-3         BANGLADESH                     <20               0     3229    8627
24 months   JiVitA-3         BANGLADESH                     <20               1      626    8627
24 months   JiVitA-3         BANGLADESH                     >=30              0      600    8627
24 months   JiVitA-3         BANGLADESH                     >=30              1      114    8627
24 months   Keneba           GAMBIA                         [20-30)           0      734    1714
24 months   Keneba           GAMBIA                         [20-30)           1       56    1714
24 months   Keneba           GAMBIA                         <20               0      201    1714
24 months   Keneba           GAMBIA                         <20               1       16    1714
24 months   Keneba           GAMBIA                         >=30              0      639    1714
24 months   Keneba           GAMBIA                         >=30              1       68    1714
24 months   LCNI-5           MALAWI                         [20-30)           0      217     475
24 months   LCNI-5           MALAWI                         [20-30)           1       33     475
24 months   LCNI-5           MALAWI                         <20               0       73     475
24 months   LCNI-5           MALAWI                         <20               1        7     475
24 months   LCNI-5           MALAWI                         >=30              0      125     475
24 months   LCNI-5           MALAWI                         >=30              1       20     475
24 months   MAL-ED           BANGLADESH                     [20-30)           0      132     212
24 months   MAL-ED           BANGLADESH                     [20-30)           1       14     212
24 months   MAL-ED           BANGLADESH                     <20               0       24     212
24 months   MAL-ED           BANGLADESH                     <20               1        5     212
24 months   MAL-ED           BANGLADESH                     >=30              0       28     212
24 months   MAL-ED           BANGLADESH                     >=30              1        9     212
24 months   MAL-ED           BRAZIL                         [20-30)           0      101     169
24 months   MAL-ED           BRAZIL                         [20-30)           1        1     169
24 months   MAL-ED           BRAZIL                         <20               0       27     169
24 months   MAL-ED           BRAZIL                         <20               1        0     169
24 months   MAL-ED           BRAZIL                         >=30              0       40     169
24 months   MAL-ED           BRAZIL                         >=30              1        0     169
24 months   MAL-ED           INDIA                          [20-30)           0      145     225
24 months   MAL-ED           INDIA                          [20-30)           1       27     225
24 months   MAL-ED           INDIA                          <20               0       31     225
24 months   MAL-ED           INDIA                          <20               1        2     225
24 months   MAL-ED           INDIA                          >=30              0       19     225
24 months   MAL-ED           INDIA                          >=30              1        1     225
24 months   MAL-ED           NEPAL                          [20-30)           0      172     228
24 months   MAL-ED           NEPAL                          [20-30)           1        7     228
24 months   MAL-ED           NEPAL                          <20               0        4     228
24 months   MAL-ED           NEPAL                          <20               1        0     228
24 months   MAL-ED           NEPAL                          >=30              0       45     228
24 months   MAL-ED           NEPAL                          >=30              1        0     228
24 months   MAL-ED           PERU                           [20-30)           0       88     201
24 months   MAL-ED           PERU                           [20-30)           1       10     201
24 months   MAL-ED           PERU                           <20               0       50     201
24 months   MAL-ED           PERU                           <20               1        5     201
24 months   MAL-ED           PERU                           >=30              0       48     201
24 months   MAL-ED           PERU                           >=30              1        0     201
24 months   MAL-ED           SOUTH AFRICA                   [20-30)           0       92     238
24 months   MAL-ED           SOUTH AFRICA                   [20-30)           1       14     238
24 months   MAL-ED           SOUTH AFRICA                   <20               0       38     238
24 months   MAL-ED           SOUTH AFRICA                   <20               1        1     238
24 months   MAL-ED           SOUTH AFRICA                   >=30              0       81     238
24 months   MAL-ED           SOUTH AFRICA                   >=30              1       12     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           0       71     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)           1       42     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               0        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20               1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              0       67     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30              1       25     214
24 months   NIH-Birth        BANGLADESH                     [20-30)           0      218     427
24 months   NIH-Birth        BANGLADESH                     [20-30)           1       71     427
24 months   NIH-Birth        BANGLADESH                     <20               0       41     427
24 months   NIH-Birth        BANGLADESH                     <20               1        3     427
24 months   NIH-Birth        BANGLADESH                     >=30              0       73     427
24 months   NIH-Birth        BANGLADESH                     >=30              1       21     427
24 months   NIH-Crypto       BANGLADESH                     [20-30)           0      311     514
24 months   NIH-Crypto       BANGLADESH                     [20-30)           1       23     514
24 months   NIH-Crypto       BANGLADESH                     <20               0       91     514
24 months   NIH-Crypto       BANGLADESH                     <20               1       10     514
24 months   NIH-Crypto       BANGLADESH                     >=30              0       76     514
24 months   NIH-Crypto       BANGLADESH                     >=30              1        3     514
24 months   PROBIT           BELARUS                        [20-30)           0     2848    4035
24 months   PROBIT           BELARUS                        [20-30)           1       45    4035
24 months   PROBIT           BELARUS                        <20               0      358    4035
24 months   PROBIT           BELARUS                        <20               1       11    4035
24 months   PROBIT           BELARUS                        >=30              0      764    4035
24 months   PROBIT           BELARUS                        >=30              1        9    4035
24 months   PROVIDE          BANGLADESH                     [20-30)           0      372     578
24 months   PROVIDE          BANGLADESH                     [20-30)           1       37     578
24 months   PROVIDE          BANGLADESH                     <20               0       59     578
24 months   PROVIDE          BANGLADESH                     <20               1        5     578
24 months   PROVIDE          BANGLADESH                     >=30              0       95     578
24 months   PROVIDE          BANGLADESH                     >=30              1       10     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)           1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30              1        0       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)           0      989    1638
24 months   ZVITAMBO         ZIMBABWE                       [20-30)           1      112    1638
24 months   ZVITAMBO         ZIMBABWE                       <20               0      185    1638
24 months   ZVITAMBO         ZIMBABWE                       <20               1       34    1638
24 months   ZVITAMBO         ZIMBABWE                       >=30              0      286    1638
24 months   ZVITAMBO         ZIMBABWE                       >=30              1       32    1638


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
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
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/6aa5f3d8-79fb-4890-a29d-9e035f9f6cb2/5073b6e1-1e50-4cc5-b241-c3120032c608/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6aa5f3d8-79fb-4890-a29d-9e035f9f6cb2/5073b6e1-1e50-4cc5-b241-c3120032c608/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6aa5f3d8-79fb-4890-a29d-9e035f9f6cb2/5073b6e1-1e50-4cc5-b241-c3120032c608/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6aa5f3d8-79fb-4890-a29d-9e035f9f6cb2/5073b6e1-1e50-4cc5-b241-c3120032c608/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          INDIA         [20-30)              NA                0.0303045    0.0241852   0.0364239
Birth       COHORTS          INDIA         <20                  NA                0.0400507    0.0217453   0.0583562
Birth       COHORTS          INDIA         >=30                 NA                0.0207508    0.0129413   0.0285604
Birth       COHORTS          PHILIPPINES   [20-30)              NA                0.0105468    0.0058108   0.0152829
Birth       COHORTS          PHILIPPINES   <20                  NA                0.0239212    0.0093198   0.0385227
Birth       COHORTS          PHILIPPINES   >=30                 NA                0.0191480    0.0098867   0.0284094
Birth       JiVitA-3         BANGLADESH    [20-30)              NA                0.0920741    0.0857772   0.0983709
Birth       JiVitA-3         BANGLADESH    <20                  NA                0.1316876    0.1237857   0.1395895
Birth       JiVitA-3         BANGLADESH    >=30                 NA                0.1063306    0.0896848   0.1229763
Birth       Keneba           GAMBIA        [20-30)              NA                0.0156028    0.0064516   0.0247541
Birth       Keneba           GAMBIA        <20                  NA                0.0294118    0.0079395   0.0508841
Birth       Keneba           GAMBIA        >=30                 NA                0.0183333    0.0075955   0.0290711
Birth       SAS-CompFeed     INDIA         [20-30)              NA                0.0745016    0.0544113   0.0945918
Birth       SAS-CompFeed     INDIA         <20                  NA                0.0683230    0.0354638   0.1011821
Birth       SAS-CompFeed     INDIA         >=30                 NA                0.0652174    0.0097255   0.1207093
Birth       ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0300553    0.0264286   0.0336820
Birth       ZVITAMBO         ZIMBABWE      <20                  NA                0.0370660    0.0283519   0.0457801
Birth       ZVITAMBO         ZIMBABWE      >=30                 NA                0.0342059    0.0257276   0.0426841
6 months    COHORTS          GUATEMALA     [20-30)              NA                0.1234043    0.0936540   0.1531545
6 months    COHORTS          GUATEMALA     <20                  NA                0.0762712    0.0283546   0.1241877
6 months    COHORTS          GUATEMALA     >=30                 NA                0.1528150    0.1162815   0.1893486
6 months    COHORTS          INDIA         [20-30)              NA                0.0500784    0.0423980   0.0577587
6 months    COHORTS          INDIA         <20                  NA                0.0482020    0.0281655   0.0682385
6 months    COHORTS          INDIA         >=30                 NA                0.0455930    0.0340127   0.0571733
6 months    COHORTS          PHILIPPINES   [20-30)              NA                0.0355602    0.0265591   0.0445613
6 months    COHORTS          PHILIPPINES   <20                  NA                0.0583646    0.0327349   0.0839944
6 months    COHORTS          PHILIPPINES   >=30                 NA                0.0686837    0.0510472   0.0863202
6 months    GMS-Nepal        NEPAL         [20-30)              NA                0.0161725    0.0033257   0.0290193
6 months    GMS-Nepal        NEPAL         <20                  NA                0.0740741    0.0246381   0.1235100
6 months    GMS-Nepal        NEPAL         >=30                 NA                0.0823529    0.0238603   0.1408456
6 months    JiVitA-3         BANGLADESH    [20-30)              NA                0.0534386    0.0477449   0.0591322
6 months    JiVitA-3         BANGLADESH    <20                  NA                0.0687486    0.0625195   0.0749777
6 months    JiVitA-3         BANGLADESH    >=30                 NA                0.0630081    0.0483791   0.0776370
6 months    NIH-Crypto       BANGLADESH    [20-30)              NA                0.0216450    0.0083662   0.0349238
6 months    NIH-Crypto       BANGLADESH    <20                  NA                0.0534351    0.0148957   0.0919745
6 months    NIH-Crypto       BANGLADESH    >=30                 NA                0.0491803    0.0107816   0.0875791
6 months    PROBIT           BELARUS       [20-30)              NA                0.0107493    0.0053171   0.0161814
6 months    PROBIT           BELARUS       <20                  NA                0.0152442    0.0040069   0.0264815
6 months    PROBIT           BELARUS       >=30                 NA                0.0115478    0.0036150   0.0194807
6 months    SAS-CompFeed     INDIA         [20-30)              NA                0.0933199    0.0751115   0.1115282
6 months    SAS-CompFeed     INDIA         <20                  NA                0.0909294    0.0529138   0.1289450
6 months    SAS-CompFeed     INDIA         >=30                 NA                0.0981049    0.0396212   0.1565886
6 months    SAS-FoodSuppl    INDIA         [20-30)              NA                0.1264368    0.0860644   0.1668091
6 months    SAS-FoodSuppl    INDIA         <20                  NA                0.1388889    0.0257707   0.2520071
6 months    SAS-FoodSuppl    INDIA         >=30                 NA                0.1927711    0.1077943   0.2777479
6 months    ZVITAMBO         ZIMBABWE      [20-30)              NA                0.0391246    0.0339076   0.0443415
6 months    ZVITAMBO         ZIMBABWE      <20                  NA                0.0445772    0.0328324   0.0563221
6 months    ZVITAMBO         ZIMBABWE      >=30                 NA                0.0452783    0.0329827   0.0575740
24 months   CMC-V-BCS-2002   INDIA         [20-30)              NA                0.3457627    0.2914152   0.4001103
24 months   CMC-V-BCS-2002   INDIA         <20                  NA                0.2647059    0.1162125   0.4131993
24 months   CMC-V-BCS-2002   INDIA         >=30                 NA                0.3333333    0.1905744   0.4760923
24 months   COHORTS          GUATEMALA     [20-30)              NA                0.4996981    0.4553090   0.5440873
24 months   COHORTS          GUATEMALA     <20                  NA                0.5418777    0.4530532   0.6307023
24 months   COHORTS          GUATEMALA     >=30                 NA                0.4719607    0.4210868   0.5228347
24 months   COHORTS          INDIA         [20-30)              NA                0.2557278    0.2384437   0.2730118
24 months   COHORTS          INDIA         <20                  NA                0.3208598    0.2606154   0.3811042
24 months   COHORTS          INDIA         >=30                 NA                0.2440936    0.2178679   0.2703193
24 months   COHORTS          PHILIPPINES   [20-30)              NA                0.2831807    0.2602944   0.3060670
24 months   COHORTS          PHILIPPINES   <20                  NA                0.2840308    0.2325590   0.3355026
24 months   COHORTS          PHILIPPINES   >=30                 NA                0.3055110    0.2725904   0.3384316
24 months   GMS-Nepal        NEPAL         [20-30)              NA                0.1006289    0.0675302   0.1337276
24 months   GMS-Nepal        NEPAL         <20                  NA                0.1382979    0.0684399   0.2081558
24 months   GMS-Nepal        NEPAL         >=30                 NA                0.1052632    0.0361958   0.1743305
24 months   JiVitA-3         BANGLADESH    [20-30)              NA                0.1524915    0.1403139   0.1646691
24 months   JiVitA-3         BANGLADESH    <20                  NA                0.1619688    0.1482977   0.1756400
24 months   JiVitA-3         BANGLADESH    >=30                 NA                0.1574024    0.1296955   0.1851093
24 months   Keneba           GAMBIA        [20-30)              NA                0.0715761    0.0532617   0.0898906
24 months   Keneba           GAMBIA        <20                  NA                0.0826094    0.0426198   0.1225990
24 months   Keneba           GAMBIA        >=30                 NA                0.0955768    0.0738891   0.1172645
24 months   LCNI-5           MALAWI        [20-30)              NA                0.1320000    0.0899968   0.1740032
24 months   LCNI-5           MALAWI        <20                  NA                0.0875000    0.0255158   0.1494842
24 months   LCNI-5           MALAWI        >=30                 NA                0.1379310    0.0817456   0.1941165
24 months   MAL-ED           BANGLADESH    [20-30)              NA                0.0958904    0.0480168   0.1437641
24 months   MAL-ED           BANGLADESH    <20                  NA                0.1724138    0.0346077   0.3102199
24 months   MAL-ED           BANGLADESH    >=30                 NA                0.2432432    0.1046722   0.3818143
24 months   PROBIT           BELARUS       [20-30)              NA                0.0155548    0.0028971   0.0282125
24 months   PROBIT           BELARUS       <20                  NA                0.0298103   -0.0317524   0.0913730
24 months   PROBIT           BELARUS       >=30                 NA                0.0116429   -0.0005865   0.0238724
24 months   PROVIDE          BANGLADESH    [20-30)              NA                0.0904645    0.0626411   0.1182880
24 months   PROVIDE          BANGLADESH    <20                  NA                0.0781250    0.0123191   0.1439309
24 months   PROVIDE          BANGLADESH    >=30                 NA                0.0952381    0.0390425   0.1514336
24 months   ZVITAMBO         ZIMBABWE      [20-30)              NA                0.1009345    0.0829970   0.1188719
24 months   ZVITAMBO         ZIMBABWE      <20                  NA                0.1510568    0.1012878   0.2008258
24 months   ZVITAMBO         ZIMBABWE      >=30                 NA                0.0905691    0.0586235   0.1225146


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         NA                   NA                0.0292683   0.0244566   0.0340800
Birth       COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1090269   0.1044770   0.1135768
Birth       Keneba           GAMBIA        NA                   NA                0.0187946   0.0120166   0.0255726
Birth       SAS-CompFeed     INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.0318034   0.0288793   0.0347275
6 months    COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    COHORTS          INDIA         NA                   NA                0.0487357   0.0427089   0.0547626
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    GMS-Nepal        NEPAL         NA                   NA                0.0372340   0.0215945   0.0528736
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0606962   0.0568440   0.0645485
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROBIT           BELARUS       NA                   NA                0.0112310   0.0054733   0.0169886
6 months    SAS-CompFeed     INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    SAS-FoodSuppl    INDIA         NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0404484   0.0362972   0.0445996
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   COHORTS          GUATEMALA     NA                   NA                0.4896617   0.4596107   0.5197126
24 months   COHORTS          INDIA         NA                   NA                0.2573131   0.2432102   0.2714161
24 months   COHORTS          PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   GMS-Nepal        NEPAL         NA                   NA                0.1086066   0.0809724   0.1362407
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.1560218   0.1472599   0.1647837
24 months   Keneba           GAMBIA        NA                   NA                0.0816803   0.0687107   0.0946498
24 months   LCNI-5           MALAWI        NA                   NA                0.1263158   0.0964093   0.1562222
24 months   MAL-ED           BANGLADESH    NA                   NA                0.1320755   0.0863920   0.1777589
24 months   PROBIT           BELARUS       NA                   NA                0.0161090   0.0017796   0.0304385
24 months   PROVIDE          BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1086691   0.0935928   0.1237455


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       COHORTS          INDIA         <20                  [20-30)           1.3216092   0.8019919    2.177891
Birth       COHORTS          INDIA         >=30                 [20-30)           0.6847440   0.4468559    1.049274
Birth       COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       COHORTS          PHILIPPINES   <20                  [20-30)           2.2680937   1.0634078    4.837513
Birth       COHORTS          PHILIPPINES   >=30                 [20-30)           1.8155235   0.9383859    3.512548
Birth       JiVitA-3         BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       JiVitA-3         BANGLADESH    <20                  [20-30)           1.4302357   1.3097650    1.561787
Birth       JiVitA-3         BANGLADESH    >=30                 [20-30)           1.1548373   0.9733640    1.370144
Birth       Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       Keneba           GAMBIA        <20                  [20-30)           1.8850267   0.7389454    4.808645
Birth       Keneba           GAMBIA        >=30                 [20-30)           1.1750000   0.5129324    2.691632
Birth       SAS-CompFeed     INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       SAS-CompFeed     INDIA         <20                  [20-30)           0.9170676   0.5472881    1.536692
Birth       SAS-CompFeed     INDIA         >=30                 [20-30)           0.8753827   0.4108343    1.865216
Birth       ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
Birth       ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.2332612   0.9470255    1.606011
Birth       ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.1380989   0.8638860    1.499352
6 months    COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    COHORTS          GUATEMALA     <20                  [20-30)           0.6180596   0.3153483    1.211351
6 months    COHORTS          GUATEMALA     >=30                 [20-30)           1.2383286   0.8818286    1.738952
6 months    COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    COHORTS          INDIA         <20                  [20-30)           0.9625310   0.6182906    1.498431
6 months    COHORTS          INDIA         >=30                 [20-30)           0.9104336   0.6771771    1.224036
6 months    COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    COHORTS          PHILIPPINES   <20                  [20-30)           1.6412913   0.9904973    2.719682
6 months    COHORTS          PHILIPPINES   >=30                 [20-30)           1.9314779   1.3489914    2.765479
6 months    GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    GMS-Nepal        NEPAL         <20                  [20-30)           4.5802469   1.6229586   12.926184
6 months    GMS-Nepal        NEPAL         >=30                 [20-30)           5.0921569   1.7543678   14.780288
6 months    JiVitA-3         BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH    <20                  [20-30)           1.2864977   1.1195268    1.478371
6 months    JiVitA-3         BANGLADESH    >=30                 [20-30)           1.1790744   0.9127557    1.523098
6 months    NIH-Crypto       BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH    <20                  [20-30)           2.4687023   0.9577527    6.363324
6 months    NIH-Crypto       BANGLADESH    >=30                 [20-30)           2.2721311   0.8417772    6.132953
6 months    PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    PROBIT           BELARUS       <20                  [20-30)           1.4181598   0.8541207    2.354676
6 months    PROBIT           BELARUS       >=30                 [20-30)           1.0742905   0.6237742    1.850189
6 months    SAS-CompFeed     INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    SAS-CompFeed     INDIA         <20                  [20-30)           0.9743846   0.6005037    1.581048
6 months    SAS-CompFeed     INDIA         >=30                 [20-30)           1.0512756   0.6580698    1.679427
6 months    SAS-FoodSuppl    INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    SAS-FoodSuppl    INDIA         <20                  [20-30)           1.0984848   0.4580048    2.634621
6 months    SAS-FoodSuppl    INDIA         >=30                 [20-30)           1.5246440   0.8846589    2.627611
6 months    ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.1393660   0.8482988    1.530304
6 months    ZVITAMBO         ZIMBABWE      >=30                 [20-30)           1.1572862   0.8555434    1.565451
24 months   CMC-V-BCS-2002   INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA         <20                  [20-30)           0.7655709   0.4275376    1.370871
24 months   CMC-V-BCS-2002   INDIA         >=30                 [20-30)           0.9640523   0.6109017    1.521353
24 months   COHORTS          GUATEMALA     [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   COHORTS          GUATEMALA     <20                  [20-30)           1.0844102   0.9009051    1.305293
24 months   COHORTS          GUATEMALA     >=30                 [20-30)           0.9444917   0.8225559    1.084503
24 months   COHORTS          INDIA         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   COHORTS          INDIA         <20                  [20-30)           1.2546928   1.0289350    1.529984
24 months   COHORTS          INDIA         >=30                 [20-30)           0.9545056   0.8432170    1.080482
24 months   COHORTS          PHILIPPINES   [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   COHORTS          PHILIPPINES   <20                  [20-30)           1.0030021   0.8244056    1.220289
24 months   COHORTS          PHILIPPINES   >=30                 [20-30)           1.0788553   0.9458992    1.230500
24 months   GMS-Nepal        NEPAL         [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   GMS-Nepal        NEPAL         <20                  [20-30)           1.3743351   0.7521593    2.511166
24 months   GMS-Nepal        NEPAL         >=30                 [20-30)           1.0460526   0.5021068    2.179270
24 months   JiVitA-3         BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH    <20                  [20-30)           1.0621502   0.9511140    1.186149
24 months   JiVitA-3         BANGLADESH    >=30                 [20-30)           1.0322046   0.8537622    1.247943
24 months   Keneba           GAMBIA        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   Keneba           GAMBIA        <20                  [20-30)           1.1541479   0.6676311    1.995200
24 months   Keneba           GAMBIA        >=30                 [20-30)           1.3353172   0.9491962    1.878507
24 months   LCNI-5           MALAWI        [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   LCNI-5           MALAWI        <20                  [20-30)           0.6628788   0.3049093    1.441112
24 months   LCNI-5           MALAWI        >=30                 [20-30)           1.0449321   0.6231630    1.752163
24 months   MAL-ED           BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   MAL-ED           BANGLADESH    <20                  [20-30)           1.7980296   0.7006851    4.613928
24 months   MAL-ED           BANGLADESH    >=30                 [20-30)           2.5366795   1.1893016    5.410522
24 months   PROBIT           BELARUS       [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   PROBIT           BELARUS       <20                  [20-30)           1.9164709   0.4491543    8.177281
24 months   PROBIT           BELARUS       >=30                 [20-30)           0.7485123   0.2047304    2.736627
24 months   PROVIDE          BANGLADESH    [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   PROVIDE          BANGLADESH    <20                  [20-30)           0.8635980   0.3522694    2.117134
24 months   PROVIDE          BANGLADESH    >=30                 [20-30)           1.0527671   0.5411936    2.047915
24 months   ZVITAMBO         ZIMBABWE      [20-30)              [20-30)           1.0000000   1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE      <20                  [20-30)           1.4965829   1.0298108    2.174924
24 months   ZVITAMBO         ZIMBABWE      >=30                 [20-30)           0.8973054   0.6054097    1.329937


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA         [20-30)              NA                -0.0010362   -0.0045802   0.0025078
Birth       COHORTS          PHILIPPINES   [20-30)              NA                 0.0045351    0.0006857   0.0083846
Birth       JiVitA-3         BANGLADESH    [20-30)              NA                 0.0169529    0.0121672   0.0217385
Birth       Keneba           GAMBIA        [20-30)              NA                 0.0031917   -0.0040994   0.0104828
Birth       SAS-CompFeed     INDIA         [20-30)              NA                -0.0018179   -0.0093166   0.0056808
Birth       ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0017481   -0.0005834   0.0040797
6 months    COHORTS          GUATEMALA     [20-30)              NA                 0.0056280   -0.0160294   0.0272854
6 months    COHORTS          INDIA         [20-30)              NA                -0.0013427   -0.0058764   0.0031911
6 months    COHORTS          PHILIPPINES   [20-30)              NA                 0.0131843    0.0061044   0.0202641
6 months    GMS-Nepal        NEPAL         [20-30)              NA                 0.0210615    0.0071868   0.0349363
6 months    JiVitA-3         BANGLADESH    [20-30)              NA                 0.0072576    0.0027008   0.0118145
6 months    NIH-Crypto       BANGLADESH    [20-30)              NA                 0.0105228   -0.0002457   0.0212913
6 months    PROBIT           BELARUS       [20-30)              NA                 0.0004817   -0.0008664   0.0018298
6 months    SAS-CompFeed     INDIA         [20-30)              NA                 0.0024885   -0.0022730   0.0072500
6 months    SAS-FoodSuppl    INDIA         [20-30)              NA                 0.0156685   -0.0093633   0.0407002
6 months    ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0013238   -0.0019635   0.0046111
24 months   CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0088355   -0.0328345   0.0151635
24 months   COHORTS          GUATEMALA     [20-30)              NA                -0.0100365   -0.0422051   0.0221322
24 months   COHORTS          INDIA         [20-30)              NA                 0.0015853   -0.0087611   0.0119317
24 months   COHORTS          PHILIPPINES   [20-30)              NA                 0.0059809   -0.0083716   0.0203334
24 months   GMS-Nepal        NEPAL         [20-30)              NA                 0.0079776   -0.0127925   0.0287478
24 months   JiVitA-3         BANGLADESH    [20-30)              NA                 0.0035303   -0.0053854   0.0124461
24 months   Keneba           GAMBIA        [20-30)              NA                 0.0101042   -0.0040962   0.0243045
24 months   LCNI-5           MALAWI        [20-30)              NA                -0.0056842   -0.0339957   0.0226273
24 months   MAL-ED           BANGLADESH    [20-30)              NA                 0.0361851    0.0012263   0.0711438
24 months   PROBIT           BELARUS       [20-30)              NA                 0.0005543   -0.0029782   0.0040867
24 months   PROVIDE          BANGLADESH    [20-30)              NA                -0.0004991   -0.0154533   0.0144550
24 months   ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0077346   -0.0032909   0.0187601


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          INDIA         [20-30)              NA                -0.0354041   -0.1636800   0.0787316
Birth       COHORTS          PHILIPPINES   [20-30)              NA                 0.3006982    0.0134703   0.5042997
Birth       JiVitA-3         BANGLADESH    [20-30)              NA                 0.1554924    0.1105528   0.1981615
Birth       Keneba           GAMBIA        [20-30)              NA                 0.1698215   -0.3171959   0.4767700
Birth       SAS-CompFeed     INDIA         [20-30)              NA                -0.0250107   -0.1355116   0.0747370
Birth       ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0549668   -0.0211173   0.1253818
6 months    COHORTS          GUATEMALA     [20-30)              NA                 0.0436170   -0.1397263   0.1974666
6 months    COHORTS          INDIA         [20-30)              NA                -0.0275498   -0.1248423   0.0613275
6 months    COHORTS          PHILIPPINES   [20-30)              NA                 0.2704775    0.1181050   0.3965232
6 months    GMS-Nepal        NEPAL         [20-30)              NA                 0.5656527    0.1524749   0.7774018
6 months    JiVitA-3         BANGLADESH    [20-30)              NA                 0.1195733    0.0415367   0.1912563
6 months    NIH-Crypto       BANGLADESH    [20-30)              NA                 0.3271222   -0.0651509   0.5749291
6 months    PROBIT           BELARUS       [20-30)              NA                 0.0428893   -0.0783706   0.1505139
6 months    SAS-CompFeed     INDIA         [20-30)              NA                 0.0259740   -0.0244771   0.0739406
6 months    SAS-FoodSuppl    INDIA         [20-30)              NA                 0.1102597   -0.0827152   0.2688402
6 months    ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0327285   -0.0520202   0.1106499
24 months   CMC-V-BCS-2002   INDIA         [20-30)              NA                -0.0262237   -0.0999876   0.0425936
24 months   COHORTS          GUATEMALA     [20-30)              NA                -0.0204967   -0.0883433   0.0431204
24 months   COHORTS          INDIA         [20-30)              NA                 0.0061610   -0.0348655   0.0455611
24 months   COHORTS          PHILIPPINES   [20-30)              NA                 0.0206836   -0.0302344   0.0690849
24 months   GMS-Nepal        NEPAL         [20-30)              NA                 0.0734544   -0.1380845   0.2456739
24 months   JiVitA-3         BANGLADESH    [20-30)              NA                 0.0226272   -0.0361668   0.0780851
24 months   Keneba           GAMBIA        [20-30)              NA                 0.1237037   -0.0677065   0.2807993
24 months   LCNI-5           MALAWI        [20-30)              NA                -0.0450000   -0.2947643   0.1565839
24 months   MAL-ED           BANGLADESH    [20-30)              NA                 0.2739726   -0.0260551   0.4862695
24 months   PROBIT           BELARUS       [20-30)              NA                 0.0344067   -0.1920431   0.2178383
24 months   PROVIDE          BANGLADESH    [20-30)              NA                -0.0055482   -0.1862916   0.1476570
24 months   ZVITAMBO         ZIMBABWE      [20-30)              NA                 0.0711760   -0.0356697   0.1669989

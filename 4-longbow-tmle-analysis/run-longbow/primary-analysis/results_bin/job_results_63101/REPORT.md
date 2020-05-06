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

agecat      studyid          country                        mage       stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)          0       65      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          [20-30)          1       14      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          <20              0        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          <20              1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          >=30             0        3      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          >=30             1        1      92  stunted          
Birth       COHORTS          GUATEMALA                      [20-30)          0      386     852  stunted          
Birth       COHORTS          GUATEMALA                      [20-30)          1       19     852  stunted          
Birth       COHORTS          GUATEMALA                      <20              0      112     852  stunted          
Birth       COHORTS          GUATEMALA                      <20              1        9     852  stunted          
Birth       COHORTS          GUATEMALA                      >=30             0      304     852  stunted          
Birth       COHORTS          GUATEMALA                      >=30             1       22     852  stunted          
Birth       COHORTS          INDIA                          [20-30)          0     2795    4715  stunted          
Birth       COHORTS          INDIA                          [20-30)          1      385    4715  stunted          
Birth       COHORTS          INDIA                          <20              0      309    4715  stunted          
Birth       COHORTS          INDIA                          <20              1       59    4715  stunted          
Birth       COHORTS          INDIA                          >=30             0     1053    4715  stunted          
Birth       COHORTS          INDIA                          >=30             1      114    4715  stunted          
Birth       COHORTS          PHILIPPINES                    [20-30)          0     1725    3050  stunted          
Birth       COHORTS          PHILIPPINES                    [20-30)          1       96    3050  stunted          
Birth       COHORTS          PHILIPPINES                    <20              0      342    3050  stunted          
Birth       COHORTS          PHILIPPINES                    <20              1       36    3050  stunted          
Birth       COHORTS          PHILIPPINES                    >=30             0      796    3050  stunted          
Birth       COHORTS          PHILIPPINES                    >=30             1       55    3050  stunted          
Birth       EE               PAKISTAN                       [20-30)          0       61     239  stunted          
Birth       EE               PAKISTAN                       [20-30)          1       33     239  stunted          
Birth       EE               PAKISTAN                       <20              0        0     239  stunted          
Birth       EE               PAKISTAN                       <20              1        1     239  stunted          
Birth       EE               PAKISTAN                       >=30             0       79     239  stunted          
Birth       EE               PAKISTAN                       >=30             1       65     239  stunted          
Birth       GMS-Nepal        NEPAL                          [20-30)          0      385     696  stunted          
Birth       GMS-Nepal        NEPAL                          [20-30)          1       61     696  stunted          
Birth       GMS-Nepal        NEPAL                          <20              0      104     696  stunted          
Birth       GMS-Nepal        NEPAL                          <20              1       45     696  stunted          
Birth       GMS-Nepal        NEPAL                          >=30             0       85     696  stunted          
Birth       GMS-Nepal        NEPAL                          >=30             1       16     696  stunted          
Birth       IRC              INDIA                          [20-30)          0      288     388  stunted          
Birth       IRC              INDIA                          [20-30)          1       37     388  stunted          
Birth       IRC              INDIA                          <20              0       28     388  stunted          
Birth       IRC              INDIA                          <20              1        7     388  stunted          
Birth       IRC              INDIA                          >=30             0       27     388  stunted          
Birth       IRC              INDIA                          >=30             1        1     388  stunted          
Birth       JiVitA-3         BANGLADESH                     [20-30)          0     7657   22444  stunted          
Birth       JiVitA-3         BANGLADESH                     [20-30)          1     3196   22444  stunted          
Birth       JiVitA-3         BANGLADESH                     <20              0     5927   22444  stunted          
Birth       JiVitA-3         BANGLADESH                     <20              1     3545   22444  stunted          
Birth       JiVitA-3         BANGLADESH                     >=30             0     1477   22444  stunted          
Birth       JiVitA-3         BANGLADESH                     >=30             1      642   22444  stunted          
Birth       Keneba           GAMBIA                         [20-30)          0      673    1543  stunted          
Birth       Keneba           GAMBIA                         [20-30)          1       32    1543  stunted          
Birth       Keneba           GAMBIA                         <20              0      217    1543  stunted          
Birth       Keneba           GAMBIA                         <20              1       21    1543  stunted          
Birth       Keneba           GAMBIA                         >=30             0      570    1543  stunted          
Birth       Keneba           GAMBIA                         >=30             1       30    1543  stunted          
Birth       MAL-ED           BANGLADESH                     [20-30)          0      133     231  stunted          
Birth       MAL-ED           BANGLADESH                     [20-30)          1       27     231  stunted          
Birth       MAL-ED           BANGLADESH                     <20              0       22     231  stunted          
Birth       MAL-ED           BANGLADESH                     <20              1        8     231  stunted          
Birth       MAL-ED           BANGLADESH                     >=30             0       32     231  stunted          
Birth       MAL-ED           BANGLADESH                     >=30             1        9     231  stunted          
Birth       MAL-ED           BRAZIL                         [20-30)          0       34      65  stunted          
Birth       MAL-ED           BRAZIL                         [20-30)          1        7      65  stunted          
Birth       MAL-ED           BRAZIL                         <20              0        8      65  stunted          
Birth       MAL-ED           BRAZIL                         <20              1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         >=30             0       14      65  stunted          
Birth       MAL-ED           BRAZIL                         >=30             1        2      65  stunted          
Birth       MAL-ED           INDIA                          [20-30)          0       30      47  stunted          
Birth       MAL-ED           INDIA                          [20-30)          1        7      47  stunted          
Birth       MAL-ED           INDIA                          <20              0        5      47  stunted          
Birth       MAL-ED           INDIA                          <20              1        3      47  stunted          
Birth       MAL-ED           INDIA                          >=30             0        2      47  stunted          
Birth       MAL-ED           INDIA                          >=30             1        0      47  stunted          
Birth       MAL-ED           NEPAL                          [20-30)          0       21      27  stunted          
Birth       MAL-ED           NEPAL                          [20-30)          1        1      27  stunted          
Birth       MAL-ED           NEPAL                          <20              0        0      27  stunted          
Birth       MAL-ED           NEPAL                          <20              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          >=30             0        4      27  stunted          
Birth       MAL-ED           NEPAL                          >=30             1        1      27  stunted          
Birth       MAL-ED           PERU                           [20-30)          0      108     233  stunted          
Birth       MAL-ED           PERU                           [20-30)          1        6     233  stunted          
Birth       MAL-ED           PERU                           <20              0       53     233  stunted          
Birth       MAL-ED           PERU                           <20              1       13     233  stunted          
Birth       MAL-ED           PERU                           >=30             0       46     233  stunted          
Birth       MAL-ED           PERU                           >=30             1        7     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [20-30)          0       62     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [20-30)          1        5     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <20              0       20     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <20              1        3     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=30             0       31     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=30             1        2     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       57     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       15     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0        7     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       38     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1        8     125  stunted          
Birth       NIH-Birth        BANGLADESH                     [20-30)          0      336     606  stunted          
Birth       NIH-Birth        BANGLADESH                     [20-30)          1       74     606  stunted          
Birth       NIH-Birth        BANGLADESH                     <20              0       62     606  stunted          
Birth       NIH-Birth        BANGLADESH                     <20              1        8     606  stunted          
Birth       NIH-Birth        BANGLADESH                     >=30             0      111     606  stunted          
Birth       NIH-Birth        BANGLADESH                     >=30             1       15     606  stunted          
Birth       NIH-Crypto       BANGLADESH                     [20-30)          0      422     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     [20-30)          1       61     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     <20              0      105     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     <20              1       25     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=30             0      104     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=30             1       15     732  stunted          
Birth       PROBIT           BELARUS                        [20-30)          0     9920   13893  stunted          
Birth       PROBIT           BELARUS                        [20-30)          1       23   13893  stunted          
Birth       PROBIT           BELARUS                        <20              0     1403   13893  stunted          
Birth       PROBIT           BELARUS                        <20              1        5   13893  stunted          
Birth       PROBIT           BELARUS                        >=30             0     2536   13893  stunted          
Birth       PROBIT           BELARUS                        >=30             1        6   13893  stunted          
Birth       PROVIDE          BANGLADESH                     [20-30)          0      341     539  stunted          
Birth       PROVIDE          BANGLADESH                     [20-30)          1       30     539  stunted          
Birth       PROVIDE          BANGLADESH                     <20              0       61     539  stunted          
Birth       PROVIDE          BANGLADESH                     <20              1        6     539  stunted          
Birth       PROVIDE          BANGLADESH                     >=30             0       89     539  stunted          
Birth       PROVIDE          BANGLADESH                     >=30             1       12     539  stunted          
Birth       SAS-CompFeed     INDIA                          [20-30)          0      694    1252  stunted          
Birth       SAS-CompFeed     INDIA                          [20-30)          1      259    1252  stunted          
Birth       SAS-CompFeed     INDIA                          <20              0      108    1252  stunted          
Birth       SAS-CompFeed     INDIA                          <20              1       53    1252  stunted          
Birth       SAS-CompFeed     INDIA                          >=30             0      101    1252  stunted          
Birth       SAS-CompFeed     INDIA                          >=30             1       37    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [20-30)          0     8345   13835  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [20-30)          1      954   13835  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <20              0     1952   13835  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <20              1      253   13835  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=30             0     2110   13835  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=30             1      221   13835  stunted          
6 months    CMC-V-BCS-2002   INDIA                          [20-30)          0      205     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          [20-30)          1       88     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          <20              0       23     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          <20              1       10     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          >=30             0       30     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          >=30             1       13     369  stunted          
6 months    COHORTS          GUATEMALA                      [20-30)          0      286     961  stunted          
6 months    COHORTS          GUATEMALA                      [20-30)          1      184     961  stunted          
6 months    COHORTS          GUATEMALA                      <20              0       70     961  stunted          
6 months    COHORTS          GUATEMALA                      <20              1       48     961  stunted          
6 months    COHORTS          GUATEMALA                      >=30             0      211     961  stunted          
6 months    COHORTS          GUATEMALA                      >=30             1      162     961  stunted          
6 months    COHORTS          INDIA                          [20-30)          0     2712    4904  stunted          
6 months    COHORTS          INDIA                          [20-30)          1      619    4904  stunted          
6 months    COHORTS          INDIA                          <20              0      288    4904  stunted          
6 months    COHORTS          INDIA                          <20              1       83    4904  stunted          
6 months    COHORTS          INDIA                          >=30             0      943    4904  stunted          
6 months    COHORTS          INDIA                          >=30             1      259    4904  stunted          
6 months    COHORTS          PHILIPPINES                    [20-30)          0     1288    2708  stunted          
6 months    COHORTS          PHILIPPINES                    [20-30)          1      313    2708  stunted          
6 months    COHORTS          PHILIPPINES                    <20              0      249    2708  stunted          
6 months    COHORTS          PHILIPPINES                    <20              1       82    2708  stunted          
6 months    COHORTS          PHILIPPINES                    >=30             0      599    2708  stunted          
6 months    COHORTS          PHILIPPINES                    >=30             1      177    2708  stunted          
6 months    EE               PAKISTAN                       [20-30)          0       83     371  stunted          
6 months    EE               PAKISTAN                       [20-30)          1       76     371  stunted          
6 months    EE               PAKISTAN                       <20              0        0     371  stunted          
6 months    EE               PAKISTAN                       <20              1        1     371  stunted          
6 months    EE               PAKISTAN                       >=30             0      107     371  stunted          
6 months    EE               PAKISTAN                       >=30             1      104     371  stunted          
6 months    GMS-Nepal        NEPAL                          [20-30)          0      296     564  stunted          
6 months    GMS-Nepal        NEPAL                          [20-30)          1       75     564  stunted          
6 months    GMS-Nepal        NEPAL                          <20              0       80     564  stunted          
6 months    GMS-Nepal        NEPAL                          <20              1       28     564  stunted          
6 months    GMS-Nepal        NEPAL                          >=30             0       66     564  stunted          
6 months    GMS-Nepal        NEPAL                          >=30             1       19     564  stunted          
6 months    Guatemala BSC    GUATEMALA                      [20-30)          0      124     276  stunted          
6 months    Guatemala BSC    GUATEMALA                      [20-30)          1       47     276  stunted          
6 months    Guatemala BSC    GUATEMALA                      <20              0       25     276  stunted          
6 months    Guatemala BSC    GUATEMALA                      <20              1       21     276  stunted          
6 months    Guatemala BSC    GUATEMALA                      >=30             0       41     276  stunted          
6 months    Guatemala BSC    GUATEMALA                      >=30             1       18     276  stunted          
6 months    IRC              INDIA                          [20-30)          0      255     407  stunted          
6 months    IRC              INDIA                          [20-30)          1       87     407  stunted          
6 months    IRC              INDIA                          <20              0       29     407  stunted          
6 months    IRC              INDIA                          <20              1        7     407  stunted          
6 months    IRC              INDIA                          >=30             0       23     407  stunted          
6 months    IRC              INDIA                          >=30             1        6     407  stunted          
6 months    JiVitA-3         BANGLADESH                     [20-30)          0     5929   16805  stunted          
6 months    JiVitA-3         BANGLADESH                     [20-30)          1     1750   16805  stunted          
6 months    JiVitA-3         BANGLADESH                     <20              0     5729   16805  stunted          
6 months    JiVitA-3         BANGLADESH                     <20              1     2176   16805  stunted          
6 months    JiVitA-3         BANGLADESH                     >=30             0      922   16805  stunted          
6 months    JiVitA-3         BANGLADESH                     >=30             1      299   16805  stunted          
6 months    Keneba           GAMBIA                         [20-30)          0      869    2080  stunted          
6 months    Keneba           GAMBIA                         [20-30)          1      118    2080  stunted          
6 months    Keneba           GAMBIA                         <20              0      254    2080  stunted          
6 months    Keneba           GAMBIA                         <20              1       34    2080  stunted          
6 months    Keneba           GAMBIA                         >=30             0      664    2080  stunted          
6 months    Keneba           GAMBIA                         >=30             1      141    2080  stunted          
6 months    LCNI-5           MALAWI                         [20-30)          0      228     669  stunted          
6 months    LCNI-5           MALAWI                         [20-30)          1      136     669  stunted          
6 months    LCNI-5           MALAWI                         <20              0       74     669  stunted          
6 months    LCNI-5           MALAWI                         <20              1       33     669  stunted          
6 months    LCNI-5           MALAWI                         >=30             0      117     669  stunted          
6 months    LCNI-5           MALAWI                         >=30             1       81     669  stunted          
6 months    MAL-ED           BANGLADESH                     [20-30)          0      136     241  stunted          
6 months    MAL-ED           BANGLADESH                     [20-30)          1       29     241  stunted          
6 months    MAL-ED           BANGLADESH                     <20              0       29     241  stunted          
6 months    MAL-ED           BANGLADESH                     <20              1        6     241  stunted          
6 months    MAL-ED           BANGLADESH                     >=30             0       32     241  stunted          
6 months    MAL-ED           BANGLADESH                     >=30             1        9     241  stunted          
6 months    MAL-ED           BRAZIL                         [20-30)          0      120     209  stunted          
6 months    MAL-ED           BRAZIL                         [20-30)          1        5     209  stunted          
6 months    MAL-ED           BRAZIL                         <20              0       37     209  stunted          
6 months    MAL-ED           BRAZIL                         <20              1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         >=30             0       46     209  stunted          
6 months    MAL-ED           BRAZIL                         >=30             1        1     209  stunted          
6 months    MAL-ED           INDIA                          [20-30)          0      146     234  stunted          
6 months    MAL-ED           INDIA                          [20-30)          1       33     234  stunted          
6 months    MAL-ED           INDIA                          <20              0       26     234  stunted          
6 months    MAL-ED           INDIA                          <20              1        8     234  stunted          
6 months    MAL-ED           INDIA                          >=30             0       19     234  stunted          
6 months    MAL-ED           INDIA                          >=30             1        2     234  stunted          
6 months    MAL-ED           NEPAL                          [20-30)          0      176     236  stunted          
6 months    MAL-ED           NEPAL                          [20-30)          1        9     236  stunted          
6 months    MAL-ED           NEPAL                          <20              0        4     236  stunted          
6 months    MAL-ED           NEPAL                          <20              1        1     236  stunted          
6 months    MAL-ED           NEPAL                          >=30             0       44     236  stunted          
6 months    MAL-ED           NEPAL                          >=30             1        2     236  stunted          
6 months    MAL-ED           PERU                           [20-30)          0      106     273  stunted          
6 months    MAL-ED           PERU                           [20-30)          1       30     273  stunted          
6 months    MAL-ED           PERU                           <20              0       60     273  stunted          
6 months    MAL-ED           PERU                           <20              1       16     273  stunted          
6 months    MAL-ED           PERU                           >=30             0       47     273  stunted          
6 months    MAL-ED           PERU                           >=30             1       14     273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [20-30)          0       94     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [20-30)          1       24     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <20              0       32     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <20              1       10     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=30             0       78     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=30             1       16     254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       95     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       33     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0       11     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        4     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       82     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1       22     247  stunted          
6 months    NIH-Birth        BANGLADESH                     [20-30)          0      260     535  stunted          
6 months    NIH-Birth        BANGLADESH                     [20-30)          1       97     535  stunted          
6 months    NIH-Birth        BANGLADESH                     <20              0       51     535  stunted          
6 months    NIH-Birth        BANGLADESH                     <20              1       10     535  stunted          
6 months    NIH-Birth        BANGLADESH                     >=30             0       81     535  stunted          
6 months    NIH-Birth        BANGLADESH                     >=30             1       36     535  stunted          
6 months    NIH-Crypto       BANGLADESH                     [20-30)          0      369     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [20-30)          1       93     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <20              0      100     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <20              1       31     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=30             0       96     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=30             1       26     715  stunted          
6 months    PROBIT           BELARUS                        [20-30)          0    10901   15760  stunted          
6 months    PROBIT           BELARUS                        [20-30)          1      415   15760  stunted          
6 months    PROBIT           BELARUS                        <20              0     1526   15760  stunted          
6 months    PROBIT           BELARUS                        <20              1       93   15760  stunted          
6 months    PROBIT           BELARUS                        >=30             0     2713   15760  stunted          
6 months    PROBIT           BELARUS                        >=30             1      112   15760  stunted          
6 months    PROVIDE          BANGLADESH                     [20-30)          0      362     604  stunted          
6 months    PROVIDE          BANGLADESH                     [20-30)          1       62     604  stunted          
6 months    PROVIDE          BANGLADESH                     <20              0       51     604  stunted          
6 months    PROVIDE          BANGLADESH                     <20              1       15     604  stunted          
6 months    PROVIDE          BANGLADESH                     >=30             0       95     604  stunted          
6 months    PROVIDE          BANGLADESH                     >=30             1       19     604  stunted          
6 months    SAS-CompFeed     INDIA                          [20-30)          0      731    1336  stunted          
6 months    SAS-CompFeed     INDIA                          [20-30)          1      286    1336  stunted          
6 months    SAS-CompFeed     INDIA                          <20              0      127    1336  stunted          
6 months    SAS-CompFeed     INDIA                          <20              1       44    1336  stunted          
6 months    SAS-CompFeed     INDIA                          >=30             0       98    1336  stunted          
6 months    SAS-CompFeed     INDIA                          >=30             1       50    1336  stunted          
6 months    SAS-FoodSuppl    INDIA                          [20-30)          0      149     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          [20-30)          1      112     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          <20              0       20     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          <20              1       16     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          >=30             0       48     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          >=30             1       35     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0     1183    2012  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1      135    2012  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0      132    2012  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1       14    2012  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0      503    2012  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1       45    2012  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [20-30)          0     4837    8653  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [20-30)          1      901    8653  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <20              0     1073    8653  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <20              1      242    8653  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=30             0     1335    8653  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=30             1      265    8653  stunted          
24 months   CMC-V-BCS-2002   INDIA                          [20-30)          0       81     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          [20-30)          1      214     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          <20              0       13     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          <20              1       21     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          >=30             0       11     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          >=30             1       31     371  stunted          
24 months   COHORTS          GUATEMALA                      [20-30)          0       89    1064  stunted          
24 months   COHORTS          GUATEMALA                      [20-30)          1      438    1064  stunted          
24 months   COHORTS          GUATEMALA                      <20              0       27    1064  stunted          
24 months   COHORTS          GUATEMALA                      <20              1      125    1064  stunted          
24 months   COHORTS          GUATEMALA                      >=30             0       84    1064  stunted          
24 months   COHORTS          GUATEMALA                      >=30             1      301    1064  stunted          
24 months   COHORTS          INDIA                          [20-30)          0     1136    3692  stunted          
24 months   COHORTS          INDIA                          [20-30)          1     1327    3692  stunted          
24 months   COHORTS          INDIA                          <20              0       74    3692  stunted          
24 months   COHORTS          INDIA                          <20              1      173    3692  stunted          
24 months   COHORTS          INDIA                          >=30             0      387    3692  stunted          
24 months   COHORTS          INDIA                          >=30             1      595    3692  stunted          
24 months   COHORTS          PHILIPPINES                    [20-30)          0      567    2445  stunted          
24 months   COHORTS          PHILIPPINES                    [20-30)          1      893    2445  stunted          
24 months   COHORTS          PHILIPPINES                    <20              0       98    2445  stunted          
24 months   COHORTS          PHILIPPINES                    <20              1      194    2445  stunted          
24 months   COHORTS          PHILIPPINES                    >=30             0      257    2445  stunted          
24 months   COHORTS          PHILIPPINES                    >=30             1      436    2445  stunted          
24 months   EE               PAKISTAN                       [20-30)          0       25     167  stunted          
24 months   EE               PAKISTAN                       [20-30)          1       40     167  stunted          
24 months   EE               PAKISTAN                       <20              0        0     167  stunted          
24 months   EE               PAKISTAN                       <20              1        1     167  stunted          
24 months   EE               PAKISTAN                       >=30             0       24     167  stunted          
24 months   EE               PAKISTAN                       >=30             1       77     167  stunted          
24 months   GMS-Nepal        NEPAL                          [20-30)          0      177     488  stunted          
24 months   GMS-Nepal        NEPAL                          [20-30)          1      141     488  stunted          
24 months   GMS-Nepal        NEPAL                          <20              0       50     488  stunted          
24 months   GMS-Nepal        NEPAL                          <20              1       44     488  stunted          
24 months   GMS-Nepal        NEPAL                          >=30             0       42     488  stunted          
24 months   GMS-Nepal        NEPAL                          >=30             1       34     488  stunted          
24 months   IRC              INDIA                          [20-30)          0      199     409  stunted          
24 months   IRC              INDIA                          [20-30)          1      144     409  stunted          
24 months   IRC              INDIA                          <20              0       20     409  stunted          
24 months   IRC              INDIA                          <20              1       17     409  stunted          
24 months   IRC              INDIA                          >=30             0       18     409  stunted          
24 months   IRC              INDIA                          >=30             1       11     409  stunted          
24 months   JiVitA-3         BANGLADESH                     [20-30)          0     2165    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     [20-30)          1     1893    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     <20              0     1872    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     <20              1     1983    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     >=30             0      352    8627  stunted          
24 months   JiVitA-3         BANGLADESH                     >=30             1      362    8627  stunted          
24 months   Keneba           GAMBIA                         [20-30)          0      534    1714  stunted          
24 months   Keneba           GAMBIA                         [20-30)          1      256    1714  stunted          
24 months   Keneba           GAMBIA                         <20              0      145    1714  stunted          
24 months   Keneba           GAMBIA                         <20              1       72    1714  stunted          
24 months   Keneba           GAMBIA                         >=30             0      457    1714  stunted          
24 months   Keneba           GAMBIA                         >=30             1      250    1714  stunted          
24 months   LCNI-5           MALAWI                         [20-30)          0      134     475  stunted          
24 months   LCNI-5           MALAWI                         [20-30)          1      116     475  stunted          
24 months   LCNI-5           MALAWI                         <20              0       48     475  stunted          
24 months   LCNI-5           MALAWI                         <20              1       32     475  stunted          
24 months   LCNI-5           MALAWI                         >=30             0       78     475  stunted          
24 months   LCNI-5           MALAWI                         >=30             1       67     475  stunted          
24 months   MAL-ED           BANGLADESH                     [20-30)          0       82     212  stunted          
24 months   MAL-ED           BANGLADESH                     [20-30)          1       64     212  stunted          
24 months   MAL-ED           BANGLADESH                     <20              0       12     212  stunted          
24 months   MAL-ED           BANGLADESH                     <20              1       17     212  stunted          
24 months   MAL-ED           BANGLADESH                     >=30             0       17     212  stunted          
24 months   MAL-ED           BANGLADESH                     >=30             1       20     212  stunted          
24 months   MAL-ED           BRAZIL                         [20-30)          0       98     169  stunted          
24 months   MAL-ED           BRAZIL                         [20-30)          1        4     169  stunted          
24 months   MAL-ED           BRAZIL                         <20              0       25     169  stunted          
24 months   MAL-ED           BRAZIL                         <20              1        2     169  stunted          
24 months   MAL-ED           BRAZIL                         >=30             0       39     169  stunted          
24 months   MAL-ED           BRAZIL                         >=30             1        1     169  stunted          
24 months   MAL-ED           INDIA                          [20-30)          0       92     225  stunted          
24 months   MAL-ED           INDIA                          [20-30)          1       80     225  stunted          
24 months   MAL-ED           INDIA                          <20              0       21     225  stunted          
24 months   MAL-ED           INDIA                          <20              1       12     225  stunted          
24 months   MAL-ED           INDIA                          >=30             0       16     225  stunted          
24 months   MAL-ED           INDIA                          >=30             1        4     225  stunted          
24 months   MAL-ED           NEPAL                          [20-30)          0      142     228  stunted          
24 months   MAL-ED           NEPAL                          [20-30)          1       37     228  stunted          
24 months   MAL-ED           NEPAL                          <20              0        3     228  stunted          
24 months   MAL-ED           NEPAL                          <20              1        1     228  stunted          
24 months   MAL-ED           NEPAL                          >=30             0       33     228  stunted          
24 months   MAL-ED           NEPAL                          >=30             1       12     228  stunted          
24 months   MAL-ED           PERU                           [20-30)          0       64     201  stunted          
24 months   MAL-ED           PERU                           [20-30)          1       34     201  stunted          
24 months   MAL-ED           PERU                           <20              0       33     201  stunted          
24 months   MAL-ED           PERU                           <20              1       22     201  stunted          
24 months   MAL-ED           PERU                           >=30             0       30     201  stunted          
24 months   MAL-ED           PERU                           >=30             1       18     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [20-30)          0       68     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [20-30)          1       38     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <20              0       25     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <20              1       14     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=30             0       61     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=30             1       32     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          0       28     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)          1       85     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              0        2     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20              1        7     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             0       29     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30             1       63     214  stunted          
24 months   NIH-Birth        BANGLADESH                     [20-30)          0      123     427  stunted          
24 months   NIH-Birth        BANGLADESH                     [20-30)          1      166     427  stunted          
24 months   NIH-Birth        BANGLADESH                     <20              0       21     427  stunted          
24 months   NIH-Birth        BANGLADESH                     <20              1       23     427  stunted          
24 months   NIH-Birth        BANGLADESH                     >=30             0       40     427  stunted          
24 months   NIH-Birth        BANGLADESH                     >=30             1       54     427  stunted          
24 months   NIH-Crypto       BANGLADESH                     [20-30)          0      244     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [20-30)          1       90     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <20              0       80     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <20              1       21     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=30             0       58     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=30             1       21     514  stunted          
24 months   PROBIT           BELARUS                        [20-30)          0     2704    4035  stunted          
24 months   PROBIT           BELARUS                        [20-30)          1      189    4035  stunted          
24 months   PROBIT           BELARUS                        <20              0      331    4035  stunted          
24 months   PROBIT           BELARUS                        <20              1       38    4035  stunted          
24 months   PROBIT           BELARUS                        >=30             0      725    4035  stunted          
24 months   PROBIT           BELARUS                        >=30             1       48    4035  stunted          
24 months   PROVIDE          BANGLADESH                     [20-30)          0      277     578  stunted          
24 months   PROVIDE          BANGLADESH                     [20-30)          1      132     578  stunted          
24 months   PROVIDE          BANGLADESH                     <20              0       44     578  stunted          
24 months   PROVIDE          BANGLADESH                     <20              1       20     578  stunted          
24 months   PROVIDE          BANGLADESH                     >=30             0       67     578  stunted          
24 months   PROVIDE          BANGLADESH                     >=30             1       38     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          0        2       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)          1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             0        2       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30             1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [20-30)          0      720    1638  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [20-30)          1      381    1638  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <20              0      134    1638  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <20              1       85    1638  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=30             0      215    1638  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=30             1      103    1638  stunted          


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->

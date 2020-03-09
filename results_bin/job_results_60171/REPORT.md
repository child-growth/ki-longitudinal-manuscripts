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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           sstunted   n_cell       n
----------  ---------------  -----------------------------  -------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm               0      110     840
Birth       COHORTS          GUATEMALA                      >=155 cm               1        0     840
Birth       COHORTS          GUATEMALA                      <151 cm                0      538     840
Birth       COHORTS          GUATEMALA                      <151 cm                1        7     840
Birth       COHORTS          GUATEMALA                      [151-155) cm           0      181     840
Birth       COHORTS          GUATEMALA                      [151-155) cm           1        4     840
Birth       COHORTS          INDIA                          >=155 cm               0      522    1774
Birth       COHORTS          INDIA                          >=155 cm               1        8    1774
Birth       COHORTS          INDIA                          <151 cm                0      739    1774
Birth       COHORTS          INDIA                          <151 cm                1       24    1774
Birth       COHORTS          INDIA                          [151-155) cm           0      470    1774
Birth       COHORTS          INDIA                          [151-155) cm           1       11    1774
Birth       COHORTS          PHILIPPINES                    >=155 cm               0      628    3050
Birth       COHORTS          PHILIPPINES                    >=155 cm               1        2    3050
Birth       COHORTS          PHILIPPINES                    <151 cm                0     1516    3050
Birth       COHORTS          PHILIPPINES                    <151 cm                1       29    3050
Birth       COHORTS          PHILIPPINES                    [151-155) cm           0      860    3050
Birth       COHORTS          PHILIPPINES                    [151-155) cm           1       15    3050
Birth       JiVitA-3         BANGLADESH                     >=155 cm               0     3153   22356
Birth       JiVitA-3         BANGLADESH                     >=155 cm               1      164   22356
Birth       JiVitA-3         BANGLADESH                     <151 cm                0    11650   22356
Birth       JiVitA-3         BANGLADESH                     <151 cm                1     1786   22356
Birth       JiVitA-3         BANGLADESH                     [151-155) cm           0     5117   22356
Birth       JiVitA-3         BANGLADESH                     [151-155) cm           1      486   22356
Birth       Keneba           GAMBIA                         >=155 cm               0     1170    1431
Birth       Keneba           GAMBIA                         >=155 cm               1       17    1431
Birth       Keneba           GAMBIA                         <151 cm                0       48    1431
Birth       Keneba           GAMBIA                         <151 cm                1        3    1431
Birth       Keneba           GAMBIA                         [151-155) cm           0      187    1431
Birth       Keneba           GAMBIA                         [151-155) cm           1        6    1431
Birth       MAL-ED           BANGLADESH                     >=155 cm               0       21     222
Birth       MAL-ED           BANGLADESH                     >=155 cm               1        1     222
Birth       MAL-ED           BANGLADESH                     <151 cm                0      139     222
Birth       MAL-ED           BANGLADESH                     <151 cm                1        6     222
Birth       MAL-ED           BANGLADESH                     [151-155) cm           0       55     222
Birth       MAL-ED           BANGLADESH                     [151-155) cm           1        0     222
Birth       MAL-ED           BRAZIL                         >=155 cm               0       32      64
Birth       MAL-ED           BRAZIL                         >=155 cm               1        0      64
Birth       MAL-ED           BRAZIL                         <151 cm                0       19      64
Birth       MAL-ED           BRAZIL                         <151 cm                1        1      64
Birth       MAL-ED           BRAZIL                         [151-155) cm           0       10      64
Birth       MAL-ED           BRAZIL                         [151-155) cm           1        2      64
Birth       MAL-ED           INDIA                          >=155 cm               0       11      43
Birth       MAL-ED           INDIA                          >=155 cm               1        1      43
Birth       MAL-ED           INDIA                          <151 cm                0       19      43
Birth       MAL-ED           INDIA                          <151 cm                1        1      43
Birth       MAL-ED           INDIA                          [151-155) cm           0       11      43
Birth       MAL-ED           INDIA                          [151-155) cm           1        0      43
Birth       MAL-ED           NEPAL                          >=155 cm               0        6      27
Birth       MAL-ED           NEPAL                          >=155 cm               1        0      27
Birth       MAL-ED           NEPAL                          <151 cm                0       13      27
Birth       MAL-ED           NEPAL                          <151 cm                1        0      27
Birth       MAL-ED           NEPAL                          [151-155) cm           0        7      27
Birth       MAL-ED           NEPAL                          [151-155) cm           1        1      27
Birth       MAL-ED           PERU                           >=155 cm               0       48     226
Birth       MAL-ED           PERU                           >=155 cm               1        0     226
Birth       MAL-ED           PERU                           <151 cm                0      127     226
Birth       MAL-ED           PERU                           <151 cm                1        4     226
Birth       MAL-ED           PERU                           [151-155) cm           0       47     226
Birth       MAL-ED           PERU                           [151-155) cm           1        0     226
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm               0       80     101
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm               1        0     101
Birth       MAL-ED           SOUTH AFRICA                   <151 cm                0        9     101
Birth       MAL-ED           SOUTH AFRICA                   <151 cm                1        1     101
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm           0       11     101
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm           1        0     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       67     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                0       21     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                1        0     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       25     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        4     122
Birth       NIH-Birth        BANGLADESH                     >=155 cm               0      108     608
Birth       NIH-Birth        BANGLADESH                     >=155 cm               1        3     608
Birth       NIH-Birth        BANGLADESH                     <151 cm                0      341     608
Birth       NIH-Birth        BANGLADESH                     <151 cm                1       15     608
Birth       NIH-Birth        BANGLADESH                     [151-155) cm           0      140     608
Birth       NIH-Birth        BANGLADESH                     [151-155) cm           1        1     608
Birth       NIH-Crypto       BANGLADESH                     >=155 cm               0      132     729
Birth       NIH-Crypto       BANGLADESH                     >=155 cm               1        2     729
Birth       NIH-Crypto       BANGLADESH                     <151 cm                0      414     729
Birth       NIH-Crypto       BANGLADESH                     <151 cm                1        4     729
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm           0      173     729
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm           1        4     729
Birth       PROBIT           BELARUS                        >=155 cm               0    13204   13732
Birth       PROBIT           BELARUS                        >=155 cm               1        5   13732
Birth       PROBIT           BELARUS                        <151 cm                0      125   13732
Birth       PROBIT           BELARUS                        <151 cm                1        0   13732
Birth       PROBIT           BELARUS                        [151-155) cm           0      398   13732
Birth       PROBIT           BELARUS                        [151-155) cm           1        0   13732
Birth       PROVIDE          BANGLADESH                     >=155 cm               0      109     517
Birth       PROVIDE          BANGLADESH                     >=155 cm               1        1     517
Birth       PROVIDE          BANGLADESH                     <151 cm                0      284     517
Birth       PROVIDE          BANGLADESH                     <151 cm                1        2     517
Birth       PROVIDE          BANGLADESH                     [151-155) cm           0      120     517
Birth       PROVIDE          BANGLADESH                     [151-155) cm           1        1     517
Birth       SAS-CompFeed     INDIA                          >=155 cm               0      445    1135
Birth       SAS-CompFeed     INDIA                          >=155 cm               1       22    1135
Birth       SAS-CompFeed     INDIA                          <151 cm                0      345    1135
Birth       SAS-CompFeed     INDIA                          <151 cm                1       40    1135
Birth       SAS-CompFeed     INDIA                          [151-155) cm           0      258    1135
Birth       SAS-CompFeed     INDIA                          [151-155) cm           1       25    1135
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm               0     7532    9705
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm               1      200    9705
Birth       ZVITAMBO         ZIMBABWE                       <151 cm                0      529    9705
Birth       ZVITAMBO         ZIMBABWE                       <151 cm                1       31    9705
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1361    9705
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm           1       52    9705
6 months    COHORTS          GUATEMALA                      >=155 cm               0      111     943
6 months    COHORTS          GUATEMALA                      >=155 cm               1        6     943
6 months    COHORTS          GUATEMALA                      <151 cm                0      530     943
6 months    COHORTS          GUATEMALA                      <151 cm                1       99     943
6 months    COHORTS          GUATEMALA                      [151-155) cm           0      181     943
6 months    COHORTS          GUATEMALA                      [151-155) cm           1       16     943
6 months    COHORTS          INDIA                          >=155 cm               0      531    1819
6 months    COHORTS          INDIA                          >=155 cm               1       10    1819
6 months    COHORTS          INDIA                          <151 cm                0      740    1819
6 months    COHORTS          INDIA                          <151 cm                1       50    1819
6 months    COHORTS          INDIA                          [151-155) cm           0      477    1819
6 months    COHORTS          INDIA                          [151-155) cm           1       11    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm               0      550    2708
6 months    COHORTS          PHILIPPINES                    >=155 cm               1       11    2708
6 months    COHORTS          PHILIPPINES                    <151 cm                0     1277    2708
6 months    COHORTS          PHILIPPINES                    <151 cm                1       91    2708
6 months    COHORTS          PHILIPPINES                    [151-155) cm           0      749    2708
6 months    COHORTS          PHILIPPINES                    [151-155) cm           1       30    2708
6 months    Guatemala BSC    GUATEMALA                      >=155 cm               0       34     231
6 months    Guatemala BSC    GUATEMALA                      >=155 cm               1        2     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm                0      125     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm                1       16     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm           0       50     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm           1        4     231
6 months    JiVitA-3         BANGLADESH                     >=155 cm               0     2610   16761
6 months    JiVitA-3         BANGLADESH                     >=155 cm               1       50   16761
6 months    JiVitA-3         BANGLADESH                     <151 cm                0     8997   16761
6 months    JiVitA-3         BANGLADESH                     <151 cm                1      800   16761
6 months    JiVitA-3         BANGLADESH                     [151-155) cm           0     4137   16761
6 months    JiVitA-3         BANGLADESH                     [151-155) cm           1      167   16761
6 months    Keneba           GAMBIA                         >=155 cm               0     1527    1877
6 months    Keneba           GAMBIA                         >=155 cm               1       41    1877
6 months    Keneba           GAMBIA                         <151 cm                0       62    1877
6 months    Keneba           GAMBIA                         <151 cm                1        5    1877
6 months    Keneba           GAMBIA                         [151-155) cm           0      229    1877
6 months    Keneba           GAMBIA                         [151-155) cm           1       13    1877
6 months    LCNI-5           MALAWI                         >=155 cm               0      487     836
6 months    LCNI-5           MALAWI                         >=155 cm               1       26     836
6 months    LCNI-5           MALAWI                         <151 cm                0      104     836
6 months    LCNI-5           MALAWI                         <151 cm                1       27     836
6 months    LCNI-5           MALAWI                         [151-155) cm           0      174     836
6 months    LCNI-5           MALAWI                         [151-155) cm           1       18     836
6 months    MAL-ED           BANGLADESH                     >=155 cm               0       24     241
6 months    MAL-ED           BANGLADESH                     >=155 cm               1        0     241
6 months    MAL-ED           BANGLADESH                     <151 cm                0      148     241
6 months    MAL-ED           BANGLADESH                     <151 cm                1        8     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm           0       61     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm           1        0     241
6 months    MAL-ED           BRAZIL                         >=155 cm               0      121     209
6 months    MAL-ED           BRAZIL                         >=155 cm               1        0     209
6 months    MAL-ED           BRAZIL                         <151 cm                0       51     209
6 months    MAL-ED           BRAZIL                         <151 cm                1        0     209
6 months    MAL-ED           BRAZIL                         [151-155) cm           0       37     209
6 months    MAL-ED           BRAZIL                         [151-155) cm           1        0     209
6 months    MAL-ED           INDIA                          >=155 cm               0       55     235
6 months    MAL-ED           INDIA                          >=155 cm               1        0     235
6 months    MAL-ED           INDIA                          <151 cm                0      104     235
6 months    MAL-ED           INDIA                          <151 cm                1        8     235
6 months    MAL-ED           INDIA                          [151-155) cm           0       67     235
6 months    MAL-ED           INDIA                          [151-155) cm           1        1     235
6 months    MAL-ED           NEPAL                          >=155 cm               0       41     236
6 months    MAL-ED           NEPAL                          >=155 cm               1        0     236
6 months    MAL-ED           NEPAL                          <151 cm                0      131     236
6 months    MAL-ED           NEPAL                          <151 cm                1        1     236
6 months    MAL-ED           NEPAL                          [151-155) cm           0       63     236
6 months    MAL-ED           NEPAL                          [151-155) cm           1        0     236
6 months    MAL-ED           PERU                           >=155 cm               0       57     272
6 months    MAL-ED           PERU                           >=155 cm               1        1     272
6 months    MAL-ED           PERU                           <151 cm                0      149     272
6 months    MAL-ED           PERU                           <151 cm                1        8     272
6 months    MAL-ED           PERU                           [151-155) cm           0       56     272
6 months    MAL-ED           PERU                           [151-155) cm           1        1     272
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm               0      184     249
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm               1        3     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm                0       29     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm                1        2     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm           0       30     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm           1        1     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               0      142     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        5     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                0       41     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                1        7     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       50     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        2     247
6 months    NIH-Birth        BANGLADESH                     >=155 cm               0       94     537
6 months    NIH-Birth        BANGLADESH                     >=155 cm               1        2     537
6 months    NIH-Birth        BANGLADESH                     <151 cm                0      280     537
6 months    NIH-Birth        BANGLADESH                     <151 cm                1       31     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm           0      128     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm           1        2     537
6 months    NIH-Crypto       BANGLADESH                     >=155 cm               0      133     715
6 months    NIH-Crypto       BANGLADESH                     >=155 cm               1        1     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm                0      394     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm                1       17     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm           0      165     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm           1        5     715
6 months    PROBIT           BELARUS                        >=155 cm               0    12410   13031
6 months    PROBIT           BELARUS                        >=155 cm               1      121   13031
6 months    PROBIT           BELARUS                        <151 cm                0      118   13031
6 months    PROBIT           BELARUS                        <151 cm                1        3   13031
6 months    PROBIT           BELARUS                        [151-155) cm           0      369   13031
6 months    PROBIT           BELARUS                        [151-155) cm           1       10   13031
6 months    PROVIDE          BANGLADESH                     >=155 cm               0      127     603
6 months    PROVIDE          BANGLADESH                     >=155 cm               1        1     603
6 months    PROVIDE          BANGLADESH                     <151 cm                0      318     603
6 months    PROVIDE          BANGLADESH                     <151 cm                1       12     603
6 months    PROVIDE          BANGLADESH                     [151-155) cm           0      144     603
6 months    PROVIDE          BANGLADESH                     [151-155) cm           1        1     603
6 months    SAS-CompFeed     INDIA                          >=155 cm               0      486    1228
6 months    SAS-CompFeed     INDIA                          >=155 cm               1       24    1228
6 months    SAS-CompFeed     INDIA                          <151 cm                0      356    1228
6 months    SAS-CompFeed     INDIA                          <151 cm                1       65    1228
6 months    SAS-CompFeed     INDIA                          [151-155) cm           0      267    1228
6 months    SAS-CompFeed     INDIA                          [151-155) cm           1       30    1228
6 months    SAS-FoodSuppl    INDIA                          >=155 cm               0       72     379
6 months    SAS-FoodSuppl    INDIA                          >=155 cm               1        2     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm                0      163     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm                1       39     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm           0       91     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm           1       12     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0     1239    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        7    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0      304    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        5    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0      434    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        7    1996
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm               0     5693    7394
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm               1      195    7394
6 months    ZVITAMBO         ZIMBABWE                       <151 cm                0      399    7394
6 months    ZVITAMBO         ZIMBABWE                       <151 cm                1       46    7394
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm           0     1014    7394
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm           1       47    7394
24 months   COHORTS          GUATEMALA                      >=155 cm               0       88     994
24 months   COHORTS          GUATEMALA                      >=155 cm               1       38     994
24 months   COHORTS          GUATEMALA                      <151 cm                0      307     994
24 months   COHORTS          GUATEMALA                      <151 cm                1      352     994
24 months   COHORTS          GUATEMALA                      [151-155) cm           0      109     994
24 months   COHORTS          GUATEMALA                      [151-155) cm           1      100     994
24 months   COHORTS          INDIA                          >=155 cm               0      497    1819
24 months   COHORTS          INDIA                          >=155 cm               1       55    1819
24 months   COHORTS          INDIA                          <151 cm                0      563    1819
24 months   COHORTS          INDIA                          <151 cm                1      222    1819
24 months   COHORTS          INDIA                          [151-155) cm           0      388    1819
24 months   COHORTS          INDIA                          [151-155) cm           1       94    1819
24 months   COHORTS          PHILIPPINES                    >=155 cm               0      425    2445
24 months   COHORTS          PHILIPPINES                    >=155 cm               1       85    2445
24 months   COHORTS          PHILIPPINES                    <151 cm                0      775    2445
24 months   COHORTS          PHILIPPINES                    <151 cm                1      459    2445
24 months   COHORTS          PHILIPPINES                    [151-155) cm           0      538    2445
24 months   COHORTS          PHILIPPINES                    [151-155) cm           1      163    2445
24 months   JiVitA-3         BANGLADESH                     >=155 cm               0     1252    8599
24 months   JiVitA-3         BANGLADESH                     >=155 cm               1       62    8599
24 months   JiVitA-3         BANGLADESH                     <151 cm                0     3987    8599
24 months   JiVitA-3         BANGLADESH                     <151 cm                1     1080    8599
24 months   JiVitA-3         BANGLADESH                     [151-155) cm           0     2018    8599
24 months   JiVitA-3         BANGLADESH                     [151-155) cm           1      200    8599
24 months   Keneba           GAMBIA                         >=155 cm               0     1240    1602
24 months   Keneba           GAMBIA                         >=155 cm               1       98    1602
24 months   Keneba           GAMBIA                         <151 cm                0       50    1602
24 months   Keneba           GAMBIA                         <151 cm                1       10    1602
24 months   Keneba           GAMBIA                         [151-155) cm           0      180    1602
24 months   Keneba           GAMBIA                         [151-155) cm           1       24    1602
24 months   LCNI-5           MALAWI                         >=155 cm               0      330     577
24 months   LCNI-5           MALAWI                         >=155 cm               1       25     577
24 months   LCNI-5           MALAWI                         <151 cm                0       71     577
24 months   LCNI-5           MALAWI                         <151 cm                1       24     577
24 months   LCNI-5           MALAWI                         [151-155) cm           0      106     577
24 months   LCNI-5           MALAWI                         [151-155) cm           1       21     577
24 months   MAL-ED           BANGLADESH                     >=155 cm               0       21     212
24 months   MAL-ED           BANGLADESH                     >=155 cm               1        1     212
24 months   MAL-ED           BANGLADESH                     <151 cm                0      113     212
24 months   MAL-ED           BANGLADESH                     <151 cm                1       24     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm           0       50     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm           1        3     212
24 months   MAL-ED           BRAZIL                         >=155 cm               0       95     169
24 months   MAL-ED           BRAZIL                         >=155 cm               1        0     169
24 months   MAL-ED           BRAZIL                         <151 cm                0       43     169
24 months   MAL-ED           BRAZIL                         <151 cm                1        0     169
24 months   MAL-ED           BRAZIL                         [151-155) cm           0       30     169
24 months   MAL-ED           BRAZIL                         [151-155) cm           1        1     169
24 months   MAL-ED           INDIA                          >=155 cm               0       50     226
24 months   MAL-ED           INDIA                          >=155 cm               1        3     226
24 months   MAL-ED           INDIA                          <151 cm                0       86     226
24 months   MAL-ED           INDIA                          <151 cm                1       24     226
24 months   MAL-ED           INDIA                          [151-155) cm           0       60     226
24 months   MAL-ED           INDIA                          [151-155) cm           1        3     226
24 months   MAL-ED           NEPAL                          >=155 cm               0       38     228
24 months   MAL-ED           NEPAL                          >=155 cm               1        0     228
24 months   MAL-ED           NEPAL                          <151 cm                0      122     228
24 months   MAL-ED           NEPAL                          <151 cm                1        7     228
24 months   MAL-ED           NEPAL                          [151-155) cm           0       61     228
24 months   MAL-ED           NEPAL                          [151-155) cm           1        0     228
24 months   MAL-ED           PERU                           >=155 cm               0       44     201
24 months   MAL-ED           PERU                           >=155 cm               1        2     201
24 months   MAL-ED           PERU                           <151 cm                0      103     201
24 months   MAL-ED           PERU                           <151 cm                1       12     201
24 months   MAL-ED           PERU                           [151-155) cm           0       39     201
24 months   MAL-ED           PERU                           [151-155) cm           1        1     201
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm               0      162     234
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm               1       18     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm                0       23     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm                1        4     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm           0       22     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm           1        5     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               0       95     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm               1       31     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                0       19     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm                1       21     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0       30     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1       18     214
24 months   NIH-Birth        BANGLADESH                     >=155 cm               0       71     429
24 months   NIH-Birth        BANGLADESH                     >=155 cm               1        6     429
24 months   NIH-Birth        BANGLADESH                     <151 cm                0      177     429
24 months   NIH-Birth        BANGLADESH                     <151 cm                1       75     429
24 months   NIH-Birth        BANGLADESH                     [151-155) cm           0       86     429
24 months   NIH-Birth        BANGLADESH                     [151-155) cm           1       14     429
24 months   NIH-Crypto       BANGLADESH                     >=155 cm               0       99     514
24 months   NIH-Crypto       BANGLADESH                     >=155 cm               1        1     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm                0      254     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm                1       33     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm           0      125     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm           1        2     514
24 months   PROBIT           BELARUS                        >=155 cm               0     3801    4005
24 months   PROBIT           BELARUS                        >=155 cm               1       58    4005
24 months   PROBIT           BELARUS                        <151 cm                0       30    4005
24 months   PROBIT           BELARUS                        <151 cm                1        5    4005
24 months   PROBIT           BELARUS                        [151-155) cm           0      109    4005
24 months   PROBIT           BELARUS                        [151-155) cm           1        2    4005
24 months   PROVIDE          BANGLADESH                     >=155 cm               0      118     577
24 months   PROVIDE          BANGLADESH                     >=155 cm               1        4     577
24 months   PROVIDE          BANGLADESH                     <151 cm                0      276     577
24 months   PROVIDE          BANGLADESH                     <151 cm                1       39     577
24 months   PROVIDE          BANGLADESH                     [151-155) cm           0      131     577
24 months   PROVIDE          BANGLADESH                     [151-155) cm           1        9     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm               0      991    1374
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm               1       93    1374
24 months   ZVITAMBO         ZIMBABWE                       <151 cm                0       74    1374
24 months   ZVITAMBO         ZIMBABWE                       <151 cm                1       24    1374
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm           0      159    1374
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm           1       33    1374


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
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

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/6a62bce9-bcb2-4ff5-9fb1-8c71ce6b8482/ce380c7f-bfab-47e7-873e-893f74987e2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6a62bce9-bcb2-4ff5-9fb1-8c71ce6b8482/ce380c7f-bfab-47e7-873e-893f74987e2b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6a62bce9-bcb2-4ff5-9fb1-8c71ce6b8482/ce380c7f-bfab-47e7-873e-893f74987e2b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6a62bce9-bcb2-4ff5-9fb1-8c71ce6b8482/ce380c7f-bfab-47e7-873e-893f74987e2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          >=155 cm             NA                0.0150943   0.0047110   0.0254777
Birth       COHORTS          INDIA                          <151 cm              NA                0.0314548   0.0190665   0.0438431
Birth       COHORTS          INDIA                          [151-155) cm         NA                0.0228690   0.0095062   0.0362318
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0536892   0.0446921   0.0626864
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                0.1290915   0.1228467   0.1353364
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0903915   0.0821394   0.0986436
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.0463619   0.0250675   0.0676563
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                0.1039100   0.0781316   0.1296885
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0891440   0.0420723   0.1362158
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0258488   0.0223103   0.0293872
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0558590   0.0368615   0.0748565
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0368488   0.0269539   0.0467438
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0512821   0.0112934   0.0912707
6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.1573927   0.1289181   0.1858673
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.0812183   0.0430521   0.1193844
6 months    COHORTS          INDIA                          >=155 cm             NA                0.0224872   0.0100358   0.0349387
6 months    COHORTS          INDIA                          <151 cm              NA                0.0605798   0.0440205   0.0771391
6 months    COHORTS          INDIA                          [151-155) cm         NA                0.0226975   0.0093781   0.0360170
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0180609   0.0073251   0.0287967
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.0668736   0.0535812   0.0801660
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0397354   0.0256166   0.0538542
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0215603   0.0148722   0.0282484
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.0787254   0.0730069   0.0844439
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0403148   0.0340337   0.0465959
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0261480   0.0182474   0.0340485
6 months    Keneba           GAMBIA                         <151 cm              NA                0.0746269   0.0116860   0.1375677
6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.0537190   0.0253052   0.0821329
6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.0502353   0.0312173   0.0692534
6 months    LCNI-5           MALAWI                         <151 cm              NA                0.1985425   0.1279517   0.2691334
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                0.0948707   0.0532908   0.1364505
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0475506   0.0233984   0.0717029
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.1539445   0.1070924   0.2007966
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.0983804   0.0621683   0.1345925
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0056180   0.0014669   0.0097691
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0161812   0.0021097   0.0302527
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0158730   0.0042051   0.0275409
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0333042   0.0287263   0.0378820
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1013922   0.0729789   0.1298054
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0434179   0.0310254   0.0558104
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.3015662   0.2219873   0.3811451
24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.5348838   0.4966340   0.5731337
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.4702647   0.4021436   0.5383858
24 months   COHORTS          INDIA                          >=155 cm             NA                0.1125632   0.0879454   0.1371810
24 months   COHORTS          INDIA                          <151 cm              NA                0.2689048   0.2378775   0.2999322
24 months   COHORTS          INDIA                          [151-155) cm         NA                0.1914493   0.1566083   0.2262904
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1797855   0.1478223   0.2117488
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.3553853   0.3289260   0.3818445
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2417836   0.2104065   0.2731606
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0494796   0.0373562   0.0616029
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.2048588   0.1925136   0.2172040
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.0946473   0.0792806   0.1100139
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0734861   0.0595194   0.0874528
24 months   Keneba           GAMBIA                         <151 cm              NA                0.1547289   0.0580110   0.2514469
24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.1111554   0.0662949   0.1560159
24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0719405   0.0450094   0.0988715
24 months   LCNI-5           MALAWI                         <151 cm              NA                0.2401718   0.1491180   0.3312256
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.1637485   0.0978501   0.2296469
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2441747   0.1678265   0.3205230
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.5170935   0.3562426   0.6779444
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3887225   0.2550158   0.5224291
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0779221   0.0179811   0.1378630
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.2976190   0.2411031   0.3541350
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1400000   0.0719124   0.2080876
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0861178   0.0694351   0.1028005
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2568635   0.1692427   0.3444844
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1737838   0.1204839   0.2270837


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          NA                   NA                0.0242390   0.0170805   0.0313975
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1089640   0.1044122   0.1135158
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.0766520   0.0591565   0.0941474
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.0291602   0.0258126   0.0325079
6 months    COHORTS          GUATEMALA                      NA                   NA                0.1283139   0.1069569   0.1496709
6 months    COHORTS          INDIA                          NA                   NA                0.0390324   0.0301298   0.0479351
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0606766   0.0568171   0.0645361
6 months    Keneba           GAMBIA                         NA                   NA                0.0314331   0.0235374   0.0393288
6 months    LCNI-5           MALAWI                         NA                   NA                0.0849282   0.0660197   0.1038368
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0969055   0.0737418   0.1200693
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0095190   0.0052582   0.0137799
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0389505   0.0345402   0.0433608
24 months   COHORTS          GUATEMALA                      NA                   NA                0.4929577   0.4618620   0.5240535
24 months   COHORTS          INDIA                          NA                   NA                0.2039582   0.1854361   0.2224803
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1560647   0.1473093   0.1648200
24 months   Keneba           GAMBIA                         NA                   NA                0.0823970   0.0689280   0.0958660
24 months   LCNI-5           MALAWI                         NA                   NA                0.1213172   0.0946538   0.1479805
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1091703   0.0926749   0.1256657


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          2.083879   0.9432426   4.603856
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          1.515073   0.6144022   3.736063
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.404421   2.0188702   2.863601
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.683606   1.3899552   2.039294
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          2.241280   1.2951056   3.878707
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.922786   0.8678880   4.259887
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.160996   1.4977491   3.117947
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.425556   1.0546129   1.926971
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          3.069157   1.3783850   6.833887
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.583756   0.6372270   3.936249
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          2.693962   1.4551428   4.987437
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          1.009352   0.4502858   2.262543
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.702681   1.9790197   6.927594
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          2.200084   1.1012310   4.395416
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          3.651406   2.6631574   5.006375
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.869862   1.3122402   2.664439
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          2.854023   1.1651317   6.991008
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          2.054425   1.1172215   3.777819
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          3.952249   2.3524589   6.639977
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.888525   1.0591783   3.367257
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          3.237486   1.7175124   6.102615
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          2.068961   0.9422193   4.543105
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.880259   0.9201086   9.016209
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.825397   0.9963933   8.011763
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          3.044430   2.2281448   4.159762
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.303677   0.9497011   1.789589
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.773686   1.3498117   2.330668
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.559408   1.1547399   2.105888
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          2.388923   1.8700022   3.051843
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.700816   1.2823889   2.255771
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.976718   1.6319099   2.394381
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.344844   1.0802127   1.674306
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          4.140271   3.2191916   5.324890
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.912855   1.4199018   2.576950
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.105554   1.0956534   4.046312
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.512604   0.9681396   2.363267
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          3.338480   1.9572965   5.694307
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.276167   1.3123722   3.947763
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.117719   1.3614902   3.293989
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.591985   0.9993758   2.535998
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          3.819444   1.7293940   8.435415
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.796667   0.7231383   4.463892
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.982699   2.0141070   4.417090
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          2.017977   1.4039778   2.900496


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          INDIA                          >=155 cm             NA                0.0091447   -0.0005835   0.0188728
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0552748    0.0463135   0.0642361
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.0302901    0.0085669   0.0520132
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0033115    0.0013677   0.0052553
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.0770318    0.0363083   0.1177554
6 months    COHORTS          INDIA                          >=155 cm             NA                0.0165452    0.0042933   0.0287971
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0306836    0.0192773   0.0420899
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.0391163    0.0322995   0.0459330
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0052852    0.0007603   0.0098101
6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.0346929    0.0181151   0.0512707
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0493549    0.0203924   0.0783174
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0039011    0.0001764   0.0076257
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0056463    0.0029859   0.0083068
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.1913915    0.1159831   0.2668000
24 months   COHORTS          INDIA                          >=155 cm             NA                0.0913950    0.0677310   0.1150590
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1093760    0.0794060   0.1393461
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1065851    0.0932332   0.1199370
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0089109    0.0017853   0.0160364
24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0493767    0.0257829   0.0729704
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0829281    0.0276470   0.1382091
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1435231    0.0814702   0.2055761
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0230525    0.0124727   0.0336323


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          INDIA                          >=155 cm             NA                0.3772707   -0.1575587   0.6649917
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.5072755    0.4207465   0.5808788
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.3951635    0.0732251   0.6052685
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1135613    0.0456294   0.1766579
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.6003391    0.1466206   0.8128278
6 months    COHORTS          INDIA                          >=155 cm             NA                0.4238832    0.0381500   0.6549248
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.6294786    0.3458225   0.7901394
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.6446684    0.5201810   0.7368580
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.1681403    0.0180716   0.2952740
6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.4084967    0.2032488   0.5608715
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.5093095    0.1876522   0.7036033
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.4098167   -0.0610110   0.6717128
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1449621    0.0759696   0.2088033
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.3882514    0.2140877   0.5238192
24 months   COHORTS          INDIA                          >=155 cm             NA                0.4481065    0.3273907   0.5471571
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.3782523    0.2674783   0.4722748
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.6829547    0.5972029   0.7504507
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.1081459    0.0191271   0.1890858
24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.4070050    0.2026688   0.5589749
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2535229    0.0655375   0.4036914
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.6481203    0.2620127   0.8322203
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2111608    0.1131381   0.2983492

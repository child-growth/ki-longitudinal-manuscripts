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

agecat      studyid          country                        mhtcm           stunted   n_cell       n
----------  ---------------  -----------------------------  -------------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm              0      104     840
Birth       COHORTS          GUATEMALA                      >=155 cm              1        6     840
Birth       COHORTS          GUATEMALA                      <151 cm               0      513     840
Birth       COHORTS          GUATEMALA                      <151 cm               1       32     840
Birth       COHORTS          GUATEMALA                      [151-155) cm          0      174     840
Birth       COHORTS          GUATEMALA                      [151-155) cm          1       11     840
Birth       COHORTS          INDIA                          >=155 cm              0      497    1774
Birth       COHORTS          INDIA                          >=155 cm              1       33    1774
Birth       COHORTS          INDIA                          <151 cm               0      657    1774
Birth       COHORTS          INDIA                          <151 cm               1      106    1774
Birth       COHORTS          INDIA                          [151-155) cm          0      436    1774
Birth       COHORTS          INDIA                          [151-155) cm          1       45    1774
Birth       COHORTS          PHILIPPINES                    >=155 cm              0      614    3050
Birth       COHORTS          PHILIPPINES                    >=155 cm              1       16    3050
Birth       COHORTS          PHILIPPINES                    <151 cm               0     1413    3050
Birth       COHORTS          PHILIPPINES                    <151 cm               1      132    3050
Birth       COHORTS          PHILIPPINES                    [151-155) cm          0      836    3050
Birth       COHORTS          PHILIPPINES                    [151-155) cm          1       39    3050
Birth       JiVitA-3         BANGLADESH                     >=155 cm              0     2670   22356
Birth       JiVitA-3         BANGLADESH                     >=155 cm              1      647   22356
Birth       JiVitA-3         BANGLADESH                     <151 cm               0     8258   22356
Birth       JiVitA-3         BANGLADESH                     <151 cm               1     5178   22356
Birth       JiVitA-3         BANGLADESH                     [151-155) cm          0     4076   22356
Birth       JiVitA-3         BANGLADESH                     [151-155) cm          1     1527   22356
Birth       Keneba           GAMBIA                         >=155 cm              0     1130    1431
Birth       Keneba           GAMBIA                         >=155 cm              1       57    1431
Birth       Keneba           GAMBIA                         <151 cm               0       46    1431
Birth       Keneba           GAMBIA                         <151 cm               1        5    1431
Birth       Keneba           GAMBIA                         [151-155) cm          0      182    1431
Birth       Keneba           GAMBIA                         [151-155) cm          1       11    1431
Birth       MAL-ED           BANGLADESH                     >=155 cm              0       19     222
Birth       MAL-ED           BANGLADESH                     >=155 cm              1        3     222
Birth       MAL-ED           BANGLADESH                     <151 cm               0      115     222
Birth       MAL-ED           BANGLADESH                     <151 cm               1       30     222
Birth       MAL-ED           BANGLADESH                     [151-155) cm          0       48     222
Birth       MAL-ED           BANGLADESH                     [151-155) cm          1        7     222
Birth       MAL-ED           BRAZIL                         >=155 cm              0       31      64
Birth       MAL-ED           BRAZIL                         >=155 cm              1        1      64
Birth       MAL-ED           BRAZIL                         <151 cm               0       14      64
Birth       MAL-ED           BRAZIL                         <151 cm               1        6      64
Birth       MAL-ED           BRAZIL                         [151-155) cm          0       10      64
Birth       MAL-ED           BRAZIL                         [151-155) cm          1        2      64
Birth       MAL-ED           INDIA                          >=155 cm              0       10      43
Birth       MAL-ED           INDIA                          >=155 cm              1        2      43
Birth       MAL-ED           INDIA                          <151 cm               0       15      43
Birth       MAL-ED           INDIA                          <151 cm               1        5      43
Birth       MAL-ED           INDIA                          [151-155) cm          0        9      43
Birth       MAL-ED           INDIA                          [151-155) cm          1        2      43
Birth       MAL-ED           NEPAL                          >=155 cm              0        6      27
Birth       MAL-ED           NEPAL                          >=155 cm              1        0      27
Birth       MAL-ED           NEPAL                          <151 cm               0       12      27
Birth       MAL-ED           NEPAL                          <151 cm               1        1      27
Birth       MAL-ED           NEPAL                          [151-155) cm          0        7      27
Birth       MAL-ED           NEPAL                          [151-155) cm          1        1      27
Birth       MAL-ED           PERU                           >=155 cm              0       45     226
Birth       MAL-ED           PERU                           >=155 cm              1        3     226
Birth       MAL-ED           PERU                           <151 cm               0      112     226
Birth       MAL-ED           PERU                           <151 cm               1       19     226
Birth       MAL-ED           PERU                           [151-155) cm          0       43     226
Birth       MAL-ED           PERU                           [151-155) cm          1        4     226
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm              0       74     101
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm              1        6     101
Birth       MAL-ED           SOUTH AFRICA                   <151 cm               0        8     101
Birth       MAL-ED           SOUTH AFRICA                   <151 cm               1        2     101
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm          0       10     101
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm          1        1     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       62     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       10     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       16     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        5     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     122
Birth       NIH-Birth        BANGLADESH                     >=155 cm              0      100     608
Birth       NIH-Birth        BANGLADESH                     >=155 cm              1       11     608
Birth       NIH-Birth        BANGLADESH                     <151 cm               0      289     608
Birth       NIH-Birth        BANGLADESH                     <151 cm               1       67     608
Birth       NIH-Birth        BANGLADESH                     [151-155) cm          0      122     608
Birth       NIH-Birth        BANGLADESH                     [151-155) cm          1       19     608
Birth       NIH-Crypto       BANGLADESH                     >=155 cm              0      119     729
Birth       NIH-Crypto       BANGLADESH                     >=155 cm              1       15     729
Birth       NIH-Crypto       BANGLADESH                     <151 cm               0      355     729
Birth       NIH-Crypto       BANGLADESH                     <151 cm               1       63     729
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm          0      154     729
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm          1       23     729
Birth       PROBIT           BELARUS                        >=155 cm              0    13176   13732
Birth       PROBIT           BELARUS                        >=155 cm              1       33   13732
Birth       PROBIT           BELARUS                        <151 cm               0      125   13732
Birth       PROBIT           BELARUS                        <151 cm               1        0   13732
Birth       PROBIT           BELARUS                        [151-155) cm          0      397   13732
Birth       PROBIT           BELARUS                        [151-155) cm          1        1   13732
Birth       PROVIDE          BANGLADESH                     >=155 cm              0      102     517
Birth       PROVIDE          BANGLADESH                     >=155 cm              1        8     517
Birth       PROVIDE          BANGLADESH                     <151 cm               0      254     517
Birth       PROVIDE          BANGLADESH                     <151 cm               1       32     517
Birth       PROVIDE          BANGLADESH                     [151-155) cm          0      114     517
Birth       PROVIDE          BANGLADESH                     [151-155) cm          1        7     517
Birth       SAS-CompFeed     INDIA                          >=155 cm              0      374    1135
Birth       SAS-CompFeed     INDIA                          >=155 cm              1       93    1135
Birth       SAS-CompFeed     INDIA                          <151 cm               0      240    1135
Birth       SAS-CompFeed     INDIA                          <151 cm               1      145    1135
Birth       SAS-CompFeed     INDIA                          [151-155) cm          0      201    1135
Birth       SAS-CompFeed     INDIA                          [151-155) cm          1       82    1135
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm              0     7005    9705
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm              1      727    9705
Birth       ZVITAMBO         ZIMBABWE                       <151 cm               0      482    9705
Birth       ZVITAMBO         ZIMBABWE                       <151 cm               1       78    9705
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1259    9705
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm          1      154    9705
6 months    COHORTS          GUATEMALA                      >=155 cm              0       93     943
6 months    COHORTS          GUATEMALA                      >=155 cm              1       24     943
6 months    COHORTS          GUATEMALA                      <151 cm               0      331     943
6 months    COHORTS          GUATEMALA                      <151 cm               1      298     943
6 months    COHORTS          GUATEMALA                      [151-155) cm          0      133     943
6 months    COHORTS          GUATEMALA                      [151-155) cm          1       64     943
6 months    COHORTS          INDIA                          >=155 cm              0      491    1819
6 months    COHORTS          INDIA                          >=155 cm              1       50    1819
6 months    COHORTS          INDIA                          <151 cm               0      614    1819
6 months    COHORTS          INDIA                          <151 cm               1      176    1819
6 months    COHORTS          INDIA                          [151-155) cm          0      411    1819
6 months    COHORTS          INDIA                          [151-155) cm          1       77    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm              0      493    2708
6 months    COHORTS          PHILIPPINES                    >=155 cm              1       68    2708
6 months    COHORTS          PHILIPPINES                    <151 cm               0      992    2708
6 months    COHORTS          PHILIPPINES                    <151 cm               1      376    2708
6 months    COHORTS          PHILIPPINES                    [151-155) cm          0      651    2708
6 months    COHORTS          PHILIPPINES                    [151-155) cm          1      128    2708
6 months    Guatemala BSC    GUATEMALA                      >=155 cm              0       28     231
6 months    Guatemala BSC    GUATEMALA                      >=155 cm              1        8     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm               0       94     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm               1       47     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          0       39     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          1       15     231
6 months    JiVitA-3         BANGLADESH                     >=155 cm              0     2389   16761
6 months    JiVitA-3         BANGLADESH                     >=155 cm              1      271   16761
6 months    JiVitA-3         BANGLADESH                     <151 cm               0     6637   16761
6 months    JiVitA-3         BANGLADESH                     <151 cm               1     3160   16761
6 months    JiVitA-3         BANGLADESH                     [151-155) cm          0     3519   16761
6 months    JiVitA-3         BANGLADESH                     [151-155) cm          1      785   16761
6 months    Keneba           GAMBIA                         >=155 cm              0     1375    1877
6 months    Keneba           GAMBIA                         >=155 cm              1      193    1877
6 months    Keneba           GAMBIA                         <151 cm               0       47    1877
6 months    Keneba           GAMBIA                         <151 cm               1       20    1877
6 months    Keneba           GAMBIA                         [151-155) cm          0      187    1877
6 months    Keneba           GAMBIA                         [151-155) cm          1       55    1877
6 months    LCNI-5           MALAWI                         >=155 cm              0      358     836
6 months    LCNI-5           MALAWI                         >=155 cm              1      155     836
6 months    LCNI-5           MALAWI                         <151 cm               0       58     836
6 months    LCNI-5           MALAWI                         <151 cm               1       73     836
6 months    LCNI-5           MALAWI                         [151-155) cm          0      113     836
6 months    LCNI-5           MALAWI                         [151-155) cm          1       79     836
6 months    MAL-ED           BANGLADESH                     >=155 cm              0       21     241
6 months    MAL-ED           BANGLADESH                     >=155 cm              1        3     241
6 months    MAL-ED           BANGLADESH                     <151 cm               0      119     241
6 months    MAL-ED           BANGLADESH                     <151 cm               1       37     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm          0       57     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm          1        4     241
6 months    MAL-ED           BRAZIL                         >=155 cm              0      118     209
6 months    MAL-ED           BRAZIL                         >=155 cm              1        3     209
6 months    MAL-ED           BRAZIL                         <151 cm               0       49     209
6 months    MAL-ED           BRAZIL                         <151 cm               1        2     209
6 months    MAL-ED           BRAZIL                         [151-155) cm          0       36     209
6 months    MAL-ED           BRAZIL                         [151-155) cm          1        1     209
6 months    MAL-ED           INDIA                          >=155 cm              0       49     235
6 months    MAL-ED           INDIA                          >=155 cm              1        6     235
6 months    MAL-ED           INDIA                          <151 cm               0       82     235
6 months    MAL-ED           INDIA                          <151 cm               1       30     235
6 months    MAL-ED           INDIA                          [151-155) cm          0       60     235
6 months    MAL-ED           INDIA                          [151-155) cm          1        8     235
6 months    MAL-ED           NEPAL                          >=155 cm              0       41     236
6 months    MAL-ED           NEPAL                          >=155 cm              1        0     236
6 months    MAL-ED           NEPAL                          <151 cm               0      122     236
6 months    MAL-ED           NEPAL                          <151 cm               1       10     236
6 months    MAL-ED           NEPAL                          [151-155) cm          0       61     236
6 months    MAL-ED           NEPAL                          [151-155) cm          1        2     236
6 months    MAL-ED           PERU                           >=155 cm              0       51     272
6 months    MAL-ED           PERU                           >=155 cm              1        7     272
6 months    MAL-ED           PERU                           <151 cm               0      116     272
6 months    MAL-ED           PERU                           <151 cm               1       41     272
6 months    MAL-ED           PERU                           [151-155) cm          0       45     272
6 months    MAL-ED           PERU                           [151-155) cm          1       12     272
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              0      156     249
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              1       31     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm               0       21     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm               1       10     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          0       22     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          1        9     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      122     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       25     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       27     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1       21     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       39     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       13     247
6 months    NIH-Birth        BANGLADESH                     >=155 cm              0       80     537
6 months    NIH-Birth        BANGLADESH                     >=155 cm              1       16     537
6 months    NIH-Birth        BANGLADESH                     <151 cm               0      208     537
6 months    NIH-Birth        BANGLADESH                     <151 cm               1      103     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm          0      105     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm          1       25     537
6 months    NIH-Crypto       BANGLADESH                     >=155 cm              0      116     715
6 months    NIH-Crypto       BANGLADESH                     >=155 cm              1       18     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm               0      310     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm               1      101     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          0      139     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          1       31     715
6 months    PROBIT           BELARUS                        >=155 cm              0    12088   13031
6 months    PROBIT           BELARUS                        >=155 cm              1      443   13031
6 months    PROBIT           BELARUS                        <151 cm               0      107   13031
6 months    PROBIT           BELARUS                        <151 cm               1       14   13031
6 months    PROBIT           BELARUS                        [151-155) cm          0      356   13031
6 months    PROBIT           BELARUS                        [151-155) cm          1       23   13031
6 months    PROVIDE          BANGLADESH                     >=155 cm              0      117     603
6 months    PROVIDE          BANGLADESH                     >=155 cm              1       11     603
6 months    PROVIDE          BANGLADESH                     <151 cm               0      265     603
6 months    PROVIDE          BANGLADESH                     <151 cm               1       65     603
6 months    PROVIDE          BANGLADESH                     [151-155) cm          0      126     603
6 months    PROVIDE          BANGLADESH                     [151-155) cm          1       19     603
6 months    SAS-CompFeed     INDIA                          >=155 cm              0      408    1228
6 months    SAS-CompFeed     INDIA                          >=155 cm              1      102    1228
6 months    SAS-CompFeed     INDIA                          <151 cm               0      251    1228
6 months    SAS-CompFeed     INDIA                          <151 cm               1      170    1228
6 months    SAS-CompFeed     INDIA                          [151-155) cm          0      215    1228
6 months    SAS-CompFeed     INDIA                          [151-155) cm          1       82    1228
6 months    SAS-FoodSuppl    INDIA                          >=155 cm              0       54     379
6 months    SAS-FoodSuppl    INDIA                          >=155 cm              1       20     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm               0       96     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm               1      106     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          0       67     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          1       36     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1160    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       86    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      263    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       46    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      383    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       58    1996
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              0     5037    7394
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              1      851    7394
6 months    ZVITAMBO         ZIMBABWE                       <151 cm               0      296    7394
6 months    ZVITAMBO         ZIMBABWE                       <151 cm               1      149    7394
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          0      854    7394
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          1      207    7394
24 months   COHORTS          GUATEMALA                      >=155 cm              0       54     994
24 months   COHORTS          GUATEMALA                      >=155 cm              1       72     994
24 months   COHORTS          GUATEMALA                      <151 cm               0       89     994
24 months   COHORTS          GUATEMALA                      <151 cm               1      570     994
24 months   COHORTS          GUATEMALA                      [151-155) cm          0       43     994
24 months   COHORTS          GUATEMALA                      [151-155) cm          1      166     994
24 months   COHORTS          INDIA                          >=155 cm              0      373    1819
24 months   COHORTS          INDIA                          >=155 cm              1      179    1819
24 months   COHORTS          INDIA                          <151 cm               0      277    1819
24 months   COHORTS          INDIA                          <151 cm               1      508    1819
24 months   COHORTS          INDIA                          [151-155) cm          0      224    1819
24 months   COHORTS          INDIA                          [151-155) cm          1      258    1819
24 months   COHORTS          PHILIPPINES                    >=155 cm              0      279    2445
24 months   COHORTS          PHILIPPINES                    >=155 cm              1      231    2445
24 months   COHORTS          PHILIPPINES                    <151 cm               0      336    2445
24 months   COHORTS          PHILIPPINES                    <151 cm               1      898    2445
24 months   COHORTS          PHILIPPINES                    [151-155) cm          0      307    2445
24 months   COHORTS          PHILIPPINES                    [151-155) cm          1      394    2445
24 months   JiVitA-3         BANGLADESH                     >=155 cm              0      968    8599
24 months   JiVitA-3         BANGLADESH                     >=155 cm              1      346    8599
24 months   JiVitA-3         BANGLADESH                     <151 cm               0     2060    8599
24 months   JiVitA-3         BANGLADESH                     <151 cm               1     3007    8599
24 months   JiVitA-3         BANGLADESH                     [151-155) cm          0     1345    8599
24 months   JiVitA-3         BANGLADESH                     [151-155) cm          1      873    8599
24 months   Keneba           GAMBIA                         >=155 cm              0      920    1602
24 months   Keneba           GAMBIA                         >=155 cm              1      418    1602
24 months   Keneba           GAMBIA                         <151 cm               0       21    1602
24 months   Keneba           GAMBIA                         <151 cm               1       39    1602
24 months   Keneba           GAMBIA                         [151-155) cm          0      113    1602
24 months   Keneba           GAMBIA                         [151-155) cm          1       91    1602
24 months   LCNI-5           MALAWI                         >=155 cm              0      227     577
24 months   LCNI-5           MALAWI                         >=155 cm              1      128     577
24 months   LCNI-5           MALAWI                         <151 cm               0       36     577
24 months   LCNI-5           MALAWI                         <151 cm               1       59     577
24 months   LCNI-5           MALAWI                         [151-155) cm          0       58     577
24 months   LCNI-5           MALAWI                         [151-155) cm          1       69     577
24 months   MAL-ED           BANGLADESH                     >=155 cm              0       18     212
24 months   MAL-ED           BANGLADESH                     >=155 cm              1        4     212
24 months   MAL-ED           BANGLADESH                     <151 cm               0       54     212
24 months   MAL-ED           BANGLADESH                     <151 cm               1       83     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm          0       39     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm          1       14     212
24 months   MAL-ED           BRAZIL                         >=155 cm              0       91     169
24 months   MAL-ED           BRAZIL                         >=155 cm              1        4     169
24 months   MAL-ED           BRAZIL                         <151 cm               0       42     169
24 months   MAL-ED           BRAZIL                         <151 cm               1        1     169
24 months   MAL-ED           BRAZIL                         [151-155) cm          0       29     169
24 months   MAL-ED           BRAZIL                         [151-155) cm          1        2     169
24 months   MAL-ED           INDIA                          >=155 cm              0       39     226
24 months   MAL-ED           INDIA                          >=155 cm              1       14     226
24 months   MAL-ED           INDIA                          <151 cm               0       50     226
24 months   MAL-ED           INDIA                          <151 cm               1       60     226
24 months   MAL-ED           INDIA                          [151-155) cm          0       41     226
24 months   MAL-ED           INDIA                          [151-155) cm          1       22     226
24 months   MAL-ED           NEPAL                          >=155 cm              0       38     228
24 months   MAL-ED           NEPAL                          >=155 cm              1        0     228
24 months   MAL-ED           NEPAL                          <151 cm               0       90     228
24 months   MAL-ED           NEPAL                          <151 cm               1       39     228
24 months   MAL-ED           NEPAL                          [151-155) cm          0       50     228
24 months   MAL-ED           NEPAL                          [151-155) cm          1       11     228
24 months   MAL-ED           PERU                           >=155 cm              0       37     201
24 months   MAL-ED           PERU                           >=155 cm              1        9     201
24 months   MAL-ED           PERU                           <151 cm               0       62     201
24 months   MAL-ED           PERU                           <151 cm               1       53     201
24 months   MAL-ED           PERU                           [151-155) cm          0       28     201
24 months   MAL-ED           PERU                           [151-155) cm          1       12     201
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              0      122     234
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              1       58     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm               0       16     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm               1       11     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          0       14     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          1       13     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       45     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       81     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1       37     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       11     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       37     214
24 months   NIH-Birth        BANGLADESH                     >=155 cm              0       49     429
24 months   NIH-Birth        BANGLADESH                     >=155 cm              1       28     429
24 months   NIH-Birth        BANGLADESH                     <151 cm               0       86     429
24 months   NIH-Birth        BANGLADESH                     <151 cm               1      166     429
24 months   NIH-Birth        BANGLADESH                     [151-155) cm          0       50     429
24 months   NIH-Birth        BANGLADESH                     [151-155) cm          1       50     429
24 months   NIH-Crypto       BANGLADESH                     >=155 cm              0       91     514
24 months   NIH-Crypto       BANGLADESH                     >=155 cm              1        9     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm               0      194     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm               1       93     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          0       97     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          1       30     514
24 months   PROBIT           BELARUS                        >=155 cm              0     3615    4005
24 months   PROBIT           BELARUS                        >=155 cm              1      244    4005
24 months   PROBIT           BELARUS                        <151 cm               0       23    4005
24 months   PROBIT           BELARUS                        <151 cm               1       12    4005
24 months   PROBIT           BELARUS                        [151-155) cm          0       95    4005
24 months   PROBIT           BELARUS                        [151-155) cm          1       16    4005
24 months   PROVIDE          BANGLADESH                     >=155 cm              0      102     577
24 months   PROVIDE          BANGLADESH                     >=155 cm              1       20     577
24 months   PROVIDE          BANGLADESH                     <151 cm               0      194     577
24 months   PROVIDE          BANGLADESH                     <151 cm               1      121     577
24 months   PROVIDE          BANGLADESH                     [151-155) cm          0       92     577
24 months   PROVIDE          BANGLADESH                     [151-155) cm          1       48     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              0      749    1374
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              1      335    1374
24 months   ZVITAMBO         ZIMBABWE                       <151 cm               0       44    1374
24 months   ZVITAMBO         ZIMBABWE                       <151 cm               1       54    1374
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          0      105    1374
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          1       87    1374


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

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/e04a5276-88f6-4b04-a5c3-ec389d26ccc1/76face42-5659-4ac6-a394-1c9bc8e127a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e04a5276-88f6-4b04-a5c3-ec389d26ccc1/76face42-5659-4ac6-a394-1c9bc8e127a8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e04a5276-88f6-4b04-a5c3-ec389d26ccc1/76face42-5659-4ac6-a394-1c9bc8e127a8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e04a5276-88f6-4b04-a5c3-ec389d26ccc1/76face42-5659-4ac6-a394-1c9bc8e127a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                0.0545455   0.0120825   0.0970084
Birth       COHORTS          GUATEMALA                      <151 cm              NA                0.0587156   0.0389666   0.0784646
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                0.0594595   0.0253621   0.0935568
Birth       COHORTS          INDIA                          >=155 cm             NA                0.0629373   0.0423357   0.0835389
Birth       COHORTS          INDIA                          <151 cm              NA                0.1401211   0.1154447   0.1647975
Birth       COHORTS          INDIA                          [151-155) cm         NA                0.0929864   0.0667583   0.1192144
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                0.0256468   0.0130409   0.0382526
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                0.0829267   0.0692466   0.0966068
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0462442   0.0320602   0.0604282
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.2054899   0.1896770   0.2213027
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                0.3783676   0.3689568   0.3877784
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.2800047   0.2665164   0.2934930
Birth       Keneba           GAMBIA                         >=155 cm             NA                0.0480202   0.0358527   0.0601877
Birth       Keneba           GAMBIA                         <151 cm              NA                0.0980392   0.0163982   0.1796803
Birth       Keneba           GAMBIA                         [151-155) cm         NA                0.0569948   0.0242761   0.0897135
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1388889   0.0586782   0.2190996
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2380952   0.0551794   0.4210111
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2413793   0.0849930   0.3977656
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1021183   0.0464586   0.1577781
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                0.1899405   0.1492734   0.2306076
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1465140   0.0895250   0.2035029
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1125903   0.0588516   0.1663289
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                0.1497944   0.1153830   0.1842058
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1285078   0.0787938   0.1782219
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                0.0727273   0.0241510   0.1213036
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                0.1118881   0.0753193   0.1484570
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                0.0578512   0.0162130   0.0994894
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.1937209   0.1450186   0.2424232
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                0.3799385   0.3307206   0.4291565
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2929121   0.2382778   0.3475464
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0941142   0.0876047   0.1006238
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1370942   0.1088451   0.1653433
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1090922   0.0926819   0.1255025
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.2014659   0.1275183   0.2754135
6 months    COHORTS          GUATEMALA                      <151 cm              NA                0.4716348   0.4325202   0.5107493
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                0.3253907   0.2594435   0.3913379
6 months    COHORTS          INDIA                          >=155 cm             NA                0.0994972   0.0752499   0.1237446
6 months    COHORTS          INDIA                          <151 cm              NA                0.2149835   0.1861694   0.2437975
6 months    COHORTS          INDIA                          [151-155) cm         NA                0.1568481   0.1244116   0.1892846
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.1275304   0.0999565   0.1551044
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                0.2675574   0.2440166   0.2910981
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1680438   0.1414644   0.1946231
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2222222   0.0861215   0.3583229
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3333333   0.2553549   0.4113117
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2777778   0.1580548   0.3975007
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1123442   0.0985441   0.1261442
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                0.3138708   0.3026561   0.3250856
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.1877618   0.1754879   0.2000357
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.1238857   0.1076137   0.1401578
6 months    Keneba           GAMBIA                         <151 cm              NA                0.3038813   0.1918095   0.4159532
6 months    Keneba           GAMBIA                         [151-155) cm         NA                0.2259891   0.1728331   0.2791450
6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.3049250   0.2651203   0.3447296
6 months    LCNI-5           MALAWI                         <151 cm              NA                0.5572039   0.4708566   0.6435511
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                0.4157678   0.3455076   0.4860279
6 months    MAL-ED           INDIA                          >=155 cm             NA                0.1090909   0.0265244   0.1916574
6 months    MAL-ED           INDIA                          <151 cm              NA                0.2678571   0.1856680   0.3500463
6 months    MAL-ED           INDIA                          [151-155) cm         NA                0.1176471   0.0409054   0.1943887
6 months    MAL-ED           PERU                           >=155 cm             NA                0.1206897   0.0366973   0.2046821
6 months    MAL-ED           PERU                           <151 cm              NA                0.2611465   0.1923099   0.3299831
6 months    MAL-ED           PERU                           [151-155) cm         NA                0.2105263   0.1044954   0.3165572
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1657754   0.1123679   0.2191830
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.3225806   0.1576927   0.4874686
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.2903226   0.1302150   0.4504302
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1705738   0.1087077   0.2324398
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4452541   0.3029877   0.5875206
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2425592   0.1194397   0.3656787
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1631001   0.0872413   0.2389589
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                0.3327835   0.2801844   0.3853825
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1897473   0.1211684   0.2583261
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1335098   0.0754986   0.1915211
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                0.2460544   0.2042941   0.2878147
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.1784653   0.1199961   0.2369344
6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0353971   0.0266777   0.0441166
6 months    PROBIT           BELARUS                        <151 cm              NA                0.1016417   0.0782454   0.1250380
6 months    PROBIT           BELARUS                        [151-155) cm         NA                0.0602914   0.0281064   0.0924765
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.0855740   0.0351399   0.1360081
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                0.1916063   0.1492249   0.2339877
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                0.1355103   0.0775478   0.1934729
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.2003388   0.1790243   0.2216533
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                0.3957086   0.3267714   0.4646457
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                0.2827533   0.2362870   0.3292196
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.2734298   0.1708447   0.3760148
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                0.5251917   0.4558295   0.5945539
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                0.3539080   0.2593952   0.4484208
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0695817   0.0554167   0.0837466
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1496684   0.1092061   0.1901307
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1300472   0.0982779   0.1618165
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1448577   0.1358738   0.1538416
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3353609   0.2912835   0.3794384
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1937370   0.1697863   0.2176878
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.5607157   0.4746558   0.6467756
24 months   COHORTS          GUATEMALA                      <151 cm              NA                0.8624647   0.8359194   0.8890100
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                0.7965817   0.7391077   0.8540558
24 months   COHORTS          INDIA                          >=155 cm             NA                0.3539084   0.3160128   0.3918041
24 months   COHORTS          INDIA                          <151 cm              NA                0.6306477   0.5978161   0.6634793
24 months   COHORTS          INDIA                          [151-155) cm         NA                0.5281080   0.4844345   0.5717816
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.4881572   0.4464606   0.5298538
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                0.7089016   0.6843229   0.7334803
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                0.5754968   0.5394005   0.6115930
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.2869886   0.2586187   0.3153586
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                0.5819371   0.5667997   0.5970746
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                0.4069785   0.3832967   0.4306603
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.3126613   0.2878097   0.3375129
24 months   Keneba           GAMBIA                         <151 cm              NA                0.6547753   0.5300191   0.7795316
24 months   Keneba           GAMBIA                         [151-155) cm         NA                0.4454205   0.3768591   0.5139818
24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.3613626   0.3111702   0.4115549
24 months   LCNI-5           MALAWI                         <151 cm              NA                0.6430784   0.5428434   0.7433134
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                0.5535442   0.4659571   0.6411313
24 months   MAL-ED           INDIA                          >=155 cm             NA                0.2605653   0.1407021   0.3804285
24 months   MAL-ED           INDIA                          <151 cm              NA                0.5331601   0.4388423   0.6274779
24 months   MAL-ED           INDIA                          [151-155) cm         NA                0.3452310   0.2240482   0.4664138
24 months   MAL-ED           PERU                           >=155 cm             NA                0.1956522   0.0807267   0.3105777
24 months   MAL-ED           PERU                           <151 cm              NA                0.4608696   0.3695386   0.5522006
24 months   MAL-ED           PERU                           [151-155) cm         NA                0.3000000   0.1576325   0.4423675
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.3226026   0.2542460   0.3909591
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                0.4306064   0.2394054   0.6218073
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                0.4579454   0.2606636   0.6552272
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3901311   0.2843949   0.4958673
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                0.6480301   0.5896178   0.7064424
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5069575   0.4067593   0.6071557
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0900000   0.0338548   0.1461452
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                0.3240418   0.2698429   0.3782407
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                0.2362205   0.1622750   0.3101660
24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0633041   0.0345520   0.0920562
24 months   PROBIT           BELARUS                        <151 cm              NA                0.3186983   0.2682624   0.3691341
24 months   PROBIT           BELARUS                        [151-155) cm         NA                0.1403447   0.0735722   0.2071171
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1815185   0.1112421   0.2517949
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                0.3673267   0.3141918   0.4204617
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                0.3519756   0.2716004   0.4323509
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.3105645   0.2830514   0.3380776
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.5432539   0.4414222   0.6450856
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.4508400   0.3804958   0.5211841


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0583333   0.0424744   0.0741923
Birth       COHORTS          INDIA                          NA                   NA                0.1037204   0.0895283   0.1179125
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3288603   0.3214821   0.3362385
Birth       Keneba           GAMBIA                         NA                   NA                0.0510133   0.0396094   0.0624171
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1803279   0.1118253   0.2488304
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1385460   0.1134505   0.1636414
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0909091   0.0661046   0.1157136
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2819383   0.2495848   0.3142918
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.0988150   0.0928777   0.1047524
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4093319   0.3779317   0.4407321
6 months    COHORTS          INDIA                          NA                   NA                0.1665750   0.1494477   0.1837024
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3030303   0.2436375   0.3624232
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2515363   0.2434210   0.2596516
6 months    Keneba           GAMBIA                         NA                   NA                0.1427810   0.1269499   0.1586122
6 months    LCNI-5           MALAWI                         NA                   NA                0.3672249   0.3345288   0.3999210
6 months    MAL-ED           INDIA                          NA                   NA                0.1872340   0.1372518   0.2372162
6 months    MAL-ED           PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2008032   0.1509453   0.2506612
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0368352   0.0276810   0.0459895
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1575456   0.1284434   0.1866478
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2882736   0.2624662   0.3140810
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4274406   0.3775694   0.4773119
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0951904   0.0823123   0.1080685
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1632405   0.1548158   0.1716651
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8128773   0.7886196   0.8371349
24 months   COHORTS          INDIA                          NA                   NA                0.5195162   0.4965500   0.5424825
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4914525   0.4783104   0.5045946
24 months   Keneba           GAMBIA                         NA                   NA                0.3420724   0.3188343   0.3653105
24 months   LCNI-5           MALAWI                         NA                   NA                0.4436742   0.4031015   0.4842468
24 months   MAL-ED           INDIA                          NA                   NA                0.4247788   0.3601902   0.4893673
24 months   MAL-ED           PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3504274   0.2891665   0.4116882
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0679151   0.0407521   0.0950781
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3275563   0.2892291   0.3658836
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3464338   0.3212647   0.3716029


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0764526   0.4609940   2.513591
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.0900901   0.4145183   2.866692
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          2.2263611   1.5349237   3.229270
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4774447   0.9591377   2.275839
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          3.2334162   1.9254207   5.429972
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.8031214   1.0103239   3.218024
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          1.8412955   1.6999432   1.994401
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.3626204   1.2453187   1.490971
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          2.0416237   0.8549698   4.875292
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.1868921   0.6337132   2.222950
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7142857   0.6556608   4.482158
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7379310   0.7296261   4.139661
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.8600040   1.0351134   3.342257
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.4347470   0.7349338   2.800931
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.3304380   0.7830940   2.260348
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.1413758   0.6177451   2.108861
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          1.5384615   0.7313825   3.236151
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          0.7954545   0.2979717   2.123517
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.9612675   1.5116369   2.544639
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.5120314   1.0796786   2.117518
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.4566788   1.1720851   1.810375
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.1591464   0.9822679   1.367876
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          2.3410158   1.6070353   3.410227
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.6151158   1.0617603   2.456863
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          2.1606979   1.6381310   2.849965
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          1.5764061   1.1461281   2.168219
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.0979882   1.6612907   2.649479
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3176757   1.0080708   1.722368
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.5000000   0.7786878   2.889476
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2500000   0.5911037   2.643360
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.7938332   2.4667838   3.164243
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.6713089   1.4583952   1.915306
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          2.4529162   1.6587080   3.627400
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.8241732   1.3936022   2.387775
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          1.8273476   1.4922562   2.237685
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.3635085   1.1008707   1.688805
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          2.4553571   1.0849998   5.556479
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.0784314   0.3970629   2.929043
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          2.1637853   1.0280615   4.554170
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          1.7443609   0.7388397   4.118343
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.9458897   1.0634406   3.560600
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          1.7513007   0.9246585   3.316959
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.6103321   1.6083925   4.236425
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4220195   0.7606279   2.658513
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.0403636   1.2491769   3.332661
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.1633793   0.6455514   2.096582
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          1.8429683   1.1558967   2.938439
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          1.3367200   0.7758571   2.303027
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          2.8714661   2.2227835   3.709456
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7032850   1.0616595   2.732684
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.2390711   1.1927494   4.203263
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.5835455   0.7645595   3.279819
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          1.9751970   1.6150477   2.415658
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          1.4113757   1.1080593   1.797721
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          1.9207554   1.2905882   2.858620
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          1.2943287   0.8168756   2.050847
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.1509741   1.5330113   3.018040
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8689858   1.3599533   2.568550
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.3151062   2.0018666   2.677360
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3374300   1.1647056   1.535769
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5381497   1.3151282   1.798992
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.4206517   1.1989208   1.683390
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          1.7819517   1.5846792   2.003782
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          1.4922167   1.3056431   1.705451
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4521994   1.3256465   1.590834
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1789169   1.0614866   1.309338
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          2.0277360   1.8355218   2.240079
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          1.4180999   1.2675121   1.586578
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          2.0941999   1.7034780   2.574541
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.4246100   1.1980679   1.693989
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          1.7795933   1.4437245   2.193599
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.5318248   1.2402596   1.891933
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          2.0461671   1.2483832   3.353778
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          1.3249310   0.7389458   2.375603
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          2.3555556   1.2672529   4.378480
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          1.5333333   0.7205799   3.262804
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          1.3347889   0.8189489   2.175547
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          1.4195342   0.8801540   2.289460
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.6610572   1.2507958   2.205884
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2994541   0.9302627   1.815166
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          3.6004646   1.8873879   6.868405
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          2.6246719   1.3060213   5.274724
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          5.0344026   3.0441806   8.325790
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          2.2169920   1.0678243   4.602868
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          2.0236324   1.3420349   3.051402
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          1.9390619   1.2401405   3.031883
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7492466   1.4215063   2.152550
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.4516791   1.2136365   1.736411


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                0.0037879   -0.0359911   0.0435668
Birth       COHORTS          INDIA                          >=155 cm             NA                0.0407831    0.0214637   0.0601026
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                0.0356647    0.0226788   0.0486506
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1233704    0.1083607   0.1383801
Birth       Keneba           GAMBIA                         >=155 cm             NA                0.0029931   -0.0027067   0.0086929
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0414390   -0.0179952   0.1008731
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0574211    0.0043460   0.1104962
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0259557   -0.0236776   0.0755889
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                0.0181818   -0.0262120   0.0625756
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.0882174    0.0586814   0.1177535
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0047008    0.0015139   0.0078877
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.2078661    0.1363459   0.2793862
6 months    COHORTS          INDIA                          >=155 cm             NA                0.0670778    0.0442059   0.0899497
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.0836956    0.0574560   0.1099351
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0808081   -0.0467748   0.2083909
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.1391921    0.1256776   0.1527067
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.0188953    0.0103811   0.0274095
6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.0622999    0.0355555   0.0890444
6 months    MAL-ED           INDIA                          >=155 cm             NA                0.0781431   -0.0001154   0.1564017
6 months    MAL-ED           PERU                           >=155 cm             NA                0.0998986    0.0193802   0.1804169
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0350278    0.0025639   0.0674917
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0682926    0.0212887   0.1152966
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1050563    0.0333145   0.1767982
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.0762804    0.0214752   0.1310855
6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0014381    0.0003677   0.0025084
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.0719716    0.0231415   0.1208017
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.0879348    0.0627320   0.1131377
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.1540109    0.0592968   0.2487249
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0256087    0.0147451   0.0364724
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0183828    0.0135714   0.0231941
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.2521616    0.1736180   0.3307052
24 months   COHORTS          INDIA                          >=155 cm             NA                0.1656078    0.1335605   0.1976551
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.1347467    0.0982325   0.1712609
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.2044639    0.1785125   0.2304152
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0294111    0.0181852   0.0406370
24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.0823116    0.0493458   0.1152774
24 months   MAL-ED           INDIA                          >=155 cm             NA                0.1642135    0.0536645   0.2747624
24 months   MAL-ED           PERU                           >=155 cm             NA                0.1725070    0.0646625   0.2803516
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0278248   -0.0065745   0.0622240
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1786335    0.0824293   0.2748376
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1668093    0.1088878   0.2247309
24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0046110    0.0011781   0.0080440
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.1460378    0.0793892   0.2126864
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0358693    0.0219468   0.0497917


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                0.0649351   -0.9385216   0.5489623
Birth       COHORTS          INDIA                          >=155 cm             NA                0.3932025    0.1847867   0.5483352
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                0.5816971    0.3306811   0.7385741
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                0.3751453    0.3281754   0.4188314
Birth       Keneba           GAMBIA                         >=155 cm             NA                0.0586721   -0.0591796   0.1634109
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2297980   -0.1697411   0.4928697
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3599180   -0.0669509   0.6160039
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.1873434   -0.2610145   0.4762861
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                0.2000000   -0.4682360   0.5641028
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                0.3128961    0.1835434   0.4217553
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0475719    0.0148746   0.0791839
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                0.5078179    0.2996985   0.6540872
6 months    COHORTS          INDIA                          >=155 cm             NA                0.4026882    0.2557861   0.5205929
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                0.3962370    0.2614496   0.5064253
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2666667   -0.2999982   0.5863242
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                0.5533680    0.4982886   0.6024007
6 months    Keneba           GAMBIA                         >=155 cm             NA                0.1323375    0.0720930   0.1886707
6 months    LCNI-5           MALAWI                         >=155 cm             NA                0.1696506    0.0937077   0.2392299
6 months    MAL-ED           INDIA                          >=155 cm             NA                0.4173554   -0.1715170   0.7102263
6 months    MAL-ED           PERU                           >=155 cm             NA                0.4528736   -0.0471592   0.7141339
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.1744385    0.0000171   0.3184365
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2859031    0.0662726   0.4538723
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3917726    0.0596572   0.6065897
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.3636031    0.0455177   0.5756851
6 months    PROBIT           BELARUS                        >=155 cm             NA                0.0390412    0.0125697   0.0648031
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                0.4568302    0.0548414   0.6878477
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                0.3050395    0.2284373   0.3740364
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                0.3603094    0.0957441   0.5474687
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2690262    0.1514930   0.3702789
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1126116    0.0830471   0.1412229
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                0.3102087    0.2041869   0.4021057
24 months   COHORTS          INDIA                          >=155 cm             NA                0.3187731    0.2536876   0.3781825
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                0.2163202    0.1548610   0.2733100
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                0.4160400    0.3602308   0.4669807
24 months   Keneba           GAMBIA                         >=155 cm             NA                0.0859791    0.0525888   0.1181927
24 months   LCNI-5           MALAWI                         >=155 cm             NA                0.1855226    0.1070908   0.2570652
24 months   MAL-ED           INDIA                          >=155 cm             NA                0.3865859    0.0650187   0.5975568
24 months   MAL-ED           PERU                           >=155 cm             NA                0.4685664    0.0859712   0.6910145
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                0.0794024   -0.0243120   0.1726154
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3140728    0.1207266   0.4649034
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                0.6495455    0.3626160   0.8073086
24 months   PROBIT           BELARUS                        >=155 cm             NA                0.0678938   -0.0010735   0.1321097
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                0.4458403    0.2046907   0.6138698
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1035386    0.0624897   0.1427902

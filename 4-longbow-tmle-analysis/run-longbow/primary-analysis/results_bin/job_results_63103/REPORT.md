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

agecat      studyid          country                        mhtcm           stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------------  --------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      >=155 cm              0      104     840  stunted          
Birth       COHORTS          GUATEMALA                      >=155 cm              1        6     840  stunted          
Birth       COHORTS          GUATEMALA                      <151 cm               0      513     840  stunted          
Birth       COHORTS          GUATEMALA                      <151 cm               1       32     840  stunted          
Birth       COHORTS          GUATEMALA                      [151-155) cm          0      174     840  stunted          
Birth       COHORTS          GUATEMALA                      [151-155) cm          1       11     840  stunted          
Birth       COHORTS          INDIA                          >=155 cm              0      497    1774  stunted          
Birth       COHORTS          INDIA                          >=155 cm              1       33    1774  stunted          
Birth       COHORTS          INDIA                          <151 cm               0      657    1774  stunted          
Birth       COHORTS          INDIA                          <151 cm               1      106    1774  stunted          
Birth       COHORTS          INDIA                          [151-155) cm          0      436    1774  stunted          
Birth       COHORTS          INDIA                          [151-155) cm          1       45    1774  stunted          
Birth       COHORTS          PHILIPPINES                    >=155 cm              0      614    3050  stunted          
Birth       COHORTS          PHILIPPINES                    >=155 cm              1       16    3050  stunted          
Birth       COHORTS          PHILIPPINES                    <151 cm               0     1413    3050  stunted          
Birth       COHORTS          PHILIPPINES                    <151 cm               1      132    3050  stunted          
Birth       COHORTS          PHILIPPINES                    [151-155) cm          0      836    3050  stunted          
Birth       COHORTS          PHILIPPINES                    [151-155) cm          1       39    3050  stunted          
Birth       JiVitA-3         BANGLADESH                     >=155 cm              0     2670   22356  stunted          
Birth       JiVitA-3         BANGLADESH                     >=155 cm              1      647   22356  stunted          
Birth       JiVitA-3         BANGLADESH                     <151 cm               0     8258   22356  stunted          
Birth       JiVitA-3         BANGLADESH                     <151 cm               1     5178   22356  stunted          
Birth       JiVitA-3         BANGLADESH                     [151-155) cm          0     4076   22356  stunted          
Birth       JiVitA-3         BANGLADESH                     [151-155) cm          1     1527   22356  stunted          
Birth       Keneba           GAMBIA                         >=155 cm              0     1130    1431  stunted          
Birth       Keneba           GAMBIA                         >=155 cm              1       57    1431  stunted          
Birth       Keneba           GAMBIA                         <151 cm               0       46    1431  stunted          
Birth       Keneba           GAMBIA                         <151 cm               1        5    1431  stunted          
Birth       Keneba           GAMBIA                         [151-155) cm          0      182    1431  stunted          
Birth       Keneba           GAMBIA                         [151-155) cm          1       11    1431  stunted          
Birth       MAL-ED           BANGLADESH                     >=155 cm              0       19     222  stunted          
Birth       MAL-ED           BANGLADESH                     >=155 cm              1        3     222  stunted          
Birth       MAL-ED           BANGLADESH                     <151 cm               0      115     222  stunted          
Birth       MAL-ED           BANGLADESH                     <151 cm               1       30     222  stunted          
Birth       MAL-ED           BANGLADESH                     [151-155) cm          0       48     222  stunted          
Birth       MAL-ED           BANGLADESH                     [151-155) cm          1        7     222  stunted          
Birth       MAL-ED           BRAZIL                         >=155 cm              0       31      64  stunted          
Birth       MAL-ED           BRAZIL                         >=155 cm              1        1      64  stunted          
Birth       MAL-ED           BRAZIL                         <151 cm               0       14      64  stunted          
Birth       MAL-ED           BRAZIL                         <151 cm               1        6      64  stunted          
Birth       MAL-ED           BRAZIL                         [151-155) cm          0       10      64  stunted          
Birth       MAL-ED           BRAZIL                         [151-155) cm          1        2      64  stunted          
Birth       MAL-ED           INDIA                          >=155 cm              0       10      43  stunted          
Birth       MAL-ED           INDIA                          >=155 cm              1        2      43  stunted          
Birth       MAL-ED           INDIA                          <151 cm               0       15      43  stunted          
Birth       MAL-ED           INDIA                          <151 cm               1        5      43  stunted          
Birth       MAL-ED           INDIA                          [151-155) cm          0        9      43  stunted          
Birth       MAL-ED           INDIA                          [151-155) cm          1        2      43  stunted          
Birth       MAL-ED           NEPAL                          >=155 cm              0        6      27  stunted          
Birth       MAL-ED           NEPAL                          >=155 cm              1        0      27  stunted          
Birth       MAL-ED           NEPAL                          <151 cm               0       12      27  stunted          
Birth       MAL-ED           NEPAL                          <151 cm               1        1      27  stunted          
Birth       MAL-ED           NEPAL                          [151-155) cm          0        7      27  stunted          
Birth       MAL-ED           NEPAL                          [151-155) cm          1        1      27  stunted          
Birth       MAL-ED           PERU                           >=155 cm              0       45     226  stunted          
Birth       MAL-ED           PERU                           >=155 cm              1        3     226  stunted          
Birth       MAL-ED           PERU                           <151 cm               0      112     226  stunted          
Birth       MAL-ED           PERU                           <151 cm               1       19     226  stunted          
Birth       MAL-ED           PERU                           [151-155) cm          0       43     226  stunted          
Birth       MAL-ED           PERU                           [151-155) cm          1        4     226  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm              0       74     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm              1        6     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <151 cm               0        8     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   <151 cm               1        2     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm          0       10     101  stunted          
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm          1        1     101  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       62     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       10     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       16     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1        5     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       22     122  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        7     122  stunted          
Birth       NIH-Birth        BANGLADESH                     >=155 cm              0      100     608  stunted          
Birth       NIH-Birth        BANGLADESH                     >=155 cm              1       11     608  stunted          
Birth       NIH-Birth        BANGLADESH                     <151 cm               0      289     608  stunted          
Birth       NIH-Birth        BANGLADESH                     <151 cm               1       67     608  stunted          
Birth       NIH-Birth        BANGLADESH                     [151-155) cm          0      122     608  stunted          
Birth       NIH-Birth        BANGLADESH                     [151-155) cm          1       19     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=155 cm              0      119     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     >=155 cm              1       15     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     <151 cm               0      355     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     <151 cm               1       63     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm          0      154     729  stunted          
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm          1       23     729  stunted          
Birth       PROBIT           BELARUS                        >=155 cm              0    13176   13732  stunted          
Birth       PROBIT           BELARUS                        >=155 cm              1       33   13732  stunted          
Birth       PROBIT           BELARUS                        <151 cm               0      125   13732  stunted          
Birth       PROBIT           BELARUS                        <151 cm               1        0   13732  stunted          
Birth       PROBIT           BELARUS                        [151-155) cm          0      397   13732  stunted          
Birth       PROBIT           BELARUS                        [151-155) cm          1        1   13732  stunted          
Birth       PROVIDE          BANGLADESH                     >=155 cm              0      102     517  stunted          
Birth       PROVIDE          BANGLADESH                     >=155 cm              1        8     517  stunted          
Birth       PROVIDE          BANGLADESH                     <151 cm               0      254     517  stunted          
Birth       PROVIDE          BANGLADESH                     <151 cm               1       32     517  stunted          
Birth       PROVIDE          BANGLADESH                     [151-155) cm          0      114     517  stunted          
Birth       PROVIDE          BANGLADESH                     [151-155) cm          1        7     517  stunted          
Birth       SAS-CompFeed     INDIA                          >=155 cm              0      374    1135  stunted          
Birth       SAS-CompFeed     INDIA                          >=155 cm              1       93    1135  stunted          
Birth       SAS-CompFeed     INDIA                          <151 cm               0      240    1135  stunted          
Birth       SAS-CompFeed     INDIA                          <151 cm               1      145    1135  stunted          
Birth       SAS-CompFeed     INDIA                          [151-155) cm          0      201    1135  stunted          
Birth       SAS-CompFeed     INDIA                          [151-155) cm          1       82    1135  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm              0     7005    9705  stunted          
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm              1      727    9705  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <151 cm               0      482    9705  stunted          
Birth       ZVITAMBO         ZIMBABWE                       <151 cm               1       78    9705  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm          0     1259    9705  stunted          
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm          1      154    9705  stunted          
6 months    COHORTS          GUATEMALA                      >=155 cm              0       93     943  stunted          
6 months    COHORTS          GUATEMALA                      >=155 cm              1       24     943  stunted          
6 months    COHORTS          GUATEMALA                      <151 cm               0      331     943  stunted          
6 months    COHORTS          GUATEMALA                      <151 cm               1      298     943  stunted          
6 months    COHORTS          GUATEMALA                      [151-155) cm          0      133     943  stunted          
6 months    COHORTS          GUATEMALA                      [151-155) cm          1       64     943  stunted          
6 months    COHORTS          INDIA                          >=155 cm              0      491    1819  stunted          
6 months    COHORTS          INDIA                          >=155 cm              1       50    1819  stunted          
6 months    COHORTS          INDIA                          <151 cm               0      614    1819  stunted          
6 months    COHORTS          INDIA                          <151 cm               1      176    1819  stunted          
6 months    COHORTS          INDIA                          [151-155) cm          0      411    1819  stunted          
6 months    COHORTS          INDIA                          [151-155) cm          1       77    1819  stunted          
6 months    COHORTS          PHILIPPINES                    >=155 cm              0      493    2708  stunted          
6 months    COHORTS          PHILIPPINES                    >=155 cm              1       68    2708  stunted          
6 months    COHORTS          PHILIPPINES                    <151 cm               0      992    2708  stunted          
6 months    COHORTS          PHILIPPINES                    <151 cm               1      376    2708  stunted          
6 months    COHORTS          PHILIPPINES                    [151-155) cm          0      651    2708  stunted          
6 months    COHORTS          PHILIPPINES                    [151-155) cm          1      128    2708  stunted          
6 months    Guatemala BSC    GUATEMALA                      >=155 cm              0       28     231  stunted          
6 months    Guatemala BSC    GUATEMALA                      >=155 cm              1        8     231  stunted          
6 months    Guatemala BSC    GUATEMALA                      <151 cm               0       94     231  stunted          
6 months    Guatemala BSC    GUATEMALA                      <151 cm               1       47     231  stunted          
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          0       39     231  stunted          
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm          1       15     231  stunted          
6 months    JiVitA-3         BANGLADESH                     >=155 cm              0     2389   16761  stunted          
6 months    JiVitA-3         BANGLADESH                     >=155 cm              1      271   16761  stunted          
6 months    JiVitA-3         BANGLADESH                     <151 cm               0     6637   16761  stunted          
6 months    JiVitA-3         BANGLADESH                     <151 cm               1     3160   16761  stunted          
6 months    JiVitA-3         BANGLADESH                     [151-155) cm          0     3519   16761  stunted          
6 months    JiVitA-3         BANGLADESH                     [151-155) cm          1      785   16761  stunted          
6 months    Keneba           GAMBIA                         >=155 cm              0     1375    1877  stunted          
6 months    Keneba           GAMBIA                         >=155 cm              1      193    1877  stunted          
6 months    Keneba           GAMBIA                         <151 cm               0       47    1877  stunted          
6 months    Keneba           GAMBIA                         <151 cm               1       20    1877  stunted          
6 months    Keneba           GAMBIA                         [151-155) cm          0      187    1877  stunted          
6 months    Keneba           GAMBIA                         [151-155) cm          1       55    1877  stunted          
6 months    LCNI-5           MALAWI                         >=155 cm              0      358     836  stunted          
6 months    LCNI-5           MALAWI                         >=155 cm              1      155     836  stunted          
6 months    LCNI-5           MALAWI                         <151 cm               0       58     836  stunted          
6 months    LCNI-5           MALAWI                         <151 cm               1       73     836  stunted          
6 months    LCNI-5           MALAWI                         [151-155) cm          0      113     836  stunted          
6 months    LCNI-5           MALAWI                         [151-155) cm          1       79     836  stunted          
6 months    MAL-ED           BANGLADESH                     >=155 cm              0       21     241  stunted          
6 months    MAL-ED           BANGLADESH                     >=155 cm              1        3     241  stunted          
6 months    MAL-ED           BANGLADESH                     <151 cm               0      119     241  stunted          
6 months    MAL-ED           BANGLADESH                     <151 cm               1       37     241  stunted          
6 months    MAL-ED           BANGLADESH                     [151-155) cm          0       57     241  stunted          
6 months    MAL-ED           BANGLADESH                     [151-155) cm          1        4     241  stunted          
6 months    MAL-ED           BRAZIL                         >=155 cm              0      118     209  stunted          
6 months    MAL-ED           BRAZIL                         >=155 cm              1        3     209  stunted          
6 months    MAL-ED           BRAZIL                         <151 cm               0       49     209  stunted          
6 months    MAL-ED           BRAZIL                         <151 cm               1        2     209  stunted          
6 months    MAL-ED           BRAZIL                         [151-155) cm          0       36     209  stunted          
6 months    MAL-ED           BRAZIL                         [151-155) cm          1        1     209  stunted          
6 months    MAL-ED           INDIA                          >=155 cm              0       49     235  stunted          
6 months    MAL-ED           INDIA                          >=155 cm              1        6     235  stunted          
6 months    MAL-ED           INDIA                          <151 cm               0       82     235  stunted          
6 months    MAL-ED           INDIA                          <151 cm               1       30     235  stunted          
6 months    MAL-ED           INDIA                          [151-155) cm          0       60     235  stunted          
6 months    MAL-ED           INDIA                          [151-155) cm          1        8     235  stunted          
6 months    MAL-ED           NEPAL                          >=155 cm              0       41     236  stunted          
6 months    MAL-ED           NEPAL                          >=155 cm              1        0     236  stunted          
6 months    MAL-ED           NEPAL                          <151 cm               0      122     236  stunted          
6 months    MAL-ED           NEPAL                          <151 cm               1       10     236  stunted          
6 months    MAL-ED           NEPAL                          [151-155) cm          0       61     236  stunted          
6 months    MAL-ED           NEPAL                          [151-155) cm          1        2     236  stunted          
6 months    MAL-ED           PERU                           >=155 cm              0       51     272  stunted          
6 months    MAL-ED           PERU                           >=155 cm              1        7     272  stunted          
6 months    MAL-ED           PERU                           <151 cm               0      116     272  stunted          
6 months    MAL-ED           PERU                           <151 cm               1       41     272  stunted          
6 months    MAL-ED           PERU                           [151-155) cm          0       45     272  stunted          
6 months    MAL-ED           PERU                           [151-155) cm          1       12     272  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              0      156     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm              1       31     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <151 cm               0       21     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   <151 cm               1       10     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          0       22     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm          1        9     249  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0      122     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       25     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0       27     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1       21     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       39     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       13     247  stunted          
6 months    NIH-Birth        BANGLADESH                     >=155 cm              0       80     537  stunted          
6 months    NIH-Birth        BANGLADESH                     >=155 cm              1       16     537  stunted          
6 months    NIH-Birth        BANGLADESH                     <151 cm               0      208     537  stunted          
6 months    NIH-Birth        BANGLADESH                     <151 cm               1      103     537  stunted          
6 months    NIH-Birth        BANGLADESH                     [151-155) cm          0      105     537  stunted          
6 months    NIH-Birth        BANGLADESH                     [151-155) cm          1       25     537  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=155 cm              0      116     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     >=155 cm              1       18     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <151 cm               0      310     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     <151 cm               1      101     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          0      139     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm          1       31     715  stunted          
6 months    PROBIT           BELARUS                        >=155 cm              0    12088   13031  stunted          
6 months    PROBIT           BELARUS                        >=155 cm              1      443   13031  stunted          
6 months    PROBIT           BELARUS                        <151 cm               0      107   13031  stunted          
6 months    PROBIT           BELARUS                        <151 cm               1       14   13031  stunted          
6 months    PROBIT           BELARUS                        [151-155) cm          0      356   13031  stunted          
6 months    PROBIT           BELARUS                        [151-155) cm          1       23   13031  stunted          
6 months    PROVIDE          BANGLADESH                     >=155 cm              0      117     603  stunted          
6 months    PROVIDE          BANGLADESH                     >=155 cm              1       11     603  stunted          
6 months    PROVIDE          BANGLADESH                     <151 cm               0      265     603  stunted          
6 months    PROVIDE          BANGLADESH                     <151 cm               1       65     603  stunted          
6 months    PROVIDE          BANGLADESH                     [151-155) cm          0      126     603  stunted          
6 months    PROVIDE          BANGLADESH                     [151-155) cm          1       19     603  stunted          
6 months    SAS-CompFeed     INDIA                          >=155 cm              0      408    1228  stunted          
6 months    SAS-CompFeed     INDIA                          >=155 cm              1      102    1228  stunted          
6 months    SAS-CompFeed     INDIA                          <151 cm               0      251    1228  stunted          
6 months    SAS-CompFeed     INDIA                          <151 cm               1      170    1228  stunted          
6 months    SAS-CompFeed     INDIA                          [151-155) cm          0      215    1228  stunted          
6 months    SAS-CompFeed     INDIA                          [151-155) cm          1       82    1228  stunted          
6 months    SAS-FoodSuppl    INDIA                          >=155 cm              0       54     379  stunted          
6 months    SAS-FoodSuppl    INDIA                          >=155 cm              1       20     379  stunted          
6 months    SAS-FoodSuppl    INDIA                          <151 cm               0       96     379  stunted          
6 months    SAS-FoodSuppl    INDIA                          <151 cm               1      106     379  stunted          
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          0       67     379  stunted          
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm          1       36     379  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0     1160    1996  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       86    1996  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0      263    1996  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1       46    1996  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0      383    1996  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       58    1996  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              0     5037    7394  stunted          
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm              1      851    7394  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <151 cm               0      296    7394  stunted          
6 months    ZVITAMBO         ZIMBABWE                       <151 cm               1      149    7394  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          0      854    7394  stunted          
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm          1      207    7394  stunted          
24 months   COHORTS          GUATEMALA                      >=155 cm              0       54     994  stunted          
24 months   COHORTS          GUATEMALA                      >=155 cm              1       72     994  stunted          
24 months   COHORTS          GUATEMALA                      <151 cm               0       89     994  stunted          
24 months   COHORTS          GUATEMALA                      <151 cm               1      570     994  stunted          
24 months   COHORTS          GUATEMALA                      [151-155) cm          0       43     994  stunted          
24 months   COHORTS          GUATEMALA                      [151-155) cm          1      166     994  stunted          
24 months   COHORTS          INDIA                          >=155 cm              0      373    1819  stunted          
24 months   COHORTS          INDIA                          >=155 cm              1      179    1819  stunted          
24 months   COHORTS          INDIA                          <151 cm               0      277    1819  stunted          
24 months   COHORTS          INDIA                          <151 cm               1      508    1819  stunted          
24 months   COHORTS          INDIA                          [151-155) cm          0      224    1819  stunted          
24 months   COHORTS          INDIA                          [151-155) cm          1      258    1819  stunted          
24 months   COHORTS          PHILIPPINES                    >=155 cm              0      279    2445  stunted          
24 months   COHORTS          PHILIPPINES                    >=155 cm              1      231    2445  stunted          
24 months   COHORTS          PHILIPPINES                    <151 cm               0      336    2445  stunted          
24 months   COHORTS          PHILIPPINES                    <151 cm               1      898    2445  stunted          
24 months   COHORTS          PHILIPPINES                    [151-155) cm          0      307    2445  stunted          
24 months   COHORTS          PHILIPPINES                    [151-155) cm          1      394    2445  stunted          
24 months   JiVitA-3         BANGLADESH                     >=155 cm              0      968    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     >=155 cm              1      346    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     <151 cm               0     2060    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     <151 cm               1     3007    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     [151-155) cm          0     1345    8599  stunted          
24 months   JiVitA-3         BANGLADESH                     [151-155) cm          1      873    8599  stunted          
24 months   Keneba           GAMBIA                         >=155 cm              0      920    1602  stunted          
24 months   Keneba           GAMBIA                         >=155 cm              1      418    1602  stunted          
24 months   Keneba           GAMBIA                         <151 cm               0       21    1602  stunted          
24 months   Keneba           GAMBIA                         <151 cm               1       39    1602  stunted          
24 months   Keneba           GAMBIA                         [151-155) cm          0      113    1602  stunted          
24 months   Keneba           GAMBIA                         [151-155) cm          1       91    1602  stunted          
24 months   LCNI-5           MALAWI                         >=155 cm              0      227     577  stunted          
24 months   LCNI-5           MALAWI                         >=155 cm              1      128     577  stunted          
24 months   LCNI-5           MALAWI                         <151 cm               0       36     577  stunted          
24 months   LCNI-5           MALAWI                         <151 cm               1       59     577  stunted          
24 months   LCNI-5           MALAWI                         [151-155) cm          0       58     577  stunted          
24 months   LCNI-5           MALAWI                         [151-155) cm          1       69     577  stunted          
24 months   MAL-ED           BANGLADESH                     >=155 cm              0       18     212  stunted          
24 months   MAL-ED           BANGLADESH                     >=155 cm              1        4     212  stunted          
24 months   MAL-ED           BANGLADESH                     <151 cm               0       54     212  stunted          
24 months   MAL-ED           BANGLADESH                     <151 cm               1       83     212  stunted          
24 months   MAL-ED           BANGLADESH                     [151-155) cm          0       39     212  stunted          
24 months   MAL-ED           BANGLADESH                     [151-155) cm          1       14     212  stunted          
24 months   MAL-ED           BRAZIL                         >=155 cm              0       91     169  stunted          
24 months   MAL-ED           BRAZIL                         >=155 cm              1        4     169  stunted          
24 months   MAL-ED           BRAZIL                         <151 cm               0       42     169  stunted          
24 months   MAL-ED           BRAZIL                         <151 cm               1        1     169  stunted          
24 months   MAL-ED           BRAZIL                         [151-155) cm          0       29     169  stunted          
24 months   MAL-ED           BRAZIL                         [151-155) cm          1        2     169  stunted          
24 months   MAL-ED           INDIA                          >=155 cm              0       39     226  stunted          
24 months   MAL-ED           INDIA                          >=155 cm              1       14     226  stunted          
24 months   MAL-ED           INDIA                          <151 cm               0       50     226  stunted          
24 months   MAL-ED           INDIA                          <151 cm               1       60     226  stunted          
24 months   MAL-ED           INDIA                          [151-155) cm          0       41     226  stunted          
24 months   MAL-ED           INDIA                          [151-155) cm          1       22     226  stunted          
24 months   MAL-ED           NEPAL                          >=155 cm              0       38     228  stunted          
24 months   MAL-ED           NEPAL                          >=155 cm              1        0     228  stunted          
24 months   MAL-ED           NEPAL                          <151 cm               0       90     228  stunted          
24 months   MAL-ED           NEPAL                          <151 cm               1       39     228  stunted          
24 months   MAL-ED           NEPAL                          [151-155) cm          0       50     228  stunted          
24 months   MAL-ED           NEPAL                          [151-155) cm          1       11     228  stunted          
24 months   MAL-ED           PERU                           >=155 cm              0       37     201  stunted          
24 months   MAL-ED           PERU                           >=155 cm              1        9     201  stunted          
24 months   MAL-ED           PERU                           <151 cm               0       62     201  stunted          
24 months   MAL-ED           PERU                           <151 cm               1       53     201  stunted          
24 months   MAL-ED           PERU                           [151-155) cm          0       28     201  stunted          
24 months   MAL-ED           PERU                           [151-155) cm          1       12     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              0      122     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm              1       58     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <151 cm               0       16     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   <151 cm               1       11     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          0       14     234  stunted          
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm          1       13     234  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              0       45     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm              1       81     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               0        3     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm               1       37     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0       11     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1       37     214  stunted          
24 months   NIH-Birth        BANGLADESH                     >=155 cm              0       49     429  stunted          
24 months   NIH-Birth        BANGLADESH                     >=155 cm              1       28     429  stunted          
24 months   NIH-Birth        BANGLADESH                     <151 cm               0       86     429  stunted          
24 months   NIH-Birth        BANGLADESH                     <151 cm               1      166     429  stunted          
24 months   NIH-Birth        BANGLADESH                     [151-155) cm          0       50     429  stunted          
24 months   NIH-Birth        BANGLADESH                     [151-155) cm          1       50     429  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=155 cm              0       91     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     >=155 cm              1        9     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <151 cm               0      194     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     <151 cm               1       93     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          0       97     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm          1       30     514  stunted          
24 months   PROBIT           BELARUS                        >=155 cm              0     3615    4005  stunted          
24 months   PROBIT           BELARUS                        >=155 cm              1      244    4005  stunted          
24 months   PROBIT           BELARUS                        <151 cm               0       23    4005  stunted          
24 months   PROBIT           BELARUS                        <151 cm               1       12    4005  stunted          
24 months   PROBIT           BELARUS                        [151-155) cm          0       95    4005  stunted          
24 months   PROBIT           BELARUS                        [151-155) cm          1       16    4005  stunted          
24 months   PROVIDE          BANGLADESH                     >=155 cm              0      102     577  stunted          
24 months   PROVIDE          BANGLADESH                     >=155 cm              1       20     577  stunted          
24 months   PROVIDE          BANGLADESH                     <151 cm               0      194     577  stunted          
24 months   PROVIDE          BANGLADESH                     <151 cm               1      121     577  stunted          
24 months   PROVIDE          BANGLADESH                     [151-155) cm          0       92     577  stunted          
24 months   PROVIDE          BANGLADESH                     [151-155) cm          1       48     577  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              0        3       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm              1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm               1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          0        2       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm          1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              0      749    1374  stunted          
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm              1      335    1374  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <151 cm               0       44    1374  stunted          
24 months   ZVITAMBO         ZIMBABWE                       <151 cm               1       54    1374  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          0      105    1374  stunted          
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm          1       87    1374  stunted          


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
